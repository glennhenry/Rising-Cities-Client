package net.bigpoint.cityrama.view.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideProfessionalComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencySideProfessionMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "EmergencySideProfessionMediator";
      
      private var _originalData:EmergencyAssignVo;
      
      public function EmergencySideProfessionMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function getMediatorName() : String
      {
         return EmergencySideProfessionMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECTED,ApplicationNotificationConstants.PROFESSIONAL_SLOT_REMOVED,ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECT_TEMPORARY];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:EmergencyLayerProxy = null;
         var _loc3_:EmergencyBookMediator = null;
         var _loc4_:SpecialistDetailGridMediator = null;
         var _loc5_:EmergencyAssignVo = null;
         var _loc6_:ProfessionalSlotVo = null;
         var _loc7_:ProfessionalSlotVo = null;
         var _loc8_:ProfessionalListInfoVo = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECTED:
               _loc2_ = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
               _loc3_ = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
               _loc4_ = facade.retrieveMediator(SpecialistDetailGridMediator.NAME) as SpecialistDetailGridMediator;
               _loc2_.assignProfToSlot(_loc3_.billboardObjectVo,_loc4_.slotNumber);
               _loc5_ = _loc2_.getEmergencyAssignVo(_loc3_.billboardObjectVo);
               for each(_loc7_ in _loc5_.professionalSlots)
               {
                  if(_loc7_.slotNumber == _loc4_.slotNumber)
                  {
                     _loc6_ = _loc7_;
                     break;
                  }
               }
               this.component.currentData = _loc5_;
               this.component.professionalData = _loc6_;
               break;
            case ApplicationNotificationConstants.DATA_GRID_PROFESSIONAL_SELECT_TEMPORARY:
               _loc8_ = param1.getBody() as ProfessionalListInfoVo;
               if(_loc8_.profId == this.component.professionalId)
               {
                  break;
               }
               _loc2_ = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
               _loc3_ = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
               _loc4_ = facade.retrieveMediator(SpecialistDetailGridMediator.NAME) as SpecialistDetailGridMediator;
               _loc2_.assignTemporaryProfToSlot(_loc3_.billboardObjectVo,_loc4_.slotNumber,_loc8_.profId);
               _loc5_ = _loc2_.getEmergencyAssignVo(_loc3_.billboardObjectVo);
               for each(_loc7_ in _loc5_.professionalSlots)
               {
                  if(_loc7_.slotNumber == _loc4_.slotNumber)
                  {
                     _loc6_ = _loc7_;
                     break;
                  }
               }
               this.component.currentData = _loc5_;
               this.component.professionalData = _loc6_;
               break;
            case ApplicationNotificationConstants.PROFESSIONAL_SLOT_REMOVED:
               _loc2_ = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
               _loc3_ = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
               _loc5_ = _loc2_.getEmergencyAssignVo(_loc3_.billboardObjectVo);
               this.component.originalData = _loc5_;
         }
      }
      
      public function get component() : SideProfessionalComponent
      {
         return super.viewComponent as SideProfessionalComponent;
      }
      
      public function get originalData() : EmergencyAssignVo
      {
         return this._originalData;
      }
      
      public function set originalData(param1:EmergencyAssignVo) : void
      {
         this._originalData = param1;
      }
   }
}

