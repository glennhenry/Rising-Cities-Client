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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_NEW,ApplicationModeNewCommand);
            if(_loc3_)
            {
               facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_NORMAL_INITIALIZE,ApplicationModeNormalInitialize);
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0044);
               }
               §§goto(addr00c6);
            }
            §§goto(addr005f);
         }
         addr0044:
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_NORMAL_DEINITIALIZE,ApplicationModeNormalDeinitialize);
         if(!(_loc2_ && Boolean(param1)))
         {
            addr005f:
            facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_BUILD_INITIALIZE,ApplicationModeBuildInitialize);
            if(!(_loc2_ && _loc2_))
            {
               facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_BUILD_DEINITIALIZE,ApplicationModeBuildDeinitialize);
               if(!_loc2_)
               {
                  facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_MOVE_INITIALIZE,ApplicationModeMoveInitialize);
                  if(!_loc2_)
                  {
                     addr00ab:
                     facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_MOVE_DEINITIALIZE,ApplicationModeMoveDeinitialize);
                     if(_loc3_ || _loc3_)
                     {
                        addr00c6:
                        facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_DESTROY_INITIALIZE,ApplicationModeDestroyInitializeCommand);
                        if(_loc3_)
                        {
                           facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_DESTROY_DEINITIALIZE,ApplicationModeDestroyDeinitializeCommand);
                           addr00d9:
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr0102);
                           }
                           §§goto(addr0115);
                        }
                        §§goto(addr0102);
                     }
                     §§goto(addr00d9);
                  }
                  addr0102:
                  facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_IMPROVEMENT_INITIALIZE,ApplicationModeImprovementInitialize);
                  if(!_loc2_)
                  {
                     addr0115:
                     facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODE_IMPROVEMENT_DEINITIALIZE,ApplicationModeImprovementDeinitialize);
                  }
                  §§goto(addr0123);
               }
               §§goto(addr00ab);
            }
         }
         addr0123:
      }
   }
}

