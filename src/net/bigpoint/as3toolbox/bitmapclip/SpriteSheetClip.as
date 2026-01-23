package net.bigpoint.as3toolbox.bitmapclip
{
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class SpriteSheetClip extends BitmapClip
   {
      
      private var spritesheet:BitmapData;
      
      private var tileDimensions:Vector.<Rectangle>;
      
      private var rect:Rectangle;
      
      public function SpriteSheetClip(param1:BitmapData, param2:String, param3:Vector.<Rectangle>, param4:int = -1, param5:int = 25, param6:int = 1, param7:Boolean = false, param8:Boolean = false, param9:ColorTransform = null)
      {
         super(null,param2,param5,param7,param8,param6,param4,param9);
         this.spritesheet = param1;
         this.tileDimensions = param3;
         if(param1 != null)
         {
            if(param3.length > 1)
            {
               maxFrames = param3.length;
            }
            else if(param4 != -1)
            {
               maxFrames = param4;
            }
            else
            {
               maxFrames = param1.width / (param3[0] as Rectangle).width * (param1.height / (param3[0] as Rectangle).height);
            }
            this.init();
            return;
         }
         throw new Error("SpriteSheetClip needs a valid spritesheet Object!");
      }
      
      private function init() : void
      {
         if(conditionsOk())
         {
            if(_autoDeleteCache)
            {
               registerCacheID();
            }
            this.flattenDisplayObject(this.spritesheet,_cacheID);
         }
      }
      
      public function updateSpriteSheet(param1:BitmapData) : void
      {
         if(this.spritesheet.width != param1.width || this.spritesheet.height != param1.height)
         {
            throw new Error("Spritesheet must have the same width and height as the current Spritesheet");
         }
         this.flattenDisplayObject(param1,_cacheID,true);
      }
      
      private function flattenDisplayObject(param1:BitmapData, param2:String = null, param3:Boolean = false) : void
      {
         var _loc7_:Rectangle = null;
         var _loc8_:BCBitmapData = null;
         var _loc4_:Point = new Point();
         if(!param3 && param1 is BitmapData)
         {
            if(_endFrame != -1)
            {
               if(_endFrame < _startFrame)
               {
                  throw new Error("endframe is smaller than starframe!");
               }
               frames = _endFrame;
            }
            else
            {
               frames = maxFrames;
            }
         }
         bitmapDataPlayList = new Vector.<BCBitmapData>(frames);
         var _loc5_:int = 0;
         var _loc6_:int = _startFrame - 1;
         while(_loc6_ < frames)
         {
            if(!param3 && search(param2 + "_" + _loc6_))
            {
               bitmapDataPlayList[_loc6_] = cache[param2 + "_" + _loc6_];
            }
            else
            {
               _loc7_ = null;
               if(this.tileDimensions.length > 1)
               {
                  _loc7_ = this.tileDimensions[_loc5_++] as Rectangle;
               }
               else
               {
                  _loc7_ = this.getRectangle(_loc6_);
               }
               if(!param3)
               {
                  _loc8_ = new BCBitmapData(_loc7_.width,_loc7_.height,true,0);
               }
               else
               {
                  _loc8_ = cache[this.cacheID + "_" + _loc6_];
               }
               _loc8_.copyPixels(param1,_loc7_,_loc4_);
               if(_colorTransform != null)
               {
                  _loc8_.colorTransform(_loc8_.rect,_colorTransform);
               }
               if(!param3)
               {
                  bitmapDataPlayList[_loc6_] = _loc8_;
               }
               if(!param3 && param2 != null)
               {
                  addBitmapData(param2 + "_" + _loc6_,_loc8_);
               }
            }
            _loc6_++;
         }
         if(!param3)
         {
            _frame = _startFrame - 1;
         }
         updateFrame();
      }
      
      private function getRectangle(param1:int) : Rectangle
      {
         if(this.rect == null)
         {
            this.rect = new Rectangle();
         }
         var _loc2_:int = param1 * (this.tileDimensions[0] as Rectangle).width;
         var _loc3_:int = _loc2_ / this.spritesheet.width;
         this.rect.y = _loc3_ * (this.tileDimensions[0] as Rectangle).height;
         this.rect.x = _loc2_ - _loc3_ * this.spritesheet.width;
         this.rect.width = (this.tileDimensions[0] as Rectangle).width;
         this.rect.height = (this.tileDimensions[0] as Rectangle).height;
         return this.rect;
      }
      
      override public function clone() : Object
      {
         var _loc1_:SpriteSheetClip = new SpriteSheetClip(this.spritesheet,_cacheID,this.tileDimensions,_endFrame,fps,_startFrame,removeAfterPlay,_autoDeleteCache,_colorTransform);
         _loc1_.mouseEnabled = this.mouseEnabled;
         _loc1_.mouseChildren = this.mouseChildren;
         return _loc1_;
      }
   }
}

