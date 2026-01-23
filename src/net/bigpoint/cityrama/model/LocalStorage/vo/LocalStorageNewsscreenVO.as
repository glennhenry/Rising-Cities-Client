package net.bigpoint.cityrama.model.LocalStorage.vo
{
   public class LocalStorageNewsscreenVO
   {
      
      private var _timestamp:Number;
      
      public function LocalStorageNewsscreenVO(param1:Object)
      {
         super();
         this._timestamp = param1.timestamp;
      }
      
      public function get timestamp() : Number
      {
         return this._timestamp;
      }
      
      public function set timestamp(param1:Number) : void
      {
         this._timestamp = param1;
      }
   }
}

