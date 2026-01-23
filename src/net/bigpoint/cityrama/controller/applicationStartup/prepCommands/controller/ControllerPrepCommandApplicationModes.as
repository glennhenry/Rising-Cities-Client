package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.ApplicationModeNewCommand;
   import net.bigpoint.cityrama.controller.applicationModes.build.ApplicationModeBuildDeinitialize;
   import net.bigpoint.cityrama.controller.applicationModes.build.ApplicationModeBuildInitialize;
   import net.bigpoint.cityrama.controller.applicationModes.destroy.ApplicationModeDestroyDeinitializeCommand;
   import net.bigpoint.cityrama.controller.applicationModes.destroy.ApplicationModeDestroyInitializeCommand;
   import net.bigpoint.cityrama.controller.applicationModes.improvement.ApplicationModeImprovementDeinitialize;
   import net.bigpoint.cityrama.controller.applicationModes.improvement.ApplicationModeImprovementInitialize;
   import net.bigpoint.cityrama.controller.applicationModes.move.ApplicationModeMoveDeinitialize;
   import net.bigpoint.cityrama.controller.applicationModes.move.ApplicationModeMoveInitialize;
   import net.bigpoint.cityrama.controller.applicationModes.normal.ApplicationModeNormalDeinitialize;
   import net.bigpoint.cityrama.controller.applicationModes.normal.ApplicationModeNormalInitialize;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ControllerPrepCommandApplicationModes extends SimpleCommand
   {
      
      public function ControllerPrepCommandApplicationModes()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_NEW,ApplicationModeNewCommand);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_NORMAL_INITIALIZE,ApplicationModeNormalInitialize);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_NORMAL_DEINITIALIZE,ApplicationModeNormalDeinitialize);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_BUILD_INITIALIZE,ApplicationModeBuildInitialize);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_BUILD_DEINITIALIZE,ApplicationModeBuildDeinitialize);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_MOVE_INITIALIZE,ApplicationModeMoveInitialize);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_MOVE_DEINITIALIZE,ApplicationModeMoveDeinitialize);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_DESTROY_INITIALIZE,ApplicationModeDestroyInitializeCommand);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_DESTROY_DEINITIALIZE,ApplicationModeDestroyDeinitializeCommand);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_IMPROVEMENT_INITIALIZE,ApplicationModeImprovementInitialize);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_IMPROVEMENT_DEINITIALIZE,ApplicationModeImprovementDeinitialize);
      }
   }
}

