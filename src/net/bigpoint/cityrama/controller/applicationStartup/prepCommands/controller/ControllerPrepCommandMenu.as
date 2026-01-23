package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.field.BluePrintSelectedCommand;
   import net.bigpoint.cityrama.controller.options.OptionsLayerChangeUserDataCommand;
   import net.bigpoint.cityrama.controller.options.OptionsMusicButtonChangedStateCommand;
   import net.bigpoint.cityrama.controller.options.OptionsSoundsButtonChangedStateCommand;
   import net.bigpoint.cityrama.controller.options.OptionsZoomButtonChangedStateCommand;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ControllerPrepCommandMenu extends SimpleCommand
   {
      
      public function ControllerPrepCommandMenu()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.registerCommand(ApplicationNotificationConstants.BLUEPRINT_SELECTED,BluePrintSelectedCommand);
         facade.registerCommand(ApplicationNotificationConstants.OPTIONS_LAYER_OPEN_USER_DATA,OptionsLayerChangeUserDataCommand);
         facade.registerCommand(OptionsMenuNavigationConstants.TOGGLE_MUSIC,OptionsMusicButtonChangedStateCommand);
         facade.registerCommand(OptionsMenuNavigationConstants.TOGGLE_SOUND,OptionsSoundsButtonChangedStateCommand);
         facade.registerCommand(OptionsMenuNavigationConstants.TOGGLE_ZOOM,OptionsZoomButtonChangedStateCommand);
      }
   }
}

