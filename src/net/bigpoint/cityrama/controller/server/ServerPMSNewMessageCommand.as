package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.externalInterface.ExternalInterfaceProxy;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerPMSNewMessageCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerPMSNewMessageCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:FriendsProxy = facade.retrieveProxy(FriendsProxy.NAME) as FriendsProxy;
         var _loc3_:ExternalInterfaceProxy = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
         _loc2_.newMessages = true;
         _loc3_.updateInbox();
         sendNotification(ApplicationNotificationConstants.NEW_MESSAGES);
      }
   }
}

