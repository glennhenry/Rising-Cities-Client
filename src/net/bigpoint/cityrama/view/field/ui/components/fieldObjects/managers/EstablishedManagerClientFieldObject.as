package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import net.bigpoint.cityrama.model.field.vo.ClientFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class EstablishedManagerClientFieldObject extends EstablishedManagerDefault
   {
      
      private var _clientFieldObjectVo:ClientFieldObjectVo;
      
      public function EstablishedManagerClientFieldObject()
      {
         super();
      }
      
      override public function prepare(param1:MatrixObject3dVo = null, param2:DisplayObjectContainer = null, param3:* = null) : void
      {
         this._clientFieldObjectVo = param1 as ClientFieldObjectVo;
         _data = param1;
         _target = param2;
         _source = param3;
         invalidate();
      }
      
      override protected function isDirty() : void
      {
         if(_source == null)
         {
            return;
         }
         if(_source is PreloadableDisplayObject && !(_source as PreloadableDisplayObject).loadComplete)
         {
            (_source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,handlePreloadComplete);
            return;
         }
         (_source.presentation as MovieClip).gotoAndStop(this._clientFieldObjectVo.assetFrame);
         _currentSource = _source.presentation.getChildAt(1);
         _dimensionRect = _source.presentation.getChildAt(1).getBounds(_source.presentation);
         _dirty = true;
         redraw();
      }
   }
}

