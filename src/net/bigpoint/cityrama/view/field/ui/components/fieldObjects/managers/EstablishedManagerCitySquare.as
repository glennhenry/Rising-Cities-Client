package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.display.MovieClip;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   
   public class EstablishedManagerCitySquare extends EstablishedManagerDefault
   {
      
      public function EstablishedManagerCitySquare()
      {
         super();
      }
      
      override protected function isDirty() : void
      {
         if(_source is PreloadableDisplayObject && !(_source as PreloadableDisplayObject).loadComplete)
         {
            (_source as PreloadableDisplayObject).addEventListener(PreloadableDisplayObject.PRELOADING_COMPLETE,handlePreloadComplete);
            return;
         }
         if(!this.citySquareData.useConstructionAsset)
         {
            if(this.citySquareData.currentEventState != CitySquareFieldObjectVo.AVAILIBLE && this.citySquareData.currentEventState != CitySquareFieldObjectVo.EXPIRED && this.citySquareData.currentEventState != CitySquareFieldObjectVo.NONE && this.citySquareData.currentEventStage != 0)
            {
               try
               {
                  (_source.presentation as MovieClip).gotoAndStop("stage_" + this.citySquareData.currentEventStage);
               }
               catch(e:Error)
               {
                  return;
               }
               _currentSource = _source.presentation.getChildAt(1);
               _dimensionRect = _source.presentation.getChildAt(1).getBounds(_source.presentation);
               _dirty = true;
            }
            else
            {
               (_source.presentation as MovieClip).gotoAndStop(1);
               _currentSource = _source.presentation.getChildAt(1);
               _dimensionRect = _source.presentation.getChildAt(1).getBounds(_source.presentation);
               _dirty = true;
            }
         }
      }
      
      private function get citySquareData() : CitySquareFieldObjectVo
      {
         return _data as CitySquareFieldObjectVo;
      }
   }
}

