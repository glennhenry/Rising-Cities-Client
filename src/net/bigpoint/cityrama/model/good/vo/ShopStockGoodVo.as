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
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || Boolean(this))
         {
            super();
            if(!(_loc6_ && Boolean(param1)))
            {
               addr004d:
               this._goodVo = param1;
               if(!(_loc6_ && Boolean(param3)))
               {
                  this._stockCurrent = param2;
                  if(!_loc6_)
                  {
                     this._stockMax = param3;
                     if(_loc5_)
                     {
                        addr0076:
                        this._consumeAmount = param4;
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0076);
            }
            addr007c:
            return;
         }
         §§goto(addr004d);
      }
      
      public function get stockMax() : int
      {
         return this._stockMax;
      }
      
      public function set stockMax(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._stockMax = param1;
         }
      }
      
      public function get stockCurrent() : int
      {
         return this._stockCurrent;
      }
      
      public function set stockCurrent(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._stockCurrent = param1;
         }
      }
      
      public function get goodVo() : GoodObjectVo
      {
         return this._goodVo;
      }
      
      public function set goodVo(param1:GoodObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._goodVo = param1;
         }
      }
      
      public function get consumeAmount() : Number
      {
         return this._consumeAmount;
      }
      
      public function set consumeAmount(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._consumeAmount = param1;
         }
      }
   }
}

