package com.adobe.serialization.json
{
   public class JSON
   {
      
      public function JSON()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function decode(param1:String, param2:Boolean = true) : *
      {
         return new JSONDecoder(param1,param2).getValue();
      }
      
      public static function encode(param1:Object) : String
      {
         return new JSONEncoder(param1).getString();
      }
   }
}

