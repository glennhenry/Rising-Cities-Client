package net.bigpoint.cityrama.controller.server.messages.cityWheel.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageCityWheelSpinCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageCityWheelSpinCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:MessageVo = _loc2_.createMessage(new Object(),ServerMessageConstants.CITY_WHEEL_SPIN);
         _loc2_.sendMessage(_loc3_);
      }
   }
}

