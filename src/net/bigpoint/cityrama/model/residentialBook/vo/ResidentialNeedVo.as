package net.bigpoint.cityrama.model.residentialBook.vo
{
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionNeedVo;
   
   public class ResidentialNeedVo extends ProductionNeedVo
   {
      
      private var _locked:Boolean;
      
      private var _levelToUnlock:int;
      
      private var _shopLocaleId:Number;
      
      private var _tooltip:String;
      
      private var _maxAmount:int = 0;
      
      private var _available:Boolean = false;
      
      public function ResidentialNeedVo(param1:String, param2:String, param3:Boolean, param4:Boolean, param5:int = 0, param6:String = null)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_ || Boolean(this))
         {
            super(param1,param1,param2,0,0,"");
            if(!(_loc8_ && Boolean(param1)))
            {
               this._locked = param4;
               if(!_loc8_)
               {
                  this._levelToUnlock = param5;
                  if(!_loc8_)
                  {
                     addr006b:
                     this._tooltip = param6;
                     if(_loc7_)
                     {
                        addr0077:
                        this._available = param3;
                     }
                  }
                  return;
               }
               §§goto(addr0077);
            }
         }
         §§goto(addr006b);
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._locked = param1;
         }
      }
      
      public function get levelToUnlock() : int
      {
         return this._levelToUnlock;
      }
      
      public function get tooltip() : String
      {
         return this._tooltip;
      }
      
      public function get maxAmount() : int
      {
         return this._maxAmount;
      }
      
      public function set maxAmount(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._maxAmount = param1;
         }
      }
      
      public function set available(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._available = param1;
         }
      }
      
      override public function get available() : Boolean
      {
         return this._available;
      }
   }
}

