package net.bigpoint.cityrama.model.server
{
   public class MapEntryDTO
   {
      
      private var _key:String;
      
      private var _value:String;
      
      public function MapEntryDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super();
            if(_loc2_)
            {
               addr0032:
               this._key = param1.k;
               if(_loc2_ || _loc2_)
               {
                  this._value = param1.v;
               }
            }
            return;
         }
         §§goto(addr0032);
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

