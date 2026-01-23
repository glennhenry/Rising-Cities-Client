package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   public class ProgressThresholdVo
   {
      
      private var _progress:Number = 0;
      
      private var _extraProgress:Number = 0;
      
      private var _maxValue:Number = 0;
      
      private var _thresholds:Vector.<Number>;
      
      public function ProgressThresholdVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function get progress() : Number
      {
         return this._progress;
      }
      
      public function set progress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._progress = param1;
         }
      }
      
      public function get extraProgress() : Number
      {
         return this._extraProgress;
      }
      
      public function set extraProgress(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._extraProgress = param1;
         }
      }
      
      public function get maxValue() : Number
      {
         return this._maxValue;
      }
      
      public function set maxValue(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._maxValue = param1;
         }
      }
      
      public function get thresholds() : Vector.<Number>
      {
         return this._thresholds;
      }
      
      public function set thresholds(param1:Vector.<Number>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._thresholds = param1;
         }
      }
   }
}

