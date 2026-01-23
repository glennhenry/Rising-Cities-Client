package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerConnectedCommand extends SimpleCommand
   {
      
      public function ServerConnectedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_LOGIN);
      }
   }
}

