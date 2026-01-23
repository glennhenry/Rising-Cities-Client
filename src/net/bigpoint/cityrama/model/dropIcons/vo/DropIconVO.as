package net.bigpoint.cityrama.model.dropIcons.vo
{
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class DropIconVO
   {
      
      public static const STATE_BOUNCE:String = "STATE_BOUNCING";
      
      public static const STATE_FLY:String = "STATE_FLY";
      
      private var _type:String;
      
      private var _state:String;
      
      private var _startPoint:Point;
      
      private var _isEventGood:Boolean;
      
      private var _destinationElement:Sprite;
      
      private var _isoTo2D:Boolean = false;
      
      private var _isSubLevelDrop:Boolean = false;
      
      public function DropIconVO(param1:String, param2:Point, param3:Boolean = false, param4:Sprite = null, param5:String = "STATE_BOUNCING")
      {
         super();
         this._type = param1;
         this._isEventGood = param3;
         this._startPoint = param2;
         this._destinationElement = param4;
         this._state = param5;
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
         this._startPoint = param1;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function get isEventGood() : Boolean
      {
         return this._isEventGood;
      }
      
      public function set destinationElement(param1:Sprite) : void
      {
         this._destinationElement = param1;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
      }
      
      public function get isoTo2D() : Boolean
      {
         return this._isoTo2D;
      }
      
      public function set isoTo2D(param1:Boolean) : void
      {
         this._isoTo2D = param1;
      }
      
      public function get isSubLevelDrop() : Boolean
      {
         return this._isSubLevelDrop;
      }
      
      public function set isSubLevelDrop(param1:Boolean) : void
      {
         this._isSubLevelDrop = param1;
      }
   }
}

