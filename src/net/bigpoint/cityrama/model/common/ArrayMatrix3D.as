package net.bigpoint.cityrama.model.common
{
   import flash.geom.Rectangle;
   
   public class ArrayMatrix3D
   {
      
      private var _matrix:Array;
      
      private var _maxX:int;
      
      private var _maxY:int;
      
      private var _maxZ:int;
      
      public function ArrayMatrix3D(param1:int = 2147483647, param2:int = 2147483647, param3:int = 2147483647)
      {
         super();
         this._matrix = [];
         this._maxX = param1;
         this._maxY = param2;
         this._maxZ = param3;
      }
      
      public function updateSize(param1:int, param2:int, param3:int) : void
      {
         this._maxX = param1;
         this._maxY = param2;
         this._maxZ = param3;
      }
      
      public function getObject(param1:int, param2:int, param3:int) : Object
      {
         if(param1 < 0 || param2 < 0 || param3 < 0 || param1 >= this._maxX || param2 >= this._maxY || param3 >= this._maxZ)
         {
            return null;
         }
         var _loc4_:Array = this._matrix[param1];
         if(_loc4_ == null)
         {
            return null;
         }
         var _loc5_:Array = _loc4_[param2];
         if(_loc5_ == null)
         {
            return null;
         }
         return _loc5_[param3];
      }
      
      public function killColBy2DCoordinates(param1:int, param2:int) : void
      {
         if(param1 < 0 || param2 < 0 || param1 >= this._maxX || param2 >= this._maxY)
         {
            return;
         }
         var _loc3_:Array = this._matrix[param1];
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Array = _loc3_[param2];
         if(_loc4_ == null)
         {
            return;
         }
         _loc3_[param2] = [];
      }
      
      public function getObjectByCuboid(param1:Cuboid) : Object
      {
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.depth;
         var _loc5_:int = param1.x;
         var _loc6_:int = param1.y;
         var _loc7_:int = param1.z;
         var _loc8_:int = _loc5_;
         while(_loc8_ < _loc5_ + _loc2_)
         {
            _loc9_ = _loc6_;
            while(_loc9_ < _loc6_ + _loc3_)
            {
               _loc10_ = _loc7_;
               while(_loc10_ <= _loc7_ + _loc4_)
               {
                  if(this.getObject(_loc8_,_loc9_,_loc10_) != null)
                  {
                     return this.getObject(_loc8_,_loc9_,_loc10_);
                  }
                  _loc10_++;
               }
               _loc9_++;
            }
            _loc8_++;
         }
         return null;
      }
      
      public function getObjectsByCuboid(param1:Cuboid) : Vector.<Object>
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.depth;
         var _loc5_:int = param1.x;
         var _loc6_:int = param1.y;
         var _loc7_:int = param1.z;
         var _loc8_:Vector.<Object> = new Vector.<Object>();
         var _loc9_:int = _loc5_;
         while(_loc9_ < _loc5_ + _loc2_)
         {
            _loc10_ = _loc6_;
            while(_loc10_ < _loc6_ + _loc3_)
            {
               _loc11_ = _loc7_;
               while(_loc11_ <= _loc7_ + _loc4_)
               {
                  if(this.getObject(_loc9_,_loc10_,_loc11_) != null)
                  {
                     _loc8_.push(this.getObject(_loc9_,_loc10_,_loc11_));
                  }
                  _loc11_++;
               }
               _loc10_++;
            }
            _loc9_++;
         }
         return _loc8_;
      }
      
      public function setObject(param1:Object, param2:int, param3:int, param4:int) : void
      {
         if(param2 < 0 || param3 < 0 || param4 < 0 || param2 >= this._maxX || param3 >= this._maxY || param4 >= this._maxZ)
         {
            throw new ArgumentError("invalid index: " + param2 + "," + param3 + "," + param4);
         }
         var _loc5_:Array = this._matrix[param2];
         if(_loc5_ == null)
         {
            this._matrix[param2] = _loc5_ = [];
         }
         var _loc6_:Array = _loc5_[param3];
         if(_loc6_ == null)
         {
            _loc5_[param3] = _loc6_ = [];
         }
         _loc6_[param4] = param1;
      }
      
      public function stackObjectByRect(param1:Object, param2:Rectangle) : void
      {
         var _loc8_:int = 0;
         var _loc3_:int = param2.width;
         var _loc4_:int = param2.height;
         var _loc5_:int = param2.x;
         var _loc6_:int = param2.y;
         var _loc7_:int = _loc5_;
         while(_loc7_ < _loc5_ + _loc3_)
         {
            _loc8_ = _loc6_;
            while(_loc8_ < _loc6_ + _loc4_)
            {
               this.stackObject(param1,_loc7_,_loc8_);
               _loc8_++;
            }
            _loc7_++;
         }
      }
      
      public function stackObject(param1:Object, param2:int, param3:int) : void
      {
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         if(param2 < 0 || param3 < 0 || param2 >= this._maxX || param3 >= this._maxY)
         {
            return;
         }
         var _loc4_:Array = this._matrix[param2];
         if(_loc4_ == null)
         {
            this._matrix[param2] = _loc4_ = [];
         }
         var _loc5_:Array = _loc4_[param3];
         if(_loc5_ == null)
         {
            _loc4_[param3] = _loc5_ = [];
         }
         else
         {
            _loc6_ = [];
            for each(_loc7_ in _loc5_)
            {
               if(_loc7_ != null)
               {
                  _loc6_.push(_loc7_);
               }
            }
         }
         if(_loc6_)
         {
            _loc6_.push(param1);
            _loc4_[param3] = _loc6_;
         }
         else
         {
            _loc5_.push(param1);
            _loc4_[param3] = _loc5_;
         }
      }
      
      public function setObjectByCuboid(param1:Object, param2:Cuboid) : void
      {
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc3_:int = param2.width;
         var _loc4_:int = param2.height;
         var _loc5_:int = param2.depth;
         var _loc6_:int = param2.x;
         var _loc7_:int = param2.y;
         var _loc8_:int = param2.z;
         var _loc9_:int = _loc6_;
         while(_loc9_ < _loc6_ + _loc3_)
         {
            _loc10_ = _loc7_;
            while(_loc10_ < _loc7_ + _loc4_)
            {
               _loc11_ = _loc8_;
               while(_loc11_ <= _loc8_ + _loc5_)
               {
                  this.setObject(param1,_loc9_,_loc10_,_loc11_);
                  _loc11_++;
               }
               _loc10_++;
            }
            _loc9_++;
         }
      }
      
      public function getColBy2DCoordinates(param1:int, param2:int) : Array
      {
         if(param1 < 0 || param2 < 0 || param1 >= this._maxX || param2 >= this._maxY)
         {
            return null;
         }
         var _loc3_:Array = this._matrix[param1];
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:Array = _loc3_[param2];
         if(_loc4_ == null)
         {
            return null;
         }
         return _loc4_;
      }
      
      public function isEmptySpace(param1:Cuboid) : Boolean
      {
         if(this.getObjectByCuboid(param1) == null)
         {
            return true;
         }
         return false;
      }
      
      public function get maxX() : int
      {
         return this._maxX;
      }
      
      public function get maxY() : int
      {
         return this._maxY;
      }
      
      public function get maxZ() : int
      {
         return this._maxZ;
      }
   }
}

