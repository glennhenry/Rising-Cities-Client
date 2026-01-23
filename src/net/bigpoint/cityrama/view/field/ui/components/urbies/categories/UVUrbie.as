package net.bigpoint.cityrama.view.field.ui.components.urbies.categories
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.objects.SimpleWalker;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableUVObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.UrbieObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IUVMapStrategy;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IUVMapable;
   import net.bigpoint.cityrama.view.field.ui.components.strategy.UVMapStrategy;
   import net.bigpoint.cityrama.view.field.ui.components.strategy.event.UVMapStrategyEvent;
   
   public class UVUrbie extends UrbieObject implements IUVMapable
   {
      
      private var _uvmapStrategy:IUVMapStrategy;
      
      private var _timeoutID:uint;
      
      public function UVUrbie(param1:PreloadableUVObject, param2:UrbieLifeVo)
      {
         super(param1,param2);
         _directionStrategy.addEventListener("directionSet",this.handleDirectionSet);
         if(param2.icon)
         {
            param2.icon.visible = false;
         }
         this._uvmapStrategy = new UVMapStrategy(param1);
         this._uvmapStrategy.addEventListener(UVMapStrategyEvent.STRATEGY_MAPPING_COMPLETE,this.handleMappingComplete,false,0,true);
         param2.walker.pausePath();
         assetReady = false;
         this._timeoutID = setTimeout(this.cancelMapping,10000);
      }
      
      private function cancelMapping() : void
      {
         assetReady = true;
         SimpleWalker(this.urbieLifeVo.walker).pathComplete();
      }
      
      public function handleMappingComplete(param1:UVMapStrategyEvent = null) : void
      {
         clearTimeout(this._timeoutID);
         super.framesetStrategy.setSheet(param1.compiledSheet);
         urbieLifeVo.walker.resumePath();
         if(directionStrategy.direction)
         {
            if(directionStrategy.direction != "north")
            {
               directionStrategy.playDirectionAnimation(new Point(1,0));
            }
            else
            {
               directionStrategy.playDirectionAnimation(new Point(-1,0));
            }
         }
         assetReady = true;
         if(!urbieLifeVo.icon)
         {
         }
      }
      
      public function handlePreloadingComplete(param1:Object) : void
      {
      }
      
      private function handleDirectionSet(param1:Event) : void
      {
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this._uvmapStrategy.removeEventListener(UVMapStrategyEvent.STRATEGY_MAPPING_COMPLETE,this.handleMappingComplete);
      }
   }
}

