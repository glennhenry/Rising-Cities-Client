package net.bigpoint.cityrama.model.common.vo
{
   public class StepMarkerVo
   {
      
      private var _stepInactiveStyles:Vector.<String>;
      
      private var _stepActiveStyles:Vector.<String>;
      
      private var _progressSteps:Vector.<int>;
      
      private var _currentProgress:int;
      
      private var _hasLastInterval:Boolean = true;
      
      public function StepMarkerVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               this._stepInactiveStyles = new Vector.<String>();
               if(!_loc2_)
               {
                  addr0054:
                  this._stepActiveStyles = new Vector.<String>();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006f:
                     this._progressSteps = new Vector.<int>();
                  }
               }
               return;
            }
            §§goto(addr006f);
         }
         §§goto(addr0054);
      }
      
      public function get currentProgress() : int
      {
         return this._currentProgress;
      }
      
      public function set currentProgress(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._currentProgress = param1;
         }
      }
      
      public function get progressSteps() : Vector.<int>
      {
         return this._progressSteps;
      }
      
      public function set progressSteps(param1:Vector.<int>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._progressSteps = param1;
         }
      }
      
      public function get hasLastInterval() : Boolean
      {
         return this._hasLastInterval;
      }
      
      public function set hasLastInterval(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._hasLastInterval = param1;
         }
      }
      
      public function get stepActiveStyles() : Vector.<String>
      {
         return this._stepActiveStyles;
      }
      
      public function set stepActiveStyles(param1:Vector.<String>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._stepActiveStyles = param1;
         }
      }
      
      public function get stepInactiveStyles() : Vector.<String>
      {
         return this._stepInactiveStyles;
      }
      
      public function set stepInactiveStyles(param1:Vector.<String>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._stepInactiveStyles = param1;
         }
      }
   }
}

