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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            facade.registerCommand(ApplicationNotificationConstants.BLUEPRINT_SELECTED,BluePrintSelectedCommand);
            if(!(_loc3_ && Boolean(this)))
            {
               facade.registerCommand(ApplicationNotificationConstants.OPTIONS_LAYER_OPEN_USER_DATA,OptionsLayerChangeUserDataCommand);
               if(!_loc3_)
               {
                  facade.registerCommand(OptionsMenuNavigationConstants.TOGGLE_MUSIC,OptionsMusicButtonChangedStateCommand);
                  if(_loc2_)
                  {
                     addr0077:
                     facade.registerCommand(OptionsMenuNavigationConstants.TOGGLE_SOUND,OptionsSoundsButtonChangedStateCommand);
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr0092:
                        facade.registerCommand(OptionsMenuNavigationConstants.TOGGLE_ZOOM,OptionsZoomButtonChangedStateCommand);
                     }
                  }
               }
               return;
            }
            §§goto(addr0092);
         }
         §§goto(addr0077);
      }
   }
}

