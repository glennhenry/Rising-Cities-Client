package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class EstablishedManagerMysteryBuilding extends EstablishedManagerDefault
   {
      
      private var _mysteryBuildingVo:MysteryBuildingObjectVo;
      
      public function EstablishedManagerMysteryBuilding()
      {
         super();
      }
      
      override public function prepare(param1:MatrixObject3dVo = null, param2:DisplayObjectContainer = null, param3:* = null) : void
      {
         super.prepare(param1,param2,param3);
         this._mysteryBuildingVo = param1 as MysteryBuildingObjectVo;
      }
      
      override protected function isDirty() : void
      {
         if(_source is PreloadableDisplayObject && !(_source as PreloadableDisplayObject).loadComplete)
         {
            (_source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,handlePreloadComplete);
            return;
         }
         if(this._mysteryBuildingVo != null && !this._mysteryBuildingVo.useConstructionAsset || this._mysteryBuildingVo && this._mysteryBuildingVo.isHarvestReady && !this._mysteryBuildingVo.unwrapProgressIsRunning)
         {
            (_source.presentation as MovieClip).gotoAndStop(this._mysteryBuildingVo.mysteryResultFieldItemSize);
            _currentSource = _source.presentation.getChildAt(1);
            _dimensionRect = _source.presentation.getChildAt(1).getBounds(_source.presentation);
            _dirty = true;
         }
      }
   }
}

