package net.bigpoint.cityrama.view.upselling.vo
{
   public class UpsellingNotificationLayerVo extends UpsellingOfferLayerVo
   {
      
      private var _price:Number = 0;
      
      private var _amount:Number = 0;
      
      private var _currency:String = "€";
      
      private var _oldPaymentCall:Object;
      
      public function UpsellingNotificationLayerVo()
      {
         super();
      }
      
      public function get price() : Number
      {
         return this._price;
      }
      
      public function set price(param1:Number) : void
      {
         this._price = param1;
      }
      
      public function get currency() : String
      {
         return this._currency;
      }
      
      public function set currency(param1:String) : void
      {
         this._currency = param1;
      }
      
      public function get oldPaymentCall() : Object
      {
         return this._oldPaymentCall;
      }
      
      public function set oldPaymentCall(param1:Object) : void
      {
         this._oldPaymentCall = param1;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function set amount(param1:Number) : void
      {
         this._amount = param1;
      }
   }
}

