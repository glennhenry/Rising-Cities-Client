package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class ModifierValueVo
   {
      
      private var _energyValue:Number;
      
      private var _happyValue:Number;
      
      public function ModifierValueVo(param1:Number, param2:Number)
      {
         super();
         this._energyValue = param1;
         this._happyValue = param2;
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

