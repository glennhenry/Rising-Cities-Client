package net.bigpoint.cityrama.controller.server.messages.improvements.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuyImprovementBoosterPackCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuyImprovementBoosterPackCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc2_:Object = param1.getBody();
         if(_loc2_)
         {
            _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
            _loc4_ = new Object();
            _loc4_.bid = _loc2_.boosterId;
            _loc4_.real = _loc2_.real;
            _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.IMPROVEMENT_BOOSTER_BUY);
            _loc3_.sendMessage(_loc5_);
         }
      }
   }
}

