package net.bigpoint.cityrama.view.miniLayer
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerConfigElementCategory;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.model.cityWheel.CityWheelProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.CityWheelRewardLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CityWheelRewardMiniLayer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CityWheelRewardMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CityWheelRewardMiniLayerMediator";
      
      private var _data:CityWheelRewardLayerVo;
      
      private var _gcP:GameConfigProxy;
      
      public function CityWheelRewardMiniLayerMediator(param1:String, param2:Object)
      {
         super(NAME,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(CityWheelRewardMiniLayer.COLLECT_REWARDS,this.handleCollectRewards);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.rewardItemList.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.uiInfoLayerOverHandler);
         this.component.rewardItemList.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.uiInfoLayerOutHandler);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      private function uiInfoLayerOverHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:Point = param1.target.localToGlobal(new Point());
         _loc2_.x += param1.target.width / 2;
         var _loc4_:String = param1.callerType;
         if(_loc4_ == ServerConfigElementCategory.PLAYFIELD_ITEM_PERMISSION)
         {
            _loc3_ = this.configProxy.getFirstLevelConfigOfBuilding(this.configProxy.getConfigPlayfieldItemsByPermissionId(param1.cid)[0].id).id;
         }
         else
         {
            _loc3_ = param1.cid;
         }
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc3_,
            "lineId":0,
            "pt":_loc2_,
            "type":_loc4_
         },NAME);
      }
      
      private function uiInfoLayerOutHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function handleCollectRewards(param1:Event) : void
      {
         var _loc3_:Point = null;
         var _loc4_:DropIconVO = null;
         var _loc5_:DropInfoVo = null;
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         var _loc2_:Number = 0;
         if(this._data)
         {
            _loc3_ = new Point(this.component.width / 2,this.component.height / 2);
            _loc3_ = this.component.localToGlobal(_loc3_);
            if(this._data.rewardDrops)
            {
               if(this._data.rewardDrops.length > 0)
               {
                  for each(_loc5_ in this._data.rewardDrops)
                  {
                     if(_loc5_.type == ServerOutputConstants.GOOD)
                     {
                        _loc4_ = new DropIconVO(_loc5_.gfxId.toString(),_loc3_);
                        TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                        _loc2_ += 0.1;
                     }
                     else
                     {
                        _loc4_ = new DropIconVO(_loc5_.type,_loc3_);
                        TweenMax.delayedCall(_loc2_,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc4_]);
                        _loc2_ += 0.1;
                     }
                  }
               }
            }
         }
         TweenMax.delayedCall(_loc2_,this.handleClose);
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(CityWheelRewardMiniLayer.COLLECT_REWARDS,this.handleCollectRewards);
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
      }
      
      override public function onRemove() : void
      {
         var _loc1_:CityWheelProxy = null;
         this.removeListener();
         if(this._data)
         {
            _loc1_ = facade.retrieveProxy(CityWheelProxy.NAME) as CityWheelProxy;
            _loc1_.lastCollectedRewards = this._data.drawnRewardsAsVector;
         }
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_CITY_WHEEL_COLLECT);
         super.onRemove();
      }
      
      private function get component() : CityWheelRewardMiniLayer
      {
         return super.viewComponent as CityWheelRewardMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is CityWheelRewardLayerVo)
         {
            this._data = param1 as CityWheelRewardLayerVo;
            this.component.data = this._data.drawnRewards;
         }
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(!this._gcP)
         {
            this._gcP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._gcP;
      }
   }
}

