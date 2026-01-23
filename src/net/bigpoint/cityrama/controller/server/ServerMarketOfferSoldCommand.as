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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ExternalInterfaceProxy = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc2_.updateMarket();
            if(!_loc3_)
            {
               sendNotification(ApplicationNotificationConstants.MARKET_OFFER_SOLD);
            }
         }
      }
   }
}

