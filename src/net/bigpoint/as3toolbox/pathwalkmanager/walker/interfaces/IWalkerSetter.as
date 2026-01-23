package net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.geom.Point;
   
   public interface IWalkerSetter extends IWalker
   {
      
      function set currentCell(param1:IntPoint) : void;
      
      function set nextCell(param1:IntPoint) : void;
      
      function set cellProgress(param1:Number) : void;
      
      function set currentDirection(param1:Point) : void;
      
      function set x(param1:Number) : void;
      
      function set y(param1:Number) : void;
      
      function pathComplete() : void;
      
      function pathNotPossible() : void;
      
      function pathFound() : void;
      
      function cellChanged() : void;
      
      function cellUpdate() : void;
   }
}

