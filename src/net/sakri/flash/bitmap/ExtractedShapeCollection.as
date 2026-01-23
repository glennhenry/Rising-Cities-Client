package net.sakri.flash.bitmap
{
   import flash.display.BitmapData;
   
   public class ExtractedShapeCollection
   {
      
      private var _shapes:Vector.<BitmapData>;
      
      private var _negative_shapes:Vector.<BitmapData>;
      
      public function ExtractedShapeCollection()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_)
            {
               this._shapes = new Vector.<BitmapData>();
               if(_loc1_ || _loc1_)
               {
                  addr0043:
                  this._negative_shapes = new Vector.<BitmapData>();
               }
               return;
            }
         }
         §§goto(addr0043);
      }
      
      public function get shapes() : Vector.<BitmapData>
      {
         return this._shapes;
      }
      
      public function set shapes(param1:Vector.<BitmapData>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._shapes = param1;
         }
      }
      
      public function get negative_shapes() : Vector.<BitmapData>
      {
         return this._negative_shapes;
      }
      
      public function set negative_shapes(param1:Vector.<BitmapData>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._negative_shapes = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._shapes.push(param1);
         }
      }
      
      public function addNegativeShape(param1:BitmapData) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._negative_shapes.push(param1);
         }
      }
   }
}

