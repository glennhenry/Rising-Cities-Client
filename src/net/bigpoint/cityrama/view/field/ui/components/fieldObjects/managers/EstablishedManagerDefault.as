package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManager;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   import net.bigpoint.util.RenderHelper;
   
   public class EstablishedManagerDefault implements IEstablishedManager
   {
      
      protected var _data:MatrixObject3dVo;
      
      protected var _billboardData:BillboardObjectVo;
      
      protected var _target:DisplayObjectContainer;
      
      protected var _source:*;
      
      protected var _currentSource:DisplayObjectContainer;
      
      protected var _dirty:Boolean;
      
      protected var _dimensionRect:Rectangle;
      
      protected var _listenerAdded:Boolean;
      
      public function EstablishedManagerDefault()
      {
         super();
      }
      
      public function prepare(param1:MatrixObject3dVo = null, param2:DisplayObjectContainer = null, param3:* = null) : void
      {
         this._data = param1;
         this._billboardData = param1 as BillboardObjectVo;
         this._target = param2;
         this._source = param3;
         this._listenerAdded = false;
         this.invalidate();
      }
      
      public function invalidate() : void
      {
         this.nullcheck("EstablishedManagerDefault, prepare before invalidate!");
         this.isDirty();
         if(this._dirty)
         {
            this.redraw();
         }
      }
      
      protected function handlePreloadComplete(param1:*) : void
      {
         (this._source as PreloadableDisplayObject).removeEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
         this.invalidate();
      }
      
      protected function isDirty() : void
      {
         var _loc1_:ExpansionFieldObjectVo = null;
         if(this._source is PreloadableDisplayObject && !(this._source as PreloadableDisplayObject).loadComplete)
         {
            if(!this._listenerAdded)
            {
               (this._source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,this.handlePreloadComplete);
               this._listenerAdded = true;
            }
            return;
         }
         if(this._billboardData != null && !this._billboardData.useConstructionAsset)
         {
            (this._source.presentation as MovieClip).gotoAndStop(this._billboardData.currentLevel);
            this._currentSource = this._source.presentation.getChildAt(1);
            this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
            this._dirty = true;
         }
         if(this._source && !this._billboardData && (this._source as PreloadableDisplayObject).loadComplete && this._target.numChildren == 0)
         {
            this._currentSource = this._source.presentation.getChildAt(1);
            this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
            this._dirty = true;
         }
         if(this._data is ExpansionFieldObjectVo)
         {
            _loc1_ = this._data as ExpansionFieldObjectVo;
            if(_loc1_.config.gfxId > 1000)
            {
               (this._source.presentation as MovieClip).gotoAndStop("Expansion" + _loc1_.configPlayfieldItemVo.gfxId);
               this._currentSource = this._source.presentation.getChildAt(1);
               this._dimensionRect = this._source.presentation.getChildAt(1).getBounds(this._source.presentation);
               this._dirty = true;
            }
         }
      }
      
      protected function redraw() : void
      {
         while(this._target.numChildren > 0)
         {
            this._target.removeChildAt(0);
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

