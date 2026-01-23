package net.bigpoint.as3toolbox.uvmapper
{
   import flash.display.BitmapData;
   import flash.display.Shader;
   import flash.display.ShaderJob;
   import flash.events.EventDispatcher;
   import flash.events.ShaderEvent;
   
   internal class UVMappingJob extends EventDispatcher
   {
      
      private static var _shaderJob:ShaderJob;
      
      private var _input:BitmapData;
      
      private var _texture:BitmapData;
      
      private var _output:BitmapData;
      
      public function UVMappingJob(param1:BitmapData = null, param2:BitmapData = null, param3:BitmapData = null)
      {
         super();
         this._input = param1;
         this._texture = param2;
         this._output = param3;
      }
      
      public function get input() : BitmapData
      {
         return this._input;
      }
      
      public function set input(param1:BitmapData) : void
      {
         this._input = param1;
      }
      
      public function get texture() : BitmapData
      {
         return this._texture;
      }
      
      public function set texture(param1:BitmapData) : void
      {
         this._texture = param1;
      }
      
      public function get output() : BitmapData
      {
         return this._output;
      }
      
      public function set output(param1:BitmapData) : void
      {
         this._output = param1;
      }
      
      public function start(param1:Shader, param2:Boolean = false) : void
      {
         param1.data.uvMap.width = this._input.width;
         param1.data.uvMap.height = this._input.height;
         param1.data.uvMap.input = this._input;
         param1.data.texture.width = this._texture.width;
         param1.data.texture.height = this._texture.height;
         param1.data.texture.input = this._texture;
         param1.data.textureSize.value = [this._texture.width,this._texture.height];
         if(this._output == null)
         {
            this._output = new BitmapData(this._input.width,this._input.height);
         }
         _shaderJob = new ShaderJob(param1,this._output,this._output.width,this._output.height);
         _shaderJob.addEventListener(ShaderEvent.COMPLETE,this.handleJobComplete);
         _shaderJob.start(param2);
      }
      
      private function handleJobComplete(param1:ShaderEvent) : void
      {
         (param1.target as ShaderJob).removeEventListener(ShaderEvent.COMPLETE,this.handleJobComplete);
         dispatchEvent(new UVMapperEvent(UVMapperEvent.MAPPING_COMPLETE,this._input,this._texture,this._output));
      }
   }
}

