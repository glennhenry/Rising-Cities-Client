package com.baseoneonline.flash.astar
{
   import com.baseoneonline.flash.geom.IntPoint;
   
   public class AStarNode extends IntPoint
   {
      
      public var g:Number = 0;
      
      public var h:Number = 0;
      
      public var cost:Number = 1;
      
      public var parent:AStarNode;
      
      public var walkable:Boolean;
      
      public function AStarNode(param1:int, param2:int, param3:Boolean = true)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param1)))
         {
            super(param1,param2);
            if(_loc5_ || param3)
            {
               addr0044:
               this.walkable = param3;
            }
            return;
         }
         §§goto(addr0044);
      }
      
      public function get f() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this.g);
         if(!_loc1_)
         {
            return §§pop() + this.h;
         }
      }
   }
}

