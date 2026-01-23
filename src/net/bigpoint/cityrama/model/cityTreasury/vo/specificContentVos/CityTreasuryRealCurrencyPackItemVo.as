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
         super(param1);
      }
      
      public function set priceExternal(param1:Number) : void
      {
         this._priceExternal = param1;
      }
      
      public function set discountedPriceExternal(param1:Number) : void
      {
         this._discountedPriceExternal = param1;
      }
      
      override public function get price() : Number
      {
         return this._priceExternal;
      }
      
      override public function get hasDiscount() : Boolean
      {
         return this._discountedPriceExternal != -1;
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
         this._currency = param1;
      }
      
      public function set packContentAmount(param1:Number) : void
      {
         this._packContentAmount = param1;
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
         return this.discountedPrice.toFixed(2) + " " + this._currency;
      }
      
      public function get priceLabel() : String
      {
         return this.price.toFixed(2) + " " + this._currency;
      }
   }
}

