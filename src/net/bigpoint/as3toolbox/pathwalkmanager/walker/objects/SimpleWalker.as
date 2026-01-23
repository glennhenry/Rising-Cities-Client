package net.bigpoint.as3toolbox.pathwalkmanager.walker.objects
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import net.bigpoint.as3toolbox.pathwalkmanager.events.PathEvent;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalkerSetter;
   
   public class SimpleWalker extends EventDispatcher implements IWalkerSetter
   {
      
      private var _currentCell:IntPoint;
      
      private var _waypoints:Vector.<IntPoint>;
      
      private var _speed:Number;
      
      private var _cellProgress:Number = 0;
      
      private var _currentDirection:Point;
      
      private var _path:Vector.<IntPoint>;
      
      private var _id:String;
      
      private var _cellSize:int;
      
      private var _x:Number = -1;
      
      private var _y:Number = -1;
      
      private var _nextCell:IntPoint;
      
      private var _terrainType:String;
      
      private var _paused:Boolean = false;
      
      private var _home:IntPoint;
      
      public function SimpleWalker(param1:String, param2:String)
      {
         super();
         this._id = param1;
         this._currentCell = new IntPoint(0,0);
         this._nextCell = new IntPoint(0,0);
         this._waypoints = new Vector.<IntPoint>();
         this._terrainType = param2;
      }
      
      public function pathComplete() : void
      {
         dispatchEvent(new PathEvent(PathEvent.PATH_COMPLETE));
      }
      
      public function pathNotPossible() : void
      {
         dispatchEvent(new PathEvent(PathEvent.PATH_NOT_POSSIBLE));
      }
      
      public function pathFound() : void
      {
         dispatchEvent(new PathEvent(PathEvent.PATH_FOUND));
      }
      
      public function pausePath() : void
      {
         this._paused = true;
         dispatchEvent(new PathEvent(PathEvent.PATH_PAUSED));
      }
      
      public function resumePath() : void
      {
         this._paused = false;
         dispatchEvent(new PathEvent(PathEvent.PATH_RESUMED));
      }
      
      public function cellChanged() : void
      {
      }
      
      public function cellUpdate() : void
      {
      }
      
      public function set nextCell(param1:IntPoint) : void
      {
         this._nextCell = param1;
      }
      
      public function get nextCell() : IntPoint
      {
         return this._nextCell;
      }
      
      public function set x(param1:Number) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this._y = param1;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this._y;
      }
      
      public function set path(param1:Vector.<IntPoint>) : void
      {
         this._path = param1;
         if(param1)
         {
            if(param1.length < 2)
            {
               this.pathNotPossible();
               this.pathComplete();
               return;
            }
            this.pathFound();
            return;
         }
         this.pathNotPossible();
         this.pathComplete();
      }
      
      public function get path() : Vector.<IntPoint>
      {
         return this._path;
      }
      
      public function set cellProgress(param1:Number) : void
      {
         this._cellProgress = param1;
      }
      
      public function set currentDirection(param1:Point) : void
      {
         this._currentDirection = param1;
         dispatchEvent(new PathEvent(PathEvent.DIRECTION_CHANGED));
      }
      
      public function get currentCell() : IntPoint
      {
         return this._currentCell;
      }
      
      public function get speed() : Number
      {
         return this._speed;
      }
      
      public function set currentCell(param1:IntPoint) : void
      {
         this._currentCell = param1;
      }
      
      public function set speed(param1:Number) : void
      {
         this._speed = param1;
      }
      
      public function get cellProgress() : Number
      {
         return this._cellProgress;
      }
      
      public function get currentDirection() : Point
      {
         return this._currentDirection;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get waypoints() : Vector.<IntPoint>
      {
         return this._waypoints;
      }
      
      public function get terrainType() : String
      {
         return this._terrainType;
      }
      
      public function set terrainType(param1:String) : void
      {
         this._terrainType = param1;
      }
      
      public function get paused() : Boolean
      {
         return this._paused;
      }
      
      public function get home() : IntPoint
      {
         return this._home;
      }
      
      public function set home(param1:IntPoint) : void
      {
         this._home = param1;
      }
   }
}

