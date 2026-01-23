package net.bigpoint.cityrama.controller.server.messages.professionals.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageProfessionalLevelUpCommand extends SimpleCommand
   {
      
      public function ClientMessageProfessionalLevelUpCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         var _loc4_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         var _loc5_:Number = Number(param1.getBody().id);
         var _loc6_:Boolean = Boolean(param1.getBody().accept);
         var _loc7_:Number = _loc4_.getProfessionalById(_loc5_).buildingId;
         _loc3_.prof = _loc5_;
         _loc3_.bid = _loc7_;
         _loc3_.asg = _loc6_;
         var _loc8_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PROFESSIONAL_LEVEL_UP);
         _loc2_.sendMessage(_loc8_);
      }
   }
}

