package net.bigpoint.cityrama.view.cityTreasury
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.cityTreasury.event.CityTreasuryEvent;
   import net.bigpoint.cityrama.view.cityTreasury.event.ItemPurchaseEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryTabView;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CityTreasuryCurrencyTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CityTreasuryCurrencyTabMediator";
      
      private var _component:CityTreasuryTabView;
      
      private var _cTP:CityTreasuryProxy;
      
      public function CityTreasuryCurrencyTabMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function init(param1:int, param2:int) : void
      {
         if(!this.component)
         {
            this._component = new CityTreasuryTabView();
         }
         this.setLayerData(param1,param2);
         this.container.contentGroup.addElement(this.component);
         this.addListener();
      }
      
      private function setLayerData(param1:int, param2:int) : void
      {
         this.component.data = this.treasuryProxy.getCityTreasuryContentVo(CityTreasuryTabProxy.CURRENCY_TAB_INDEX,param1,param2);
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(ItemPurchaseEvent.PURCHASE_ITEM_PACK,this.handlePurchaseItemPack);
         this.component.addEventListener(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,this.handleRealCurrencyBtnClicked);
      }
      
      private function handleRealCurrencyBtnClicked(param1:CityTreasuryEvent) : void
      {
         var _loc4_:PlayerProxy = null;
         var _loc5_:TimerProxy = null;
         var _loc6_:PlayerPaymentUpsellDTO = null;
         var _loc7_:ConfigPaymentPackUpsellingDTO = null;
         param1.stopPropagation();
         var _loc2_:String = "";
         var _loc3_:Boolean = false;
         if(param1.selectedPack)
         {
            _loc2_ = param1.selectedPack.key;
            _loc4_ = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
            _loc5_ = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            _loc6_ = _loc4_.player.playerPaymentPackInfo.upsellPaymentPack;
            if((_loc6_) && _loc6_.id == param1.selectedPack.id && _loc5_.currentTimeStamp >= _loc6_.startTime && _loc5_.currentTimeStamp <= _loc6_.startTime + _loc6_.duration)
            {
               for each(_loc7_ in param1.selectedPack.upsellPackages)
               {
                  if(_loc7_.category == _loc6_.type)
                  {
                     _loc2_ = _loc7_.key;
                     _loc3_ = true;
                     break;
                  }
               }
            }
         }
         sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,{
            "category":CityTreasuryProxy.PAYMENT_CATEGORY_REAL_CURRENCY,
            "itemKey":_loc2_,
            "deeplink":_loc3_
         });
      }
      
      private function handlePurchaseItemPack(param1:ItemPurchaseEvent) : void
      {
         param1.stopPropagation();
         if(param1.itemPack)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
            facade.sendNotification(ApplicationNotificationConstants.BUY_PAYMENT_PACK,param1.itemPack);
            this.showDrops(param1);
         }
      }
      
      private function showDrops(param1:ItemPurchaseEvent) : void
      {
         if(param1.itemPack)
         {
            var _loc2_:int = Math.max(1,param1.itemPack.resources[0].outputAmount / 5);
            _loc2_ = Math.min(15,0);
            if(param1.itemPack.resources[0].resourceConfig)
            {
               var _loc3_:String = param1.itemPack.resources[0].resourceConfig.type;
            }
         }
         var _loc4_:DisplayObject = param1.dropContainer as DisplayObject;
         var _loc5_:Point = new Point(_loc4_.width / 2,_loc4_.height / 2);
         _loc5_ = _loc4_.localToGlobal(_loc5_);
         var _loc6_:DropIconVO = new DropIconVO(null,_loc5_,false);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               if(this.component)
               {
                  this.setLayerData(this.component.currentSelectedCategoryIndex,this.component.currentSelectedPackIndex);
               }
         }
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(ItemPurchaseEvent.PURCHASE_ITEM_PACK,this.handlePurchaseItemPack);
         this.component.removeEventListener(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,this.handleRealCurrencyBtnClicked);
      }
      
      private function get container() : CityTreasuryLayer
      {
         return super.viewComponent as CityTreasuryLayer;
      }
      
      private function get component() : CityTreasuryTabView
      {
         return this._component as CityTreasuryTabView;
      }
      
      private function get treasuryProxy() : CityTreasuryProxy
      {
         if(!this._cTP)
         {
            this._cTP = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         }
         return this._cTP;
      }
   }
}

