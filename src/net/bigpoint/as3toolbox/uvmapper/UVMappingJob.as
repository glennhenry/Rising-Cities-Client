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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            super();
            if(!(_loc5_ && Boolean(param2)))
            {
               this._input = param1;
               if(!(_loc5_ && Boolean(this)))
               {
                  addr0059:
                  this._texture = param2;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr006c:
                     this._output = param3;
                  }
               }
               return;
            }
            §§goto(addr0059);
         }
         §§goto(addr006c);
      }
      
      public function get input() : BitmapData
      {
         return this._input;
      }
      
      public function set input(param1:BitmapData) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._input = param1;
         }
      }
      
      public function get texture() : BitmapData
      {
         return this._texture;
      }
      
      public function set texture(param1:BitmapData) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._texture = param1;
         }
      }
      
      public function get output() : BitmapData
      {
         return this._output;
      }
      
      public function set output(param1:BitmapData) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._output = param1;
         }
      }
      
      public function start(param1:Shader, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            param1.data.uvMap.width = this._input.width;
            if(!_loc3_)
            {
               param1.data.uvMap.height = this._input.height;
               if(_loc4_ || Boolean(param1))
               {
                  param1.data.uvMap.input = this._input;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     param1.data.texture.width = this._texture.width;
                     if(!_loc3_)
                     {
                        addr007a:
                        param1.data.texture.height = this._texture.height;
                        if(_loc4_)
                        {
                           param1.data.texture.input = this._texture;
                           if(_loc4_ || param2)
                           {
                              param1.data.textureSize.value = [this._texture.width,this._texture.height];
                              if(!_loc3_)
                              {
                                 addr00d5:
                                 if(this._output == null)
                                 {
                                    if(!(_loc3_ && param2))
                                    {
                                       addr00eb:
                                       this._output = new BitmapData(this._input.width,this._input.height);
                                       if(_loc4_)
                                       {
                                          §§goto(addr0108);
                                       }
                                       §§goto(addr0140);
                                    }
                                 }
                                 addr0108:
                                 _shaderJob = new ShaderJob(param1,this._output,this._output.width,this._output.height);
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr0140:
                                    _shaderJob.addEventListener(ShaderEvent.COMPLETE,this.handleJobComplete);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       addr015f:
                                       _shaderJob.start(param2);
                                    }
                                 }
                                 §§goto(addr0167);
                              }
                              §§goto(addr00eb);
                           }
                           addr0167:
                           return;
                        }
                        §§goto(addr0140);
                     }
                     §§goto(addr0108);
                  }
               }
               §§goto(addr015f);
            }
            §§goto(addr007a);
         }
         §§goto(addr00d5);
      }
      
      private function handleJobComplete(param1:ShaderEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            (param1.target as ShaderJob).removeEventListener(ShaderEvent.COMPLETE,this.handleJobComplete);
            if(!_loc3_)
            {
               dispatchEvent(new UVMapperEvent(UVMapperEvent.MAPPING_COMPLETE,this._input,this._texture,this._output));
            }
         }
      }
   }
}

