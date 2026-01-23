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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         MAX_POINTS = 10000;
      }
      
      public function FieldUtils()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public static function getmaxMovieClipBounds(param1:MovieClip) : Rectangle
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc6_:* = 0;
         var _loc7_:Rectangle = null;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:Rectangle = new Rectangle();
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!_loc8_)
            {
               break;
            }
            if(§§pop() >= param1.totalFrames)
            {
               if(!(_loc9_ && Boolean(param1)))
               {
                  §§goto(addr0129);
               }
               §§goto(addr01bf);
            }
            else
            {
               §§push(0);
               if(!_loc9_)
               {
                  _loc6_ = §§pop();
                  if(!_loc9_)
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        if(_loc9_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(§§pop() >= param1.numChildren)
                           {
                              if(!_loc9_)
                              {
                                 param1.nextFrame();
                                 if(!_loc9_)
                                 {
                                    _loc5_++;
                                    if(_loc8_ || Boolean(_loc2_))
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr013c);
                                 }
                                 else
                                 {
                                    addr0129:
                                    _loc4_.width = _loc2_;
                                    if(_loc8_ || Boolean(param1))
                                    {
                                       addr013c:
                                       _loc4_.height = _loc3_;
                                       if(_loc8_)
                                       {
                                          §§goto(addr0147);
                                       }
                                       §§goto(addr01ab);
                                    }
                                    §§goto(addr0147);
                                 }
                                 if(_loc8_ || Boolean(param1))
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr0188);
                              }
                              §§goto(addr0129);
                           }
                           else
                           {
                              _loc7_ = param1.getChildAt(_loc6_).getBounds(param1);
                              if(_loc7_.width + _loc7_.x > _loc2_)
                              {
                                 if(_loc8_ || FieldUtils)
                                 {
                                    §§push(int(_loc7_.width + _loc7_.x));
                                    if(_loc8_)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc8_ || FieldUtils)
                                       {
                                          addr009c:
                                          if(_loc7_.height + _loc7_.y > _loc3_)
                                          {
                                             if(_loc9_ && FieldUtils)
                                             {
                                                break;
                                             }
                                             addr00c2:
                                             _loc3_ = _loc7_.height + _loc7_.y;
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                          }
                                          _loc6_++;
                                       }
                                       break;
                                    }
                                    §§goto(addr00c2);
                                 }
                              }
                              §§goto(addr009c);
                           }
                        }
                     }
                     §§goto(addr0188);
                  }
                  addr0187:
                  addr0188:
                  addr0199:
                  addr0198:
                  if(§§pop() == 0)
                  {
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        addr01ab:
                        _loc4_.width = 10;
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           addr01bf:
                           _loc4_.height = 10;
                        }
                     }
                  }
                  addr01c5:
                  return _loc4_;
                  §§push(_loc3_);
               }
               §§goto(addr00e0);
            }
         }
         §§push(0);
         if(!(_loc9_ && Boolean(_loc2_)))
         {
            §§push(§§pop() == §§pop());
            if(_loc8_ || Boolean(_loc3_))
            {
               var _temp_17:* = §§pop();
               §§push(_temp_17);
               if(!_temp_17)
               {
                  if(_loc8_)
                  {
                     §§pop();
                     if(_loc8_)
                     {
                        §§goto(addr0187);
                     }
                     §§goto(addr01c5);
                  }
               }
            }
            §§goto(addr0199);
         }
         §§goto(addr0198);
      }
      
      public static function getOutline(param1:BitmapData, param2:int = 0, param3:int = 0, param4:Shape = null) : DisplayObject
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc5_:ExtractedShapeCollection = null;
         var _loc7_:Vector.<Point> = null;
         var _loc8_:Point = null;
         var _loc10_:* = 0;
         if(!_loc11_)
         {
            if(!param4)
            {
               addr0035:
               param4 = new Shape();
            }
            _loc5_ = BitmapShapeExtractor.extractShapesDoubleSize(param1);
            var _loc6_:Vector.<Point> = new Vector.<Point>();
            if(_loc12_ || Boolean(param2))
            {
               param4.graphics.beginFill(Math.floor(16777215 * Math.random()));
            }
            var _loc9_:int = 0;
            loop0:
            while(_loc9_ < _loc5_.shapes.length)
            {
               _loc7_ = getEdgePointsFromBitmapData(_loc5_.shapes[_loc9_]);
               if(!_loc11_)
               {
                  param4.graphics.moveTo(_loc7_[0].x,_loc7_[0].y);
                  if(_loc12_)
                  {
                     §§push(1);
                     if(!_loc11_)
                     {
                        _loc10_ = §§pop();
                        if(!_loc11_)
                        {
                           while(true)
                           {
                              §§push(_loc10_);
                              addr0136:
                              addr0144:
                              while(true)
                              {
                                 if(§§pop() >= _loc7_.length)
                                 {
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 param4.graphics.lineTo(_loc7_[_loc10_].x,_loc7_[_loc10_].y);
                                 if(!(_loc12_ || Boolean(param1)))
                                 {
                                    continue loop0;
                                 }
                              }
                              addr0144:
                              _loc9_++;
                              continue loop0;
                           }
                           addr0134:
                        }
                        while(true)
                        {
                           _loc10_++;
                           if(_loc11_ && Boolean(param1))
                           {
                              break;
                           }
                           §§goto(addr0134);
                        }
                        §§goto(addr0144);
                     }
                     §§goto(addr0136);
                  }
                  §§goto(addr0134);
               }
               §§goto(addr0144);
            }
            if(_loc12_ || Boolean(param2))
            {
               param4.graphics.endFill();
            }
            return param4;
         }
         §§goto(addr0035);
      }
      
      private static function getEdgePointsFromBitmapData(param1:BitmapData) : Vector.<Point>
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:Point = null;
         var _loc2_:Point = BitmapDataUtil.getFirstNonTransparentPixel(param1);
         var _loc3_:Vector.<Point> = new Vector.<Point>();
         if(!(_loc8_ && FieldUtils))
         {
            if(_loc2_ == null)
            {
               if(!(_loc8_ && Boolean(_loc3_)))
               {
                  return _loc3_;
               }
            }
         }
         var _loc4_:BitmapEdgeScanner = new BitmapEdgeScanner(param1);
         _loc4_.moveTo(_loc2_);
         if(_loc7_ || Boolean(_loc2_))
         {
            _loc3_[0] = _loc2_;
         }
         var _loc6_:* = 0;
         while(_loc6_ < MAX_POINTS)
         {
            _loc5_ = _loc4_.getNextEdgePoint();
            if(_loc5_.equals(_loc2_))
            {
               if(_loc7_)
               {
                  break;
               }
            }
            else
            {
               _loc3_.push(_loc5_);
               if(!_loc8_)
               {
                  _loc4_.moveTo(_loc5_);
                  if(_loc8_ && Boolean(_loc3_))
                  {
                     continue;
                  }
               }
            }
            §§push(_loc6_);
            if(_loc7_ || Boolean(param1))
            {
               §§push(uint(§§pop() + 1));
            }
            _loc6_ = §§pop();
         }
         return _loc3_;
      }
   }
}

