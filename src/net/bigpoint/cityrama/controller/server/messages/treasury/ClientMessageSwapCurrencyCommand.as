package net.bigpoint.cityrama.controller.server.messages.treasury
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageSwapCurrencyCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageSwapCurrencyCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc4_:Object = new Object();
         var _loc5_:int = param1.getBody().amount as int;
         var _loc6_:int = param1.getBody().type as int;
         switch(_loc6_)
         {
            case 0:
               _loc4_.cri = Number(_loc3_.resourcesIds[ServerResConst.RESOURCE_VIRTUALCURRENCY]);
               break;
            case 1:
               _loc4_.cri = Number(_loc3_.resourcesIds[ServerResConst.RESOURCE_PRODUCTIONPOINTS]);
               break;
            case 2:
               _loc4_.cri = Number(_loc3_.resourcesIds[ServerResConst.RESOURCE_EDUCATIONPOINTS]);
         }
         _loc4_.a = _loc5_ as int;
         var _loc7_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PAYMENT_SWAP_CURRENCY);
         _loc2_.sendMessage(_loc7_);
      }
   }
}

