package net.bigpoint.cityrama.view.cityWheel
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerConfigElementCategory;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.cityWheel.CityWheelProxy;
   import net.bigpoint.cityrama.model.cityWheel.events.CityWheelItemEvent;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelRewardVo;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelTabVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.cityWheel.ui.components.CityWheelBuffItemRenderer;
   import net.bigpoint.cityrama.view.cityWheel.ui.components.CityWheelRewardItemRenderer;
   import net.bigpoint.cityrama.view.cityWheel.ui.components.CityWheelTab;
   import net.bigpoint.cityrama.view.featuredEvent.FeaturedEventLayerMediator;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventLayer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SimpleTextUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FeaturedEventCityWheelMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FeaturedEventCityWheelMediator";
      
      private var _component:CityWheelTab;
      
      private var _cWP:CityWheelProxy;
      
      private var _fEP:FeaturedEventProxy;
      
      private var _sP:SoundProxy;
      
      private var _data:CityWheelTabVo;
      
      private var _gcP:GameConfigProxy;
      
      public function FeaturedEventCityWheelMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function init() : void
      {
         sendNotification(VirtualTaskNotificationInterest.CITY_WHEEL_LAYER_OPEN);
         this.setupCityWheel();
      }
      
      private function setupCityWheel() : void
      {
         if(!this.cityWheelProxy)
         {
            return;
         }
         if(!this.component)
         {
            this._component = new CityWheelTab();
         }
         if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
         {
            facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
         }
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine,this.component.uiInfolayerAlignmentLine2],this));
         this.addListener();
         this.setComponentData();
         this.container.contentGroup.addElement(this.component);
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(CityWheelItemEvent.ITEM_OVER,this.uiInfoLayerOverHandler);
         this.component.addEventListener(CityWheelItemEvent.ITEM_OUT,this.uiInfoLayerOutHandler);
         this.component.addEventListener(CityWheelTab.BUY_SPIN_TOKEN,this.buySpinTokenHandler);
         this.component.addEventListener(CityWheelTab.BUY_BUFF_TOKEN,this.buyBuffTokenHandler);
         this.component.addEventListener(CityWheelTab.SPIN_WHEEL,this.spinWheelHandler);
         this.component.addEventListener(CityWheelTab.COLLECT_REWARDS,this.handleCollectRewards);
         this.component.addEventListener(CityWheelTab.PLAY_SPIN_SOUND_MAIN,this.handlePlaySpinSoundMain);
         this.component.addEventListener(CityWheelTab.PLAY_STOP_SOUND_MAIN,this.handlePlayStopSoundMain);
         this.component.addEventListener(CityWheelTab.PLAY_SPIN_SOUND_BUFF,this.handlePlaySpinSoundBuff);
         this.component.addEventListener(CityWheelTab.PLAY_STOP_SOUND_BUFF,this.handlePlayStopSoundBuff);
         this.component.addEventListener(CityWheelTab.PLAY_MAIN_SELECTED_SOUND,this.handlePlaySelectMainSound);
         this.component.addEventListener(CityWheelTab.PLAY_BUFF_SELECTED_SOUND,this.handlePlaySelectBuffSound);
         this.component.addEventListener(CityWheelTab.PLAY_REWARD_SOUND,this.handlePlayRewardSound);
         this.component.addEventListener(CityWheelTab.SHOW_INFOLAYER_NO_SPIN,this.showLockedUiInfoLayer);
         this.component.addEventListener(CityWheelTab.SHOW_INFOLAYER_NO_BUFF,this.showLockedUiInfoLayer);
         this.component.addEventListener(CityWheelTab.SHOW_INFOLAYER_BUFF_LOCKED,this.showLockedUiInfoLayer);
         this.component.addEventListener(CityWheelTab.HIDE_INFOLAYER,this.hideLockedUiInfoLayer);
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         this.stopSound();
         super.onRemove();
         sendNotification(VirtualTaskNotificationInterest.CITY_WHEEL_LAYER_CLOSED);
      }
      
      private function stopSound() : void
      {
         this.soundProxy.stopCityWheelSpinSoundMain();
         this.soundProxy.stopCityWheelStopSoundMain();
         this.soundProxy.stopCityWheelSpinSoundBuff();
         this.soundProxy.stopCityWheelStopSoundBuff();
      }
      
      private function removeListener() : void
      {
         if(this.component)
         {
            this.component.removeEventListener(CityWheelItemEvent.ITEM_OVER,this.uiInfoLayerOverHandler);
            this.component.removeEventListener(CityWheelItemEvent.ITEM_OUT,this.uiInfoLayerOutHandler);
            this.component.removeEventListener(CityWheelTab.BUY_SPIN_TOKEN,this.buySpinTokenHandler);
            this.component.removeEventListener(CityWheelTab.BUY_BUFF_TOKEN,this.buyBuffTokenHandler);
            this.component.removeEventListener(CityWheelTab.SPIN_WHEEL,this.spinWheelHandler);
            this.component.removeEventListener(CityWheelTab.COLLECT_REWARDS,this.handleCollectRewards);
            this.component.removeEventListener(CityWheelTab.PLAY_SPIN_SOUND_MAIN,this.handlePlaySpinSoundMain);
            this.component.removeEventListener(CityWheelTab.PLAY_STOP_SOUND_MAIN,this.handlePlayStopSoundMain);
            this.component.removeEventListener(CityWheelTab.PLAY_SPIN_SOUND_BUFF,this.handlePlaySpinSoundBuff);
            this.component.removeEventListener(CityWheelTab.PLAY_STOP_SOUND_BUFF,this.handlePlayStopSoundBuff);
            this.component.removeEventListener(CityWheelTab.PLAY_MAIN_SELECTED_SOUND,this.handlePlaySelectMainSound);
            this.component.removeEventListener(CityWheelTab.PLAY_BUFF_SELECTED_SOUND,this.handlePlaySelectBuffSound);
            this.component.removeEventListener(CityWheelTab.PLAY_REWARD_SOUND,this.handlePlayRewardSound);
            this.component.removeEventListener(CityWheelTab.SHOW_INFOLAYER_NO_SPIN,this.showLockedUiInfoLayer);
            this.component.removeEventListener(CityWheelTab.SHOW_INFOLAYER_NO_BUFF,this.showLockedUiInfoLayer);
            this.component.removeEventListener(CityWheelTab.SHOW_INFOLAYER_BUFF_LOCKED,this.showLockedUiInfoLayer);
            this.component.removeEventListener(CityWheelTab.HIDE_INFOLAYER,this.hideLockedUiInfoLayer);
         }
      }
      
      private function handleCollectRewards(param1:Event) : void
      {
         if(param1)
         {
            param1.stopPropagation();
         }
         TweenMax.delayedCall(0.2,this.collectRewardsDelayed);
      }
      
      private function collectRewardsDelayed() : void
      {
         var _loc3_:int = 0;
         TweenMax.killDelayedCallsTo(this.collectRewardsDelayed);
         var _loc1_:Boolean = false;
         var _loc2_:ArrayCollection = this.featuredEventProxy.cityWheelDrawnRewards;
         if(!_loc2_)
         {
            return;
         }
         if(this.cityWheelProxy.lastCollectedRewards == null || this.cityWheelProxy.lastCollectedRewards.length == 0 || _loc2_.length != this.cityWheelProxy.lastCollectedRewards.length)
         {
            _loc1_ = true;
         }
         else
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               if((_loc2_[_loc3_] as RewardItemComponentVo).configId != (this.cityWheelProxy.lastCollectedRewards[_loc3_] as RewardItemComponentVo).configId || (_loc2_[_loc3_] as RewardItemComponentVo).type != (this.cityWheelProxy.lastCollectedRewards[_loc3_] as RewardItemComponentVo).type)
               {
                  _loc1_ = true;
                  break;
               }
               _loc3_++;
            }
         }
         if(_loc1_)
         {
            sendNotification(MiniLayerConstants.OPEN_MINI_CITY_WHEEL_REWARDS_LAYER);
         }
      }
      
      private function uiInfoLayerOutHandler(param1:CityWheelItemEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function uiInfoLayerOverHandler(param1:CityWheelItemEvent) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:SimpleTextUiInfolayerContentVo = null;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         var _loc2_:Point = param1.target.localToGlobal(new Point());
         _loc2_.x += param1.target.width / 2;
         if(param1.target is CityWheelBuffItemRenderer && !this.component.isWheelBuffSpinning)
         {
            if(this._data && this._data.buffData && this._data.buffData.length > 0)
            {
               _loc3_ = ConfigCityWheelBuffDTO(this._data.buffData[param1.elementIndex]).localeId;
               _loc4_ = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buff.name.capital." + _loc3_);
               _loc5_ = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buff.description." + _loc3_);
               _loc6_ = new SimpleTextUiInfolayerContentVo(1,_loc2_,_loc5_,_loc4_);
               _loc6_.width = 230;
               sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc6_,NAME);
            }
         }
         else if(param1.target is CityWheelRewardItemRenderer && !this.component.isWheelMainSpinning)
         {
            if(this._data && this._data.rewardData && this._data.rewardData.length > 0)
            {
               _loc8_ = CityWheelRewardVo(this._data.rewardData[param1.elementIndex]).outputType;
               if(CityWheelRewardVo(this._data.rewardData[param1.elementIndex]).outputType == ServerConfigElementCategory.PLAYFIELD_ITEM_PERMISSION)
               {
                  _loc7_ = this.configProxy.getFirstLevelConfigOfBuilding(this.configProxy.getConfigPlayfieldItemsByPermissionId(CityWheelRewardVo(this._data.rewardData[param1.elementIndex]).rewardConfigId)[0].id).id;
               }
               else
               {
                  _loc7_ = CityWheelRewardVo(this._data.rewardData[param1.elementIndex]).rewardConfigId;
               }
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc7_,
                  "lineId":0,
                  "pt":_loc2_,
                  "type":_loc8_
               },NAME);
            }
         }
      }
      
      private function setComponentData() : void
      {
         if(!this.cityWheelProxy)
         {
            return;
         }
         if(this.nothingSpinning)
         {
            this._data = this.featuredEventProxy.cityWheelTabVo;
            if(Boolean(this._data) && Boolean(this.component))
            {
               this.component.data = this._data;
            }
         }
         if(this.cityWheelProxy.rewardsReadyToCollect && this.nothingSpinning)
         {
            this.handleCollectRewards(null);
         }
      }
      
      private function get nothingSpinning() : Boolean
      {
         return Boolean(this.component) && !this.component.isWheelMainSpinning && !this.component.isWheelBuffSpinning;
      }
      
      public function get container() : FeaturedEventLayer
      {
         return super.viewComponent as FeaturedEventLayer;
      }
      
      private function buySpinTokenHandler(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"cat":ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN});
      }
      
      private function buyBuffTokenHandler(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"cat":ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN});
      }
      
      private function spinWheelHandler(param1:Event) : void
      {
         if(this._data.numSpinTokens > 0)
         {
            this.cityWheelProxy.lastCollectedRewards = null;
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_CITY_WHEEL_SPIN);
            --this._data.numSpinTokens;
            --this._data.numBuffTokens;
         }
      }
      
      private function get component() : CityWheelTab
      {
         return this._component;
      }
      
      private function get cityWheelProxy() : CityWheelProxy
      {
         if(!this._cWP)
         {
            this._cWP = facade.retrieveProxy(CityWheelProxy.NAME) as CityWheelProxy;
         }
         return this._cWP;
      }
      
      private function get featuredEventProxy() : FeaturedEventProxy
      {
         if(!this._fEP)
         {
            this._fEP = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
         }
         return this._fEP;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(!this._gcP)
         {
            this._gcP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._gcP;
      }
      
      private function get soundProxy() : SoundProxy
      {
         if(!this._sP)
         {
            this._sP = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         }
         return this._sP;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.CITY_WHEEL_DATA_CHANGED,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.CITY_WHEEL_REWARD_READY,ApplicationNotificationConstants.EVENTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.CITY_WHEEL_REWARD_READY:
               this.component.setDrawnRewardsAndBuff(this.cityWheelProxy.drawnRewards,this.cityWheelProxy.drawnBuff);
               break;
            case ApplicationNotificationConstants.CITY_WHEEL_DATA_CHANGED:
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
               this.setComponentData();
               this.closeLayer();
               break;
            case ApplicationNotificationConstants.EVENTS_CHANGED:
               this.closeLayer();
         }
      }
      
      private function closeLayer() : void
      {
         if(!this.featuredEventProxy.cityWheelRunning)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,FeaturedEventLayerMediator.NAME);
         }
      }
      
      private function handlePlayRewardSound(param1:Event) : void
      {
         this.soundProxy.playCityWheelRewardSound();
      }
      
      private function handlePlaySpinSoundMain(param1:Event) : void
      {
         this.soundProxy.playCityWheelSpinSoundMain();
      }
      
      private function handlePlayStopSoundMain(param1:Event) : void
      {
         this.soundProxy.stopCityWheelSpinSoundMain();
         this.soundProxy.playCityWheelStopSoundMain();
      }
      
      private function handlePlaySpinSoundBuff(param1:Event) : void
      {
         this.soundProxy.playCityWheelSpinSoundBuff();
      }
      
      private function handlePlayStopSoundBuff(param1:Event) : void
      {
         this.soundProxy.stopCityWheelSpinSoundBuff();
         this.soundProxy.playCityWheelStopSoundBuff();
      }
      
      private function handlePlaySelectMainSound(param1:Event) : void
      {
         this.soundProxy.playCityWheelMainSelected();
      }
      
      private function handlePlaySelectBuffSound(param1:Event) : void
      {
         this.soundProxy.playCityWheelBuffSelected();
      }
      
      private function showLockedUiInfoLayer(param1:Event) : void
      {
         var _loc2_:String = "";
         var _loc3_:String = "";
         var _loc4_:int = 0;
         switch(param1.type)
         {
            case CityWheelTab.SHOW_INFOLAYER_NO_SPIN:
               _loc2_ = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.mainWheel.status.inActive");
               _loc3_ = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.noSpin");
               break;
            case CityWheelTab.SHOW_INFOLAYER_NO_BUFF:
               _loc4_ = 1;
               _loc2_ = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buffWheel.status.inActive");
               _loc3_ = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.noBuff");
               break;
            case CityWheelTab.SHOW_INFOLAYER_BUFF_LOCKED:
               _loc4_ = 1;
               _loc2_ = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buffWheel.status.locked");
               _loc3_ = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.noSpin");
         }
         var _loc5_:Point = this.component.wheelMain.localToGlobal(new Point());
         _loc5_.x += this.component.wheelMain.width / 2;
         var _loc6_:SimpleTextUiInfolayerContentVo = new SimpleTextUiInfolayerContentVo(_loc4_,_loc5_,_loc3_,_loc2_);
         _loc6_.width = 230;
         sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc6_,NAME);
      }
      
      private function hideLockedUiInfoLayer(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
   }
}

