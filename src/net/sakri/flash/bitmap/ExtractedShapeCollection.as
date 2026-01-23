package net.sakri.flash.bitmap
{
   import flash.display.BitmapData;
   
   public class ExtractedShapeCollection
   {
      
      private var _shapes:Vector.<BitmapData>;
      
      private var _negative_shapes:Vector.<BitmapData>;
      
      public function ExtractedShapeCollection()
      {
         super();
         this._shapes = new Vector.<BitmapData>();
         this._negative_shapes = new Vector.<BitmapData>();
      }
      
      public function get shapes() : Vector.<BitmapData>
      {
         return this._shapes;
      }
      
      public function set shapes(param1:Vector.<BitmapData>) : void
      {
         this._shapes = param1;
      }
      
      public function get negative_shapes() : Vector.<BitmapData>
      {
         return this._negative_shapes;
      }
      
      public function set negative_shapes(param1:Vector.<BitmapData>) : void
      {
         this._negative_shapes = param1;
      }
      
      public function get all_shapes() : Vector.<BitmapData>
      {
         return this._shapes.concat(this._negative_shapes);
      }
      
      public function set all_shapes(param1:Vector.<BitmapData>) : void
      {
      }
      
      public function addShape(param1:BitmapData) : void
      {
         this._shapes.push(param1);
      }
      
      public function addNegativeShape(param1:BitmapData) : void
      {
         this._negative_shapes.push(param1);
      }
   }
}

