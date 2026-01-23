package net.bigpoint.cityrama.controller.server.messages.inventory.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageMoveInventoryItemToFieldCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageMoveInventoryItemToFieldCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Object = null;
         var _loc6_:MessageVo = null;
         var _loc2_:ServerCommunicationProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         var _loc3_:PlayfieldItemInventoryViewProxy = facade.retrieveProxy(PlayfieldItemInventoryViewProxy.NAME) as PlayfieldItemInventoryViewProxy;
         var _loc4_:BillboardObject = param1.getBody() as BillboardObject;
         if((Boolean(_loc4_)) && Boolean(_loc3_.currentSelectedInventoryItem))
         {
            _loc5_ = new Object();
            _loc5_.x = _loc4_.billboardObjectVo.matrixCoordinates.x;
            _loc5_.y = _loc4_.billboardObjectVo.matrixCoordinates.y;
            _loc5_.bid = _loc3_.currentSelectedInventoryItem.configBagId;
            _loc5_.pid = _loc3_.currentSelectedInventoryItem.item.itemId;
            _loc6_ = _loc2_.createMessage(_loc5_,ServerMessageConstants.MOVE_INVENTORYITEM_TO_PLAYFIELD);
            _loc2_.sendMessage(_loc6_);
            _loc3_.currentSelectedInventoryItem = null;
         }
      }
   }
}

