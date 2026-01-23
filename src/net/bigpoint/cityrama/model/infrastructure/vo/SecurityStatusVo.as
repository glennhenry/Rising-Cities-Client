package net.bigpoint.cityrama.model.infrastructure.vo
{
   import flash.errors.IllegalOperationError;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   
   public class SecurityStatusVo
   {
      
      public static const LEVEL_0:int = 0;
      
      public static const LEVEL_1:int = 1;
      
      public static const LEVEL_2:int = 2;
      
      public static const LEVEL_3:int = 3;
      
      public static const BLOCKED_BY_DEVICE:int = 99;
      
      private static const MAXLEVEL:int = LEVEL_3;
      
      private var _originID:Number = -1;
      
      private var _x:int;
      
      private var _y:int;
      
      private var _securtiyType:String;
      
      private var _level:int;
      
      public function SecurityStatusVo(param1:int, param2:int, param3:String, param4:Number = -1, param5:int = 0)
      {
         super();
         this._x = param1;
         this._y = param2;
         this._originID = param4;
         this.securtiyType = param3;
         this.level = param5;
      }
      
      public function clone() : SecurityStatusVo
      {
         return new SecurityStatusVo(this.x,this.y,this.securtiyType,this.originID,this.level);
      }
      
      public function get securtiyType() : String
      {
         return this._securtiyType;
      }
      
      public function set securtiyType(param1:String) : void
      {
         switch(param1)
         {
            case ServerTagConstants.FIRE_DEPARTMENT:
            case ServerTagConstants.POLICE_DEPARTMENT:
            case ServerTagConstants.HOSPITAL:
               this._securtiyType = param1;
               return;
            default:
               throw IllegalOperationError("unkown Type: " + param1);
         }
      }
      
      public function get level() : int
      {
         return this._level != BLOCKED_BY_DEVICE && this._level > MAXLEVEL ? MAXLEVEL : this._level;
      }
      
      public function set level(param1:int) : void
      {
         this._level = param1;
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this._y;
      }
      
      public function get originID() : Number
      {
         return this._originID;
      }
      
      public function set x(param1:int) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:int) : void
      {
         this._y = param1;
      }
   }
}

