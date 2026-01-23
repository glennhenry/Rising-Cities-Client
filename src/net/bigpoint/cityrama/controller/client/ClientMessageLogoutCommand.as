package net.bigpoint.cityrama.controller.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageLogoutCommand extends SimpleCommand
   {
      
      public function ClientMessageLogoutCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
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
         if(!_loc4_)
         {
            _loc3_.header = ServerMessageConstants.LOGOUT;
            if(!_loc4_)
            {
               _loc3_.json = JSON.stringify(new Object());
               addr0054:
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§goto(addr0081);
               }
               §§goto(addr0095);
            }
            addr0081:
            _loc2_.sendMessage(_loc3_);
            if(_loc5_ || Boolean(_loc2_))
            {
               addr0095:
               _loc2_.disconnect();
            }
            return;
         }
         §§goto(addr0054);
      }
   }
}

