package net.bigpoint.as3toolbox.uvmapper
{
   import flash.display.BitmapData;
   import flash.display.Shader;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.ByteArray;
   
   internal class UVMapperInstance extends EventDispatcher
   {
      
      public static const codingLookupTable:BitmapData;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         codingLookupTable = new BitmapData(256,1,false,0);
      }
      
      private var _jobs:Vector.<UVMappingJob>;
      
      private var _sourceUVMapper:Class;
      
      private var _shaderUVMapper:Shader;
      
      public function UVMapperInstance(param1:IEventDispatcher = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._jobs = new Vector.<UVMappingJob>();
            if(!(_loc2_ && Boolean(param1)))
            {
               this._sourceUVMapper = UVMapperInstance__sourceUVMapper;
               if(!(_loc2_ && _loc2_))
               {
                  super(param1);
                  if(!(_loc2_ && _loc2_))
                  {
                     initializeLookupTable();
                     if(_loc3_)
                     {
                        this._shaderUVMapper = new Shader(new this._sourceUVMapper() as ByteArray);
                        if(_loc3_)
                        {
                           this._shaderUVMapper.data.decoding.width = codingLookupTable.width;
                           addr0093:
                           if(_loc3_ || Boolean(param1))
                           {
                              §§goto(addr00bf);
                           }
                        }
                        §§goto(addr00d7);
                     }
                  }
                  §§goto(addr0093);
               }
            }
            addr00bf:
            this._shaderUVMapper.data.decoding.height = codingLookupTable.height;
            if(!_loc2_)
            {
               addr00d7:
               this._shaderUVMapper.data.decoding.input = codingLookupTable;
            }
            §§goto(addr00e8);
         }
         addr00e8:
      }
      
      private static function initializeLookupTable() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:uint = uint(codingLookupTable.width);
         if(!_loc5_)
         {
            codingLookupTable.lock();
         }
         var _loc4_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(true)
            {
               if(§§pop() >= _loc3_)
               {
                  if(_loc6_ || Boolean(_loc1_))
                  {
                     break;
                  }
               }
               else
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && UVMapperInstance))
                  {
                     §§push(240);
                     if(!_loc5_)
                     {
                        §§push(§§pop() & §§pop());
                        if(!_loc5_)
                        {
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              _loc1_ = §§pop();
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 addr0091:
                                 addr0087:
                                 §§push(§§pop() & 0x0F);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() << 4);
                                 }
                                 §§push(§§pop());
                                 if(_loc6_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc6_)
                                    {
                                       codingLookupTable.setPixel(_loc4_,0,(_loc1_ << 16) + (_loc2_ << 8));
                                       if(_loc5_ && Boolean(_loc1_))
                                       {
                                          continue loop0;
                                       }
                                    }
                                    §§push(_loc4_);
                                    if(_loc6_)
                                    {
                                       addr00ca:
                                       §§push(uint(§§pop() + 1));
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                    }
                                    addr00df:
                                    _loc4_ = §§pop();
                                    if(!(_loc6_ || Boolean(_loc3_)))
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr00ca);
                              }
                              §§goto(addr010b);
                           }
                           §§goto(addr00df);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr010b);
            }
            break;
         }
         codingLookupTable.unlock();
         addr010b:
      }
      
      public function map(param1:BitmapData, param2:BitmapData, param3:BitmapData = null, param4:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:UVMappingJob = new UVMappingJob(param1,param2,param3);
         if(!_loc7_)
         {
            if(param4)
            {
               if(!_loc7_)
               {
                  _loc5_.start(this._shaderUVMapper,true);
                  if(_loc6_)
                  {
                     dispatchEvent(new UVMapperEvent(UVMapperEvent.MAPPING_COMPLETE,_loc5_.input,_loc5_.texture,_loc5_.output));
                     addr0055:
                     if(_loc7_)
                     {
                        §§goto(addr00a1);
                     }
                  }
                  return;
               }
               §§goto(addr0055);
            }
            else
            {
               this.addJob(_loc5_);
            }
         }
         addr00a1:
      }
      
      private function addJob(param1:UVMappingJob) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._jobs.push(param1);
            if(!(_loc3_ && _loc3_))
            {
               if(this._jobs.length == 1)
               {
                  if(!_loc3_)
                  {
                     addr0053:
                     this.startNextJob();
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
      }
      
      private function startNextJob() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this._jobs.length == 0)
            {
               if(!_loc2_)
               {
                  dispatchEvent(new UVMapperEvent(UVMapperEvent.NO_MAPPING_JOBS_LEFT));
                  if(_loc3_)
                  {
                     §§goto(addr0049);
                  }
               }
            }
            var _loc1_:UVMappingJob = this._jobs[0];
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.addEventListener(UVMapperEvent.MAPPING_COMPLETE,this.handleJobComplete);
               if(_loc3_)
               {
                  _loc1_.start(this._shaderUVMapper);
               }
            }
            return;
         }
         addr0049:
      }
      
      private function handleJobComplete(param1:UVMapperEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._jobs.shift();
            if(!(_loc3_ && Boolean(param1)))
            {
               (param1.target as UVMappingJob).removeEventListener(UVMapperEvent.MAPPING_COMPLETE,this.handleJobComplete);
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr0069);
               }
               §§goto(addr008c);
            }
         }
         addr0069:
         dispatchEvent(new UVMapperEvent(UVMapperEvent.MAPPING_COMPLETE,param1.inputBitmapData,param1.textureBitmapData,param1.outputBitmapData));
         if(!_loc3_)
         {
            addr008c:
            this.startNextJob();
         }
      }
   }
}

