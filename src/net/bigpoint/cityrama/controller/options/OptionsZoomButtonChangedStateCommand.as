package net.bigpoint.cityrama.controller.options
{
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OptionsZoomButtonChangedStateCommand extends SimpleCommand
   {
      
      public function OptionsZoomButtonChangedStateCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Boolean = param1.getBody() as Boolean;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  sendNotification(OptionsMenuNavigationConstants.TOGGLE_ZOOM_OUT);
                  if(_loc4_)
                  {
                  }
               }
            }
            else
            {
               sendNotification(OptionsMenuNavigationConstants.TOGGLE_ZOOM_IN);
            }
         }
      }
   }
}

