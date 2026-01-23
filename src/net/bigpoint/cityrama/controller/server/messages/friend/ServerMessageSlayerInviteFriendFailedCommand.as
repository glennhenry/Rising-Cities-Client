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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         if(!_loc4_)
         {
            §§push(Boolean(_loc2_.json.em));
            if(_loc3_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(_temp_1)
               {
                  if(!_loc4_)
                  {
                     addr0049:
                     §§pop();
                     if(!_loc4_)
                     {
                        §§goto(addr0068);
                     }
                     §§goto(addr0079);
                  }
               }
               addr0068:
               if(_loc2_.json.em == "userIsAlreadyAFriend")
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0079:
                     sendNotification(ApplicationNotificationConstants.FRIEND_INVITE_FAIL,true);
                     if(_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  sendNotification(ApplicationNotificationConstants.FRIEND_INVITE_FAIL,false);
               }
               §§goto(addr0098);
            }
            §§goto(addr0049);
         }
         addr0098:
      }
   }
}

