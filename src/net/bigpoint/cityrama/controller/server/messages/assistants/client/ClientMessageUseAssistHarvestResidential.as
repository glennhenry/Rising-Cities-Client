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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:MessageVo = null;
         var _loc2_:CityAssistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         if(_loc6_)
         {
            if(_loc2_.isAssistActive(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL))
            {
               addr0053:
               _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               _loc4_ = _loc3_.createMessage(new Object(),ServerMessageConstants.PLAYFIELD_USE_HARVESTHELPER_RESIDENTIAL);
               if(_loc6_ || Boolean(param1))
               {
                  _loc3_.sendMessage(_loc4_);
                  if(!_loc5_)
                  {
                     sendNotification(ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_ANIMATION,ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL);
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
      }
   }
}

