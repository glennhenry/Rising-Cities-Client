package net.bigpoint.cityrama.controller.server.messages.boosterpack.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBoosterBuyCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBoosterBuyCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         var _loc4_:BoosterpackBookProxy = facade.retrieveProxy(BoosterpackBookProxy.NAME) as BoosterpackBookProxy;
         _loc4_.boughtBoosterpackVo = param1.getBody().booster as BoosterpackVo;
         var _loc5_:Boolean = Boolean(param1.getBody().rc);
         if(_loc5_)
         {
            _loc3_.et = _loc4_.boughtBoosterpackVo.realCurrencyCostConfig.type;
            _loc3_.cid = _loc4_.boughtBoosterpackVo.realCurrencyCostConfig.configId;
         }
         else
         {
            _loc3_.et = _loc4_.boughtBoosterpackVo.defaultCostConfig.type;
            _loc3_.cid = _loc4_.boughtBoosterpackVo.defaultCostConfig.configId;
         }
         _loc3_.bid = _loc4_.boughtBoosterpackVo.id;
         var _loc6_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.BOOSTER_BUY);
         _loc2_.sendMessage(_loc6_);
      }
   }
}

