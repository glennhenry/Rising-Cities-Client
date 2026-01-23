package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationModes.ApplicationModeSetInitialValues;
   import net.bigpoint.cityrama.controller.field.FieldViewNewCommand;
   import net.bigpoint.cityrama.controller.field.PlayfieldGenerateCommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ControllerPrepCommandPlayfield extends SimpleCommand
   {
      
      public function ControllerPrepCommandPlayfield()
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            facade.registerCommand(ApplicationNotificationConstants.FIELD_VIEW_NEW,FieldViewNewCommand);
            if(_loc2_)
            {
               facade.registerCommand(ApplicationNotificationConstants.PREPARE_PLAYFIELD,ControllerPrepCommandField);
               if(_loc2_)
               {
                  addr0053:
                  facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_GENERATE,PlayfieldGenerateCommand);
                  if(!_loc3_)
                  {
                     addr0066:
                     facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODES_SET_INITIAL,ApplicationModeSetInitialValues);
                  }
               }
               return;
            }
            §§goto(addr0066);
         }
         §§goto(addr0053);
      }
   }
}

