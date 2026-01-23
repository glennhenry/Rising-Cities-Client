package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.level.vo.LevelUpVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.miniLayer.ui.NextLevelMiniLayer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class LevelPreviewMiniLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "LevelPreviewMiniLayerMediator";
      
      private var _levelProxy:UserLevelProxy;
      
      public function LevelPreviewMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._levelProxy = facade.retrieveProxy(UserLevelProxy.NAME) as UserLevelProxy;
         this.setLayerData();
         this.setListener();
      }
      
      private function setLayerData() : void
      {
         var _loc3_:LevelUpVo = null;
         var _loc1_:ConfigUserLevelDTO = this._levelProxy.getConfigByLevelId(this._levelProxy.currentLevelId);
         var _loc2_:ConfigUserLevelDTO = this._levelProxy.getNextFullLevel(_loc1_.id);
         if(_loc2_)
         {
            _loc3_ = this._levelProxy.getLevelUpVoById(_loc2_.id,RewardItemComponentVo.SIZE_SMALL);
         }
         else
         {
            _loc3_ = this._levelProxy.getLevelUpVoById(_loc1_.id,RewardItemComponentVo.SIZE_SMALL);
         }
         if(_loc3_)
         {
            this.component.setData(_loc3_);
         }
      }
      
      private function setListener() : void
      {
         this.component.okButton.addEventListener(MouseEvent.CLICK,this.onButtonClicked);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      private function onButtonClicked(param1:Event) : void
      {
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         this.handleClose();
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
         this.component.okButton.removeEventListener(MouseEvent.CLICK,this.onButtonClicked);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         super.onRemove();
      }
      
      public function get component() : NextLevelMiniLayer
      {
         return super.viewComponent as NextLevelMiniLayer;
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":0,
            "pt":_loc3_,
            "type":param1.callerType
         },NAME);
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
   }
}

