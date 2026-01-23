package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBoulderDemolitionAssetManager;
   import net.bigpoint.util.RenderHelper;
   
   public class BoulderDemolitionAssetManager implements IBoulderDemolitionAssetManager
   {
      
      private var _data:BoulderObjectVo;
      
      private var _target:DisplayObjectContainer;
      
      private var _source:*;
      
      private var _currentAsset:DisplayObjectContainer;
      
      private var _dimensionRect:Rectangle;
      
      private var _assetsLoaded:Boolean;
      
      private var _currentlyInDemolition:Boolean;
      
      public function BoulderDemolitionAssetManager()
      {
         super();
      }
      
      public function prepare(param1:BoulderObjectVo = null, param2:DisplayObjectContainer = null, param3:* = null) : void
      {
         this._data = param1;
         this._target = param2;
         this._source = param3;
         this.loadAsset();
      }
      
      public function invalidate() : void
      {
         this.nullcheck("BoulderDemolitionAssetManager, prepare before invalidate!");
         if(this._data.isInDemolitionMode != this._currentlyInDemolition)
         {
            this.chooseAsset();
         }
      }
      
      private function loadAsset() : void
      {
         if(this._source is PreloadableDisplayObject && !(this._source as PreloadableDisplayObject).loadComplete)
         {
            (this._source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
         }
         else
         {
            this._assetsLoaded = true;
            this.chooseAsset();
         }
      }
      
      private function chooseAsset() : void
      {
         if(this._assetsLoaded)
         {
            if(this._data.isInDemolitionMode)
            {
               (this._source.presentation as MovieClip).gotoAndStop("demolition_2_" + this._data.configPlayfieldItemVo.gfxId);
               this._currentlyInDemolition = true;
            }
            else
            {
               (this._source.presentation as MovieClip).gotoAndStop("id" + this._data.configPlayfieldItemVo.gfxId);
               this._currentlyInDemolition = false;
            }
            this._currentAsset = this._source.presentation.getChildAt(1);
            this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
            this.setAsset();
         }
      }
      
      private function setAsset() : void
      {
         while(this._target.numChildren > 0)
         {
            this._target.removeChildAt(0);
         }
         this._target.addChild(RenderHelper.getRendered(this._currentAsset,this._dimensionRect));
         if(this._target is SmartObjectContainer)
         {
            (this._target as SmartObjectContainer).invalidate();
         }
      }
      
      private function handlePreloadComplete(param1:Event) : void
      {
         (this._source as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
         this.loadAsset();
      }
      
      private function nullcheck(param1:String) : void
      {
         if(this._data == null || this._target == null)
         {
            throw new RamaCityError(param1);
         }
      }
   }
}

