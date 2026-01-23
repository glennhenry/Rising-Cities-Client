package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManager;
   import net.bigpoint.util.RenderHelper;
   
   public class BuildUpManagerMysteryBuilding implements IBuildUpManager
   {
      
      private var _data:BillboardObjectVo;
      
      private var _target:DisplayObjectContainer;
      
      private var _source:*;
      
      private var _currentSource:DisplayObjectContainer;
      
      private var _dirty:Boolean;
      
      private var _dimensionRect:Rectangle;
      
      public function BuildUpManagerMysteryBuilding()
      {
         super();
      }
      
      public function prepare(param1:BillboardObjectVo = null, param2:DisplayObjectContainer = null, param3:DisplayObjectContainer = null) : void
      {
         this._data = param1;
         this._target = param2;
         this._source = param3;
         this._data.addEventListener(MysteryBuildingObjectVo.EVENT_CONSTRUCTION_TERM_CHANGED,this.onTermChanged);
         this.invalidate();
      }
      
      private function onTermChanged(param1:Event) : void
      {
         param1.stopPropagation();
         if(!this._data.isInBaseMode)
         {
            this.dirtyCheck();
         }
      }
      
      private function handlePreloadComplete(param1:*) : void
      {
         (this._source as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
         this.invalidate();
      }
      
      public function invalidate(param1:String = "", param2:Boolean = true) : void
      {
         this.nullcheck("BuildUpManagerDefault, prepare before invalidate!");
         (this._data as MysteryBuildingObjectVo).startConstructionTime();
         this.dirtyCheck();
      }
      
      private function dirtyCheck() : void
      {
         this.isDirty();
         if(this._dirty)
         {
            this.redraw();
         }
      }
      
      private function isDirty() : void
      {
         if(this._source is PreloadableDisplayObject && !(this._source as PreloadableDisplayObject).loadComplete)
         {
            (this._source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
            return;
         }
         if(this._data.useConstructionAsset && !this._data.isHarvestReady && !(this._data as MysteryBuildingObjectVo).unwrapProgressIsRunning)
         {
            (this._source.presentation as MovieClip).gotoAndStop(this.targetFrame);
            this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
            this._currentSource = this._source.presentation.getChildAt(1);
            this._dirty = true;
         }
      }
      
      private function get targetFrame() : int
      {
         if((this._data as MysteryBuildingObjectVo).constructionTerm == 0)
         {
            return 1;
         }
         return (this._data as MysteryBuildingObjectVo).constructionTerm;
      }
      
      private function redraw() : void
      {
         while(this._target.numChildren > 0)
         {
            this._target.removeChildAt(0);
         }
         if(this._dimensionRect == null)
         {
            this._dimensionRect = new Rectangle();
         }
         this._target.addChild(RenderHelper.getRendered(this._currentSource,this._dimensionRect));
         if(this._target is SmartObjectContainer)
         {
            (this._target as SmartObjectContainer).invalidate();
         }
         this._dirty = false;
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

