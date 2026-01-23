package net.bigpoint.cityrama.view.common.components.vo
{
   public class TimerBarComponentVo
   {
      
      private var _cycleLength:Number = 0;
      
      private var _targetTime:Number = 0;
      
      private var _currentTime:Number = 0;
      
      private var _startTime:Number = 0;
      
      private var _userMayStart:Boolean = true;
      
      private var _waitingForStart:Boolean = false;
      
      public function TimerBarComponentVo()
      {
         super();
      }
      
      public function get currentTime() : Number
      {
         return this._currentTime;
      }
      
      public function set currentTime(param1:Number) : void
      {
         this._currentTime = param1;
      }
      
      public function get waitingForStart() : Boolean
      {
         return this._waitingForStart;
      }
      
      public function get timerRanOut() : Boolean
      {
         if(this._waitingForStart)
         {
            return false;
         }
         return this._currentTime >= this._targetTime;
      }
      
      public function get userMayStart() : Boolean
      {
         if(!this.waitingForStart)
         {
            return true;
         }
         return this._userMayStart;
      }
      
      public function get startTime() : Number
      {
         return this._startTime;
      }
      
      public function get targetTime() : Number
      {
         return this._targetTime;
      }
      
      public function get cycleLength() : Number
      {
         return this._cycleLength;
      }
      
      public function set waitingForStart(param1:Boolean) : void
      {
         this._waitingForStart = param1;
      }
      
      public function set startTime(param1:Number) : void
      {
         this._startTime = param1;
      }
      
      public function set cycleLength(param1:Number) : void
      {
         this._cycleLength = param1;
      }
      
      public function set userMayStart(param1:Boolean) : void
      {
         this._userMayStart = param1;
      }
      
      public function set targetTime(param1:Number) : void
      {
         this._targetTime = param1;
      }
   }
}

