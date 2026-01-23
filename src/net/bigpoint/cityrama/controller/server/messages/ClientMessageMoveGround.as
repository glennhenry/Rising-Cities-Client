package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageMoveGround extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageMoveGround()
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
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:PlaneObjectVo = PlaneObjectVo(param1.getBody());
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         _loc4_.gid = _loc2_.groundDTO.id;
         if(_loc6_ || Boolean(_loc2_))
         {
            _loc4_.x = _loc2_.matrixCoordinates.x;
            if(_loc6_)
            {
               _loc4_.y = _loc2_.matrixCoordinates.y;
            }
         }
         var _loc5_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_MOVE_GROUND);
         if(_loc6_ || Boolean(this))
         {
            _loc3_.sendMessage(_loc5_);
         }
      }
   }
}

