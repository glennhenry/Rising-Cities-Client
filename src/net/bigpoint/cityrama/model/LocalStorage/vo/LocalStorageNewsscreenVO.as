package net.bigpoint.cityrama.model.LocalStorage.vo
{
   public class LocalStorageNewsscreenVO
   {
      
      private var _timestamp:Number;
      
      public function LocalStorageNewsscreenVO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(_loc3_ || _loc2_)
            {
               addr0027:
               this._timestamp = param1.timestamp;
            }
            return;
         }
         §§goto(addr0027);
      }
      
      public function get timestamp() : Number
      {
         return this._timestamp;
      }
      
      public function set timestamp(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._timestamp = param1;
         }
      }
   }
}

