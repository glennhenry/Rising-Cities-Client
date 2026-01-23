package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class ModifierValueVo
   {
      
      private var _energyValue:Number;
      
      private var _happyValue:Number;
      
      public function ModifierValueVo(param1:Number, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super();
            if(!_loc3_)
            {
               this._energyValue = param1;
               if(_loc4_)
               {
                  addr002f:
                  this._happyValue = param2;
               }
               return;
            }
         }
         §§goto(addr002f);
      }
      
      public function get energyValue() : Number
      {
         return this._energyValue;
      }
      
      public function get happyValue() : Number
      {
         return this._happyValue;
      }
   }
}

