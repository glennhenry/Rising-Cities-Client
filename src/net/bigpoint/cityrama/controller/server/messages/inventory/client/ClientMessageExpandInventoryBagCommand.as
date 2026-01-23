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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:ServerCommunicationProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         if(_loc6_ || Boolean(param1))
         {
            if(_loc2_)
            {
               addr0066:
               _loc4_ = {};
               _loc4_.cid = _loc2_;
               _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.EXPAND_INVENTORY_BAG);
               if(_loc6_)
               {
                  _loc3_.sendMessage(_loc5_);
               }
            }
            return;
         }
         §§goto(addr0066);
      }
   }
}

