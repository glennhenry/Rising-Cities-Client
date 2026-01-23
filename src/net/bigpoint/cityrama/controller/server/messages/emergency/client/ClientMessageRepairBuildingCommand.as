package net.bigpoint.cityrama.controller.server.messages.emergency.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageRepairBuildingCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageRepairBuildingCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         var _loc4_:Number = param1.getBody().bid as Number;
         var _loc5_:Boolean = param1.getBody().rc as Boolean;
         if(!_loc7_)
         {
            _loc3_.bid = _loc4_;
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               addr0081:
               _loc3_.r = _loc5_;
            }
            var _loc6_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PLAYFIELD_REPAIR_BUILDING);
            if(!_loc7_)
            {
               _loc2_.sendMessage(_loc6_);
            }
            return;
         }
         §§goto(addr0081);
      }
   }
}

