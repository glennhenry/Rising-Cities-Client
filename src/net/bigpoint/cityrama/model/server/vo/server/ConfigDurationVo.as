package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigDurationVo
   {
      
      private var _duration:Number;
      
      private var _timeUnit:String;
      
      public function ConfigDurationVo(param1:Object)
      {
         super();
         this._duration = param1.d as Number;
         this._timeUnit = param1.tu as String;
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

