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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "EmergencySlotMediator";
      }
      
      public function EmergencySlotMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.onRegister();
            if(!(_loc2_ && _loc2_))
            {
               this.setupListeners();
               if(!(_loc2_ && Boolean(this)))
               {
                  addr004c:
                  this.setupInitialValues();
               }
               §§goto(addr0052);
            }
            §§goto(addr004c);
         }
         addr0052:
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this.component.addEventListener(SpecialistSlotItemrenderer.SPECIALIST_REMOVE_CLICKED,this.handleSlotRemoveClick);
         }
      }
      
      private function setupInitialValues() : void
      {
      }
      
      private function handleSlotRemoveClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:EmergencyBookMediator = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         if(_loc5_ || Boolean(_loc3_))
         {
            _loc3_.removeProfFromSlot(_loc2_.billboardObjectVo,param1.target.data.slotNumber);
            if(_loc5_)
            {
               §§goto(addr007b);
            }
            §§goto(addr008e);
         }
         addr007b:
         this.component.data = _loc3_.getEmergencyAssignVo(_loc2_.billboardObjectVo);
         if(!_loc4_)
         {
            addr008e:
            facade.sendNotification(ApplicationNotificationConstants.PROFESSIONAL_SLOT_REMOVED);
         }
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

