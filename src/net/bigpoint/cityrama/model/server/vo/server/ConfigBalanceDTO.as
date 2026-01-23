package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigBalanceDTO
   {
      
      private var _key:String;
      
      private var _value:Number;
      
      public function ConfigBalanceDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super();
            if(_loc3_ || Boolean(param1))
            {
               addr003c:
               this._key = param1.key;
               if(_loc3_)
               {
                  this._value = param1.val;
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      public function get value() : Number
      {
         return this._value;
      }
      
      public function set value(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._value = param1;
         }
      }
      
      public function get key() : String
      {
         return this._key;
      }
      
      public function set key(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._key = param1;
         }
      }
   }
}

