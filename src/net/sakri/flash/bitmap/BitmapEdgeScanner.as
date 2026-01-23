package net.sakri.flash.bitmap
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class BitmapEdgeScanner
   {
      
      protected var _scan_points:Vector.<Point> = Vector.<Point>([new Point(-1,-1),new Point(0,-1),new Point(1,-1),new Point(-1,0),new Point(0,0),new Point(1,0),new Point(-1,1),new Point(0,1),new Point(1,1)]);
      
      protected var _variations:Object = {
         "000110110":new Point(0,1),
         "111110000":new Point(-1,0),
         "111011011":new Point(0,-1),
         "111111110":new Point(0,1),
         "100111111":new Point(1,0),
         "011011011":new Point(0,-1),
         "011011000":new Point(0,-1),
         "110111111":new Point(1,0),
         "011011111":new Point(0,-1),
         "000111111":new Point(1,0),
         "110110100":new Point(-1,0),
         "111111000":new Point(-1,0),
         "111111001":new Point(-1,0),
         "111110100":new Point(-1,0),
         "100110110":new Point(0,1),
         "100110111":new Point(0,1),
         "000110111":new Point(0,1),
         "011111111":new Point(0,-1),
         "000011011":new Point(1,0),
         "110110110":new Point(0,1),
         "110110111":new Point(0,1),
         "011011001":new Point(0,-1),
         "111011000":new Point(0,-1),
         "111111011":new Point(-1,0),
         "000011111":new Point(1,0),
         "111110110":new Point(0,1),
         "110110000":new Point(-1,0),
         "001011111":new Point(1,0),
         "001111111":new Point(1,0),
         "111011001":new Point(0,-1),
         "001011011":new Point(1,0),
         "111111100":new Point(-1,0),
         "001110110":new Point(0,1),
         "110110001":new Point(-1,0),
         "100011011":new Point(1,0),
         "011011100":new Point(0,-1)
      };
      
      protected var _target:BitmapData;
      
      protected var _grid:String;
      
      protected var _position:Point;
      
      public function BitmapEdgeScanner(param1:BitmapData)
      {
         super();
         this.reset(param1);
      }
      
      public function getCurrentGrid() : String
      {
         return this._grid + "";
      }
      
      public function get position() : Point
      {
         return this._position;
      }
      
      public function reset(param1:BitmapData) : void
      {
         this._grid = "";
         this._target = param1;
      }
      
      public function moveTo(param1:Point) : void
      {
         this._position = param1;
         this.updateScanGrid();
      }
      
      protected function updateScanGrid() : void
      {
         var _loc1_:Point = null;
         this._grid = "";
         var _loc2_:uint = 0;
         while(_loc2_ < 9)
         {
            _loc1_ = this._scan_points[_loc2_];
            this._grid += this._target.getPixel32(this._position.x + _loc1_.x,this._position.y + _loc1_.y) > 0 ? "1" : "0";
            _loc2_++;
         }
      }
      
      public function getNextEdgePoint() : Point
      {
         var _loc1_:Point = this._variations[this._grid];
         if(_loc1_ == null)
         {
            throw new Error("BitmapEdgeScanner Error : _grid:" + this._grid + " , not found in _variations");
         }
         return new Point(this._position.x + _loc1_.x,this._position.y + _loc1_.y);
      }
   }
}

