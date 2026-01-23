package net.bigpoint.cityrama.model.dropIcons.vo
{
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class DropIconVO
   {
      
      public static const STATE_BOUNCE:String = "STATE_BOUNCING";
      
      public static const STATE_FLY:String = "STATE_FLY";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         STATE_BOUNCE = "STATE_BOUNCING";
         if(_loc1_ || _loc1_)
         {
            addr003e:
            STATE_FLY = "STATE_FLY";
         }
         return;
      }
      §§goto(addr003e);
      
      private var _type:String;
      
      private var _state:String;
      
      private var _startPoint:Point;
      
      private var _isEventGood:Boolean;
      
      private var _destinationElement:Sprite;
      
      private var _isoTo2D:Boolean = false;
      
      private var _isSubLevelDrop:Boolean = false;
      
      public function DropIconVO(param1:String, param2:Point, param3:Boolean = false, param4:Sprite = null, param5:String = "STATE_BOUNCING")
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_)
         {
            super();
            if(!_loc6_)
            {
               this._type = param1;
               if(!_loc6_)
               {
                  this._isEventGood = param3;
                  if(!_loc6_)
                  {
                     this._startPoint = param2;
                     if(!(_loc6_ && param3))
                     {
                        this._destinationElement = param4;
                        if(_loc7_ || Boolean(param2))
                        {
                           addr007d:
                           this._state = param5;
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr007d);
                  }
               }
               addr0083:
               return;
            }
         }
         §§goto(addr007d);
      }
      
      public function get destinationElement() : Sprite
      {
         return this._destinationElement;
      }
      
      public function get startPoint() : Point
      {
         return this._startPoint;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set startPoint(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._startPoint = param1;
         }
      }
      
      public function set type(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._type = param1;
         }
      }
      
      public function get isEventGood() : Boolean
      {
         return this._isEventGood;
      }
      
      public function set destinationElement(param1:Sprite) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._destinationElement = param1;
         }
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._state = param1;
         }
      }
      
      public function get isoTo2D() : Boolean
      {
         return this._isoTo2D;
      }
      
      public function set isoTo2D(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._isoTo2D = param1;
         }
      }
      
      public function get isSubLevelDrop() : Boolean
      {
         return this._isSubLevelDrop;
      }
      
      public function set isSubLevelDrop(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._isSubLevelDrop = param1;
         }
      }
   }
}

