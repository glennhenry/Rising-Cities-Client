package net.bigpoint.cityrama.controller.server.messages.inventory.server
{
   import net.bigpoint.cityrama.model.inventory.InventoryProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageExpandInventoryBagSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageExpandInventoryBagSuccessCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:int = int(_loc2_.json.s);
         var _loc4_:Number = int(_loc2_.json.c);
         var _loc5_:InventoryProxy = facade.retrieveProxy(InventoryProxy.NAME) as InventoryProxy;
         _loc5_.updateInventoryBagSlotCount(_loc4_,_loc3_);
      }
   }
}

