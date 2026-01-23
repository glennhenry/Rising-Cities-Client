package net.bigpoint.cityrama.controller.options
{
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OptionsZoomButtonChangedStateCommand extends SimpleCommand
   {
      
      public function OptionsZoomButtonChangedStateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Boolean = param1.getBody() as Boolean;
         if(_loc2_)
         {
            sendNotification(OptionsMenuNavigationConstants.TOGGLE_ZOOM_OUT);
         }
         else
         {
            sendNotification(OptionsMenuNavigationConstants.TOGGLE_ZOOM_IN);
         }
      }
   }
}

