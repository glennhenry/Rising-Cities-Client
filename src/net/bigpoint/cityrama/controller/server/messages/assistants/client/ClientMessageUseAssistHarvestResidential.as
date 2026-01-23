package net.bigpoint.cityrama.controller.server.messages.assistants.client
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.assistants.CityAssistProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageUseAssistHarvestResidential extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageUseAssistHarvestResidential()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:MessageVo = null;
         var _loc2_:CityAssistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         if(_loc2_.isAssistActive(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL))
         {
            _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
            _loc4_ = _loc3_.createMessage(new Object(),ServerMessageConstants.PLAYFIELD_USE_HARVESTHELPER_RESIDENTIAL);
            _loc3_.sendMessage(_loc4_);
            sendNotification(ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_ANIMATION,ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
         }
      }
   }
}

