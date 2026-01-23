package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObject;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBasementViewManager;
   import net.bigpoint.util.RandomUtilities;
   import net.bigpoint.util.RenderHelper;
   
   public class BasementViewManager implements IBasementViewManager
   {
      
      protected var _billboardObjVo:BillboardObjectVo;
      
      private var _billboardContainer:SmartObjectContainer;
      
      protected var _basementAsset:*;
      
      private var _currentNormalAsset:DisplayObject;
      
      private var _currentBasememtAsset:DisplayObject;
      
      private var _assetReferences:BillboardAssetsReferenceHolder;
      
      private var _mainAssetSource:*;
      
      private var _isDirty:Boolean;
      
      private var _inBasementView:Boolean;
      
      protected var _basementAssetAvailable:Boolean;
      
      protected var _dimensionRect:Rectangle;
      
      private var _mainAssetChanged:Boolean;
      
      public function BasementViewManager()
      {
         super();
      }
      
      private static function checkLabel(param1:MovieClip, param2:String) : Boolean
      {
         var _loc3_:FrameLabel = null;
         var _loc4_:int = 0;
         while(_loc4_ < param1.currentLabels.length)
         {
            _loc3_ = param1.currentLabels[_loc4_];
            if(_loc3_.name == param2)
            {
               return true;
            }
            _loc4_++;
         }
         return false;
      }
      
      public function prepareBasementViewManager(param1:BillboardObjectVo, param2:SmartObjectContainer, param3:BillboardAssetsReferenceHolder) : void
      {
         this._billboardObjVo = param1;
         this._billboardContainer = param2;
         this._assetReferences = param3;
         this._mainAssetSource = this._assetReferences.mainAsset;
         this.determineBasementAsset();
      }
      
      public function invalidateBasementViewManager(param1:Boolean = false) : void
      {
         this.nullCheck("BasementViewManager, prepare before invalidate!");
         if(this._basementAssetAvailable)
         {
            this._isDirty = true;
            if(param1)
            {
               if(this.mainAssetChanged)
               {
                  this._mainAssetChanged = true;
                  this.determineBasementAsset();
               }
            }
            else if(this._billboardObjVo.isInBaseMode)
            {
               this.changeBackToNormalView();
            }
            else
            {
               this.changeToBasementView();
            }
         }
      }
      
      private function determineBasementAsset() : void
      {
         if(this._mainAssetSource is PreloadableDisplayObject && !(this._mainAssetSource as PreloadableDisplayObject).loadComplete)
         {
            (this._mainAssetSource as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handleSourcePreloadComplete);
            return;
         }
         if(checkLabel(this._mainAssetSource.presentation as MovieClip,"base_" + this._billboardObjVo.currentLevel))
         {
            (this._mainAssetSource.presentation as MovieClip).gotoAndStop("base_" + this._billboardObjVo.currentLevel);
            if(this._mainAssetSource.presentation.numChildren > 0)
            {
               this._dimensionRect = this._mainAssetSource.presentation.getChildAt(1).getBounds(this._mainAssetSource.presentation);
               this._basementAsset = this._mainAssetSource.presentation.getChildAt(1);
               this._basementAssetAvailable = true;
               this.checkCurrentModeAfterChange();
            }
            else
            {
               this._basementAsset = this._assetReferences.basementAsset;
               this.checkStandardBasementAsset();
            }
         }
         else
         {
            this._basementAsset = this._assetReferences.basementAsset;
            this.checkStandardBasementAsset();
         }
      }
      
      private function checkCurrentModeAfterChange() : void
      {
         if(this._mainAssetChanged)
         {
            this._mainAssetChanged = false;
            if(this._billboardObjVo.isInBaseMode)
            {
               this.changeToBasementView();
            }
         }
      }
      
      private function get mainAssetChanged() : Boolean
      {
         if(this._currentNormalAsset != null)
         {
            if(!RandomUtilities.isEqual(this._billboardContainer.currentImage,this._currentNormalAsset) && !RandomUtilities.isEqual(this._billboardContainer.currentImage,this._currentBasememtAsset))
            {
               return true;
            }
         }
         else if(this._billboardContainer.currentImage)
         {
            this._currentNormalAsset = this._billboardContainer.currentImage;
            return true;
         }
         return false;
      }
      
      protected function checkStandardBasementAsset() : void
      {
         if(this._basementAsset is PreloadableDisplayObject && !(this._basementAsset as PreloadableDisplayObject).loadComplete)
         {
            this._basementAsset.addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.onLoadComplete);
            this._basementAssetAvailable = false;
         }
         else
         {
            this._basementAsset.presentation.gotoAndStop(this.targetFrame);
            this._dimensionRect = this._basementAsset.presentation.getChildAt(1).getBounds(this._basementAsset.presentation);
            this._basementAsset = this._basementAsset.presentation.getChildAt(1);
            this._basementAssetAvailable = true;
            this.checkCurrentModeAfterChange();
         }
      }
      
      protected function get targetFrame() : String
      {
         var _loc1_:String = null;
         for each(_loc1_ in this._billboardObjVo.configPlayfieldItemVo.tags)
         {
            if(_loc1_ == ServerRestrictionConstants.SEA_WHITELIST)
            {
               return "SEA_base_" + this._billboardObjVo.configPlayfieldItemVo.sizeX + "_" + this._billboardObjVo.configPlayfieldItemVo.sizeY;
            }
            if(_loc1_ == ServerRestrictionConstants.COAST_WHITELIST || _loc1_ == ServerRestrictionConstants.FISHINGGROUND_WHITELIST)
            {
               return "COAST_base_" + this._billboardObjVo.configPlayfieldItemVo.sizeX + "_" + this._billboardObjVo.configPlayfieldItemVo.sizeY;
            }
         }
         return "base_" + this._billboardObjVo.configPlayfieldItemVo.sizeX + "_" + this._billboardObjVo.configPlayfieldItemVo.sizeY;
      }
      
      protected function onLoadComplete(param1:Event) : void
      {
         this._basementAsset.removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.onLoadComplete);
         this.checkStandardBasementAsset();
      }
      
      private function handleSourcePreloadComplete(param1:Event) : void
      {
         (this._assetReferences.mainAsset as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handleSourcePreloadComplete);
         this.determineBasementAsset();
      }
      
      private function changeToBasementView() : void
      {
         this._currentNormalAsset = this._billboardContainer.currentImage;
         while(this._billboardContainer.numChildren > 0)
         {
            this._billboardContainer.removeChildAt(0);
         }
         this._currentBasememtAsset = RenderHelper.getRendered(this._basementAsset,this._dimensionRect);
         this._billboardContainer.addChild(this._currentBasememtAsset);
         this._billboardObjVo.isInBaseMode = true;
         this._inBasementView = true;
         this._billboardContainer.invalidate();
         this._isDirty = false;
      }
      
      private function changeBackToNormalView() : void
      {
         while(this._billboardContainer.numChildren > 0)
         {
            this._billboardContainer.removeChildAt(0);
         }
         this._billboardContainer.addChild(this._currentNormalAsset);
         this._billboardObjVo.isInBaseMode = false;
         this._inBasementView = false;
         this._billboardContainer.invalidate();
         this._isDirty = false;
      }
      
      private function nullCheck(param1:String) : void
      {
         if(this._billboardObjVo == null || this._billboardContainer == null)
         {
            throw new RamaCityError(param1);
         }
      }
   }
}

