package net.bigpoint.cityrama.model.miniLayer.vo
{
   public class ExpansionMiniLayerVo
   {
      
      private var _costs:Number;
      
      private var _realCurrencyCosts:Number;
      
      private var _affordable:Boolean;
      
      private var _currentRealCurrency:Number;
      
      private var _onSale:Boolean;
      
      public function ExpansionMiniLayerVo()
      {
         super();
      }
      
      public function get costs() : Number
      {
         return this._costs;
      }
      
      public function set costs(param1:Number) : void
      {
         this._costs = param1;
      }
      
      public function get affordable() : Boolean
      {
         return this._affordable;
      }
      
      public function set affordable(param1:Boolean) : void
      {
         this._affordable = param1;
      }
      
      public function get realCurrencyCosts() : Number
      {
         return this._realCurrencyCosts;
      }
      
      public function set realCurrencyCosts(param1:Number) : void
      {
         this._realCurrencyCosts = param1;
      }
      
      public function get currentRealCurrency() : Number
      {
         return this._currentRealCurrency;
      }
      
      public function set currentRealCurrency(param1:Number) : void
      {
         this._currentRealCurrency = param1;
      }
      
      public function get onSale() : Boolean
      {
         return this._onSale;
      }
      
      public function set onSale(param1:Boolean) : void
      {
         this._onSale = param1;
      }
   }
}

