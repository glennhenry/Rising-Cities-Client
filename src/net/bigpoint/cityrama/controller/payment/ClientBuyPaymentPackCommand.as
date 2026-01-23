package net.bigpoint.cityrama.controller.payment
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientBuyPaymentPackCommand extends SimpleCommand
   {
      
      public function ClientBuyPaymentPackCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc2_:ConfigPaymentPackDTO = param1.getBody() as ConfigPaymentPackDTO;
         if(_loc2_)
         {
            _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
            _loc4_ = new Object();
            _loc4_.cppi = _loc2_.id;
            _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.PAYMENT_BUY_PACK);
            _loc3_.sendMessage(_loc5_);
         }
      }
   }
}

