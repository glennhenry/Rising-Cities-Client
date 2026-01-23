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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               this._residentialNeedVoList = new ArrayList();
               if(_loc2_)
               {
                  addr0038:
                  this._residentialNeedText = new Vector.<String>();
               }
               §§goto(addr0046);
            }
            §§goto(addr0038);
         }
         addr0046:
      }
      
      public function get layerMode() : uint
      {
         return this._layerMode;
      }
      
      public function set layerMode(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._layerMode = param1;
         }
      }
      
      public function get residentialNeedVoList() : ArrayList
      {
         return this._residentialNeedVoList;
      }
      
      public function set residentialNeedVoList(param1:ArrayList) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._residentialNeedVoList = param1;
         }
      }
      
      public function get residentialNeedText() : Vector.<String>
      {
         return this._residentialNeedText;
      }
      
      public function set residentialNeedText(param1:Vector.<String>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._residentialNeedText = param1;
         }
      }
      
      public function get moveInMode() : Boolean
      {
         return this._moveInMode;
      }
      
      public function set moveInMode(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._moveInMode = param1;
         }
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
         if(!(_loc3_ && _loc3_))
         {
            this._constructionMode = param1;
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
         if(_loc2_)
         {
            this._harvestProgressVo = param1;
         }
      }
   }
}

