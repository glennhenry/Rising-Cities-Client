package net.bigpoint.cityrama.view.field.ui.components.strategy
{
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import net.bigpoint.as3toolbox.uvmapper.UVMapper;
   import net.bigpoint.as3toolbox.uvmapper.UVMapperEvent;
   import net.bigpoint.cityrama.view.field.ui.components.factory.UrbieFactory;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableUVObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IUVMapStrategy;
   import net.bigpoint.cityrama.view.field.ui.components.strategy.event.UVMapStrategyEvent;
   
   public class UVMapStrategy extends EventDispatcher implements IUVMapStrategy
   {
      
      private var _lightingSheet:Bitmap;
      
      private var _spriteSheet:Bitmap;
      
      private var _presentation:PreloadableUVObject;
      
      public function UVMapStrategy(param1:PreloadableUVObject)
      {
         var _loc3_:UVMapStrategyEvent = null;
         super();
         var _loc2_:BitmapData = UrbieFactory.instance.sheetDictionary[param1.sheetPath + param1.texturePath + param1.lightingPath];
         if(!_loc2_)
         {
            if(!param1.loadComplete)
            {
               param1.addEventListener(PreloadableUVObject.PRELOADING_COMPLETE,this.handlePreloadingComplete,false,0,true);
            }
            else
            {
               this.handlePreloadingComplete({"target":param1});
            }
         }
         else
         {
            _loc3_ = new UVMapStrategyEvent(UVMapStrategyEvent.STRATEGY_MAPPING_COMPLETE,true,true);
            _loc3_.compiledSheet = _loc2_;
            TweenMax.delayedCall(0.1,dispatchEvent,[_loc3_]);
         }
      }
      
      public function handlePreloadingComplete(param1:Object) : void
      {
         this._presentation = param1.target as PreloadableUVObject;
         this.startMapping(this._presentation);
      }
      
      public function startMapping(param1:PreloadableUVObject) : void
      {
         this._spriteSheet = param1.sheet;
         this._lightingSheet = param1.light;
         UVMapper.instance.addEventListener(UVMapperEvent.MAPPING_COMPLETE,this.handleMappingComplete);
         var _loc2_:BitmapData = new BitmapData(this._spriteSheet.bitmapData.width,this._spriteSheet.bitmapData.height,true,0);
         UVMapper.instance.map(this._spriteSheet.bitmapData,param1.texture.bitmapData,_loc2_,true);
      }
      
      private function handleMappingComplete(param1:UVMapperEvent = null) : void
      {
         UVMapper.instance.removeEventListener(UVMapperEvent.MAPPING_COMPLETE,this.handleMappingComplete);
         var _loc2_:Sprite = new Sprite();
         this._lightingSheet.blendMode = BlendMode.OVERLAY;
         _loc2_.addChild(new Bitmap(param1.outputBitmapData));
         _loc2_.addChild(this._lightingSheet);
         var _loc3_:BitmapData = new BitmapData(this._spriteSheet.width,this._spriteSheet.height,true,0);
         _loc3_.draw(_loc2_);
         var _loc4_:UVMapStrategyEvent = new UVMapStrategyEvent(UVMapStrategyEvent.STRATEGY_MAPPING_COMPLETE);
         _loc4_.compiledSheet = _loc3_;
         UrbieFactory.instance.sheetDictionary[this._presentation.sheetPath + this._presentation.texturePath + this._presentation.lightingPath] = _loc3_;
         this._presentation = null;
         dispatchEvent(_loc4_);
      }
   }
}

