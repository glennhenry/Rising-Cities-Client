package net.bigpoint.cityrama.controller.server.messages.assistants.client
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.model.assistants.CityAssistProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuyAssistCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuyAssistCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:ConfigPaymentPackDTO = null;
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:CityAssistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         var _loc4_:Vector.<ConfigPaymentPackDTO> = _loc3_.getAssistPaymentPacks(_loc2_);
         if((Boolean(_loc4_)) && _loc4_.length > 0)
         {
            for each(_loc5_ in _loc4_)
            {
               if(_loc5_.type == ServerPaymentPackConst.INTERNAL)
               {
                  facade.sendNotification(ApplicationNotificationConstants.BUY_PAYMENT_PACK,_loc5_);
                  break;
               }
            }
         }
      }
   }
}

