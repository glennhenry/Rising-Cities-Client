package net.bigpoint.cityrama.model.common
{
   import flash.geom.Rectangle;
   
   public class Cuboid extends Rectangle
   {
      
      private var _z:Number;
      
      private var _depth:Number;
      
      public function Cuboid(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:Number = 0)
      {
         super(param1,param2,param4,param5);
         this._z = param3;
         this._depth = param6;
      }
      
      public function get depth() : Number
      {
         return this._depth;
      }
      
      public function set depth(param1:Number) : void
      {
         this._depth = param1;
      }
      
      public function get z() : Number
      {
         return this._z;
      }
      
      public function set z(param1:Number) : void
      {
         this._z = param1;
      }
      
      override public function clone() : Rectangle
      {
         var _loc1_:Cuboid = new Cuboid();
         _loc1_.width = width;
         _loc1_.height = height;
         _loc1_.depth = this.depth;
         _loc1_.z = this._z;
         _loc1_.x = x;
         _loc1_.y = y;
         return _loc1_;
      }
      
      public function traceMe() : void
      {
      }
   }
}

