package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerConnectedCommand extends SimpleCommand
   {
      
      public function ServerConnectedCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_LOGIN);
         }
      }
   }
}

