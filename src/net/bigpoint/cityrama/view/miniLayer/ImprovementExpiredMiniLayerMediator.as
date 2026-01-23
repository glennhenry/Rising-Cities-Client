package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.ImprovementInfoMiniLayerComponent;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementExpiredMiniLayer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementExpiredMiniLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "ImprovementExpiredMiniLayerMediator";
      
      public static const LINE_ID_0:uint = 0;
      
      private var _data:ImprovementMiniLayerVo;
      
      public function ImprovementExpiredMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this,UserInterfaceInfoLayerMediator.DELAY_SMOOTH));
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(ImprovementExpiredMiniLayer.REMOVE_IMPROVEMENT,this.handleRemove);
         this.component.addEventListener(ImprovementExpiredMiniLayer.RENEW_IMPROVEMENT,this.handleRenew);
         this.component.addEventListener(ImprovementExpiredMiniLayer.OPEN_TREASURY,this.handleOpenTreasury);
         this.component.addEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OVER,this.handleImprovementOver);
         this.component.addEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OUT,this.handleImprovementOut);
      }
      
      private function handleImprovementOut(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function handleImprovementOver(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:Number = this._data.improvementVo.config.id;
         var _loc3_:ImprovementInfoMiniLayerComponent = param1.target as ImprovementInfoMiniLayerComponent;
         var _loc4_:Point = _loc3_.improvementGroup.localToGlobal(new Point());
         _loc4_.x += _loc3_.improvementGroup.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":LINE_ID_0,
            "pt":_loc4_,
            "impro":this._data.improvementVo
         },this.getMediatorName());
      }
      
      private function handleRenew(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROLONG_PLAYFIELDITEM_IMPROVEMENT,this._data.improvementVo);
         this.handleClose(null);
      }
      
      private function handleRemove(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_DELETE_PLAYFIELDITEM_IMPROVEMENT,this._data.improvementVo);
         this.handleClose(null);
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(ImprovementExpiredMiniLayer.REMOVE_IMPROVEMENT,this.handleRemove);
         this.component.removeEventListener(ImprovementExpiredMiniLayer.RENEW_IMPROVEMENT,this.handleRenew);
         this.component.removeEventListener(ImprovementExpiredMiniLayer.OPEN_TREASURY,this.handleOpenTreasury);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:PlayerResourceProxy = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               if(this._data)
               {
                  _loc2_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  this._data.realCurrency = _loc2_.realCurrency;
                  this.component.data = this._data;
               }
         }
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is ImprovementMiniLayerVo)
         {
            this._data = param1 as ImprovementMiniLayerVo;
            this.component.data = this._data;
         }
      }
      
      public function get component() : ImprovementExpiredMiniLayer
      {
         return super.viewComponent as ImprovementExpiredMiniLayer;
      }
   }
}

