package net.bigpoint.cityrama.model.construction
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class ConstructionLayerStepVo
   {
      
      public static var STATE_AVAILABLE:String = "STATE_AVAILABLE";
      
      public static var STATE_RUNNING:String = "STATE_RUNNING";
      
      public static var STATE_UNAVAILABLE:String = "STATE_UNAVAILABLE";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && ConstructionLayerStepVo))
      {
         STATE_AVAILABLE = "STATE_AVAILABLE";
         if(_loc1_)
         {
            STATE_RUNNING = "STATE_RUNNING";
            if(_loc1_)
            {
               §§goto(addr0043);
            }
         }
         §§goto(addr0051);
      }
      addr0043:
      
      public static var STATE_DONE:String = "STATE_DONE";
      
      if(_loc1_)
      {
         addr0051:
         STATE_UNAVAILABLE = "STATE_UNAVAILABLE";
      }
      
      private var _state:String;
      
      private var _configOutput:ConfigOutputDTO;
      
      private var _currentStock:int;
      
      private var _phaseID:Number;
      
      private var _runningPhase:PhaseDTO;
      
      private var _currentTime:Number;
      
      private var _duration:int;
      
      private var _instantFinishCost:Number = 0;
      
      private var _rcStock:Number;
      
      private var _isUpgrade:Boolean;
      
      private var _stepIndex:int;
      
      private var _numIndices:int;
      
      private var _displayInstantButton:Boolean = true;
      
      public function ConstructionLayerStepVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._state = param1;
         }
      }
      
      public function set configOutput(param1:ConfigOutputDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._configOutput = param1;
         }
      }
      
      public function get configOutput() : ConfigOutputDTO
      {
         return this._configOutput;
      }
      
      public function get icon() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._state == STATE_DONE)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0031:
                  §§push("task_checkmark_grey");
                  if(!(_loc3_ && _loc3_))
                  {
                     return §§pop();
                  }
                  addr00a1:
                  return §§pop() + this._configOutput.goodConfig.gfxId;
                  addr0096:
               }
               else
               {
                  addr0124:
                  var _loc1_:* = this._configOutput.resourceConfig.type;
                  if(_loc2_)
                  {
                     §§push(ServerResConst.RESOURCE_REALCURRENCY);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§push(0);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr01f5:
                                 §§push(3);
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                 }
                              }
                              §§goto(addr0214);
                           }
                           else
                           {
                              §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§push(_loc1_);
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§push(1);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr01cc:
                                          §§push(2);
                                          if(_loc2_ || _loc2_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                       if(!_loc3_)
                                       {
                                          addr01b5:
                                          §§push(_loc1_);
                                          if(!_loc3_)
                                          {
                                             addr01bb:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§goto(addr01cc);
                                                }
                                                else
                                                {
                                                   §§goto(addr01f5);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr01f1);
                                             }
                                             §§goto(addr01f5);
                                          }
                                          addr01f1:
                                          §§goto(addr01f0);
                                       }
                                       addr01f0:
                                       if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc1_)
                                       {
                                          §§goto(addr01f5);
                                       }
                                       else
                                       {
                                          §§push(4);
                                       }
                                       §§goto(addr0214);
                                    }
                                    addr0214:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push("task50016");
                                          if(_loc2_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr00d7);
                                          break;
                                       case 1:
                                          §§push("task50014");
                                          if(_loc2_)
                                          {
                                             addr00d7:
                                             return §§pop();
                                          }
                                          break;
                                       case 2:
                                          §§push("task50030");
                                          if(!_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          break;
                                       case 3:
                                          §§push("task50035");
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr022c);
                                          break;
                                       default:
                                          addr022a:
                                          addr022c:
                                          return §§pop();
                                          return "";
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr01bb);
                              }
                              §§goto(addr01f0);
                           }
                        }
                        §§goto(addr01bb);
                     }
                     §§goto(addr01b5);
                  }
                  §§goto(addr01f5);
               }
            }
            else
            {
               §§push(this._configOutput);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr00ab:
                        §§push(this._configOutput);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           if(§§pop().goodConfig)
                           {
                              if(_loc2_)
                              {
                                 §§push("small_");
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr0096);
                                 }
                                 §§goto(addr00a1);
                              }
                           }
                           §§push(this._configOutput);
                        }
                        if(§§pop().resourceConfig)
                        {
                           §§goto(addr0124);
                        }
                        §§goto(addr022a);
                     }
                     §§goto(addr0124);
                  }
                  §§goto(addr022a);
               }
               §§goto(addr00ab);
            }
            §§goto(addr022a);
         }
         §§goto(addr0031);
      }
      
      public function get iconLibName() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._state == STATE_DONE)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§push("gui_popups_questPopup");
                  if(_loc1_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr00c4:
                  addr00c8:
                  if(this._configOutput.resourceConfig)
                  {
                     if(_loc1_)
                     {
                        addr00d4:
                        §§push("gui_popups_questPopup");
                        if(_loc1_)
                        {
                           §§goto(addr00dc);
                        }
                     }
                     else
                     {
                        addr00dd:
                        return "";
                     }
                     return §§pop();
                  }
                  §§goto(addr00dd);
               }
               §§goto(addr00dc);
            }
            else
            {
               §§push(this._configOutput);
               if(_loc1_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr007f:
                        §§push(this._configOutput);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0090:
                           if(§§pop().goodConfig)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push("gui_popups_smallGoodIcons");
                                 if(_loc1_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 §§goto(addr00c4);
                              }
                              addr00dc:
                              return §§pop();
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr00dd);
               }
               §§goto(addr0090);
            }
         }
         §§goto(addr007f);
      }
      
      public function get resourceIcon() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._configOutput);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr0041:
                     §§push(this._configOutput);
                     if(!_loc2_)
                     {
                        addr004a:
                        if(§§pop().goodConfig)
                        {
                           if(_loc1_)
                           {
                              §§push("product_icon_small");
                              if(!_loc2_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr006f:
                              addr0073:
                              if(this._configOutput.resourceConfig)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§push("");
                                    if(_loc1_ || Boolean(this))
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr0097:
                                    §§push("");
                                 }
                                 §§goto(addr0099);
                              }
                              §§goto(addr0097);
                           }
                           addr0099:
                           return §§pop();
                        }
                        §§goto(addr006f);
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0097);
            }
            §§goto(addr004a);
         }
         §§goto(addr0041);
      }
      
      public function get resourceIconLibName() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._configOutput);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0037:
                     §§push(this._configOutput);
                     if(!_loc2_)
                     {
                        addr0040:
                        if(§§pop().goodConfig)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push("gui_resources_icons");
                              if(_loc1_ || _loc2_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr0086:
                              addr008a:
                              if(this._configOutput.resourceConfig)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push("");
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       §§goto(addr00ad);
                                    }
                                 }
                                 else
                                 {
                                    addr00ae:
                                    return "";
                                 }
                                 return §§pop();
                              }
                              §§goto(addr00ae);
                           }
                           addr00ad:
                           return §§pop();
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr00ae);
            }
            §§goto(addr0040);
         }
         §§goto(addr0037);
      }
      
      public function get progressTarget() : int
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this._configOutput)
            {
               if(_loc2_)
               {
                  return Math.abs(this._configOutput.outputAmount);
               }
            }
         }
         return 1;
      }
      
      public function get currentProgress() : int
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(this.state == STATE_DONE)
            {
               if(!_loc1_)
               {
                  addr0038:
                  if(this._configOutput)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr0045);
                     }
                  }
                  §§goto(addr0053);
               }
               addr0045:
               return Math.abs(this._configOutput.outputAmount);
            }
            addr0053:
            return this._currentStock;
         }
         §§goto(addr0038);
      }
      
      public function set currentStock(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._currentStock = param1;
         }
      }
      
      public function get timerBarData() : TimerBarComponentVo
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:TimerBarComponentVo = null;
         if(_loc2_ || Boolean(_loc1_))
         {
            §§push(this.state == STATE_RUNNING);
            if(!(_loc3_ && _loc3_))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr0057);
                     }
                     §§goto(addr005b);
                  }
               }
            }
            addr0057:
            if(Boolean(this._runningPhase))
            {
               _loc1_ = new TimerBarComponentVo();
               addr005b:
               if(!_loc3_)
               {
                  _loc1_.userMayStart = false;
                  if(_loc2_ || _loc2_)
                  {
                     addr008a:
                     _loc1_.cycleLength = this._runningPhase.config.durationConfig.duration;
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr00a7);
                     }
                     §§goto(addr00cf);
                  }
                  addr00a7:
                  §§push(_loc1_);
                  §§push(this._runningPhase.expirationTime);
                  if(_loc2_)
                  {
                     §§push(§§pop() - _loc1_.cycleLength);
                  }
                  §§pop().startTime = §§pop();
                  if(_loc2_)
                  {
                     addr00cf:
                     _loc1_.targetTime = this._runningPhase.expirationTime;
                     if(!_loc3_)
                     {
                        _loc1_.currentTime = this._currentTime;
                        if(!(_loc2_ || _loc3_))
                        {
                           §§goto(addr00f6);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr008a);
            }
            addr00f6:
            return null;
         }
         §§goto(addr005b);
      }
      
      public function set runningPhase(param1:PhaseDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._runningPhase = param1;
         }
      }
      
      public function get currentTime() : Number
      {
         return this._currentTime;
      }
      
      public function set currentTime(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._currentTime = param1;
         }
      }
      
      public function set duration(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._duration = param1;
         }
      }
      
      public function get duration() : int
      {
         return this._duration;
      }
      
      public function get instantFinishCost() : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc4_ || _loc1_)
         {
            if(this.state == STATE_DONE)
            {
               if(_loc4_ || Boolean(this))
               {
                  return 0;
               }
            }
         }
         var _loc1_:* = Math.abs(this._instantFinishCost);
         if(_loc4_)
         {
            §§push(_loc1_);
            if(!_loc5_)
            {
               if(§§pop() == 0)
               {
                  if(!_loc5_)
                  {
                     §§push(_loc1_);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        return §§pop();
                     }
                     addr009f:
                     §§push(0.5);
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop());
                           if(_loc4_ || Boolean(_loc3_))
                           {
                              _loc1_ = §§pop();
                              if(!(_loc5_ && Boolean(_loc1_)))
                              {
                                 addr00dc:
                                 §§push(this._runningPhase);
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr0109);
                                       }
                                    }
                                    §§goto(addr01d9);
                                 }
                                 addr0109:
                                 §§goto(addr0105);
                              }
                              addr0105:
                              §§push(this._runningPhase.expirationTime);
                              if(!_loc5_)
                              {
                                 §§push(this._runningPhase.config.durationConfig.duration);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    addr012c:
                                    §§push(§§pop() - §§pop());
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(!_loc5_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             §§push(1);
                                             §§push(this._currentTime);
                                             if(_loc4_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc4_)
                                                   {
                                                      addr017a:
                                                      addr016b:
                                                      §§push(this._runningPhase.expirationTime);
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§pop() - _loc2_);
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      addr018a:
                                                      §§push(§§pop());
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr0191);
                                                      }
                                                      §§goto(addr01d2);
                                                   }
                                                   §§goto(addr0191);
                                                }
                                                §§goto(addr017a);
                                             }
                                             §§goto(addr016b);
                                          }
                                          §§goto(addr01a0);
                                       }
                                       §§goto(addr018a);
                                    }
                                    §§goto(addr01d2);
                                 }
                                 §§goto(addr01bc);
                              }
                           }
                           §§goto(addr0191);
                        }
                        §§goto(addr01cb);
                     }
                     §§goto(addr012c);
                  }
                  §§goto(addr01a0);
               }
               else
               {
                  addr007f:
                  if(this.state == STATE_RUNNING)
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc1_);
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           §§goto(addr009f);
                        }
                        §§goto(addr0191);
                     }
                     §§goto(addr00dc);
                  }
               }
               §§goto(addr01d9);
            }
            addr0191:
            _loc3_ = §§pop();
            if(_loc4_ || Boolean(_loc3_))
            {
               addr01a0:
               §§push(_loc1_);
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  addr01bc:
                  §§push(§§pop() * _loc3_);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     addr01cb:
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        §§goto(addr01d2);
                     }
                     §§goto(addr01e1);
                  }
               }
               addr01d2:
               _loc1_ = §§pop();
               if(_loc4_)
               {
                  addr01e1:
                  _loc1_ = Math.floor(_loc1_);
                  addr01d9:
               }
               §§goto(addr01e2);
            }
            addr01e2:
            return Math.max(_loc1_,1);
         }
         §§goto(addr007f);
      }
      
      public function set instantFinishCost(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._instantFinishCost = param1;
         }
      }
      
      public function get phaseID() : Number
      {
         return this._phaseID;
      }
      
      public function set phaseID(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._phaseID = param1;
         }
      }
      
      public function get isUpgrade() : Boolean
      {
         return this._isUpgrade;
      }
      
      public function set isUpgrade(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._isUpgrade = param1;
         }
      }
      
      public function get stepIndex() : int
      {
         return this._stepIndex;
      }
      
      public function set stepIndex(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._stepIndex = param1;
         }
      }
      
      public function get numIndices() : int
      {
         return this._numIndices;
      }
      
      public function set numIndices(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._numIndices = param1;
         }
      }
      
      public function get rcStock() : Number
      {
         return this._rcStock;
      }
      
      public function set rcStock(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._rcStock = param1;
         }
      }
      
      public function get displayInstantButton() : Boolean
      {
         return this._displayInstantButton;
      }
      
      public function set displayInstantButton(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && param1))
         {
            this._displayInstantButton = param1;
         }
      }
   }
}

