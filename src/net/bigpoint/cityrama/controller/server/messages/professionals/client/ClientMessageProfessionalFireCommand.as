package net.bigpoint.cityrama.controller.server.messages.professionals.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageProfessionalFireCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageProfessionalFireCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         if(param1.getBody().pid)
         {
            _loc3_.pid = param1.getBody().pid as Number;
         }
         if(param1.getBody().bid)
         {
            _loc3_.bid = param1.getBody().bid as Number;
         }
         var _loc4_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PROFESSIONAL_DISMISS);
         _loc2_.sendMessage(_loc4_);
      }
   }
}

