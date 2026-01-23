package net.bigpoint.as3toolbox.pathwalkmanager.path
{
   import com.baseoneonline.flash.astar.AStar;
   import com.baseoneonline.flash.astar.AStarNode;
   import com.baseoneonline.flash.geom.IntPoint;
   import com.baseoneonline.flash.tile.AStarTileMap;
   import net.bigpoint.as3toolbox.pathwalkmanager.walker.interfaces.IWalker;
   
   public class Terrain
   {
      
      public static const TYPE_ALL_TERRAINS:String = "allTerrains";
      
      private var _aStarMap:AStarTileMap;
      
      private var _aStar:AStar;
      
      private var _tileSize:int;
      
      public function Terrain()
      {
         super();
      }
      
      public function setMatrix(param1:Array, param2:Vector.<String>) : void
      {
         var _loc4_:int = 0;
         this._aStarMap = new AStarTileMap(param1[0].length,param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < this._aStarMap.getWidth())
         {
            _loc4_ = 0;
            while(_loc4_ < this._aStarMap.getHeight())
            {
               this._aStarMap.setUseable(_loc3_,_loc4_,param2[param1[_loc4_][_loc3_]]);
               _loc4_++;
            }
            _loc3_++;
         }
      }
      
      public function setTileUsable(param1:int, param2:int, param3:String) : void
      {
         this._aStarMap.setUseable(param1,param2,param3);
      }
      
      public function setTileUnusable(param1:int, param2:int, param3:String) : void
      {
         this._aStarMap.setUnuseable(param1,param2,param3);
      }
      
      public function set tileSize(param1:int) : void
      {
         if(param1 <= 0)
         {
            throw new Error("tileSize value needs to be larger than 0 ");
         }
         this._tileSize = param1;
      }
      
      public function get tileSize() : int
      {
         return this._tileSize;
      }
      
      public function calculatePath(param1:IWalker, param2:String) : Vector.<IntPoint>
      {
         var _loc4_:Vector.<IntPoint> = null;
         var _loc5_:IntPoint = null;
         var _loc3_:Vector.<IntPoint> = new Vector.<IntPoint>();
         if(param1.waypoints.length < 2)
         {
            return _loc3_;
         }
         while(param1.waypoints.length - 1 > 0)
         {
            _loc4_ = this.calculate2PointPath(param1.waypoints[0],param1.waypoints[1],param2);
            if(!_loc4_)
            {
               while(param1.waypoints.length)
               {
                  param1.waypoints.shift();
               }
               return _loc3_;
            }
            while(_loc4_.length)
            {
               _loc5_ = _loc4_.shift();
               if(_loc3_.length)
               {
                  if(_loc5_.x != _loc3_[_loc3_.length - 1].x || _loc5_.y != _loc3_[_loc3_.length - 1].y)
                  {
                     _loc3_.push(_loc5_);
                  }
               }
               else
               {
                  _loc3_.push(_loc5_);
               }
            }
            param1.waypoints.shift();
         }
         param1.waypoints.shift();
         return _loc3_;
      }
      
      public function calculate2PointPath(param1:IntPoint, param2:IntPoint, param3:String) : Vector.<IntPoint>
      {
         var _loc4_:AStar = new AStar(this._aStarMap,param3);
         _loc4_.start = new AStarNode(param1.x,param1.y);
         _loc4_.goal = new AStarNode(param2.x,param2.y);
         var _loc5_:Vector.<IntPoint> = _loc4_.solve();
         if(!_loc5_)
         {
            return null;
         }
         if(_loc5_.length < 2)
         {
            return null;
         }
         if(_loc5_[0].x == _loc4_.goal.x && _loc5_[0].y == _loc4_.goal.y)
         {
            _loc5_.reverse();
         }
         if(_loc5_[0].x == _loc5_[1].x && _loc5_[0].y == _loc5_[1].y)
         {
            _loc5_.shift();
         }
         if(_loc5_[0].x != _loc4_.start.x || _loc5_[0].y != _loc4_.start.y)
         {
            _loc5_.unshift(param1);
         }
         return _loc5_;
      }
      
      public function get map() : AStarTileMap
      {
         return this._aStarMap;
      }
      
      public function getDistanceBasedPath(param1:IntPoint, param2:int, param3:String) : Vector.<IntPoint>
      {
         var _loc7_:IntPoint = null;
         var _loc8_:Vector.<IntPoint> = null;
         var _loc9_:int = 0;
         var _loc4_:Vector.<IntPoint> = this._aStarMap.usableTiles[param3] as Vector.<IntPoint>;
         var _loc5_:Vector.<IntPoint> = new Vector.<IntPoint>();
         var _loc6_:int = -1;
         for each(_loc7_ in _loc4_)
         {
            _loc5_.push(_loc7_);
            if(_loc7_.x == param1.x && _loc7_.y == param1.y)
            {
               _loc6_ = int(_loc5_.length - 1);
               _loc5_[_loc6_].weight = 0;
            }
            else
            {
               _loc5_[_loc5_.length - 1].weight = -1;
            }
         }
         this.addWeights(_loc5_,_loc5_[_loc6_],1,param2);
         _loc8_ = new Vector.<IntPoint>();
         _loc9_ = -1;
         for each(_loc7_ in _loc5_)
         {
            if(_loc7_.weight > _loc9_)
            {
               _loc9_ = _loc7_.weight;
            }
         }
         for each(_loc7_ in _loc5_)
         {
            if(_loc7_.weight == _loc9_)
            {
               _loc8_.push(_loc7_);
            }
         }
         return _loc8_;
      }
      
      private function addWeights(param1:Vector.<IntPoint>, param2:IntPoint, param3:int, param4:int) : void
      {
         var _loc5_:IntPoint = null;
         if(param3 > param4 || Boolean(param1.every(this.hasWeights)))
         {
            return;
         }
         for each(_loc5_ in param1)
         {
            if(_loc5_.x == param2.x - 1 && _loc5_.y == param2.y && (_loc5_.weight == -1 || _loc5_.weight > param3))
            {
               _loc5_.weight = param3;
               this.addWeights(param1,_loc5_,param3 + 1,param4);
            }
            if(_loc5_.x == param2.x + 1 && _loc5_.y == param2.y && (_loc5_.weight == -1 || _loc5_.weight > param3))
            {
               _loc5_.weight = param3;
               this.addWeights(param1,_loc5_,param3 + 1,param4);
            }
            if(_loc5_.x == param2.x && _loc5_.y == param2.y - 1 && (_loc5_.weight == -1 || _loc5_.weight > param3))
            {
               _loc5_.weight = param3;
               this.addWeights(param1,_loc5_,param3 + 1,param4);
            }
            if(_loc5_.x == param2.x && _loc5_.y == param2.y + 1 && (_loc5_.weight == -1 || _loc5_.weight > param3))
            {
               _loc5_.weight = param3;
               this.addWeights(param1,_loc5_,param3 + 1,param4);
            }
         }
      }
      
      private function hasWeights(param1:IntPoint, param2:int, param3:Vector.<IntPoint>) : Boolean
      {
         if(param1.weight != -1)
         {
            return true;
         }
         return false;
      }
   }
}

