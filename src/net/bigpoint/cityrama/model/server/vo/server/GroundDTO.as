package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class GroundDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _posX:Number;
      
      private var _posY:Number;
      
      private var _created:Number;
      
      private var _active:Boolean;
      
      private var _config:ConfigPlayfieldItemDTO;
      
      public function GroundDTO(param1:Object, param2:ConfigPlayfieldItemDTO)
      {
         super();
         this._id = param1.id;
         this._configId = param1.c;
         this._posX = param1.x;
         this._posY = param1.y;
         this._created = param1.cr;
         this._active = param1.a;
         this._config = param2;
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
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
      
      public function get posX() : Number
      {
         return this._posX;
      }
      
      public function set posX(param1:Number) : void
      {
         this._posX = param1;
      }
      
      public function get posY() : Number
      {
         return this._posY;
      }
      
      public function set posY(param1:Number) : void
      {
         this._posY = param1;
      }
      
      public function get created() : Number
      {
         return this._created;
      }
      
      public function set created(param1:Number) : void
      {
         this._created = param1;
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function set active(param1:Boolean) : void
      {
         this._active = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get config() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
   }
}

