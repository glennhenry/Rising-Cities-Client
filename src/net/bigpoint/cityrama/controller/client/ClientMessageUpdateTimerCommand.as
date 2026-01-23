package net.bigpoint.cityrama.controller.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageUpdateTimerCommand extends SimpleCommand
   {
      
      public function ClientMessageUpdateTimerCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:MessageVo = new MessageVo();
         if(_loc5_ || Boolean(_loc3_))
         {
            _loc3_.header = ServerMessageConstants.TIMESTAMP_REQUEST;
            if(!(_loc4_ && Boolean(this)))
            {
               _loc3_.json = JSON.stringify(new Object());
               if(_loc5_ || Boolean(_loc2_))
               {
                  addr0092:
                  _loc2_.sendMessage(_loc3_);
               }
               return;
            }
         }
         §§goto(addr0092);
      }
   }
}

