package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigCinemaDTO
   {
      
      private var _maxViewsPerDay:uint;
      
      private var _maxResetLifeTime:Number;
      
      public function ConfigCinemaDTO(param1:Object)
      {
         super();
         this._maxViewsPerDay = param1.mv;
         this._maxResetLifeTime = param1.mt;
      }
      
      public function get maxViewsPerDay() : uint
      {
         return this._maxViewsPerDay;
      }
      
      public function get maxResetLifeTime() : Number
      {
         return this._maxResetLifeTime;
      }
   }
}

