package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import mx.collections.ArrayList;
   import net.bigpoint.cityrama.model.common.vo.ImageTextValueVO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FieldInfoLayerResidentialVo extends FieldInfoLayerHeaderVo
   {
      
      private var _harvestProgressVo:TimerBarComponentVo;
      
      private var _imageTextValueVoArrayList:ArrayList;
      
      private var _sumVo:ImageTextValueVO;
      
      private var _layerMode:uint;
      
      private var _constructionMode:Boolean;
      
      private var _enableProgressSumBar:Boolean;
      
      private var _moveInMode:Boolean;
      
      private var _hideSumComponent:Boolean;
      
      private var _residentIconLib:String;
      
      private var _residentIconName:String;
      
      private var _improvementIcons:ImprovementIconComponentVo;
      
      private var _masteryLevel:int = -1;
      
      private var _masteryProgress:Number;
      
      public function FieldInfoLayerResidentialVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               this._harvestProgressVo = new TimerBarComponentVo();
               if(_loc1_ || Boolean(this))
               {
                  addr0059:
                  this._imageTextValueVoArrayList = new ArrayList();
                  if(!_loc2_)
                  {
                     this._sumVo = new ImageTextValueVO();
                     if(!_loc2_)
                     {
                        addr0079:
                        this._improvementIcons = new ImprovementIconComponentVo();
                     }
                  }
               }
               return;
            }
            §§goto(addr0059);
         }
         §§goto(addr0079);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
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
         if(_loc3_)
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
         if(!(_loc2_ && Boolean(this)))
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
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
         if(_loc2_ || Boolean(this))
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
         if(_loc2_ || _loc3_)
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
         if(!(_loc2_ && Boolean(this)))
         {
            this._hideSumComponent = param1;
         }
      }
      
      public function get residentIconName() : String
      {
         return this._residentIconName;
      }
      
      public function set residentIconName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._residentIconName = param1;
         }
      }
      
      public function get residentIconLib() : String
      {
         return this._residentIconLib;
      }
      
      public function set residentIconLib(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._residentIconLib = param1;
         }
      }
      
      public function get improvementIcons() : ImprovementIconComponentVo
      {
         return this._improvementIcons;
      }
      
      public function set improvementIcons(param1:ImprovementIconComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._improvementIcons = param1;
         }
      }
      
      public function get masteryLevel() : int
      {
         return this._masteryLevel;
      }
      
      public function set masteryLevel(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._masteryLevel = param1;
         }
      }
      
      public function get masteryProgress() : Number
      {
         return this._masteryProgress;
      }
      
      public function set masteryProgress(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._masteryProgress = param1;
         }
      }
   }
}

