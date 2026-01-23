package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class FieldInfoLayerCinemaVo extends FieldInfoLayerHeaderVo
   {
      
      private var _moodEnergyModifierValueVo:ModifierValueVo;
      
      private var _infoText:String;
      
      public function FieldInfoLayerCinemaVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function get moodEnergyModifierValueVo() : ModifierValueVo
      {
         return this._moodEnergyModifierValueVo;
      }
      
      public function set moodEnergyModifierValueVo(param1:ModifierValueVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._moodEnergyModifierValueVo = param1;
         }
      }
      
      public function get infoText() : String
      {
         return this._infoText;
      }
      
      public function set infoText(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._infoText = param1;
         }
      }
   }
}

