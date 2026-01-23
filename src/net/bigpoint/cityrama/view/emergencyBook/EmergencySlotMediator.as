package net.bigpoint.cityrama.view.emergencyBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.*;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencySlotMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencySlotMediator";
      
      public function EmergencySlotMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListeners();
         this.setupInitialValues();
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(SpecialistSlotItemrenderer.SPECIALIST_REMOVE_CLICKED,this.handleSlotRemoveClick);
      }
      
      private function setupInitialValues() : void
      {
      }
      
      private function handleSlotRemoveClick(param1:Event) : void
      {
         var _loc2_:EmergencyBookMediator = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         _loc3_.removeProfFromSlot(_loc2_.billboardObjectVo,param1.target.data.slotNumber);
         this.component.data = _loc3_.getEmergencyAssignVo(_loc2_.billboardObjectVo);
         facade.sendNotification(ApplicationNotificationConstants.PROFESSIONAL_SLOT_REMOVED);
      }
      
      override public function getMediatorName() : String
      {
         return EmergencySlotMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      public function get component() : EmergencySlotComponent
      {
         return super.viewComponent as EmergencySlotComponent;
      }
   }
}

