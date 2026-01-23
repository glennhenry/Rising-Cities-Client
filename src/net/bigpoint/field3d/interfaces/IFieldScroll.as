package net.bigpoint.field3d.interfaces
{
   import flash.geom.Point;
   
   public interface IFieldScroll
   {
      
      function movePresentationRelative(param1:int, param2:int) : void;
      
      function setCenterBy2d(param1:int, param2:int) : void;
      
      function get get2dFieldCenter() : Point;
      
      function get get2dFieldEnd() : Point;
      
      function get presentationCenterX() : Number;
      
      function set presentationCenterX(param1:Number) : void;
      
      function get presentationCenterY() : Number;
      
      function set presentationCenterY(param1:Number) : void;
      
      function startScroll() : void;
      
      function stopScroll() : void;
   }
}

