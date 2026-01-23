package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerNewMessageCommand extends SimpleCommand
   {
      
      public function ServerNewMessageCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:MessageVo = param1.getBody() as MessageVo;
         if(_loc3_ || Boolean(param1))
         {
            sendNotification(ServerNotificationConstants.SERVER_MESSAGE_ + _loc2_.header,_loc2_);
         }
      }
   }
}

