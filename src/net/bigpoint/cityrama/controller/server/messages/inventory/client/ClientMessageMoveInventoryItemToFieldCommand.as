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
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:Object = null;
         var _loc6_:MessageVo = null;
         var _loc2_:ServerCommunicationProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         var _loc3_:PlayfieldItemInventoryViewProxy = facade.retrieveProxy(PlayfieldItemInventoryViewProxy.NAME) as PlayfieldItemInventoryViewProxy;
         var _loc4_:BillboardObject = param1.getBody() as BillboardObject;
         §§push(Boolean(_loc4_));
         if(_loc8_ || Boolean(_loc3_))
         {
            var _temp_4:* = §§pop();
            §§push(_temp_4);
            if(_temp_4)
            {
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  §§pop();
                  if(!_loc7_)
                  {
                     §§goto(addr0088);
                  }
                  §§goto(addr008c);
               }
            }
         }
         addr0088:
         if(Boolean(_loc3_.currentSelectedInventoryItem))
         {
            addr008c:
            _loc5_ = new Object();
            _loc5_.x = _loc4_.billboardObjectVo.matrixCoordinates.x;
            if(!(_loc7_ && Boolean(param1)))
            {
               _loc5_.y = _loc4_.billboardObjectVo.matrixCoordinates.y;
               if(!(_loc7_ && Boolean(param1)))
               {
                  §§goto(addr00ce);
               }
               §§goto(addr00e9);
            }
            addr00ce:
            _loc5_.bid = _loc3_.currentSelectedInventoryItem.configBagId;
            if(!(_loc7_ && Boolean(this)))
            {
               _loc5_.pid = _loc3_.currentSelectedInventoryItem.item.itemId;
               addr00e9:
            }
            _loc6_ = _loc2_.createMessage(_loc5_,ServerMessageConstants.MOVE_INVENTORYITEM_TO_PLAYFIELD);
            if(_loc8_ || Boolean(_loc3_))
            {
               _loc2_.sendMessage(_loc6_);
               if(!_loc7_)
               {
                  _loc3_.currentSelectedInventoryItem = null;
               }
            }
            §§goto(addr0136);
         }
         addr0136:
      }
   }
}

