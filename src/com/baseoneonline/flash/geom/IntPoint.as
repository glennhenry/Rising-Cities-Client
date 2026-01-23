package com.baseoneonline.flash.geom
{
   public class IntPoint
   {
      
      public var x:int;
      
      public var y:int;
      
      public var weight:int;
      
      public function IntPoint(param1:int = 0, param2:int = 0)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super();
            if(_loc4_ || Boolean(param2))
            {
               this.x = param1;
               if(_loc4_)
               {
                  addr0040:
                  this.y = param2;
               }
               return;
            }
         }
         §§goto(addr0040);
      }
      
      public function add(param1:IntPoint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.x += param1.x;
            if(_loc2_)
            {
               this.y += param1.y;
            }
         }
      }
      
      public function addNew(param1:IntPoint) : IntPoint
      {
         return new IntPoint(this.x + param1.x,this.y + param1.y);
      }
      
      public function toString() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push("IntPoint(");
         if(_loc1_ || _loc2_)
         {
            §§push(this.x);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop() + §§pop());
               if(_loc1_)
               {
                  §§push(", ");
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc1_ || Boolean(this))
                     {
                        §§goto(addr0069);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0075);
               }
               addr0069:
               §§goto(addr006c);
            }
            addr006c:
            §§push(§§pop() + this.y);
            if(_loc1_)
            {
               addr0072:
               addr0075:
               return §§pop() + ")";
            }
         }
         §§goto(addr0069);
      }
   }
}

