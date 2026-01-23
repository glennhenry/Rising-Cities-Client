package net.bigpoint.cityrama.model.player
{
   public class BuyProcedureVo
   {
      
      private var _energyCost:Number;
      
      private var _realCurrencyCost:Number;
      
      private var _ingameCurrencyCost:Number;
      
      public function BuyProcedureVo(param1:Number, param2:Number, param3:Number)
      {
         super();
         this._energyCost = param1;
         this._realCurrencyCost = param2;
         this._ingameCurrencyCost = param3;
      }
      
      public function get realCurrencyCost() : Number
      {
         if(!this._realCurrencyCost)
         {
            return 0;
         }
         return this._realCurrencyCost;
      }
      
      public function get ingameCurrencyCost() : Number
      {
         if(!this._ingameCurrencyCost)
         {
            return 0;
         }
         return this._ingameCurrencyCost;
      }
      
      public function get energyCost() : Number
      {
         if(!this._energyCost)
         {
            return 0;
         }
         return this._energyCost;
      }
   }
}

