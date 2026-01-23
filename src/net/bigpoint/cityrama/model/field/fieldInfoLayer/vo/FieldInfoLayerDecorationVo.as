package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class FieldInfoLayerDecorationVo extends FieldInfoLayerHeaderVo
   {
      
      private var _modifierValueVo:ModifierValueVo;
      
      public function FieldInfoLayerDecorationVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function get modifierValueVo() : ModifierValueVo
      {
         return this._modifierValueVo;
      }
      
      public function set modifierValueVo(param1:ModifierValueVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._modifierValueVo = param1;
         }
      }
   }
}

