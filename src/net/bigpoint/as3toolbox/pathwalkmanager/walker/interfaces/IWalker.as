package net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   
   public interface IWalker extends IEventDispatcher
   {
      
      function get currentCell() : IntPoint;
      
      function get nextCell() : IntPoint;
      
      function get speed() : Number;
      
      function get waypoints() : Vector.<IntPoint>;
      
      function set speed(param1:Number) : void;
      
      function get path() : Vector.<IntPoint>;
      
      function set path(param1:Vector.<IntPoint>) : void;
      
      function get paused() : Boolean;
      
      function get cellProgress() : Number;
      
      function get currentDirection() : Point;
      
      function get x() : Number;
      
      function get y() : Number;
      
      function get id() : String;
      
      function pausePath() : void;
      
      function resumePath() : void;
      
      function get terrainType() : String;
   }
}

