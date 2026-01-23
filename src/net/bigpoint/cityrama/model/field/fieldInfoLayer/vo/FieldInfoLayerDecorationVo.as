package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class FieldInfoLayerDecorationVo extends FieldInfoLayerHeaderVo
   {
      
      private var _modifierValueVo:ModifierValueVo;
      
      public function FieldInfoLayerDecorationVo()
      {
         super();
      }
      
      public function get modifierValueVo() : ModifierValueVo
      {
         return this._modifierValueVo;
      }
      
      public function set modifierValueVo(param1:ModifierValueVo) : void
      {
         this._modifierValueVo = param1;
      }
   }
}

