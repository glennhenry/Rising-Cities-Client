package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import net.bigpoint.util.LocaUtils;
   
   public class ExternalPaymentPackInfoVo
   {
      
      private var _packConfigId:Number;
      
      private var _price:Number = 0;
      
      private var _discountedPrice:Number = 0;
      
      private var _currency:String = "EUR";
      
      private var _amount:Number = 0;
      
      public function ExternalPaymentPackInfoVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function get packConfigId() : Number
      {
         return this._packConfigId;
      }
      
      public function set packConfigId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._packConfigId = param1;
         }
      }
      
      public function get price() : Number
      {
         return this._price;
      }
      
      public function set price(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._price = param1;
         }
      }
      
      public function get discountedPrice() : Number
      {
         return this._discountedPrice;
      }
      
      public function set discountedPrice(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._discountedPrice = param1;
         }
      }
      
      public function get currency() : String
      {
         return this._currency;
      }
      
      public function set currency(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._currency = param1;
         }
      }
      
      public function get currencyAsSymbol() : String
      {
         return LocaUtils.getCurrencySymbol(this.currency);
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function set amount(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._amount = param1;
         }
      }
   }
}

