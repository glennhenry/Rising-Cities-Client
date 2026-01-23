package net.bigpoint.cityrama.controller.server.messages.emergency.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageEmergencyProcessCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageEmergencyProcessCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
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
         if(!(_loc6_ && Boolean(this)))
         {
            _loc3_.bid = _loc4_;
            if(!_loc6_)
            {
               §§goto(addr0067);
            }
            §§goto(addr0086);
         }
         addr0067:
         if(param1.getBody().ps)
         {
            if(_loc7_)
            {
               addr0086:
               _loc3_.ps = param1.getBody().ps as Vector.<Object>;
            }
         }
         var _loc5_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PLAYFIELD_PROCESS_EMERGENCY);
         if(_loc7_)
         {
            _loc2_.sendMessage(_loc5_);
         }
      }
   }
}

