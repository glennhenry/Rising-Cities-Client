package net.bigpoint.cityrama.controller.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencyBookMediator;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencySideRewardMediator;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencySlotMediator;
   import net.bigpoint.cityrama.view.emergencyBook.SpecialistDetailGridMediator;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.EmergencySlotComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideRewardComponent;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowEmergencySlotCommand extends SimpleCommand
   {
      
      public function ShowEmergencySlotCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:EmergencyBookMediator = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc4_:EmergencySlotMediator = facade.retrieveMediator(EmergencySlotMediator.NAME) as EmergencySlotMediator;
         if(_loc4_)
         {
            facade.removeMediator(EmergencySlotMediator.NAME);
         }
         var _loc5_:SpecialistDetailGridMediator = facade.retrieveMediator(SpecialistDetailGridMediator.NAME) as SpecialistDetailGridMediator;
         if(_loc5_)
         {
            facade.removeMediator(SpecialistDetailGridMediator.NAME);
         }
         _loc3_.removeTemporaryProfessionals(_loc2_.billboardObjectVo);
         var _loc6_:EmergencyAssignVo = _loc3_.getEmergencyAssignVo(_loc2_.billboardObjectVo);
         var _loc7_:EmergencySlotComponent = new EmergencySlotComponent();
         _loc7_.percentWidth = 100;
         _loc7_.percentHeight = 100;
         facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SUB_CONTENT_READY,_loc7_);
         _loc2_.component.startButtonMode();
         _loc2_.startEnabledCheck();
         _loc4_ = new EmergencySlotMediator(_loc7_);
         _loc7_.data = _loc6_;
         facade.registerMediator(_loc4_);
         _loc2_.component.buildingImage.visible = false;
         _loc2_.component.showBackButton = false;
         _loc2_.component.emergencyImageTop.dynaLibName = _loc6_.renderLib;
         _loc2_.component.emergencyImageTop.dynaSWFFileName = _loc6_.renderLib.split("_").shift();
         _loc2_.component.emergencyImageTop.dynaBmpSourceName = _loc6_.renderImg;
         var _loc8_:SideRewardComponent = new SideRewardComponent();
         _loc8_.percentWidth = 100;
         _loc8_.percentHeight = 100;
         _loc8_.data = _loc6_;
         facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SIDE_CONTENT_READY,_loc8_);
         facade.removeMediator(EmergencySideRewardMediator.NAME);
         var _loc9_:EmergencySideRewardMediator = new EmergencySideRewardMediator(_loc8_);
         facade.registerMediator(_loc9_);
      }
   }
}

