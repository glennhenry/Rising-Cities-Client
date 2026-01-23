package net.bigpoint.field3d.interfaces
{
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   
   public interface IObject3dVo extends IEventDispatcher
   {
      
      function get originalPosition() : Point;
      
      function set originalPosition(param1:Point) : void;
   }
}

