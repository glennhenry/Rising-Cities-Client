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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function get currentTime() : Number
      {
         return this._currentTime;
      }
      
      public function set currentTime(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._currentTime = param1;
         }
      }
      
      public function get waitingForStart() : Boolean
      {
         return this._waitingForStart;
      }
      
      public function get timerRanOut() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._waitingForStart);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(false);
                     if(_loc1_ || Boolean(this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0048:
                     §§push(this._currentTime >= this._targetTime);
                  }
                  §§goto(addr0051);
               }
               §§goto(addr0048);
            }
            addr0051:
            return §§pop();
         }
         §§goto(addr0048);
      }
      
      public function get userMayStart() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.waitingForStart);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr0042:
                     §§push(true);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§goto(addr0050);
                     }
                  }
                  else
                  {
                     addr0051:
                     return this._userMayStart;
                  }
                  return §§pop();
               }
               §§goto(addr0051);
            }
            addr0050:
            return §§pop();
         }
         §§goto(addr0042);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._waitingForStart = param1;
         }
      }
      
      public function set startTime(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._startTime = param1;
         }
      }
      
      public function set cycleLength(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._cycleLength = param1;
         }
      }
      
      public function set userMayStart(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._userMayStart = param1;
         }
      }
      
      public function set targetTime(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._targetTime = param1;
         }
      }
   }
}

