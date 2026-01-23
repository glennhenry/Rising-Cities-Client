package net.bigpoint.cityrama.controller.server.messages.emergency.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageEmergencyCollectRewardCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageEmergencyCollectRewardCommand()
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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         var _loc4_:Number = param1.getBody().bid as Number;
         if(_loc7_)
         {
            _loc3_.bid = _loc4_;
         }
         var _loc5_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PLAYFIELD_COLLECT_EMERGENCY);
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            _loc2_.sendMessage(_loc5_);
         }
      }
   }
}

