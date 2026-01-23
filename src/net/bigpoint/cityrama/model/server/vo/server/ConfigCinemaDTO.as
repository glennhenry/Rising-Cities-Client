package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigCinemaDTO
   {
      
      private var _maxViewsPerDay:uint;
      
      private var _maxResetLifeTime:Number;
      
      public function ConfigCinemaDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super();
            if(_loc3_)
            {
               §§goto(addr0033);
            }
            §§goto(addr004a);
         }
         addr0033:
         this._maxViewsPerDay = param1.mv;
         if(_loc3_ || _loc3_)
         {
            addr004a:
            this._maxResetLifeTime = param1.mt;
         }
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

