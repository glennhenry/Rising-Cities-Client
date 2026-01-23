package net.bigpoint.cityrama.view.newsscreen
{
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import mx.events.ItemClickEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedLayerTabProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsScreenSlideVo;
   import net.bigpoint.cityrama.view.newsscreen.vo.NewsscreenPopupVo;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class NewsScreenMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "NewsScreenMediator";
      
      private const WILDCARD_UID:String = "{ID}";
      
      private const WILDCARD_ULEVEL:String = "{LVL}";
      
      private const WILDCARD_PAYUSER:String = "{PAY}";
      
      private var _soundProxy:SoundProxy;
      
      private var _playfieldObjectProxy:PlayfieldObjectsProxy;
      
      private var _openedOnStartup:Boolean = false;
      
      private var _data:NewsscreenPopupVo;
      
      public function NewsScreenMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is NewsscreenPopupVo)
         {
            this._data = param1 as NewsscreenPopupVo;
            this.component.setData(this._data);
         }
      }
      
      private function get component() : NewsScreenPopup
      {
         return this.viewComponent as NewsScreenPopup;
      }
      
      private function finalCall(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         facade.sendNotification(ApplicationNotificationConstants.OPEN_UPSELL_OFFER_LAYER);
      }
      
      override public function onRegister() : void
      {
         this._soundProxy = SoundProxy(facade.retrieveProxy(SoundProxy.NAME));
         this.component.addEventListener(Event.CLOSE,this.finalCall);
         this.component.addEventListener(NewsScreenPopup.SHOW_FORUM,this.onHandleForum);
         this.component.addEventListener(NewsScreenPopup.OPEN_LINK,this.onOpenLink);
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         super.onRemove();
         if(this._openedOnStartup)
         {
            sendNotification(ApplicationNotificationConstants.CHECK_PLAYER_PAYMENTPACKS);
         }
      }
      
      private function onHandleForum(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.OPEN_EXTERNAL_FORUM);
      }
      
      private function onOpenLink(param1:ItemClickEvent) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:FeaturedEventProxy = null;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc2_:int = int(param1.index);
         if(this._data && this._data.slides.length > _loc2_ && this._data.slides[_loc2_] != null)
         {
            _loc3_ = this._data.slides[_loc2_].type;
            _loc4_ = this._data.slides[_loc2_].linkValue;
            switch(_loc3_)
            {
               case NewsScreenSlideVo.EXTERNAL_PARAM:
                  _loc4_ = this.replaceWildCards(_loc4_);
               case NewsScreenSlideVo.EXTERNAL:
               case NewsScreenSlideVo.EKOMI:
                  sendNotification(ApplicationNotificationConstants.OPEN_EXTERNAL_LINK,_loc4_);
                  break;
               case NewsScreenSlideVo.PLAYFIELD_ITEM:
                  sendNotification(ApplicationNotificationConstants.OPEN_ITEM_IN_ARCHITECT_BOOK,Number(_loc4_));
                  break;
               case NewsScreenSlideVo.CITY_TREASURY:
                  _loc6_ = _loc4_.split(";");
                  _loc7_ = {};
                  if(_loc6_.length > 0)
                  {
                     _loc9_ = this.categoryStringToTabIndexAndCategoryIndex(_loc6_[0] as String);
                     if(_loc9_)
                     {
                        _loc7_.index = _loc9_.index;
                        _loc7_.cat = _loc9_.cat;
                        if(_loc6_.length > 1)
                        {
                           _loc7_.pack = int(_loc6_[1]);
                        }
                     }
                  }
                  sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY,_loc7_);
                  break;
               case NewsScreenSlideVo.GOOD:
                  _loc8_ = Number(_loc4_);
                  sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"goodConfigId":_loc8_});
                  break;
               case NewsScreenSlideVo.EVENT_SQUARE:
                  if(this._playfieldObjectProxy == null)
                  {
                     this._playfieldObjectProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  }
                  if(this._playfieldObjectProxy.getCitySquare() != null)
                  {
                     sendNotification(ApplicationNotificationConstants.CITYSQUARE_CLICKED);
                  }
                  break;
               case NewsScreenSlideVo.CITY_WHEEL:
                  _loc5_ = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
                  if((Boolean(_loc5_)) && _loc5_.cityWheelRunning)
                  {
                     sendNotification(ApplicationNotificationConstants.OPEN_FEATURED_LAYER,FeaturedLayerTabProxy.CITYWHEEL_TAB_INDEX);
                  }
                  break;
               case NewsScreenSlideVo.MYSTERY_BUILDING:
                  _loc5_ = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
                  if((Boolean(_loc5_)) && _loc5_.mysteryBuildingRunning)
                  {
                     sendNotification(ApplicationNotificationConstants.OPEN_FEATURED_LAYER,FeaturedLayerTabProxy.MYSTERY_TAB_INDEX);
                  }
                  break;
               case NewsScreenSlideVo.PAYMENT:
                  throw new IllegalOperationError(this + " not yet implemented");
            }
         }
         this.finalCall();
      }
      
      private function categoryStringToTabIndexAndCategoryIndex(param1:String) : Object
      {
         var _loc3_:int = 0;
         var _loc2_:Object = {};
         _loc3_ = 0;
         while(_loc3_ < CityTreasuryProxy.resourceCategories.length)
         {
            if(CityTreasuryProxy.resourceCategories[_loc3_].indexOf(param1) != -1)
            {
               _loc2_.index = CityTreasuryTabProxy.CURRENCY_TAB_INDEX;
               _loc2_.cat = _loc3_;
               return _loc2_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < CityTreasuryProxy.goodCategories.length)
         {
            if(CityTreasuryProxy.goodCategories[_loc3_].indexOf(param1) != -1)
            {
               _loc2_.index = CityTreasuryTabProxy.GOODS_TAB_INDEX;
               _loc2_.cat = _loc3_;
               return _loc2_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < CityTreasuryProxy.starterPackCategories.length)
         {
            if(CityTreasuryProxy.starterPackCategories[_loc3_].indexOf(param1) != -1)
            {
               _loc2_.index = CityTreasuryTabProxy.PACKS_TAB_INDEX;
               _loc2_.cat = _loc3_;
               return _loc2_;
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < CityTreasuryProxy.specialCategories.length)
         {
            if(CityTreasuryProxy.specialCategories[_loc3_].indexOf(param1) != -1)
            {
               _loc2_.index = CityTreasuryTabProxy.SPECIALS_TAB_INDEX;
               _loc2_.cat = _loc3_;
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      private function replaceWildCards(param1:String) : String
      {
         if(param1.indexOf(this.WILDCARD_UID) != -1)
         {
            param1 = param1.replace(this.WILDCARD_UID,(facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy).player.id.toString());
         }
         if(param1.indexOf(this.WILDCARD_ULEVEL) != -1)
         {
            param1 = param1.replace(this.WILDCARD_ULEVEL,(facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy).userLevel.toString());
         }
         if(param1.indexOf(this.WILDCARD_PAYUSER) != -1)
         {
            param1 = param1.replace(this.WILDCARD_PAYUSER,(facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy).player.premiumPlayer);
         }
         return param1;
      }
   }
}

