package net.bigpoint.cityrama.view.homeImprovement.hipinventory
{
   import flash.events.Event;
   import flash.geom.Point;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.ImprovementInventoryView;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.events.ImprovementInventoryItemRendererEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementInventoryMediator extends Mediator
   {
      
      public static const NAME:String = "ImprovementInventoryMediator";
      
      private static const LINEID_0:uint = 0;
      
      public function ImprovementInventoryMediator(param1:String = "ImprovementInventoryMediator", param2:UIComponent = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         var _loc1_:ImprovementLayerProxy = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
         this.component.data = _loc1_.improvementInventoryViewVo;
         this.component.addEventListener(ImprovementInventoryView.ALL_DESELECTED,this.component_ALL_DESELECTEDHandler);
         this.component.addEventListener(ImprovementInventoryItemRendererEvent.ITEM_OUT,this.component_ITEM_OUTHandler);
         this.component.addEventListener(ImprovementInventoryItemRendererEvent.ITEM_OVER,this.component_ITEM_OVERHandler);
         this.component.addEventListener(ImprovementInventoryItemRendererEvent.SELECTION_CHANGED,this.component_SELECTION_CHANGEDHandler);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
      }
      
      override public function onRemove() : void
      {
         var _loc1_:ApplicationMediator = null;
         _loc1_ = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         _loc1_.component.mainView.inventoryTopBarView.removeElement(this.component);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_IMPROVEMENTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:ImprovementLayerProxy = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.INVENTORY_IMPROVEMENTS_CHANGED:
               _loc2_ = facade.retrieveProxy(ImprovementLayerProxy.NAME) as ImprovementLayerProxy;
               this.component.data = _loc2_.improvementInventoryViewVo;
         }
      }
      
      public function get component() : ImprovementInventoryView
      {
         return super.getViewComponent() as ImprovementInventoryView;
      }
      
      private function component_ALL_DESELECTEDHandler(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
      }
      
      private function component_SELECTION_CHANGEDHandler(param1:ImprovementInventoryItemRendererEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.ATTACH_IMPROVEMENT_TO_CURSOR,param1.selectedConfigID);
      }
      
      private function component_ITEM_OVERHandler(param1:ImprovementInventoryItemRendererEvent) : void
      {
         var _loc2_:Number = param1.selectedConfigID;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":LINEID_0,
            "pt":_loc3_
         });
      }
      
      private function component_ITEM_OUTHandler(param1:ImprovementInventoryItemRendererEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
   }
}

