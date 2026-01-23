package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryRealCurrencyPackItemVo extends CityTreasuryInternalPackItemVo
   {
      
      private var _priceExternal:Number = 0;
      
      private var _discountedPriceExternal:Number = -1;
      
      private var _currency:String = "EUR";
      
      private var _packContentAmount:Number = 0;
      
      public function CityTreasuryRealCurrencyPackItemVo(param1:ConfigPaymentPackDTO)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(param1);
         }
      }
      
      public function set priceExternal(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._priceExternal = param1;
         }
      }
      
      public function set discountedPriceExternal(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._discountedPriceExternal = param1;
         }
      }
      
      override public function get price() : Number
      {
         return this._priceExternal;
      }
      
      override public function get hasDiscount() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._discountedPriceExternal == -1);
         if(!(_loc1_ && Boolean(this)))
         {
            return !§§pop();
         }
      }
      
      public function get discountedPrice() : Number
      {
         return this._discountedPriceExternal;
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
         if(_loc3_ || Boolean(param1))
         {
            this._currency = param1;
         }
      }
      
      public function set packContentAmount(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._packContentAmount = param1;
         }
      }
      
      override public function get packContentAmount() : Number
      {
         return this._packContentAmount;
      }
      
      public function get mainText() : String
      {
         return LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.realCurrency",[this._packContentAmount]);
      }
      
      public function get discountPriceLabel() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this.discountedPrice.toFixed(2) + " ");
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() + this._currency;
         }
      }
      
      public function get priceLabel() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this.price.toFixed(2) + " ");
         if(_loc1_)
         {
            return §§pop() + this._currency;
         }
      }
   }
}

