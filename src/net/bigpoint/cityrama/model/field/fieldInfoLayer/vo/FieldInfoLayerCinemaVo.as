package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class FieldInfoLayerCinemaVo extends FieldInfoLayerHeaderVo
   {
      
      private var _moodEnergyModifierValueVo:ModifierValueVo;
      
      private var _infoText:String;
      
      public function FieldInfoLayerCinemaVo()
      {
         super();
      }
      
      public function get moodEnergyModifierValueVo() : ModifierValueVo
      {
         return this._moodEnergyModifierValueVo;
      }
      
      public function set moodEnergyModifierValueVo(param1:ModifierValueVo) : void
      {
         this._moodEnergyModifierValueVo = param1;
      }
      
      public function get infoText() : String
      {
         return this._infoText;
      }
      
      public function set infoText(param1:String) : void
      {
         this._infoText = param1;
      }
   }
}

