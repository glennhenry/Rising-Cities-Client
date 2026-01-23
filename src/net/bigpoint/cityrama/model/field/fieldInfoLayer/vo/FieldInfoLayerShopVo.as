package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import mx.collections.ArrayList;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FieldInfoLayerShopVo extends FieldInfoLayerHeaderVo
   {
      
      public var modifierValueVo:ModifierValueVo;
      
      private var _harvestProgressVo:TimerBarComponentVo;
      
      private var _residentialNeedVoList:ArrayList;
      
      private var _residentialNeedText:Vector.<String>;
      
      private var _layerMode:uint;
      
      private var _constructionMode:Boolean;
      
      private var _moveInMode:Boolean;
      
      public function FieldInfoLayerShopVo()
      {
         super();
         this._residentialNeedVoList = new ArrayList();
         this._residentialNeedText = new Vector.<String>();
      }
      
      public function get layerMode() : uint
      {
         return this._layerMode;
      }
      
      public function set layerMode(param1:uint) : void
      {
         this._layerMode = param1;
      }
      
      public function get residentialNeedVoList() : ArrayList
      {
         return this._residentialNeedVoList;
      }
      
      public function set residentialNeedVoList(param1:ArrayList) : void
      {
         this._residentialNeedVoList = param1;
      }
      
      public function get residentialNeedText() : Vector.<String>
      {
         return this._residentialNeedText;
      }
      
      public function set residentialNeedText(param1:Vector.<String>) : void
      {
         this._residentialNeedText = param1;
      }
      
      public function get moveInMode() : Boolean
      {
         return this._moveInMode;
      }
      
      public function set moveInMode(param1:Boolean) : void
      {
         this._moveInMode = param1;
      }
      
      public function get constructionMode() : Boolean
      {
         return this._constructionMode;
      }
      
      public function set constructionMode(param1:Boolean) : void
      {
         this._constructionMode = param1;
      }
      
      public function get harvestProgressVo() : TimerBarComponentVo
      {
         return this._harvestProgressVo;
      }
      
      public function set harvestProgressVo(param1:TimerBarComponentVo) : void
      {
         this._harvestProgressVo = param1;
      }
   }
}

