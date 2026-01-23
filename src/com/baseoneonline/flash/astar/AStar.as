package com.baseoneonline.flash.astar
{
   import com.baseoneonline.flash.geom.IntPoint;
   
   public class AStar
   {
      
      private static const COST_ORTHOGONAL:Number = 1;
      
      private var width:int;
      
      private var height:int;
      
      private var _start:AStarNode;
      
      private var _goal:AStarNode;
      
      private var _map:Vector.<Vector.<AStarNode>>;
      
      public var open:Vector.<AStarNode>;
      
      public var closed:Vector.<AStarNode>;
      
      private var dist:Function;
      
      private var _type:String;
      
      public function AStar(param1:IAStarSearchable, param2:String)
      {
         this.dist = this.distManhattanLinearTieBreak;
         super();
         this.width = param1.getWidth();
         this.height = param1.getHeight();
         this._type = param2;
         this._map = this.createMap(param1,this._type);
      }
      
      private static function hasElement(param1:Vector.<AStarNode>, param2:Object) : Boolean
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param1)
         {
            if(_loc3_ == param2)
            {
               return true;
            }
         }
         return false;
      }
      
      private static function removeFromArray(param1:Vector.<AStarNode>, param2:Object) : Boolean
      {
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            if(param1[_loc3_] == param2)
            {
               param1.splice(_loc3_,1);
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function solve() : Vector.<IntPoint>
      {
         var _loc3_:AStarNode = null;
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Vector.<IntPoint> = null;
         this.open = new Vector.<AStarNode>();
         this.closed = new Vector.<AStarNode>();
         var _loc1_:AStarNode = this.start;
         _loc1_.h = this.dist(this.goal);
         this.open.push(_loc1_);
         var _loc2_:Boolean = false;
         while(!_loc2_)
         {
            this.open.sort(this.sortOnF);
            if(this.open.length <= 0)
            {
               break;
            }
            _loc1_ = this.open.shift();
            this.closed.push(_loc1_);
            if(_loc1_.x == this.goal.x && _loc1_.y == this.goal.y)
            {
               _loc2_ = true;
               break;
            }
            for each(_loc3_ in this.neighbors(_loc1_))
            {
               _loc4_ = _loc1_.g + COST_ORTHOGONAL;
               _loc5_ = hasElement(this.open,_loc3_);
               if((_loc5_) && _loc4_ < _loc3_.g)
               {
                  removeFromArray(this.open,_loc3_);
                  _loc5_ = false;
               }
               if(!_loc5_ && !hasElement(this.closed,_loc3_))
               {
                  _loc3_.parent = _loc1_;
                  _loc3_.g = _loc4_;
                  _loc3_.h = this.dist(_loc3_);
                  this.open.push(_loc3_);
               }
            }
         }
         if(_loc2_)
         {
            _loc6_ = new Vector.<IntPoint>();
            _loc6_.push(new IntPoint(_loc1_.x,_loc1_.y));
            while(Boolean(_loc1_.parent) && _loc1_.parent != this.start)
            {
               _loc1_ = _loc1_.parent;
               _loc6_.push(new IntPoint(_loc1_.x,_loc1_.y));
            }
            _loc6_.push(new IntPoint(_loc1_.x,_loc1_.y));
            return _loc6_;
         }
         return null;
      }
      
      private function distManhattan(param1:AStarNode, param2:AStarNode = null) : Number
      {
         if(param2 == null)
         {
            param2 = this.goal;
         }
         return Math.abs(param1.x - param2.x) + Math.abs(param1.y - param2.y);
      }
      
      private function distManhattanLinearTieBreak(param1:AStarNode, param2:AStarNode = null) : Number
      {
         if(param2 == null)
         {
            param2 = this.goal;
         }
         var _loc3_:Number = this.distManhattan(param1,param2);
         var _loc4_:Number = param1.x - param2.x;
         var _loc5_:Number = param1.y - param2.y;
         var _loc6_:Number = this.start.x - param2.x;
         var _loc7_:Number = this.start.y - param2.y;
         var _loc8_:Number = Math.abs(_loc4_ * _loc7_ - _loc6_ * _loc5_);
         return _loc3_ + _loc8_ * 0.001;
      }
      
      private function neighbors(param1:AStarNode) : Vector.<AStarNode>
      {
         var _loc2_:int = param1.x;
         var _loc3_:int = param1.y;
         var _loc5_:Vector.<AStarNode> = new Vector.<AStarNode>();
         if(_loc2_ > 0)
         {
            var _loc4_:AStarNode = this._map[_loc2_ - 1][_loc3_];
            if(_loc4_.walkable)
            {
               null.g += COST_ORTHOGONAL;
               _loc5_.push(null);
            }
         }
         if(_loc2_ < this.width - 1)
         {
            _loc4_ = this._map[_loc2_ + 1][_loc3_];
            if(_loc4_.walkable)
            {
               null.g += COST_ORTHOGONAL;
               _loc5_.push(null);
            }
         }
         if(_loc3_ > 0)
         {
            _loc4_ = this._map[_loc2_][_loc3_ - 1];
            if(_loc4_.walkable)
            {
               null.g += COST_ORTHOGONAL;
               _loc5_.push(null);
            }
         }
         if(_loc3_ < this.height - 1)
         {
            _loc4_ = this._map[_loc2_][_loc3_ + 1];
            if(_loc4_.walkable)
            {
               null.g += COST_ORTHOGONAL;
               _loc5_.push(null);
            }
         }
         return _loc5_;
      }
      
      private function createMap(param1:IAStarSearchable, param2:String) : Vector.<Vector.<AStarNode>>
      {
         var _loc5_:int = 0;
         var _loc6_:AStarNode = null;
         var _loc3_:Vector.<Vector.<AStarNode>> = new Vector.<Vector.<AStarNode>>();
         var _loc4_:int = 0;
         while(_loc4_ < this.width)
         {
            _loc3_[_loc4_] = new Vector.<AStarNode>(this.height);
            _loc5_ = 0;
            while(_loc5_ < this.height)
            {
               _loc6_ = new AStarNode(_loc4_,_loc5_,param1.isUseable(_loc4_,_loc5_,param2));
               _loc3_[_loc4_][_loc5_] = _loc6_;
               _loc5_++;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function sortOnF(param1:AStarNode, param2:AStarNode) : int
      {
         if(param1.f > param2.f)
         {
            return 1;
         }
         if(param1.f < param2.f)
         {
            return -1;
         }
         return 0;
      }
      
      public function get goal() : AStarNode
      {
         return this._goal;
      }
      
      public function set goal(param1:AStarNode) : void
      {
         this._goal = param1;
      }
      
      public function get start() : AStarNode
      {
         return this._start;
      }
      
      public function set start(param1:AStarNode) : void
      {
         this._start = param1;
      }
      
      public function toString() : String
      {
         var _loc2_:Vector.<AStarNode> = null;
         var _loc3_:AStarNode = null;
         var _loc1_:* = "ASTAR MAP: " + this._type + "\n";
         for each(_loc2_ in this._map)
         {
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_.walkable)
               {
                  _loc1_ += "x";
               }
               else
               {
                  _loc1_ += "o";
               }
               _loc1_ += " ";
            }
            _loc1_ += "\n";
         }
         return _loc1_;
      }
   }
}

