package net.bigpoint.cityrama.model.bonusDay.vo
{
   public class BonusDaySideMenuVo
   {
      
      private var _bonusDayActivated:Boolean;
      
      private var _startTime:Number;
      
      private var _duration:Number;
      
      private var _currentTimeStamp:Number;
      
      public function BonusDaySideMenuVo()
      {
         super();
      }
      
      public function get bonusDayActivated() : Boolean
      {
         return this._bonusDayActivated;
      }
      
      public function set bonusDayActivated(param1:Boolean) : void
      {
         this._bonusDayActivated = param1;
      }
      
      public function get startTime() : Number
      {
         return this._startTime;
      }
      
      public function set startTime(param1:Number) : void
      {
         this._startTime = param1;
      }
      
      public function get duration() : Number
      {
         return this._duration;
      }
      
      public function set duration(param1:Number) : void
      {
         this._duration = param1;
      }
      
      public function get currentTimeStamp() : Number
      {
         return this._currentTimeStamp;
      }
      
      public function set currentTimeStamp(param1:Number) : void
      {
         this._currentTimeStamp = param1;
      }
   }
}

