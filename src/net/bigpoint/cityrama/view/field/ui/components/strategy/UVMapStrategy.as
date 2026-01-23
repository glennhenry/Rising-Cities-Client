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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:UVMapStrategyEvent = null;
         if(_loc4_)
         {
            super();
         }
         var _loc2_:BitmapData = UrbieFactory.instance.sheetDictionary[param1.sheetPath + param1.texturePath + param1.lightingPath];
         if(_loc4_ || Boolean(_loc3_))
         {
            if(!_loc2_)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr0071:
                  if(!param1.loadComplete)
                  {
                     if(_loc4_)
                     {
                        param1.addEventListener(PreloadableUVObject.PRELOADING_COMPLETE,this.handlePreloadingComplete,false,0,true);
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     this.handlePreloadingComplete({"target":param1});
                  }
               }
            }
            else
            {
               _loc3_ = new UVMapStrategyEvent(UVMapStrategyEvent.STRATEGY_MAPPING_COMPLETE,true,true);
               if(!(_loc5_ && Boolean(param1)))
               {
                  _loc3_.compiledSheet = _loc2_;
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     TweenMax.delayedCall(0.1,dispatchEvent,[_loc3_]);
                  }
               }
            }
            return;
         }
         §§goto(addr0071);
      }
      
      public function handlePreloadingComplete(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._presentation = param1.target as PreloadableUVObject;
            if(_loc3_ || Boolean(param1))
            {
               addr0049:
               this.startMapping(this._presentation);
            }
            return;
         }
         §§goto(addr0049);
      }
      
      public function startMapping(param1:PreloadableUVObject) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            this._spriteSheet = param1.sheet;
            if(_loc3_)
            {
               this._lightingSheet = param1.light;
               if(_loc3_ || _loc3_)
               {
                  addr0050:
                  UVMapper.instance.addEventListener(UVMapperEvent.MAPPING_COMPLETE,this.handleMappingComplete);
               }
               var _loc2_:BitmapData = new BitmapData(this._spriteSheet.bitmapData.width,this._spriteSheet.bitmapData.height,true,0);
               §§goto(addr0063);
            }
            §§goto(addr0050);
         }
         addr0063:
         if(_loc3_)
         {
            UVMapper.instance.map(this._spriteSheet.bitmapData,param1.texture.bitmapData,_loc2_,true);
         }
      }
      
      private function handleMappingComplete(param1:UVMapperEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!(_loc5_ && Boolean(param1)))
         {
            UVMapper.instance.removeEventListener(UVMapperEvent.MAPPING_COMPLETE,this.handleMappingComplete);
         }
         var _loc2_:Sprite = new Sprite();
         if(_loc6_)
         {
            this._lightingSheet.blendMode = BlendMode.OVERLAY;
            if(!(_loc5_ && Boolean(this)))
            {
               _loc2_.addChild(new Bitmap(param1.outputBitmapData));
               if(!_loc5_)
               {
                  addr0080:
                  _loc2_.addChild(this._lightingSheet);
               }
               var _loc3_:BitmapData = new BitmapData(this._spriteSheet.width,this._spriteSheet.height,true,0);
               if(!_loc5_)
               {
                  _loc3_.draw(_loc2_);
               }
               var _loc4_:UVMapStrategyEvent = new UVMapStrategyEvent(UVMapStrategyEvent.STRATEGY_MAPPING_COMPLETE);
               _loc4_.compiledSheet = _loc3_;
               if(_loc6_)
               {
                  UrbieFactory.instance.sheetDictionary[this._presentation.sheetPath + this._presentation.texturePath + this._presentation.lightingPath] = _loc3_;
                  if(_loc6_)
                  {
                     this._presentation = null;
                     if(!_loc5_)
                     {
                        addr010f:
                        dispatchEvent(_loc4_);
                     }
                  }
                  return;
               }
               §§goto(addr010f);
            }
         }
         §§goto(addr0080);
      }
   }
}

