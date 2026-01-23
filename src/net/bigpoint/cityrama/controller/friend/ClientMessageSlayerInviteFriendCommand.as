package net.bigpoint.cityrama.controller.friend
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageSlayerInviteFriendCommand extends SimpleCommand
   {
      
      public function ClientMessageSlayerInviteFriendCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = null;
         var _loc3_:Object = null;
         var _loc4_:MessageVo = null;
         if(param1.getBody() != null)
         {
            _loc2_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
            _loc3_ = new Object();
            _loc3_.fid = param1.getBody();
            _loc4_ = _loc2_.createMessage(_loc3_,ServerMessageConstants.SLAYER_INVITE_FRIEND);
            _loc2_.sendMessage(_loc4_);
         }
      }
   }
}

