package net.bigpoint.util
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.geom.Point;
   
   public class Polygon
   {
      
      private var _points:Array;
      
      private var _bitmapData:BitmapData;
      
      private var _bitmap:Bitmap;
      
      public function Polygon(param1:Array)
      {
         var _loc2_:* = undefined;
         super();
         for each(_loc2_ in param1)
         {
            if(!(_loc2_ is Point))
            {
               throw new Error("Polygon items are not points");
            }
         }
         this.drawPolygon(param1);
      }
      
      public function intersects(param1:Polygon) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:uint = 0;
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.bitmap.width)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.bitmap.height)
            {
               _loc4_ = this._bitmapData.getPixel32(_loc3_,_loc2_);
               _loc5_ = _loc4_ >> 24 & 0xFF;
               if(_loc5_ > 0)
               {
                  if(this.containsPoint(_loc3_,_loc2_))
                  {
                     return true;
                  }
               }
               _loc3_++;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function contains(param1:Polygon) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:uint = 0;
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.bitmap.width)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.bitmap.height)
            {
               _loc4_ = this._bitmapData.getPixel32(_loc3_,_loc2_);
               _loc5_ = _loc4_ >> 16 & 0xFF;
               if(_loc5_ == 255)
               {
                  if(!this.containsPoint(_loc3_,_loc2_))
                  {
                     return false;
                  }
               }
               _loc3_++;
            }
            _loc2_++;
         }
         return true;
      }
      
      public function containsPoint(param1:int, param2:int) : Boolean
      {
         var _loc3_:uint = this._bitmapData.getPixel32(param1,param2);
         var _loc4_:Number = _loc3_ >> 16 & 0xFF;
         return _loc4_ == 255;
      }
      
      public function get points() : Array
      {
         return this._points;
      }
      
      public function get bitmap() : Bitmap
      {
         return this._bitmap;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
      
      private function drawPolygon(param1:Array) : void
      {
         var _loc6_:Point = null;
         var _loc2_:Shape = new Shape();
         _loc2_.graphics.beginFill(16711680,1);
         var _loc3_:Number = Number(param1[0].x);
         var _loc4_:Number = Number(param1[0].y);
         _loc2_.graphics.moveTo(param1[0].x,param1[0].y);
         var _loc5_:int = 1;
         while(_loc5_ < param1.length)
         {
            _loc6_ = param1[_loc5_];
            _loc2_.graphics.lineTo(_loc6_.x,_loc6_.y);
            if(_loc6_.x > _loc3_)
            {
               _loc3_ = _loc6_.x;
            }
            if(_loc6_.y > _loc4_)
            {
               _loc4_ = _loc6_.y;
            }
            _loc5_++;
         }
         _loc2_.graphics.endFill();
         _loc2_.graphics.beginFill(0,0);
         _loc2_.graphics.drawRect(0,0,42,44);
         _loc2_.graphics.endFill();
         this._bitmapData = new BitmapData(_loc2_.width,_loc2_.height,true,0);
         this._bitmapData.draw(_loc2_);
         this._bitmap = new Bitmap(this._bitmapData);
         this._bitmapData.lock();
      }
   }
}

