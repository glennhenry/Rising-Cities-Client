package net.bigpoint.cityrama.controller.applicationModes.normal
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.urbies.CitizensProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeNormalInitialize extends SimpleCommand
   {
      
      public function ApplicationModeNormalInitialize()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         _loc2_.tileGridVisiblity = false;
         _loc2_.itemGridVisiblity = false;
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,PlayfieldInteractiveClickForNormalCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForNormalCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForNormalCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK_EMERGENCY,PlayfieldInteractiveClickEmergencyCommand);
         var _loc3_:CitizensProxy = facade.retrieveProxy(CitizensProxy.NAME) as CitizensProxy;
         _loc3_.scanForPfoTags();
         _loc3_.resetSpawnedList();
         facade.sendNotification(ApplicationNotificationConstants.CITIZEN_REBUILD_STREETMAP);
      }
   }
}

