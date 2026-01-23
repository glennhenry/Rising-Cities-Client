package net.bigpoint.cityrama.controller.friend
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageSlayerInviteRequestFriendListCommand extends SimpleCommand
   {
      
      public function ClientMessageSlayerInviteRequestFriendListCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         var _loc4_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.SLAYER_INVITE_REQUEST_FRIENDLIST);
         _loc2_.sendMessage(_loc4_);
      }
   }
}

