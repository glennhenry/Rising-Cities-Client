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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            super();
            if(!_loc4_)
            {
               this._id = param1;
               if(!(_loc4_ && Boolean(this)))
               {
                  this._currentCell = new IntPoint(0,0);
                  if(_loc3_ || Boolean(this))
                  {
                     this._nextCell = new IntPoint(0,0);
                     if(_loc3_)
                     {
                        addr0081:
                        this._waypoints = new Vector.<IntPoint>();
                        if(!_loc4_)
                        {
                           this._terrainType = param2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr0081);
      }
      
      public function pathComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new PathEvent(PathEvent.PATH_COMPLETE));
         }
      }
      
      public function pathNotPossible() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            dispatchEvent(new PathEvent(PathEvent.PATH_NOT_POSSIBLE));
         }
      }
      
      public function pathFound() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            dispatchEvent(new PathEvent(PathEvent.PATH_FOUND));
         }
      }
      
      public function pausePath() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._paused = true;
            if(_loc1_)
            {
               dispatchEvent(new PathEvent(PathEvent.PATH_PAUSED));
            }
         }
      }
      
      public function resumePath() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._paused = false;
            if(_loc1_)
            {
               addr001f:
               dispatchEvent(new PathEvent(PathEvent.PATH_RESUMED));
            }
            return;
         }
         §§goto(addr001f);
      }
      
      public function cellChanged() : void
      {
      }
      
      public function cellUpdate() : void
      {
      }
      
      public function set nextCell(param1:IntPoint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._nextCell = param1;
         }
      }
      
      public function get nextCell() : IntPoint
      {
         return this._nextCell;
      }
      
      public function set x(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._x = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._y = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._path = param1;
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr0029);
            }
            §§goto(addr00bc);
         }
         addr0029:
         if(param1)
         {
            if(_loc2_ || _loc3_)
            {
               if(param1.length < 2)
               {
                  if(_loc2_)
                  {
                     this.pathNotPossible();
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006a:
                        this.pathComplete();
                        if(_loc3_)
                        {
                           §§goto(addr00bc);
                        }
                     }
                     return;
                  }
                  §§goto(addr00b6);
               }
               addr00bc:
               this.pathFound();
               §§goto(addr00c1);
            }
            §§goto(addr006a);
         }
         else
         {
            this.pathNotPossible();
            if(!(_loc3_ && Boolean(param1)))
            {
               this.pathComplete();
               if(_loc3_ && _loc3_)
               {
                  addr00c1:
                  return;
               }
            }
         }
         addr00b6:
      }
      
      public function get path() : Vector.<IntPoint>
      {
         return this._path;
      }
      
      public function set cellProgress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._cellProgress = param1;
         }
      }
      
      public function set currentDirection(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._currentDirection = param1;
            if(_loc2_)
            {
               dispatchEvent(new PathEvent(PathEvent.DIRECTION_CHANGED));
            }
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._currentCell = param1;
         }
      }
      
      public function set speed(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._speed = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._terrainType = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._home = param1;
         }
      }
   }
}

