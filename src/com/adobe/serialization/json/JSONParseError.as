package com.adobe.serialization.json
{
   public class JSONParseError extends Error
   {
      
      private var _location:int;
      
      private var _text:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(this))
         {
            super(param1);
            if(_loc5_)
            {
               name = "JSONParseError";
               if(_loc5_)
               {
                  this._location = param2;
                  if(_loc5_ || Boolean(this))
                  {
                     this._text = param3;
                  }
               }
            }
         }
      }
      
      public function get location() : int
      {
         return this._location;
      }
      
      public function get text() : String
      {
         return this._text;
      }
   }
}

