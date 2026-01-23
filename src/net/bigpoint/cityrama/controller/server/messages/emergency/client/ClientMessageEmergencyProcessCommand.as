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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         var _loc4_:Number = param1.getBody().bid as Number;
         _loc3_.bid = _loc4_;
         if(param1.getBody().ps)
         {
            _loc3_.ps = param1.getBody().ps as Vector.<Object>;
         }
         var _loc5_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PLAYFIELD_PROCESS_EMERGENCY);
         _loc2_.sendMessage(_loc5_);
      }
   }
}

