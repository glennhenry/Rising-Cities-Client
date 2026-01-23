package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import mx.collections.ArrayList;
   import net.bigpoint.cityrama.model.common.vo.ImageTextValueVO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FieldInfoLayerProductionVo extends FieldInfoLayerHeaderVo
   {
      
      private var _harvestProgressVo:TimerBarComponentVo;
      
      private var _imageTextValueVoArrayList:ArrayList;
      
      private var _sumVo:ImageTextValueVO;
      
      private var _layerMode:uint;
      
      private var _constructionMode:Boolean;
      
      private var _enableProgressSumBar:Boolean;
      
      private var _moveInMode:Boolean;
      
      private var _hideSumComponent:Boolean;
      
      public function FieldInfoLayerProductionVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_)
            {
               this._harvestProgressVo = new TimerBarComponentVo();
               if(!_loc2_)
               {
                  addr002d:
                  this._sumVo = new ImageTextValueVO();
               }
            }
            return;
         }
         §§goto(addr002d);
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
      
      public function get sumVo() : ImageTextValueVO
      {
         return this._sumVo;
      }
      
      public function set sumVo(param1:ImageTextValueVO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._sumVo = param1;
         }
      }
      
      public function get imageTextValueVoArrayList() : ArrayList
      {
         return this._imageTextValueVoArrayList;
      }
      
      public function set imageTextValueVoArrayList(param1:ArrayList) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._imageTextValueVoArrayList = param1;
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
         if(_loc3_)
         {
            this._layerMode = param1;
         }
      }
      
      public function get constructionMode() : Boolean
      {
         return this._constructionMode;
      }
      
      public function set constructionMode(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
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
         if(!(_loc3_ && _loc2_))
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
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
   }
}

