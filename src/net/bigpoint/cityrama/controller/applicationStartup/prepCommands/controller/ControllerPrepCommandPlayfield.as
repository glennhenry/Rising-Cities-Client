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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.registerCommand(ApplicationNotificationConstants.FIELD_VIEW_NEW,FieldViewNewCommand);
         facade.registerCommand(ApplicationNotificationConstants.PREPARE_PLAYFIELD,ControllerPrepCommandField);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_GENERATE,PlayfieldGenerateCommand);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_MODES_SET_INITIAL,ApplicationModeSetInitialValues);
      }
   }
}

