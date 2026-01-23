package net.bigpoint.cityrama.controller.options
{
   import flash.display.StageDisplayState;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OptionsStartInFullscreenCommand extends SimpleCommand implements ICommand
   {
      
      public function OptionsStartInFullscreenCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:LayoutProxy = facade.retrieveProxy(LayoutProxy.NAME) as LayoutProxy;
         var _loc3_:OptionsMenuProxy = facade.retrieveProxy(OptionsMenuProxy.NAME) as OptionsMenuProxy;
         if(OptionsGlobalVariables.getInstance().fullscreenActive)
         {
            _loc2_.changeDisplayState();
            _loc3_.buttonChanged(OptionsMenuNavigationConstants.TOGGLE_FULLSCREEN,_loc2_.displayState == StageDisplayState.FULL_SCREEN);
         }
      }
   }
}

