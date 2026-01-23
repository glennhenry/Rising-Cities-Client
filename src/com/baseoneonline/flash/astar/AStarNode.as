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
         super(param1,param2);
         this.walkable = param3;
      }
      
      public function get f() : Number
      {
         return this.g + this.h;
      }
   }
}

