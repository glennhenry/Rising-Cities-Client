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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:FriendsProxy = facade.retrieveProxy(FriendsProxy.NAME) as FriendsProxy;
         var _loc3_:ExternalInterfaceProxy = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            _loc2_.newMessages = true;
            if(!_loc5_)
            {
               _loc3_.updateInbox();
               if(!_loc5_)
               {
                  addr0077:
                  sendNotification(ApplicationNotificationConstants.NEW_MESSAGES);
               }
               §§goto(addr0082);
            }
            §§goto(addr0077);
         }
         addr0082:
      }
   }
}

