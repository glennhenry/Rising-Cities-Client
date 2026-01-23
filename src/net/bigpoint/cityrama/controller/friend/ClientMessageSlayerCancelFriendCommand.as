package net.bigpoint.cityrama.controller.friend
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageSlayerCancelFriendCommand extends SimpleCommand
   {
      
      public function ClientMessageSlayerCancelFriendCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = null;
         var _loc3_:MessageVo = null;
         var _loc4_:Object = null;
         if(param1.getBody() != null)
         {
            _loc2_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
            _loc3_ = new MessageVo();
            _loc4_ = new Object();
            _loc4_.fid = param1.getBody();
            _loc3_ = _loc2_.createMessage(_loc4_,ServerMessageConstants.SLAYER_CANCEL_FRIEND);
            _loc2_.sendMessage(_loc3_);
         }
      }
   }
}

