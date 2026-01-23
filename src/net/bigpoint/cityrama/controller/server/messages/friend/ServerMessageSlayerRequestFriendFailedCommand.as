package net.bigpoint.cityrama.controller.server.messages.friend
{
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageSlayerRequestFriendFailedCommand extends SimpleCommand
   {
      
      public function ServerMessageSlayerRequestFriendFailedCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
      }
   }
}

