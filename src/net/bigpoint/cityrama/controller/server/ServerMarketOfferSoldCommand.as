package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.externalInterface.ExternalInterfaceProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMarketOfferSoldCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMarketOfferSoldCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ExternalInterfaceProxy = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
         _loc2_.updateMarket();
         sendNotification(ApplicationNotificationConstants.MARKET_OFFER_SOLD);
      }
   }
}

