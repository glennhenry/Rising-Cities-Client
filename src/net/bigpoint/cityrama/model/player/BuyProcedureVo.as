package net.bigpoint.cityrama.model.player
{
   public class BuyProcedureVo
   {
      
      private var _energyCost:Number;
      
      private var _realCurrencyCost:Number;
      
      private var _ingameCurrencyCost:Number;
      
      public function BuyProcedureVo(param1:Number, param2:Number, param3:Number)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param2))
         {
            super();
            if(!(_loc5_ && Boolean(param2)))
            {
               this._energyCost = param1;
               if(!(_loc5_ && Boolean(param2)))
               {
                  §§goto(addr0060);
               }
               §§goto(addr0073);
            }
            addr0060:
            this._realCurrencyCost = param2;
            if(_loc4_ || Boolean(this))
            {
               addr0073:
               this._ingameCurrencyCost = param3;
            }
            §§goto(addr0078);
         }
         addr0078:
      }
      
      public function get realCurrencyCost() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._realCurrencyCost);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     return 0;
                  }
               }
               addr0045:
               return this._realCurrencyCost;
            }
         }
         §§goto(addr0045);
      }
      
      public function get ingameCurrencyCost() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this._ingameCurrencyCost);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr002f);
                  }
               }
               return this._ingameCurrencyCost;
            }
         }
         addr002f:
         return 0;
      }
      
      public function get energyCost() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._energyCost);
            if(!(_loc1_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr003a);
                  }
               }
               return this._energyCost;
            }
         }
         addr003a:
         return 0;
      }
   }
}

