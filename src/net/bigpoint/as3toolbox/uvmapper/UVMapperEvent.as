package net.bigpoint.as3toolbox.uvmapper
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class UVMapperEvent extends Event
   {
      
      public static const MAPPING_COMPLETE:String = "UVMapperEvent.mappingComplete";
      
      public static const NO_MAPPING_JOBS_LEFT:String = "UVMapperEvent.noMappingJobsLeft";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         MAPPING_COMPLETE = "UVMapperEvent.mappingComplete";
         if(_loc2_)
         {
            NO_MAPPING_JOBS_LEFT = "UVMapperEvent.noMappingJobsLeft";
         }
      }
      
      private var _inputBitmapData:BitmapData;
      
      private var _textureBitmapData:BitmapData;
      
      private var _outputBitmapData:BitmapData;
      
      public function UVMapperEvent(param1:String, param2:BitmapData = null, param3:BitmapData = null, param4:BitmapData = null, param5:Boolean = false, param6:Boolean = false)
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(!_loc8_)
         {
            super(param1,param5,param6);
            if(_loc7_ || Boolean(this))
            {
               this._outputBitmapData = param4;
               if(!_loc8_)
               {
                  this._inputBitmapData = param2;
                  if(!_loc8_)
                  {
                     addr0053:
                     this._textureBitmapData = param3;
                  }
               }
               return;
            }
         }
         §§goto(addr0053);
      }
      
      public function get inputBitmapData() : BitmapData
      {
         return this._inputBitmapData;
      }
      
      public function set inputBitmapData(param1:BitmapData) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._inputBitmapData = param1;
         }
      }
      
      public function get textureBitmapData() : BitmapData
      {
         return this._textureBitmapData;
      }
      
      public function set textureBitmapData(param1:BitmapData) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._textureBitmapData = param1;
         }
      }
      
      public function get outputBitmapData() : BitmapData
      {
         return this._outputBitmapData;
      }
      
      public function set outputBitmapData(param1:BitmapData) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._outputBitmapData = param1;
         }
      }
   }
}

