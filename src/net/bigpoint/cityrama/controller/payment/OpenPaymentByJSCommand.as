package net.bigpoint.cityrama.controller.payment
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import mx.controls.Alert;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenPaymentByJSCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenPaymentByJSCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var paymentRequest:URLRequest = null;
         var catString:String = null;
         var note:INotification = param1;
         var category:String = note.getBody() as String;
         var flashVarProxy:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         switch(category)
         {
            case CityTreasuryProxy.PAYMENT_CATEGORY_STARTER:
            case CityTreasuryProxy.PAYMENT_CATEGORY_CASH_FOR_ACTION:
               catString = "&" + category;
               break;
            default:
               catString = "&" + CityTreasuryProxy.PAYMENT_CATEGORY_DEFAULT;
         }
         try
         {
            paymentRequest = new URLRequest(flashVarProxy.paymentURL + catString);
            navigateToURL(paymentRequest,"_blank");
         }
         catch(e:Error)
         {
            Alert.show("PHP CALL","error only website");
         }
      }
   }
}

