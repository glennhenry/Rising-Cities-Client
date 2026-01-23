package net.sakri.flash.bitmap
{
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class BitmapShapeExtractor
   {
      
      public function BitmapShapeExtractor()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function extractShapes(param1:BitmapData, param2:uint = 4278190080) : ExtractedShapeCollection
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:ExtractedShapeCollection = new ExtractedShapeCollection();
         var _loc4_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc4_.draw(param1);
         _loc4_ = BitmapDataUtil.toMonoChrome(_loc4_,4294901760);
         if(_loc7_ || Boolean(_loc3_))
         {
            if(!BitmapDataUtil.containsTransparentPixels(param1))
            {
               if(_loc7_ || Boolean(_loc3_))
               {
                  _loc3_.addShape(_loc4_);
                  if(_loc7_)
                  {
                     §§goto(addr008c);
                  }
               }
            }
            var _loc5_:BitmapData = new BitmapData(param1.width,param1.height,true,4278190335);
            _loc5_.draw(_loc4_);
            var _loc6_:BitmapData = new BitmapData(param1.width,param1.height,true,4294901760);
            _loc6_.copyChannel(_loc5_,_loc4_.rect,new Point(),BitmapDataChannel.BLUE,BitmapDataChannel.ALPHA);
            if(_loc7_)
            {
               _loc3_.shapes = extractShapesFromMonochrome(_loc4_);
               if(!(_loc8_ && BitmapShapeExtractor))
               {
                  addr010b:
                  _loc3_.negative_shapes = extractShapesFromMonochrome(_loc6_);
               }
               return _loc3_;
            }
            §§goto(addr010b);
         }
         addr008c:
         return _loc3_;
      }
      
      public static function extractShapesDoubleSize(param1:BitmapData, param2:uint = 4278190080) : ExtractedShapeCollection
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:ExtractedShapeCollection = new ExtractedShapeCollection();
         var _loc4_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc4_.draw(param1);
         _loc4_ = BitmapDataUtil.toMonoChrome(_loc4_,4294901760);
         var _loc5_:BitmapData = new BitmapData(param1.width * 2,param1.height * 2,true,0);
         var _loc6_:Matrix = new Matrix();
         _loc6_.scale(2,2);
         if(_loc10_)
         {
            _loc5_.draw(_loc4_,_loc6_);
         }
         _loc5_ = BitmapDataUtil.toMonoChrome(_loc5_,4294901760);
         if(!_loc9_)
         {
            _loc4_.dispose();
         }
         _loc4_ = null;
         if(_loc10_)
         {
            if(!BitmapDataUtil.containsTransparentPixels(param1))
            {
               if(_loc10_)
               {
                  _loc3_.addShape(_loc5_);
                  if(!_loc10_)
                  {
                     §§goto(addr00e1);
                  }
               }
               §§goto(addr00df);
            }
            addr00e1:
            var _loc7_:BitmapData = new BitmapData(_loc5_.width,_loc5_.height,true,4278190335);
            _loc7_.draw(_loc5_);
            var _loc8_:BitmapData = new BitmapData(_loc5_.width,_loc5_.height,true,4294901760);
            _loc8_.copyChannel(_loc7_,_loc5_.rect,new Point(),BitmapDataChannel.BLUE,BitmapDataChannel.ALPHA);
            if(!_loc9_)
            {
               _loc3_.shapes = extractShapesFromMonochrome(_loc5_);
               if(_loc10_)
               {
                  _loc3_.negative_shapes = extractShapesFromMonochrome(_loc8_);
               }
            }
            return _loc3_;
         }
         addr00df:
         return _loc3_;
      }
      
      protected static function extractShapesFromMonochrome(param1:BitmapData) : Vector.<BitmapData>
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:Point = null;
         var _loc5_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc4_:Vector.<BitmapData> = new Vector.<BitmapData>();
         var _loc6_:* = 0;
         do
         {
            if(_loc2_ >= param1.height)
            {
               break;
            }
            _loc3_ = BitmapDataUtil.getFirstNonTransparentPixel(param1,_loc2_);
            if(_loc8_ || Boolean(_loc3_))
            {
               if(_loc3_ == null)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr0063);
                  }
               }
               param1.floodFill(_loc3_.x,_loc3_.y,4278190335);
               _loc5_ = new BitmapData(param1.width,param1.height,true,4294901760);
               _loc5_.copyChannel(param1,param1.rect,new Point(),BitmapDataChannel.BLUE,BitmapDataChannel.ALPHA);
               if(!_loc7_)
               {
                  param1.floodFill(_loc3_.x,_loc3_.y,0);
                  if(_loc8_)
                  {
                     addr00d7:
                     _loc4_.push(_loc5_);
                     if(_loc8_ || BitmapShapeExtractor)
                     {
                        addr00ec:
                        §§push(uint(_loc3_.y));
                        if(!_loc7_)
                        {
                           _loc2_ = §§pop();
                           if(_loc7_)
                           {
                              break;
                           }
                           addr010a:
                           §§push(_loc6_);
                           if(_loc7_)
                           {
                              continue;
                           }
                           §§push(uint(§§pop() + 1));
                           if(_loc7_)
                           {
                              continue;
                           }
                        }
                        _loc6_ = §§pop();
                        §§push(_loc6_);
                        continue;
                     }
                     §§goto(addr010a);
                  }
                  §§goto(addr00ec);
               }
               §§goto(addr00d7);
            }
            addr0063:
            return _loc4_;
         }
         while(§§pop() <= 10);
         
         return _loc4_;
      }
   }
}

