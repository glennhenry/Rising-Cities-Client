package net.bigpoint.cityrama.controller.server.messages.professionals.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageProfessionalRenewCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageProfessionalRenewCommand()
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
         if(param1.getBody().dextro)
         {
            _loc3_.rc = true;
         }
         else
         {
            _loc3_.rc = false;
         }
         var _loc4_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         _loc3_.bid = _loc4_.getProfessionalById(_loc3_.pid).buildingId;
         var _loc5_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PROFESSIONAL_RENEW);
         _loc2_.sendMessage(_loc5_);
      }
   }
}

