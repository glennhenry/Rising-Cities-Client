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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function get bonusDayActivated() : Boolean
      {
         return this._bonusDayActivated;
      }
      
      public function set bonusDayActivated(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._bonusDayActivated = param1;
         }
      }
      
      public function get startTime() : Number
      {
         return this._startTime;
      }
      
      public function set startTime(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._startTime = param1;
         }
      }
      
      public function get duration() : Number
      {
         return this._duration;
      }
      
      public function set duration(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._duration = param1;
         }
      }
      
      public function get currentTimeStamp() : Number
      {
         return this._currentTimeStamp;
      }
      
      public function set currentTimeStamp(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._currentTimeStamp = param1;
         }
      }
   }
}

