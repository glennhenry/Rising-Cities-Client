package net.bigpoint.cityrama.controller.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignListVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencyBookMediator;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencySideProfessionMediator;
   import net.bigpoint.cityrama.view.emergencyBook.SpecialistDetailGridMediator;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideProfessionalComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SpecialistDetailsListComponent;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowSpecialistDetailsInLayerCommand extends SimpleCommand
   {
      
      public function ShowSpecialistDetailsInLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:EmergencyBookMediator = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc4_:SpecialistDetailGridMediator = facade.retrieveMediator(SpecialistDetailGridMediator.NAME) as SpecialistDetailGridMediator;
         var _loc5_:ProfessionalSlotVo = param1.getBody() as ProfessionalSlotVo;
         if(_loc4_)
         {
            facade.removeMediator(SpecialistDetailGridMediator.NAME);
         }
         var _loc6_:EmergencyAssignListVo = _loc3_.getEmergencyAssignListVo(_loc2_.billboardObjectVo,_loc5_.slotNumber);
         var _loc7_:SpecialistDetailsListComponent = new SpecialistDetailsListComponent();
         _loc7_.percentWidth = 100;
         _loc7_.percentHeight = 100;
         _loc2_.component.selectButtonMode();
         _loc2_.component.selectDisabled();
         _loc2_.component.showBackButton = true;
         facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SUB_CONTENT_READY,_loc7_);
         _loc4_ = new SpecialistDetailGridMediator(_loc7_);
         _loc4_.slotNumber = _loc5_.slotNumber;
         facade.registerMediator(_loc4_);
         _loc7_.data = _loc6_;
         var _loc8_:SideProfessionalComponent = new SideProfessionalComponent();
         _loc8_.percentWidth = 100;
         _loc8_.percentHeight = 100;
         _loc8_.originalData = _loc3_.getEmergencyAssignVo(_loc2_.billboardObjectVo);
         _loc8_.professionalData = _loc5_;
         _loc8_.currentData = _loc3_.getEmergencyAssignVo(_loc2_.billboardObjectVo);
         facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SIDE_CONTENT_READY,_loc8_);
         facade.removeMediator(EmergencySideProfessionMediator.NAME);
         var _loc9_:EmergencySideProfessionMediator = new EmergencySideProfessionMediator(_loc8_);
         facade.registerMediator(_loc9_);
      }
   }
}

