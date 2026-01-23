package net.bigpoint.cityrama.model.common
{
   import flash.geom.Rectangle;
   
   public class ArrayMatrix
   {
      
      private var _matrix:Array;
      
      private var _maxX:int;
      
      private var _maxY:int;
      
      public function ArrayMatrix(param1:int = 2147483647, param2:int = 2147483647)
      {
         super();
         this._matrix = [];
         this._maxX = param1;
         this._maxY = param2;
      }
      
      public function updateSize(param1:int, param2:int) : void
      {
         this._maxX = param1;
         this._maxY = param2;
      }
      
      public function getObject(param1:int, param2:int) : Object
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
         return _loc3_[param2];
      }
      
      public function getObjectByRect(param1:Rectangle) : Object
      {
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc7_ = this._matrix[_loc4_ + _loc6_];
            if(_loc7_ != null)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc3_)
               {
                  if(_loc7_[_loc5_ + _loc8_] != null)
                  {
                     return _loc7_[_loc5_ + _loc8_];
                  }
                  _loc8_++;
               }
            }
            _loc6_++;
         }
         return null;
      }
      
      public function getObjectsByRect(param1:Rectangle) : Vector.<Object>
      {
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:Vector.<Object> = new Vector.<Object>();
         var _loc7_:int = _loc4_;
         while(_loc7_ < _loc4_ + _loc2_)
         {
            _loc8_ = _loc5_;
            while(_loc8_ < _loc5_ + _loc3_)
            {
               _loc9_ = this.getObject(_loc7_,_loc8_);
               if(_loc9_ != null)
               {
                  _loc6_.push(_loc9_);
               }
               _loc8_++;
            }
            _loc7_++;
         }
         return _loc6_;
      }
      
      public function setObject(param1:Object, param2:int, param3:int) : void
      {
         if(param2 < 0 || param3 < 0 || param2 >= this._maxX || param3 >= this._maxY)
         {
            throw new ArgumentError("invalid index: " + param2 + "," + param3);
         }
         var _loc4_:Array = this._matrix[param2];
         if(_loc4_ == null)
         {
            this._matrix[param2] = _loc4_ = [];
         }
         _loc4_[param3] = param1;
      }
      
      public function setObjectByRect(param1:Object, param2:Rectangle) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param2.width)
         {
            _loc4_ = this._matrix[param2.x + _loc3_];
            if(_loc4_ == null)
            {
               _loc4_ = this._matrix[param2.x + _loc3_] = [];
            }
            _loc5_ = 0;
            while(_loc5_ < param2.height)
            {
               _loc4_[param2.y + _loc5_] = param1;
               _loc5_++;
            }
            _loc3_++;
         }
      }
      
      public function isEmptySpace(param1:Rectangle) : Boolean
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         if(_loc4_ < 0 || _loc5_ < 0 || _loc4_ + _loc2_ >= this._maxX || _loc5_ + _loc3_ >= this._maxY)
         {
            return false;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc2_)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc3_)
            {
               _loc8_ = this.getObject(_loc6_ + _loc4_,_loc7_ + _loc5_);
               if(_loc8_ != null)
               {
                  return false;
               }
               _loc7_++;
            }
            _loc6_++;
         }
         return true;
      }
      
      public function get maxX() : int
      {
         return this._maxX;
      }
      
      public function get maxY() : int
      {
         return this._maxY;
      }
   }
}

