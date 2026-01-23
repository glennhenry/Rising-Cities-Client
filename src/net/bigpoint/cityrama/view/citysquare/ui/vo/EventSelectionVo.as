package net.bigpoint.cityrama.view.citysquare.ui.vo
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   
   public class EventSelectionVo
   {
      
      public static const STATE_RUNNING:String = "STATE_RUNNING";
      
      public static const STATE_AVAILABLE:String = "STATE_AVAILABLE";
      
      public static const STATE_UPCOMING:String = "STATE_UPCOMING";
      
      public static const EMPTY_SLOT:String = "EMPTY_SLOT";
      
      private static const stateValidation:Vector.<String> = new <String>[STATE_RUNNING,STATE_AVAILABLE,STATE_UPCOMING,EMPTY_SLOT];
      
      private var _state:String;
      
      private var _configId:Number;
      
      private var _gfxPackId:Number;
      
      private var _localePackId:String;
      
      private var _remainingTime:Number;
      
      private var _originalTime:Number;
      
      private var _currentProgress:Number;
      
      public function EventSelectionVo(param1:String, param2:Number, param3:int, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super();
         this._state = param1;
         this._configId = param2;
         this._gfxPackId = param3;
         this._localePackId = param4;
         this._remainingTime = param6;
         this._originalTime = param5;
         this._currentProgress = param7;
         if(stateValidation.indexOf(this._state) == -1)
         {
            throw new RamaCityError(this + "illegal state: " + this._state);
         }
      }
      
      public function get currentProgress() : Number
      {
         return this._currentProgress;
      }
      
      public function get remainingTime() : Number
      {
         return this._remainingTime;
      }
      
      public function get localePackId() : String
      {
         return this._localePackId;
      }
      
      public function get gfxPackId() : Number
      {
         return this._gfxPackId;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get originalTime() : Number
      {
         return this._originalTime;
      }
      
      public function set remainingTime(param1:Number) : void
      {
         this._remainingTime = param1;
      }
   }
}

