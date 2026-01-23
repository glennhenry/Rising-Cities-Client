package net.bigpoint.as3toolbox.uvmapper
{
   import flash.display.BitmapData;
   import flash.display.Shader;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.ByteArray;
   
   internal class UVMapperInstance extends EventDispatcher
   {
      
      public static const codingLookupTable:BitmapData = new BitmapData(256,1,false,0);
      
      private var _jobs:Vector.<UVMappingJob> = new Vector.<UVMappingJob>();
      
      private var _sourceUVMapper:Class = UVMapperInstance__sourceUVMapper;
      
      private var _shaderUVMapper:Shader;
      
      public function UVMapperInstance(param1:IEventDispatcher = null)
      {
         super(param1);
         initializeLookupTable();
         this._shaderUVMapper = new Shader(new this._sourceUVMapper() as ByteArray);
         this._shaderUVMapper.data.decoding.width = codingLookupTable.width;
         this._shaderUVMapper.data.decoding.height = codingLookupTable.height;
         this._shaderUVMapper.data.decoding.input = codingLookupTable;
      }
      
      private static function initializeLookupTable() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = uint(codingLookupTable.width);
         codingLookupTable.lock();
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            _loc1_ = uint(_loc4_ & 0xF0);
            _loc2_ = uint((_loc4_ & 0x0F) << 4);
            codingLookupTable.setPixel(_loc4_,0,(_loc1_ << 16) + (_loc2_ << 8));
            _loc4_++;
         }
         codingLookupTable.unlock();
      }
      
      public function map(param1:BitmapData, param2:BitmapData, param3:BitmapData = null, param4:Boolean = false) : void
      {
         var _loc5_:UVMappingJob = new UVMappingJob(param1,param2,param3);
         if(param4)
         {
            _loc5_.start(this._shaderUVMapper,true);
            dispatchEvent(new UVMapperEvent(UVMapperEvent.MAPPING_COMPLETE,_loc5_.input,_loc5_.texture,_loc5_.output));
            return;
         }
         this.addJob(_loc5_);
      }
      
      private function addJob(param1:UVMappingJob) : void
      {
         this._jobs.push(param1);
         if(this._jobs.length == 1)
         {
            this.startNextJob();
         }
      }
      
      private function startNextJob() : void
      {
         if(this._jobs.length == 0)
         {
            dispatchEvent(new UVMapperEvent(UVMapperEvent.NO_MAPPING_JOBS_LEFT));
            return;
         }
         var _loc1_:UVMappingJob = this._jobs[0];
         _loc1_.addEventListener(UVMapperEvent.MAPPING_COMPLETE,this.handleJobComplete);
         _loc1_.start(this._shaderUVMapper);
      }
      
      private function handleJobComplete(param1:UVMapperEvent) : void
      {
         this._jobs.shift();
         (param1.target as UVMappingJob).removeEventListener(UVMapperEvent.MAPPING_COMPLETE,this.handleJobComplete);
         dispatchEvent(new UVMapperEvent(UVMapperEvent.MAPPING_COMPLETE,param1.inputBitmapData,param1.textureBitmapData,param1.outputBitmapData));
         this.startNextJob();
      }
   }
}

