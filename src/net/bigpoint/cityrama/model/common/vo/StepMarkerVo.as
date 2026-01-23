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
         super();
         this._stepInactiveStyles = new Vector.<String>();
         this._stepActiveStyles = new Vector.<String>();
         this._progressSteps = new Vector.<int>();
      }
      
      public function get currentProgress() : int
      {
         return this._currentProgress;
      }
      
      public function set currentProgress(param1:int) : void
      {
         this._currentProgress = param1;
      }
      
      public function get progressSteps() : Vector.<int>
      {
         return this._progressSteps;
      }
      
      public function set progressSteps(param1:Vector.<int>) : void
      {
         this._progressSteps = param1;
      }
      
      public function get hasLastInterval() : Boolean
      {
         return this._hasLastInterval;
      }
      
      public function set hasLastInterval(param1:Boolean) : void
      {
         this._hasLastInterval = param1;
      }
      
      public function get stepActiveStyles() : Vector.<String>
      {
         return this._stepActiveStyles;
      }
      
      public function set stepActiveStyles(param1:Vector.<String>) : void
      {
         this._stepActiveStyles = param1;
      }
      
      public function get stepInactiveStyles() : Vector.<String>
      {
         return this._stepInactiveStyles;
      }
      
      public function set stepInactiveStyles(param1:Vector.<String>) : void
      {
         this._stepInactiveStyles = param1;
      }
   }
}

