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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = param1.getBody() as MessageVo;
         sendNotification(ServerNotificationConstants.SERVER_MESSAGE_ + _loc2_.header,_loc2_);
      }
   }
}

