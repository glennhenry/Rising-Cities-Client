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
         super();
      }
      
      public static function extractShapes(param1:BitmapData, param2:uint = 4278190080) : ExtractedShapeCollection
      {
         var _loc3_:ExtractedShapeCollection = new ExtractedShapeCollection();
         var _loc4_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc4_.draw(param1);
         _loc4_ = BitmapDataUtil.toMonoChrome(_loc4_,4294901760);
         if(!BitmapDataUtil.containsTransparentPixels(param1))
         {
            _loc3_.addShape(_loc4_);
            return _loc3_;
         }
         var _loc5_:BitmapData = new BitmapData(param1.width,param1.height,true,4278190335);
         _loc5_.draw(_loc4_);
         var _loc6_:BitmapData = new BitmapData(param1.width,param1.height,true,4294901760);
         _loc6_.copyChannel(_loc5_,_loc4_.rect,new Point(),BitmapDataChannel.BLUE,BitmapDataChannel.ALPHA);
         _loc3_.shapes = extractShapesFromMonochrome(_loc4_);
         _loc3_.negative_shapes = extractShapesFromMonochrome(_loc6_);
         return _loc3_;
      }
      
      public static function extractShapesDoubleSize(param1:BitmapData, param2:uint = 4278190080) : ExtractedShapeCollection
      {
         var _loc3_:ExtractedShapeCollection = new ExtractedShapeCollection();
         var _loc4_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc4_.draw(param1);
         _loc4_ = BitmapDataUtil.toMonoChrome(_loc4_,4294901760);
         var _loc5_:BitmapData = new BitmapData(param1.width * 2,param1.height * 2,true,0);
         var _loc6_:Matrix = new Matrix();
         _loc6_.scale(2,2);
         _loc5_.draw(_loc4_,_loc6_);
         _loc5_ = BitmapDataUtil.toMonoChrome(_loc5_,4294901760);
         _loc4_.dispose();
         _loc4_ = null;
         if(!BitmapDataUtil.containsTransparentPixels(param1))
         {
            _loc3_.addShape(_loc5_);
            return _loc3_;
         }
         var _loc7_:BitmapData = new BitmapData(_loc5_.width,_loc5_.height,true,4278190335);
         _loc7_.draw(_loc5_);
         var _loc8_:BitmapData = new BitmapData(_loc5_.width,_loc5_.height,true,4294901760);
         _loc8_.copyChannel(_loc7_,_loc5_.rect,new Point(),BitmapDataChannel.BLUE,BitmapDataChannel.ALPHA);
         _loc3_.shapes = extractShapesFromMonochrome(_loc5_);
         _loc3_.negative_shapes = extractShapesFromMonochrome(_loc8_);
         return _loc3_;
      }
      
      protected static function extractShapesFromMonochrome(param1:BitmapData) : Vector.<BitmapData>
      {
         var _loc3_:Point = null;
         var _loc5_:BitmapData = null;
         var _loc2_:uint = 0;
         var _loc4_:Vector.<BitmapData> = new Vector.<BitmapData>();
         var _loc6_:uint = 0;
         while(_loc2_ < param1.height)
         {
            _loc3_ = BitmapDataUtil.getFirstNonTransparentPixel(param1,_loc2_);
            if(_loc3_ == null)
            {
               return _loc4_;
            }
            param1.floodFill(_loc3_.x,_loc3_.y,4278190335);
            _loc5_ = new BitmapData(param1.width,param1.height,true,4294901760);
            _loc5_.copyChannel(param1,param1.rect,new Point(),BitmapDataChannel.BLUE,BitmapDataChannel.ALPHA);
            param1.floodFill(_loc3_.x,_loc3_.y,0);
            _loc4_.push(_loc5_);
            _loc2_ = _loc3_.y;
            if(++_loc6_ > 10)
            {
               break;
            }
         }
         return _loc4_;
      }
   }
}

