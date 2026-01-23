package net.bigpoint.cityrama.model.common
{
   import flash.geom.Rectangle;
   
   public class Cuboid extends Rectangle
   {
      
      private var _z:Number;
      
      private var _depth:Number;
      
      public function Cuboid(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:Number = 0)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_ || Boolean(this))
         {
            super(param1,param2,param4,param5);
            if(!_loc8_)
            {
               this._z = param3;
               if(_loc7_ || Boolean(param3))
               {
                  addr0052:
                  this._depth = param6;
               }
               return;
            }
         }
         §§goto(addr0052);
      }
      
      public function get depth() : Number
      {
         return this._depth;
      }
      
      public function set depth(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._depth = param1;
         }
      }
      
      public function get z() : Number
      {
         return this._z;
      }
      
      public function set z(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._z = param1;
         }
      }
      
      override public function clone() : Rectangle
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Cuboid = new Cuboid();
         if(!_loc2_)
         {
            _loc1_.width = width;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.height = height;
               if(!_loc2_)
               {
                  _loc1_.depth = this.depth;
                  addr004a:
                  if(_loc3_)
                  {
                     _loc1_.z = this._z;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0079:
                        _loc1_.x = x;
                        if(_loc3_)
                        {
                           addr0083:
                           _loc1_.y = y;
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0079);
            }
            addr0088:
            return _loc1_;
         }
         §§goto(addr004a);
      }
      
      public function traceMe() : void
      {
      }
   }
}

