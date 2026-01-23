package net.bigpoint.cityrama.controller.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageUpdateTimerCommand extends SimpleCommand
   {
      
      public function ClientMessageUpdateTimerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:MessageVo = new MessageVo();
         _loc3_.header = ServerMessageConstants.TIMESTAMP_REQUEST;
         _loc3_.json = JSON.stringify(new Object());
         _loc2_.sendMessage(_loc3_);
      }
   }
}

