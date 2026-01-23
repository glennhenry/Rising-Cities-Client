package net.sakri.flash.bitmap
{
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class BitmapDataUtil
   {
      
      public function BitmapDataUtil()
      {
         super();
      }
      
      public static function getPointsMatchingColor(param1:BitmapData, param2:uint) : Vector.<Point>
      {
         var _loc5_:uint = 0;
         var _loc3_:Vector.<Point> = new Vector.<Point>();
         var _loc4_:uint = 0;
         while(_loc4_ < param1.height)
         {
            _loc5_ = 0;
            while(_loc5_ < param1.width)
            {
               if(param1.getPixel(_loc5_,_loc4_) == param2)
               {
                  _loc3_.push(new Point(_loc5_,_loc4_));
               }
               _loc5_++;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function getPointsMatchingColor32(param1:BitmapData, param2:uint) : Vector.<Point>
      {
         var _loc5_:uint = 0;
         var _loc3_:Vector.<Point> = new Vector.<Point>();
         var _loc4_:uint = 0;
         while(_loc4_ < param1.height)
         {
            _loc5_ = 0;
            while(_loc5_ < param1.width)
            {
               if(param1.getPixel32(_loc5_,_loc4_) == param2)
               {
                  _loc3_.push(new Point(_loc5_,_loc4_));
               }
               _loc5_++;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function getNonTransparentPoints(param1:BitmapData, param2:uint = 2, param3:Number = 1, param4:Point = null) : Vector.<Point>
      {
         var _loc7_:uint = 0;
         if(param4 == null)
         {
            param4 = new Point(0,0);
         }
         var _loc5_:Vector.<Point> = new Vector.<Point>();
         while(0 < param1.height)
         {
            _loc7_ = 0;
            while(_loc7_ < param1.width)
            {
               if(param1.getPixel32(_loc7_,0) > 0)
               {
                  _loc5_.push(new Point(_loc7_ / param3 + param4.x,0 / param3 + param4.y));
               }
               _loc7_ += param2;
            }
            var _loc6_:uint = uint(0 + param2);
         }
         return _loc5_;
      }
      
      public static function toMonoChrome(param1:BitmapData, param2:uint = 4278190080) : BitmapData
      {
         var _loc3_:BitmapData = param1.clone();
         _loc3_.threshold(_loc3_,_loc3_.rect,new Point(),">",0,param2);
         return _loc3_;
      }
      
      public static function containsTransparentPixels(param1:BitmapData) : Boolean
      {
         if(!param1.transparent)
         {
            return false;
         }
         var _loc2_:BitmapData = param1.clone();
         return _loc2_.threshold(param1,param1.rect,new Point(),"<",1,4278190080) > 0 ? true : false;
      }
      
      public static function containsSolidPixels(param1:BitmapData) : Boolean
      {
         var _loc2_:Rectangle = param1.getColorBoundsRect(4278190080,0,false);
         return !_loc2_.equals(new Rectangle());
      }
      
      public static function stripTransparentEdges(param1:BitmapData) : BitmapData
      {
         param1 = stripTransparentEdgeFromTop(param1);
         param1 = stripTransparentEdgeFromBottom(param1);
         param1 = stripTransparentEdgeFromRight(param1);
         return stripTransparentEdgeFromLeft(param1);
      }
      
      public static function stripTransparentEdgeFromTop(param1:BitmapData) : BitmapData
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         _loc2_ = 0;
         loop0:
         while(_loc2_ < param1.height)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.width)
            {
               if(param1.getPixel32(_loc3_,_loc2_) != 0)
               {
                  _loc4_ = _loc2_;
                  break loop0;
               }
               _loc3_++;
            }
            _loc2_++;
         }
         if(_loc4_ == 0)
         {
            return param1;
         }
         var _loc5_:BitmapData = new BitmapData(param1.width,param1.height - _loc4_,true,0);
         _loc5_.draw(param1,new Matrix(1,0,0,1,0,-_loc4_));
         return _loc5_;
      }
      
      public static function stripTransparentEdgeFromBottom(param1:BitmapData) : BitmapData
      {
         var _loc2_:int = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = uint(param1.height);
         _loc2_ = param1.height;
         loop0:
         while(_loc2_ > -1)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.width)
            {
               if(param1.getPixel32(_loc3_,_loc2_) != 0)
               {
                  _loc4_ = uint(_loc2_ + 1);
                  break loop0;
               }
               _loc3_++;
            }
            _loc2_--;
         }
         if(_loc4_ == param1.height)
         {
            return param1;
         }
         var _loc5_:BitmapData = new BitmapData(param1.width,_loc4_,true,0);
         _loc5_.draw(param1);
         return _loc5_;
      }
      
      public static function stripTransparentEdgeFromLeft(param1:BitmapData) : BitmapData
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         _loc2_ = 0;
         loop0:
         while(_loc2_ < param1.width)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.height)
            {
               if(param1.getPixel32(_loc2_,_loc3_) != 0)
               {
                  _loc4_ = _loc2_;
                  break loop0;
               }
               _loc3_++;
            }
            _loc2_++;
         }
         if(_loc4_ == 0)
         {
            return param1;
         }
         var _loc5_:BitmapData = new BitmapData(param1.width - _loc4_,param1.height,true,0);
         _loc5_.draw(param1,new Matrix(1,0,0,1,-_loc4_,0));
         return _loc5_;
      }
      
      public static function stripTransparentEdgeFromRight(param1:BitmapData) : BitmapData
      {
         var _loc2_:int = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = uint(param1.width);
         _loc2_ = param1.width;
         loop0:
         while(_loc2_ > -1)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.height)
            {
               if(param1.getPixel32(_loc2_,_loc3_) != 0)
               {
                  _loc4_ = uint(_loc2_ + 1);
                  break loop0;
               }
               _loc3_++;
            }
            _loc2_--;
         }
         if(_loc4_ == param1.width)
         {
            return param1;
         }
         var _loc5_:BitmapData = new BitmapData(_loc4_,param1.height,true,0);
         _loc5_.draw(param1);
         return _loc5_;
      }
      
      public static function getFirstNonTransparentPixel(param1:BitmapData, param2:uint = 0) : Point
      {
         var _loc3_:Rectangle = new Rectangle(0,0,param1.width,1);
         var _loc4_:Point = new Point();
         _loc3_.y = param2;
         while(_loc3_.y < param1.height)
         {
            if(param1.hitTest(_loc4_,1,_loc3_))
            {
               var _loc5_:BitmapData = new BitmapData(param1.width,1,true,0);
               _loc5_.copyPixels(param1,_loc3_,_loc4_);
               return _loc3_.topLeft.add(null.getColorBoundsRect(4278190080,0,false).topLeft);
            }
            ++_loc3_.y;
         }
         return null;
      }
      
      public static function getFirstNonTransparentPixel2(param1:BitmapData) : Point
      {
         var _loc2_:Rectangle = param1.getColorBoundsRect(4278190080,0,false);
         if(_loc2_.width > 0)
         {
            var _loc3_:BitmapData = new BitmapData(_loc2_.width,1,true,0);
            null.copyPixels(param1,_loc2_,new Point());
            var _loc4_:Rectangle = null.getColorBoundsRect(4278190080,0,false);
            return _loc2_.topLeft.add(null.topLeft);
         }
         return null;
      }
      
      public static function getFirstNonTransparentPixelLooping(param1:BitmapData) : Point
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:uint = uint(param1.height);
         var _loc5_:uint = uint(param1.width);
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc5_)
            {
               if(param1.getPixel32(_loc2_,_loc3_) > 0)
               {
                  return new Point(_loc2_,_loc3_);
               }
               _loc2_++;
            }
            _loc3_++;
         }
         return null;
      }
      
      public static function getFirstNonTransparentPixelFloodFill(param1:BitmapData, param2:uint = 4294967040) : Point
      {
         var _loc3_:BitmapData = null;
         var _loc6_:Rectangle = null;
         var _loc4_:Matrix = new Matrix();
         var _loc5_:int = 0;
         while(_loc5_ < param1.height)
         {
            _loc4_.ty = -_loc5_;
            _loc3_ = new BitmapData(param1.width,1,true,0);
            _loc3_.draw(param1,_loc4_);
            _loc3_.floodFill(0,0,param2);
            _loc6_ = _loc3_.getColorBoundsRect(4294967295,param2);
            if(_loc6_.width != param1.width)
            {
               return new Point(_loc5_,_loc6_.width);
            }
            _loc3_.dispose();
            _loc5_++;
         }
         return null;
      }
      
      public static function getFirstNonTransparentPixelHitTest(param1:BitmapData, param2:uint = 4294967040) : Point
      {
         var _loc3_:Rectangle = new Rectangle(0,0,param1.width,1);
         var _loc4_:uint = 0;
         while(_loc4_ < param1.height)
         {
            if(param1.hitTest(new Point(),1,_loc3_))
            {
               var _loc5_:BitmapData = new BitmapData(param1.width,1,true,0);
               var _loc6_:Matrix = new Matrix(1,0,0,1,0,-_loc4_);
               null.draw(param1,null);
               null.floodFill(0,0,param2);
               var _loc7_:Rectangle = null.getColorBoundsRect(4294967295,param2);
               return new Point(null.width,_loc4_);
            }
            ++_loc3_.y;
            _loc4_++;
         }
         return null;
      }
      
      public static function changeEdgePixels(param1:BitmapData, param2:uint) : BitmapData
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc11_:Point = null;
         var _loc5_:uint = uint(param1.height);
         var _loc6_:uint = uint(param1.width);
         var _loc7_:uint = _loc5_ - 1;
         var _loc8_:uint = _loc6_ - 1;
         var _loc9_:Vector.<Point> = new Vector.<Point>();
         _loc4_ = 0;
         while(_loc4_ < _loc5_)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc6_)
            {
               if(param1.getPixel32(_loc3_,_loc4_) > 0)
               {
                  if(!_loc4_ || !_loc3_ || _loc4_ == _loc7_ || _loc3_ == _loc8_)
                  {
                     _loc9_.push(new Point(_loc3_,_loc4_));
                  }
                  else if(!(param1.getPixel32(_loc3_ - 1,_loc4_) > 0 && param1.getPixel32(_loc3_ + 1,_loc4_) > 0 && param1.getPixel32(_loc3_,_loc4_ - 1) > 0 && param1.getPixel32(_loc3_,_loc4_ + 1) > 0))
                  {
                     _loc9_.push(new Point(_loc3_,_loc4_));
                  }
               }
               _loc3_++;
            }
            _loc4_++;
         }
         var _loc10_:uint = _loc9_.length;
         var _loc12_:uint = 0;
         while(_loc12_ < _loc10_)
         {
            _loc11_ = _loc9_[_loc12_];
            param1.setPixel32(_loc11_.x,_loc11_.y,param2);
            _loc12_++;
         }
         return param1;
      }
   }
}

