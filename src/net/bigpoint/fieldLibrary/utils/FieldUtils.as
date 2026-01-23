package net.bigpoint.fieldLibrary.utils
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import net.sakri.flash.bitmap.BitmapDataUtil;
   import net.sakri.flash.bitmap.BitmapEdgeScanner;
   import net.sakri.flash.bitmap.BitmapShapeExtractor;
   import net.sakri.flash.bitmap.ExtractedShapeCollection;
   
   public class FieldUtils
   {
      
      public static const MAX_POINTS:uint = 10000;
      
      public function FieldUtils()
      {
         super();
      }
      
      public static function getmaxMovieClipBounds(param1:MovieClip) : Rectangle
      {
         var _loc6_:int = 0;
         var _loc7_:Rectangle = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Rectangle = new Rectangle();
         var _loc5_:int = 0;
         while(_loc5_ < param1.totalFrames)
         {
            _loc6_ = 0;
            while(_loc6_ < param1.numChildren)
            {
               _loc7_ = param1.getChildAt(_loc6_).getBounds(param1);
               if(_loc7_.width + _loc7_.x > _loc2_)
               {
                  _loc2_ = _loc7_.width + _loc7_.x;
               }
               if(_loc7_.height + _loc7_.y > _loc3_)
               {
                  _loc3_ = _loc7_.height + _loc7_.y;
               }
               _loc6_++;
            }
            param1.nextFrame();
            _loc5_++;
         }
         _loc4_.width = _loc2_;
         _loc4_.height = _loc3_;
         if(_loc2_ == 0 || _loc3_ == 0)
         {
            _loc4_.width = 10;
            _loc4_.height = 10;
         }
         return _loc4_;
      }
      
      public static function getOutline(param1:BitmapData, param2:int = 0, param3:int = 0, param4:Shape = null) : DisplayObject
      {
         var _loc5_:ExtractedShapeCollection = null;
         var _loc7_:Vector.<Point> = null;
         var _loc10_:int = 0;
         if(!param4)
         {
            param4 = new Shape();
         }
         _loc5_ = BitmapShapeExtractor.extractShapesDoubleSize(param1);
         var _loc6_:Vector.<Point> = new Vector.<Point>();
         param4.graphics.beginFill(Math.floor(16777215 * Math.random()));
         var _loc9_:int = 0;
         while(_loc9_ < _loc5_.shapes.length)
         {
            _loc7_ = getEdgePointsFromBitmapData(_loc5_.shapes[_loc9_]);
            param4.graphics.moveTo(_loc7_[0].x,_loc7_[0].y);
            _loc10_ = 1;
            while(_loc10_ < _loc7_.length)
            {
               param4.graphics.lineTo(_loc7_[_loc10_].x,_loc7_[_loc10_].y);
               _loc10_++;
            }
            _loc9_++;
         }
         param4.graphics.endFill();
         return param4;
      }
      
      private static function getEdgePointsFromBitmapData(param1:BitmapData) : Vector.<Point>
      {
         var _loc5_:Point = null;
         var _loc2_:Point = BitmapDataUtil.getFirstNonTransparentPixel(param1);
         var _loc3_:Vector.<Point> = new Vector.<Point>();
         if(_loc2_ == null)
         {
            return _loc3_;
         }
         var _loc4_:BitmapEdgeScanner = new BitmapEdgeScanner(param1);
         _loc4_.moveTo(_loc2_);
         _loc3_[0] = _loc2_;
         var _loc6_:uint = 0;
         while(_loc6_ < MAX_POINTS)
         {
            _loc5_ = _loc4_.getNextEdgePoint();
            if(_loc5_.equals(_loc2_))
            {
               break;
            }
            _loc3_.push(_loc5_);
            _loc4_.moveTo(_loc5_);
            _loc6_++;
         }
         return _loc3_;
      }
   }
}

