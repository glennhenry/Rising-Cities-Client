package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigSecurityGradeDTO
   {
      
      private var _rangeX:int;
      
      private var _rangeY:int;
      
      private var _value:int;
      
      private var _type:String;
      
      private var _id:Number;
      
      private var _orderId:Number;
      
      public function ConfigSecurityGradeDTO(param1:Object)
      {
         super();
         this._rangeX = int(param1.rx);
         this._rangeY = int(param1.ry);
         this._value = int(param1.v);
         this._type = String(param1.dt);
         this._id = Number(param1.cid);
         this._orderId = Number(param1.o);
      }
      
      public function get rangeX() : int
      {
         return this._rangeX;
      }
      
      public function get rangeY() : int
      {
         return this._rangeY;
      }
      
      public function get value() : int
      {
         return this._value;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get orderId() : Number
      {
         return this._orderId;
      }
      
      public function set orderId(param1:Number) : void
      {
         this._orderId = param1;
      }
   }
}

