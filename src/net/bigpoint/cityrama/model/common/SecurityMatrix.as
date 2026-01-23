package net.bigpoint.cityrama.model.common
{
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   
   public class SecurityMatrix
   {
      
      private var _dataMatrix:ArrayMatrix3D;
      
      public function SecurityMatrix(param1:int = 2147483647, param2:int = 2147483647)
      {
         super();
         this._dataMatrix = new ArrayMatrix3D(param1,param2);
      }
      
      public function setObject(param1:SecurityStatusVo, param2:int, param3:int) : void
      {
         this._dataMatrix.stackObject(param1,param2,param3);
      }
      
      public function setObjectByRect(param1:SecurityStatusVo, param2:Rectangle) : void
      {
         this._dataMatrix.stackObjectByRect(param1,param2);
      }
      
      public function getOverallStatusByRect(param1:Rectangle) : Vector.<SecurityStatusVo>
      {
         var _loc10_:SecurityStatusVo = null;
         var _loc11_:int = 0;
         var _loc12_:Array = null;
         var _loc13_:SecurityStatusVo = null;
         var _loc14_:SecurityStatusVo = null;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:Dictionary = new Dictionary();
         var _loc7_:Dictionary = new Dictionary();
         var _loc8_:int = _loc4_;
         while(_loc8_ < _loc4_ + _loc2_)
         {
            _loc11_ = _loc5_;
            while(_loc11_ < _loc5_ + _loc3_)
            {
               _loc12_ = this._dataMatrix.getColBy2DCoordinates(_loc8_,_loc11_);
               for each(_loc13_ in _loc12_)
               {
                  if(_loc7_[_loc13_.securtiyType] == null)
                  {
                     _loc7_[_loc13_.securtiyType] = _loc13_.clone();
                  }
                  else
                  {
                     ++_loc7_[_loc13_.securtiyType].level;
                  }
               }
               for each(_loc14_ in _loc7_)
               {
                  if(_loc6_[_loc14_.securtiyType] == null || _loc6_[_loc14_.securtiyType].level < _loc14_.level)
                  {
                     _loc6_[_loc14_.securtiyType] = _loc14_;
                  }
               }
               _loc7_ = new Dictionary();
               _loc11_++;
            }
            _loc8_++;
         }
         var _loc9_:Vector.<SecurityStatusVo> = new Vector.<SecurityStatusVo>();
         for each(_loc10_ in _loc6_)
         {
            if(_loc10_.level != SecurityStatusVo.BLOCKED_BY_DEVICE)
            {
               _loc9_.push(_loc10_);
            }
         }
         return _loc9_;
      }
      
      public function killObjectByIDAndRect(param1:Number, param2:Rectangle) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Array = null;
         var _loc10_:SecurityStatusVo = null;
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
               _loc9_ = [];
               for each(_loc10_ in this._dataMatrix.getColBy2DCoordinates(_loc7_,_loc8_))
               {
                  if(_loc10_.originID != param1)
                  {
                     _loc9_.push(_loc10_);
                  }
               }
               this._dataMatrix.killColBy2DCoordinates(_loc7_,_loc8_);
               for each(var _loc11_ in _loc9_)
               {
                  this._dataMatrix.stackObject(null,_loc7_,_loc8_);
               }
               _loc8_++;
            }
            _loc7_++;
         }
      }
      
      public function killObjectByTypeAndRect(param1:String, param2:Rectangle) : void
      {
         var _loc8_:int = 0;
         var _loc9_:Array = null;
         var _loc10_:SecurityStatusVo = null;
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
               _loc9_ = [];
               for each(_loc10_ in this._dataMatrix.getColBy2DCoordinates(_loc7_,_loc8_))
               {
                  if(_loc10_.securtiyType != param1)
                  {
                     _loc9_.push(_loc10_);
                  }
               }
               this._dataMatrix.killColBy2DCoordinates(_loc7_,_loc8_);
               for each(var _loc11_ in _loc9_)
               {
                  this._dataMatrix.stackObject(null,_loc7_,_loc8_);
               }
               _loc8_++;
            }
            _loc7_++;
         }
      }
      
      public function get maxX() : int
      {
         return this._dataMatrix.maxX;
      }
      
      public function get maxY() : int
      {
         return this._dataMatrix.maxY;
      }
      
      public function getTileInformation(param1:int, param2:int, param3:String) : SecurityStatusVo
      {
         var _loc6_:SecurityStatusVo = null;
         var _loc4_:SecurityStatusVo = new SecurityStatusVo(param1,param2,param3);
         var _loc5_:Dictionary = new Dictionary();
         for each(_loc6_ in this._dataMatrix.getColBy2DCoordinates(param1,param2))
         {
            if(_loc6_.securtiyType == _loc4_.securtiyType)
            {
               _loc4_.level += _loc6_.level;
               if(_loc6_.level == SecurityStatusVo.BLOCKED_BY_DEVICE)
               {
                  return _loc6_;
               }
            }
         }
         return _loc4_;
      }
   }
}

