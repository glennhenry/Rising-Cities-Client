package net.bigpoint.cityrama.controller.server.messages.inventory.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageExpandInventoryBagCommand extends SimpleCommand
   {
      
      public function ClientMessageExpandInventoryBagCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:ServerCommunicationProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         if(_loc2_)
         {
            _loc4_ = {};
            _loc4_.cid = _loc2_;
            var _loc5_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.EXPAND_INVENTORY_BAG);
            _loc3_.sendMessage(null);
         }
      }
   }
}

