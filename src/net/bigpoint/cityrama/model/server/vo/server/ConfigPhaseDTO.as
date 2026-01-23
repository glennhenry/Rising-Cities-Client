package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPhaseDTO
   {
      
      private var _listEntryOutputs:Vector.<ConfigOutputDTO>;
      
      private var _listTriggerOutput:Vector.<ConfigOutputDTO>;
      
      private var _instantFinshOutput:Vector.<ConfigOutputDTO>;
      
      private var _duration:ConfigDurationVo;
      
      private var _phaseOrderId:int;
      
      private var _phaseType:String;
      
      private var _phaseId:Number;
      
      public function ConfigPhaseDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(!_loc7_)
         {
            super();
            if(_loc8_ || Boolean(_loc3_))
            {
               this._listEntryOutputs = new Vector.<ConfigOutputDTO>();
               if(_loc8_ || Boolean(this))
               {
                  this._listTriggerOutput = new Vector.<ConfigOutputDTO>();
                  if(_loc8_)
                  {
                     addr0068:
                     this._instantFinshOutput = new Vector.<ConfigOutputDTO>();
                     if(_loc8_)
                     {
                        §§goto(addr007b);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0091);
               }
            }
            addr007b:
            if(param1 != null)
            {
               if(!_loc7_)
               {
                  addr0087:
                  if(param1.eo != null)
                  {
                     addr0091:
                     var _loc5_:* = 0;
                     var _loc6_:* = param1.eo;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc6_,_loc5_));
                        if(_loc7_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           _loc2_ = §§nextvalue(_loc5_,_loc6_);
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              this._listEntryOutputs.push(new ConfigOutputDTO(_loc2_));
                           }
                           continue;
                        }
                        if(_loc8_ || Boolean(_loc2_))
                        {
                           if(_loc8_ || Boolean(this))
                           {
                              if(_loc8_)
                              {
                                 addr00f8:
                                 if(param1.to != null)
                                 {
                                    if(!(_loc7_ && Boolean(_loc3_)))
                                    {
                                       §§push(0);
                                       if(!_loc7_)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc8_)
                                          {
                                             _loc6_ = param1.to;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc6_,_loc5_));
                                                if(_loc8_ || Boolean(_loc2_))
                                                {
                                                   break loop0;
                                                }
                                                break;
                                             }
                                             while(§§pop())
                                             {
                                                _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                if(_loc8_)
                                                {
                                                   this._instantFinshOutput.push(new ConfigOutputDTO(_loc4_));
                                                }
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc6_,_loc5_));
                                                   break;
                                                }
                                             }
                                             addr01e0:
                                             addr015a:
                                             addr01dc:
                                          }
                                          addr01e2:
                                          if(!(_loc7_ && Boolean(this)))
                                          {
                                             addr01f2:
                                             if(param1.d != null)
                                             {
                                                if(!(_loc7_ && Boolean(_loc3_)))
                                                {
                                                   addr020a:
                                                   this._duration = new ConfigDurationVo(param1.d);
                                                   if(_loc8_)
                                                   {
                                                      addr0248:
                                                      this._phaseOrderId = param1.oid as int;
                                                      if(!_loc7_)
                                                      {
                                                         addr025a:
                                                         this._phaseType = param1.t as String;
                                                         if(!_loc7_)
                                                         {
                                                            addr026c:
                                                            this._phaseId = param1.pid as Number;
                                                         }
                                                         §§goto(addr0278);
                                                      }
                                                   }
                                                   §§goto(addr026c);
                                                }
                                                §§goto(addr0248);
                                             }
                                             else
                                             {
                                                this._duration = new ConfigDurationVo({"d":0});
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr0248);
                                                }
                                             }
                                             §§goto(addr0278);
                                          }
                                          §§goto(addr020a);
                                       }
                                       addr01a7:
                                       _loc5_ = §§pop();
                                       if(_loc8_)
                                       {
                                          _loc6_ = param1.ifc;
                                          §§goto(addr01d9);
                                       }
                                       §§goto(addr01e2);
                                    }
                                    §§goto(addr0248);
                                 }
                                 addr018d:
                                 if(param1.ifc != null)
                                 {
                                    if(_loc8_ || Boolean(_loc2_))
                                    {
                                       §§goto(addr01a7);
                                       §§push(0);
                                    }
                                    §§goto(addr0278);
                                 }
                                 §§goto(addr01f2);
                              }
                              §§goto(addr0248);
                           }
                           addr0185:
                           if(_loc8_)
                           {
                              §§goto(addr018d);
                           }
                           §§goto(addr025a);
                        }
                        §§goto(addr01e0);
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc8_ || Boolean(param1))
                           {
                              if(!_loc7_)
                              {
                                 §§goto(addr0185);
                              }
                              §§goto(addr01e2);
                           }
                           §§goto(addr01e0);
                        }
                        else
                        {
                           _loc3_ = §§nextvalue(_loc5_,_loc6_);
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              this._listTriggerOutput.push(new ConfigOutputDTO(_loc3_));
                           }
                           §§goto(addr015a);
                        }
                     }
                     §§goto(addr01dc);
                  }
                  §§goto(addr00f8);
               }
               §§goto(addr0091);
            }
            addr0278:
            return;
         }
         §§goto(addr0068);
      }
      
      public function get listEntryOutputs() : Vector.<ConfigOutputDTO>
      {
         return this._listEntryOutputs;
      }
      
      public function getListEntryOutputByType(param1:String, param2:String = null) : ConfigOutputDTO
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigOutputDTO = null;
         var _loc4_:int = 0;
         var _loc5_:* = this._listEntryOutputs;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§push(_loc3_.type);
                  if(_loc6_)
                  {
                     §§push(param1);
                     if(!_loc7_)
                     {
                        if(§§pop() != §§pop())
                        {
                           continue;
                        }
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(_loc3_.resourceConfig);
                        if(_loc6_)
                        {
                           §§push(§§pop() == null);
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              §§push(!§§pop());
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 §§push(_temp_4);
                                 if(_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc7_ && Boolean(param1)))
                                       {
                                          §§pop();
                                          if(_loc7_)
                                          {
                                             continue;
                                          }
                                          addr00b2:
                                          §§push(_loc3_.resourceConfig.type);
                                          if(!(_loc7_ && Boolean(this)))
                                          {
                                             addr00c3:
                                             §§push(§§pop() == param2);
                                             if(!(_loc7_ && Boolean(_loc3_)))
                                             {
                                                addr00d2:
                                                var _temp_8:* = §§pop();
                                                addr00d3:
                                                §§push(_temp_8);
                                                if(!_temp_8)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr00dd:
                                                      §§pop();
                                                      if(!(_loc6_ || Boolean(param1)))
                                                      {
                                                         break;
                                                      }
                                                      addr00fa:
                                                      addr00f9:
                                                      §§push(param2 == null);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc6_ || Boolean(this))
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr00dd);
                                          }
                                          §§goto(addr00fa);
                                       }
                                       §§goto(addr00dd);
                                    }
                                    §§goto(addr00d2);
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00dd);
                           }
                           §§goto(addr00d2);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr00fa);
               }
               §§goto(addr00f9);
            }
            return null;
         }
         return _loc3_;
      }
      
      public function getListTriggerOutputByType(param1:String, param2:String = null) : ConfigOutputDTO
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigOutputDTO = null;
         var _loc4_:int = 0;
         var _loc5_:* = this._listTriggerOutput;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!_loc6_)
               {
                  §§push(_loc3_.type);
                  if(!_loc6_)
                  {
                     §§push(param1);
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        if(§§pop() != §§pop())
                        {
                           continue;
                        }
                        if(_loc6_ && Boolean(param1))
                        {
                           break;
                        }
                        addr0061:
                        §§push(_loc3_.resourceConfig);
                        if(!_loc6_)
                        {
                           §§push(§§pop() == null);
                           if(_loc7_)
                           {
                              §§push(!§§pop());
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 var _temp_5:* = §§pop();
                                 §§push(_temp_5);
                                 §§push(_temp_5);
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§pop();
                                          if(!_loc6_)
                                          {
                                             addr00aa:
                                             §§push(_loc3_.resourceConfig.type);
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                addr00bb:
                                                §§push(§§pop() == param2);
                                                if(_loc7_ || Boolean(param2))
                                                {
                                                   addr00d5:
                                                   var _temp_8:* = §§pop();
                                                   addr00d6:
                                                   §§push(_temp_8);
                                                   if(!_temp_8)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§pop();
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         addr00e8:
                                                         addr00e7:
                                                         §§push(param2 == null);
                                                      }
                                                   }
                                                }
                                                addr00ea:
                                                if(§§pop())
                                                {
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr00e8);
                                          }
                                          §§goto(addr00e7);
                                       }
                                    }
                                    §§goto(addr00d5);
                                 }
                                 §§goto(addr00d6);
                              }
                              §§goto(addr00ea);
                           }
                           §§goto(addr00d5);
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00e8);
               }
               §§goto(addr0061);
            }
            return null;
         }
         return _loc3_;
      }
      
      public function get phaseOrderId() : int
      {
         return this._phaseOrderId;
      }
      
      public function get phaseType() : String
      {
         return this._phaseType;
      }
      
      public function get phaseId() : Number
      {
         return this._phaseId;
      }
      
      public function get durationConfig() : ConfigDurationVo
      {
         return this._duration;
      }
      
      public function get listTriggerOutput() : Vector.<ConfigOutputDTO>
      {
         return this._listTriggerOutput;
      }
      
      public function get instantFinshOutput() : Vector.<ConfigOutputDTO>
      {
         return this._instantFinshOutput;
      }
      
      public function set listEntryOutputs(param1:Vector.<ConfigOutputDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._listEntryOutputs = param1;
         }
      }
      
      public function clone() : ConfigPhaseDTO
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigOutputDTO = null;
         var _loc1_:ConfigPhaseDTO = new ConfigPhaseDTO(null);
         if(_loc6_)
         {
            _loc1_._duration = this._duration;
            if(_loc6_)
            {
               addr003a:
               _loc1_._instantFinshOutput = this._instantFinshOutput;
               if(_loc6_)
               {
                  _loc1_._listEntryOutputs = new Vector.<ConfigOutputDTO>();
               }
            }
            var _loc3_:int = 0;
            for each(_loc2_ in this._listEntryOutputs)
            {
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  _loc1_._listEntryOutputs.push(_loc2_);
               }
            }
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               _loc1_._listTriggerOutput = this._listTriggerOutput;
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  addr00bc:
                  _loc1_._phaseId = this._phaseId;
                  if(!(_loc5_ && Boolean(this)))
                  {
                     §§goto(addr00df);
                  }
                  §§goto(addr00f5);
               }
               addr00df:
               _loc1_._phaseOrderId = this._phaseOrderId;
               if(!(_loc5_ && Boolean(this)))
               {
                  addr00f5:
                  _loc1_._phaseType = this._phaseType;
               }
               return _loc1_;
            }
            §§goto(addr00bc);
         }
         §§goto(addr003a);
      }
   }
}

