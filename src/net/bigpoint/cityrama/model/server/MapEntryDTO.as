package net.bigpoint.cityrama.model.server
{
   public class MapEntryDTO
   {
      
      private var _key:String;
      
      private var _value:String;
      
      public function MapEntryDTO(param1:Object)
      {
         super();
         this._key = param1.k;
         this._value = param1.v;
      }
      
      public function get key() : String
      {
         return this._key;
      }
      
      public function get value() : String
      {
         return this._value;
      }
   }
}

