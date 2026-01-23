package net.bigpoint.cityrama.controller
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class KaTestCommand extends SimpleCommand implements ICommand
   {
      
      public function KaTestCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         sendNotification(ApplicationNotificationConstants.RENEW_EXPANSION_SALE_MARKER);
      }
   }
}

