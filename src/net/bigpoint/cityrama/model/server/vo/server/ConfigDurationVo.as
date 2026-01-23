package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigDurationVo
   {
      
      private var _duration:Number;
      
      private var _timeUnit:String;
      
      public function ConfigDurationVo(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super();
            if(_loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr004e);
         }
         addr0035:
         this._duration = param1.d as Number;
         if(!(_loc2_ && Boolean(param1)))
         {
            addr004e:
            this._timeUnit = param1.tu as String;
         }
      }
      
      public function get duration() : Number
      {
         return this._duration;
      }
      
      public function get timeUnit() : String
      {
         return this._timeUnit;
      }
   }
}

