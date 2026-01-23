package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageCreateGround extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageCreateGround()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:PlaneObjectVo = param1.getBody() as PlaneObjectVo;
         var _loc4_:Object = new Object();
         _loc4_.cgi = param1.getBody().id;
         _loc4_.x = param1.getBody().x;
         _loc4_.y = param1.getBody().y;
         var _loc5_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_CREATE_GROUND);
         _loc2_.sendMessage(_loc5_);
      }
   }
}

