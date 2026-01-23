package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class DecorationDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _posX:Number;
      
      private var _posY:Number;
      
      private var _cr:Number;
      
      private var _lastUpdatedTimeStamp:Number;
      
      public function DecorationDTO(param1:Object)
      {
         super();
         this._id = param1.id;
         this._configId = param1.c;
         this._posX = param1.x;
         this._posY = param1.y;
         this._cr = param1.cr;
         this._lastUpdatedTimeStamp = param1.lu;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get posX() : Number
      {
         return this._posX;
      }
      
      public function get posY() : Number
      {
         return this._posY;
      }
      
      public function get created() : Number
      {
         return this._cr;
      }
      
      public function get lastUpdatedTimeStamp() : Number
      {
         return this._lastUpdatedTimeStamp;
      }
      
      public function set lastUpdatedTimeStamp(param1:Number) : void
      {
         this._lastUpdatedTimeStamp = param1;
      }
   }
}

