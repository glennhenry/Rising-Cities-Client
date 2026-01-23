package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuyPermissionCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuyPermissionCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         var _loc4_:Number = param1.getBody() as Number;
         if(_loc6_ || Boolean(this))
         {
            _loc3_.pid = _loc4_;
         }
         var _loc5_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PLAYFIELDITEM_BUY_PERMISSION);
         if(_loc6_ || Boolean(param1))
         {
            _loc2_.sendMessage(_loc5_);
         }
      }
   }
}

