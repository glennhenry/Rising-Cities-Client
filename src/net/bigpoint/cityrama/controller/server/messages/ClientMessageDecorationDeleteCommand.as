package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageDecorationDeleteCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageDecorationDeleteCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Number = Number(param1.getBody());
         var _loc4_:Object = new Object();
         _loc4_.did = _loc3_;
         var _loc5_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_DELETE_DECORATION);
         if(_loc7_ || Boolean(_loc3_))
         {
            _loc2_.sendMessage(_loc5_);
         }
      }
   }
}

