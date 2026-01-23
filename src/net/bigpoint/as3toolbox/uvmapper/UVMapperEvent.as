package net.bigpoint.as3toolbox.uvmapper
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class UVMapperEvent extends Event
   {
      
      public static const MAPPING_COMPLETE:String = "UVMapperEvent.mappingComplete";
      
      public static const NO_MAPPING_JOBS_LEFT:String = "UVMapperEvent.noMappingJobsLeft";
      
      private var _inputBitmapData:BitmapData;
      
      private var _textureBitmapData:BitmapData;
      
      private var _outputBitmapData:BitmapData;
      
      public function UVMapperEvent(param1:String, param2:BitmapData = null, param3:BitmapData = null, param4:BitmapData = null, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this._outputBitmapData = param4;
         this._inputBitmapData = param2;
         this._textureBitmapData = param3;
      }
      
      public function get inputBitmapData() : BitmapData
      {
         return this._inputBitmapData;
      }
      
      public function set inputBitmapData(param1:BitmapData) : void
      {
         this._inputBitmapData = param1;
      }
      
      public function get textureBitmapData() : BitmapData
      {
         return this._textureBitmapData;
      }
      
      public function set textureBitmapData(param1:BitmapData) : void
      {
         this._textureBitmapData = param1;
      }
      
      public function get outputBitmapData() : BitmapData
      {
         return this._outputBitmapData;
      }
      
      public function set outputBitmapData(param1:BitmapData) : void
      {
         this._outputBitmapData = param1;
      }
   }
}

