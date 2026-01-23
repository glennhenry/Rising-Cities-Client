package net.bigpoint.cityrama.controller.server.messages.friend
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageSlayerInviteFriendFailedCommand extends SimpleCommand
   {
      
      public function ServerMessageSlayerInviteFriendFailedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         if(Boolean(_loc2_.json.em) && _loc2_.json.em == "userIsAlreadyAFriend")
         {
            sendNotification(ApplicationNotificationConstants.FRIEND_INVITE_FAIL,true);
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.FRIEND_INVITE_FAIL,false);
         }
      }
   }
}

