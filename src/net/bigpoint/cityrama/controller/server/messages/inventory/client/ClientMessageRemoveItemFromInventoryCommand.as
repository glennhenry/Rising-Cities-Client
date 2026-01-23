package net.bigpoint.cityrama.controller.server.messages.inventory.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageRemoveItemFromInventoryCommand extends SimpleCommand
   {
      
      public function ClientMessageRemoveItemFromInventoryCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Object = param1.getBody() as Object;
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = {};
         _loc4_.pid = _loc2_.itemId as Number;
         _loc4_.bid = _loc2_.bagId as Number;
         var _loc5_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.DELETE_INVENTORYITEM);
         _loc3_.sendMessage(_loc5_);
      }
   }
}

