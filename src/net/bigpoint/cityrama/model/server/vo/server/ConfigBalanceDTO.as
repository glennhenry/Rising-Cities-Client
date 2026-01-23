package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigBalanceDTO
   {
      
      private var _key:String;
      
      private var _value:Number;
      
      public function ConfigBalanceDTO(param1:Object)
      {
         super();
         this._key = param1.key;
         this._value = param1.val;
      }
      
      public function get value() : Number
      {
         return this._value;
      }
      
      public function set value(param1:Number) : void
      {
         this._value = param1;
      }
      
      public function get key() : String
      {
         return this._key;
      }
      
      public function set key(param1:String) : void
      {
         this._key = param1;
      }
   }
}

