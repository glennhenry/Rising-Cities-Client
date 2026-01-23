package com.adobe.serialization.json
{
   public class JSONToken
   {
      
      private var _value:Object;
      
      private var _type:int;
      
      public function JSONToken(param1:int = -1, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super();
            if(_loc3_ || _loc3_)
            {
               this._type = param1;
               if(_loc3_)
               {
                  addr0042:
                  this._value = param2;
               }
               §§goto(addr0047);
            }
            §§goto(addr0042);
         }
         addr0047:
      }
      
      public function get value() : Object
      {
         return this._value;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._type = param1;
         }
      }
      
      public function set value(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._value = param1;
         }
      }
   }
}

