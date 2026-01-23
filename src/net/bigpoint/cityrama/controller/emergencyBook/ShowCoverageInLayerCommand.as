package net.bigpoint.cityrama.controller.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencyBookMediator;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencyCoverageMediator;
   import net.bigpoint.cityrama.view.emergencyBook.EmergencySidePictureMediator;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.CoverageInfoComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideEmergencyPictureComponent;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowCoverageInLayerCommand extends SimpleCommand
   {
      
      public function ShowCoverageInLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:EmergencyBookMediator = facade.retrieveMediator(EmergencyBookMediator.NAME) as EmergencyBookMediator;
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc4_:EmergencyCoverageMediator = facade.retrieveMediator(EmergencyCoverageMediator.NAME) as EmergencyCoverageMediator;
         if(_loc4_)
         {
            facade.removeMediator(EmergencyCoverageMediator.NAME);
         }
         _loc3_.removeTemporaryProfessionals(_loc2_.billboardObjectVo);
         var _loc5_:EmergencyZoneLayerVo = _loc3_.getEmergencyZoneLayerVo(_loc2_.billboardObjectVo);
         var _loc6_:CoverageInfoComponent = new CoverageInfoComponent();
         _loc6_.percentWidth = 100;
         _loc6_.percentHeight = 100;
         _loc6_.data = _loc5_;
         _loc2_.component.nextButtonMode();
         _loc2_.component.nextEnabled();
         facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SUB_CONTENT_READY,_loc6_);
         _loc2_.component.buildingImage.visible = true;
         _loc2_.component.emergencyImageTop.dynaLibName = "gui_popups_emergencyBook";
         _loc2_.component.emergencyImageTop.dynaSWFFileName = "gui_popups_emergencyBook";
         _loc2_.component.emergencyImageTop.dynaBmpSourceName = "pic_radius";
         _loc4_ = new EmergencyCoverageMediator(_loc6_);
         facade.registerMediator(_loc4_);
         var _loc7_:SideEmergencyPictureComponent = new SideEmergencyPictureComponent();
         _loc7_.percentWidth = 100;
         _loc7_.percentHeight = 100;
         _loc7_.data = _loc5_;
         facade.sendNotification(ApplicationNotificationConstants.EMERGENCY_SIDE_CONTENT_READY,_loc7_);
         facade.removeMediator(EmergencySidePictureMediator.NAME);
         var _loc8_:EmergencySidePictureMediator = new EmergencySidePictureMediator(_loc7_);
         facade.registerMediator(_loc8_);
      }
   }
}

