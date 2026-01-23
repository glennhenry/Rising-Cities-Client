package net.bigpoint.cityrama.model.detailViews.vo
{
   public class ProgressBarMiniVo
   {
      
      private var _advisorGroup:String;
      
      private var _startTime:Number;
      
      private var _endTime:Number;
      
      private var _runtime:Number;
      
      private var _currentTime:Number;
      
      private var _tooltip:String;
      
      public function ProgressBarMiniVo()
      {
         super();
      }
      
      public function get endTime() : Number
      {
         return this._endTime;
      }
      
      public function set endTime(param1:Number) : void
      {
         this._endTime = param1;
      }
      
      public function get startTime() : Number
      {
         return this._startTime;
      }
      
      public function set startTime(param1:Number) : void
      {
         this._startTime = param1;
      }
      
      public function get advisorGroup() : String
      {
         return this._advisorGroup;
      }
      
      public function set advisorGroup(param1:String) : void
      {
         this._advisorGroup = param1;
      }
      
      public function get tooltip() : String
      {
         return this._tooltip;
      }
      
      public function set tooltip(param1:String) : void
      {
         this._tooltip = param1;
      }
      
      public function get runtime() : Number
      {
         return this._runtime;
      }
      
      public function set runtime(param1:Number) : void
      {
         this._runtime = param1;
      }
      
      public function get currentTime() : Number
      {
         return this._currentTime;
      }
      
      public function set currentTime(param1:Number) : void
      {
         this._currentTime = param1;
      }
   }
}

