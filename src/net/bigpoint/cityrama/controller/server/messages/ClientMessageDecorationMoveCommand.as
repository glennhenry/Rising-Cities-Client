package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageDecorationMoveCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageDecorationMoveCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:DecorationFieldObjectVo = DecorationFieldObjectVo(param1.getBody());
         var _loc4_:Object = new Object();
         _loc4_.did = _loc3_.decorationVo.dto.id;
         _loc4_.x = _loc3_.matrix3dCoordinates.x;
         _loc4_.y = _loc3_.matrix3dCoordinates.y;
         var _loc5_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_MOVE_DECORATION);
         _loc2_.sendMessage(_loc5_);
      }
   }
}

