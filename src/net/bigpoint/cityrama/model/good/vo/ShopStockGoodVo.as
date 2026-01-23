package net.bigpoint.cityrama.model.good.vo
{
   public class ShopStockGoodVo
   {
      
      private var _goodVo:GoodObjectVo;
      
      private var _stockCurrent:int;
      
      private var _stockMax:int;
      
      private var _consumeAmount:Number;
      
      public function ShopStockGoodVo(param1:GoodObjectVo, param2:int, param3:int, param4:Number)
      {
         super();
         this._goodVo = param1;
         this._stockCurrent = param2;
         this._stockMax = param3;
         this._consumeAmount = param4;
      }
      
      public function get stockMax() : int
      {
         return this._stockMax;
      }
      
      public function set stockMax(param1:int) : void
      {
         this._stockMax = param1;
      }
      
      public function get stockCurrent() : int
      {
         return this._stockCurrent;
      }
      
      public function set stockCurrent(param1:int) : void
      {
         this._stockCurrent = param1;
      }
      
      public function get goodVo() : GoodObjectVo
      {
         return this._goodVo;
      }
      
      public function set goodVo(param1:GoodObjectVo) : void
      {
         this._goodVo = param1;
      }
      
      public function get consumeAmount() : Number
      {
         return this._consumeAmount;
      }
      
      public function set consumeAmount(param1:Number) : void
      {
         this._consumeAmount = param1;
      }
   }
}

