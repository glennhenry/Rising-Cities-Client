package net.bigpoint.cityrama.controller.server.messages.inventory.server
{
   import net.bigpoint.cityrama.model.inventory.InventoryProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageInventoryUpdateCommand extends SimpleCommand
   {
      
      public function ServerMessageInventoryUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:InventoryProxy = facade.retrieveProxy(InventoryProxy.NAME) as InventoryProxy;
         var _loc3_:MessageVo = MessageVo(param1.getBody());
         if(_loc3_.json.i)
         {
            var _loc4_:InventoryItemDTO = ConfigFactory.buildInventoryItemDTO(_loc3_.json.i);
            _loc2_.updateInventoryItem(null);
         }
      }
   }
}

