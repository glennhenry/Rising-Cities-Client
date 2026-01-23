package net.bigpoint.cityrama.model.evoucher.vo
{
   public class EvoucherResultVo
   {
      
      private var _success:Boolean;
      
      private var _localisedMessage:String;
      
      private var _paymentURL:String;
      
      public function EvoucherResultVo(param1:Object)
      {
         super();
         this._success = param1.success;
         this._localisedMessage = param1.message;
         this._paymentURL = param1.paymentURL;
      }
      
      public function get localisedMessage() : String
      {
         return this._localisedMessage;
      }
   }
}

