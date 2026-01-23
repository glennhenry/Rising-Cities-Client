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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc2_:Object = param1.getBody();
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            if(_loc2_)
            {
               addr004c:
               _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               _loc4_ = new Object();
               _loc4_.bid = _loc2_.boosterId;
               if(!_loc6_)
               {
                  _loc4_.real = _loc2_.real;
               }
               _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.IMPROVEMENT_BOOSTER_BUY);
               if(!_loc6_)
               {
                  _loc3_.sendMessage(_loc5_);
               }
            }
            return;
         }
         §§goto(addr004c);
      }
   }
}

