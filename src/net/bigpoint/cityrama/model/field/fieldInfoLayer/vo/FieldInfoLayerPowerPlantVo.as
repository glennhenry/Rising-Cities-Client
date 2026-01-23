package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FieldInfoLayerPowerPlantVo extends FieldInfoLayerHeaderVo
   {
      
      private var _harvestProgressVo:TimerBarComponentVo;
      
      private var _constructionMode:Boolean;
      
      private var _enableProgressSumBar:Boolean;
      
      private var _moveInMode:Boolean;
      
      private var _hideSumComponent:Boolean;
      
      private var _layerMode:uint;
      
      private var _modifierValueVo:ModifierValueVo;
      
      public function FieldInfoLayerPowerPlantVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!_loc2_)
            {
               addr0025:
               this._harvestProgressVo = new TimerBarComponentVo();
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function get constructionMode() : Boolean
      {
         return this._constructionMode;
      }
      
      public function set constructionMode(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._constructionMode = param1;
         }
      }
      
      public function get enableProgressSumBar() : Boolean
      {
         return this._enableProgressSumBar;
      }
      
      public function set enableProgressSumBar(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || param1)
         {
            this._enableProgressSumBar = param1;
         }
      }
      
      public function get moveInMode() : Boolean
      {
         return this._moveInMode;
      }
      
      public function set moveInMode(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._moveInMode = param1;
         }
      }
      
      public function get hideSumComponent() : Boolean
      {
         return this._hideSumComponent;
      }
      
      public function set hideSumComponent(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || param1)
         {
            this._hideSumComponent = param1;
         }
      }
      
      public function get layerMode() : uint
      {
         return this._layerMode;
      }
      
      public function set layerMode(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._layerMode = param1;
         }
      }
      
      public function get harvestProgressVo() : TimerBarComponentVo
      {
         return this._harvestProgressVo;
      }
      
      public function set harvestProgressVo(param1:TimerBarComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._harvestProgressVo = param1;
         }
      }
      
      public function get modifierValueVo() : ModifierValueVo
      {
         return this._modifierValueVo;
      }
      
      public function set modifierValueVo(param1:ModifierValueVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._modifierValueVo = param1;
         }
      }
   }
}

