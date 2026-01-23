package net.bigpoint.cityrama.controller.server.messages.friend
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageSlayerInviteFriendSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageSlayerInviteFriendSuccessCommand()
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         if(!_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.FRIEND_INVITE_SUCCESS);
         }
      }
   }
}

