package net.bigpoint.cityrama.controller.payment
{
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class SendBonusCodeToPHPCommand extends SimpleCommand implements ICommand
   {
      
      private var _openPopupOnFail:Boolean = true;
      
      public function SendBonusCodeToPHPCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:URLLoader = null;
         var _loc5_:URLRequest = null;
         var _loc6_:URLVariables = null;
         var _loc2_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         var _loc3_:String = param1.getBody().bonus as String;
         this._openPopupOnFail = param1.getBody().popup as Boolean;
         if(_loc3_ != "" && _loc3_ != " " && _loc3_ != null)
         {
            _loc4_ = new URLLoader();
            _loc5_ = new URLRequest(_loc2_.evoucherUrl);
            _loc4_.addEventListener(Event.COMPLETE,this.handleResponse);
            _loc5_.method = URLRequestMethod.POST;
            _loc6_ = new URLVariables();
            _loc6_.evoucher = _loc3_;
            _loc6_.book = 1;
            _loc5_.data = _loc6_;
            _loc4_.load(_loc5_);
         }
      }
      
      private function handleResponse(param1:Event) : void
      {
         var _loc2_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         var _loc3_:URLLoader = param1.target as URLLoader;
         if(_loc3_.data != "")
         {
            var _loc4_:Object = JSON.parse(_loc3_.data);
            if(_loc4_.success)
            {
               if(null.paymentURL)
               {
                  var _loc5_:String = null.paymentURL;
                  var _loc6_:URLRequest = new URLRequest(null);
                  navigateToURL(null,"_blank");
                  if(_loc2_.isChrome)
                  {
                     ExternalInterface.call("openPayment");
                  }
                  else
                  {
                     var _loc7_:URLRequest = new URLRequest(_loc2_.paymentURL);
                     navigateToURL(null,"_newtab");
                  }
               }
            }
            else if(this._openPopupOnFail)
            {
               sendNotification(MiniLayerConstants.OPEN_MINI_EVOUCHER_FAILURE,null);
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.BONUS_CODE_FAIL,null.message);
            }
         }
      }
   }
}

