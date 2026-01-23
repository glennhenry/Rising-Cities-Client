package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.ImprovementInfoMiniLayerComponent;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementEquipMiniLayer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementEquipMiniLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "ImprovementEquipMiniLayerMediator";
      
      public static const LINE_ID_0:uint = 0;
      
      private var _data:ImprovementMiniLayerVo;
      
      private var _improCursorProxy:ImprovementCursorProxy;
      
      private var _cursorAttachedImprovementCID:Number;
      
      public function ImprovementEquipMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this,UserInterfaceInfoLayerMediator.DELAY_SMOOTH));
         this._improCursorProxy = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
         if(this._improCursorProxy.currentSelectedImprovementCid != -1)
         {
            this._cursorAttachedImprovementCID = this._improCursorProxy.currentSelectedImprovementCid;
            sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
         }
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(ImprovementEquipMiniLayer.EQUIP_IMPROVEMENT,this.handleEquip);
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
      
      private function handleEquip(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_EQUIP_PLAYFIELDITEM_IMPROVEMENT,{
            "bid":this._data.buildingId,
            "imp":this._data.improvementVo.config.id,
            "slot":this._data.slotId
         });
         this.handleClose(null);
      }
      
      private function handleClose(param1:Event) : void
      {
         if(param1)
         {
            sendNotification(ApplicationNotificationConstants.ATTACH_IMPROVEMENT_TO_CURSOR,this._cursorAttachedImprovementCID);
            sendNotification(ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT,true);
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT,false);
         }
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
         this.component.removeEventListener(ImprovementEquipMiniLayer.EQUIP_IMPROVEMENT,this.handleEquip);
         this.component.removeEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OVER,this.handleImprovementOver);
         this.component.removeEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OUT,this.handleImprovementOut);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is ImprovementMiniLayerVo)
         {
            this._data = param1 as ImprovementMiniLayerVo;
            this.component.data = this._data;
         }
      }
      
      public function get component() : ImprovementEquipMiniLayer
      {
         return super.viewComponent as ImprovementEquipMiniLayer;
      }
   }
}

