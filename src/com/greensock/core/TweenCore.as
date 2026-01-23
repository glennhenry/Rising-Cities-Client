package com.greensock.core
{
   import com.greensock.*;
   
   public class TweenCore
   {
      
      public static const version:Number = 1.64;
      
      protected static var _classInitted:Boolean;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         version = 1.64;
      }
      
      public var initted:Boolean;
      
      protected var _hasUpdate:Boolean;
      
      public var active:Boolean;
      
      protected var _delay:Number;
      
      public var cachedReversed:Boolean;
      
      public var nextNode:TweenCore;
      
      public var cachedTime:Number;
      
      protected var _rawPrevTime:Number = -1;
      
      public var vars:Object;
      
      public var cachedTotalTime:Number;
      
      public var data:*;
      
      public var timeline:SimpleTimeline;
      
      public var cachedOrphan:Boolean;
      
      public var cachedStartTime:Number;
      
      public var prevNode:TweenCore;
      
      public var cachedDuration:Number;
      
      public var gc:Boolean;
      
      public var cachedPauseTime:Number;
      
      public var cacheIsDirty:Boolean;
      
      public var cachedPaused:Boolean;
      
      public var cachedTimeScale:Number;
      
      public var cachedTotalDuration:Number;
      
      public function TweenCore(param1:Number = 0, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            super();
            if(!_loc5_)
            {
               §§push(this);
               if(_loc6_ || _loc3_)
               {
                  §§pop().vars = param2 != null ? param2 : {};
                  if(!(_loc5_ && _loc3_))
                  {
                     if(this.vars.isGSVars)
                     {
                        if(_loc6_)
                        {
                           this.vars = this.vars.vars;
                           if(_loc6_ || Boolean(param1))
                           {
                              addr0082:
                              this.cachedDuration = this.cachedTotalDuration = param1;
                              if(_loc6_ || Boolean(param2))
                              {
                                 §§push(§§findproperty(_delay));
                                 if(!(_loc5_ && Boolean(param2)))
                                 {
                                    if(this.vars.delay)
                                    {
                                       addr00bd:
                                       §§push(Number(this.vars.delay));
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(0);
                                    }
                                    §§pop()._delay = §§pop();
                                    if(!_loc5_)
                                    {
                                       addr00e1:
                                       §§push(this);
                                       if(!(_loc5_ && Boolean(param1)))
                                       {
                                          if(this.vars.timeScale)
                                          {
                                             addr00fc:
                                             §§push(Number(this.vars.timeScale));
                                             if(_loc5_ && Boolean(param2))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§push(1);
                                          }
                                          §§pop().cachedTimeScale = §§pop();
                                          if(_loc6_ || Boolean(param2))
                                          {
                                             this.active = Boolean(param1 == 0 && _delay == 0 && this.vars.immediateRender != false);
                                             if(!_loc5_)
                                             {
                                                this.cachedTotalTime = this.cachedTime = 0;
                                                if(!_loc5_)
                                                {
                                                   addr0187:
                                                   this.data = this.vars.data;
                                                   if(!(_loc5_ && Boolean(param1)))
                                                   {
                                                      §§push(_classInitted);
                                                      if(_loc6_ || Boolean(this))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc6_ || Boolean(this))
                                                            {
                                                               addr01c3:
                                                               if(!isNaN(TweenLite.rootFrame))
                                                               {
                                                                  return;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  addr01da:
                                                                  TweenLite.initClass();
                                                                  if(!(_loc5_ && Boolean(this)))
                                                                  {
                                                                     addr01f0:
                                                                     _classInitted = true;
                                                                     if(_loc6_)
                                                                     {
                                                                     }
                                                                  }
                                                                  addr0210:
                                                                  addr021c:
                                                                  if(this.vars.timeline is SimpleTimeline)
                                                                  {
                                                                     addr0257:
                                                                     var _loc3_:SimpleTimeline = _loc6_ ? this.vars.timeline : TweenLite.rootFramesTimeline;
                                                                     if(!(_loc5_ && Boolean(param2)))
                                                                     {
                                                                        _loc3_.insert(this,_loc3_.cachedTotalTime);
                                                                        if(!(_loc5_ && Boolean(param2)))
                                                                        {
                                                                           addr0281:
                                                                           if(this.vars.reversed)
                                                                           {
                                                                              if(_loc6_ || Boolean(param2))
                                                                              {
                                                                                 addr02aa:
                                                                                 this.cachedReversed = true;
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr02b5:
                                                                                    if(this.vars.paused)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          this.paused = true;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr02b5);
                                                                        }
                                                                        §§goto(addr02aa);
                                                                     }
                                                                     §§goto(addr0281);
                                                                  }
                                                                  else
                                                                  {
                                                                     if(this.vars.useFrames)
                                                                     {
                                                                        §§goto(addr0241);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(TweenLite.rootTimeline);
                                                                     }
                                                                     §§goto(addr0257);
                                                                  }
                                                               }
                                                               §§goto(addr0241);
                                                            }
                                                            §§goto(addr0226);
                                                         }
                                                         §§goto(addr0210);
                                                      }
                                                      §§goto(addr021c);
                                                   }
                                                   §§goto(addr01f0);
                                                }
                                                §§goto(addr01c3);
                                             }
                                             §§goto(addr01f0);
                                          }
                                          §§goto(addr0241);
                                       }
                                       §§goto(addr00fc);
                                    }
                                    §§goto(addr0187);
                                 }
                                 §§goto(addr00bd);
                              }
                              §§goto(addr0187);
                           }
                           §§goto(addr00e1);
                        }
                        §§goto(addr01f0);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr01c3);
               }
               §§goto(addr003a);
            }
            §§goto(addr01da);
         }
         §§goto(addr0241);
      }
      
      public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function get delay() : Number
      {
         return _delay;
      }
      
      public function get duration() : Number
      {
         return this.cachedDuration;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(param1 != this.cachedReversed)
            {
               if(!(_loc3_ && param1))
               {
                  this.cachedReversed = param1;
                  if(_loc2_ || param1)
                  {
                     addr0052:
                     setTotalTime(this.cachedTotalTime,true);
                  }
                  §§goto(addr005e);
               }
               §§goto(addr0052);
            }
         }
         addr005e:
      }
      
      public function set startTime(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this.timeline);
            if(!_loc2_)
            {
               §§push(§§pop() == null);
               if(_loc3_)
               {
                  §§push(!§§pop());
                  if(_loc3_ || Boolean(this))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              §§pop();
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(param1 == this.cachedStartTime);
                                 if(_loc3_)
                                 {
                                    addr0079:
                                    §§push(!§§pop());
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr0087:
                                       var _temp_8:* = §§pop();
                                       addr0088:
                                       §§push(_temp_8);
                                       if(!_temp_8)
                                       {
                                          if(!(_loc2_ && Boolean(param1)))
                                          {
                                             §§goto(addr0099);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr00b1);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr0087);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr0088);
                  }
                  addr0099:
                  §§pop();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00b1:
                     addr00a7:
                     §§push(this.gc);
                     if(_loc3_)
                     {
                        §§push(§§pop());
                     }
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           addr00cb:
                           §§push(this.timeline);
                           §§push(this);
                           §§push(param1);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop() - _delay);
                           }
                           §§pop().insert(§§pop(),§§pop());
                           if(_loc2_ && _loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        this.cachedStartTime = param1;
                     }
                  }
                  §§goto(addr00f8);
               }
               §§goto(addr0079);
            }
            §§goto(addr00cb);
         }
         addr00f8:
      }
      
      public function restart(param1:Boolean = false, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            this.reversed = false;
            if(!_loc4_)
            {
               this.paused = false;
               §§goto(addr002f);
            }
            §§goto(addr0044);
         }
         addr002f:
         if(!_loc4_)
         {
            addr0044:
            §§push(this);
            if(_loc3_)
            {
               if(param1)
               {
                  addr004f:
                  §§push(_delay);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(-§§pop());
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                        if(_loc3_ || Boolean(this))
                        {
                        }
                     }
                  }
               }
               else
               {
                  §§push(0);
               }
               §§pop().setTotalTime(§§pop(),param2);
               §§goto(addr008c);
            }
            §§goto(addr004f);
         }
         addr008c:
      }
      
      public function set delay(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.startTime);
            if(!(_loc2_ && _loc3_))
            {
               §§push(param1);
               if(!_loc2_)
               {
                  §§push(§§pop() - _delay);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().startTime = §§pop();
            if(!(_loc2_ && Boolean(param1)))
            {
               addr0050:
               _delay = param1;
            }
            return;
         }
         §§goto(addr0050);
      }
      
      public function resume() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.paused = false;
         }
      }
      
      public function get paused() : Boolean
      {
         return this.cachedPaused;
      }
      
      public function play() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.reversed = false;
            if(_loc1_ || _loc1_)
            {
               addr0027:
               this.paused = false;
            }
            return;
         }
         §§goto(addr0027);
      }
      
      public function set duration(param1:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop() / this.cachedDuration);
            if(!(_loc5_ && _loc3_))
            {
               addr0030:
               §§push(§§pop());
            }
            var _loc2_:* = §§pop();
            if(!_loc5_)
            {
               var _temp_3:* = this;
               var _loc3_:*;
               this.cachedTotalDuration = _loc3_ = param1;
               _temp_3.cachedDuration = _loc3_;
               if(_loc4_)
               {
                  §§push(this.active);
                  if(_loc4_)
                  {
                     §§push(§§pop());
                     if(_loc4_ || Boolean(this))
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 §§pop();
                                 if(!(_loc5_ && Boolean(_loc3_)))
                                 {
                                    addr0098:
                                    §§push(this.cachedPaused);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       addr00aa:
                                       §§push(!§§pop());
                                       if(_loc4_)
                                       {
                                          addr00b1:
                                          var _temp_9:* = §§pop();
                                          addr00b2:
                                          §§push(_temp_9);
                                          if(_temp_9)
                                          {
                                             if(!_loc5_)
                                             {
                                                addr00bc:
                                                §§pop();
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   addr00e4:
                                                   §§push(param1 == 0);
                                                   if(_loc4_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(this);
                                                         §§push(this.cachedTotalTime);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() * _loc2_);
                                                         }
                                                         §§pop().setTotalTime(§§pop(),true);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            addr010e:
                                                            setDirtyCache(false);
                                                         }
                                                         return;
                                                      }
                                                   }
                                                }
                                                §§goto(addr010e);
                                             }
                                          }
                                       }
                                       §§goto(addr00e4);
                                    }
                                    §§goto(addr00bc);
                                 }
                                 §§goto(addr010e);
                              }
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00b2);
                     }
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr010e);
            }
            §§goto(addr0098);
         }
         §§goto(addr0030);
      }
      
      public function invalidate() : void
      {
      }
      
      public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(param1);
            if(!(_loc3_ && param2))
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr0030:
                     renderTime(this.totalDuration,param2,false);
                     if(!(_loc3_ && param2))
                     {
                        return;
                     }
                     addr0050:
                     §§push(this.timeline.autoRemoveChildren);
                     if(_loc4_ || param1)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              this.setEnabled(false,false);
                              if(_loc4_)
                              {
                                 addr0089:
                                 §§push(param2);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(this.vars.onComplete);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             var _temp_8:* = §§pop();
                                             §§push(_temp_8);
                                             §§push(_temp_8);
                                             if(!_loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_ || param2)
                                                   {
                                                      §§pop();
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         addr00e7:
                                                         §§push(this.cachedTotalTime);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() >= this.cachedTotalDuration);
                                                            if(_loc4_)
                                                            {
                                                               addr0109:
                                                               §§push(§§pop());
                                                               if(_loc4_ || param2)
                                                               {
                                                                  addr0119:
                                                                  var _temp_12:* = §§pop();
                                                                  §§push(_temp_12);
                                                                  §§push(_temp_12);
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0129:
                                                                           §§pop();
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              §§push(this.cachedReversed);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 addr0149:
                                                                                 §§push(!§§pop());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0150:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          §§goto(addr0161);
                                                                                       }
                                                                                       §§goto(addr01be);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.cachedReversed);
                                                                                       if(!(_loc3_ && Boolean(this)))
                                                                                       {
                                                                                          addr0191:
                                                                                          §§push(§§pop());
                                                                                          if(_loc4_ || _loc3_)
                                                                                          {
                                                                                             addr01a0:
                                                                                             var _temp_22:* = §§pop();
                                                                                             §§push(_temp_22);
                                                                                             §§push(_temp_22);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr01a7:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc3_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr01b8:
                                                                                                      §§pop();
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§goto(addr01be);
                                                                                                      }
                                                                                                      §§goto(addr01fa);
                                                                                                   }
                                                                                                   §§goto(addr01dd);
                                                                                                }
                                                                                                §§goto(addr01ca);
                                                                                             }
                                                                                             §§goto(addr01cb);
                                                                                          }
                                                                                          §§goto(addr01ca);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr01dd);
                                                                                 }
                                                                                 §§goto(addr01a0);
                                                                              }
                                                                              §§goto(addr01ca);
                                                                           }
                                                                           §§goto(addr01be);
                                                                        }
                                                                        §§goto(addr0191);
                                                                     }
                                                                     §§goto(addr0150);
                                                                  }
                                                                  §§goto(addr01a7);
                                                               }
                                                               §§goto(addr0149);
                                                            }
                                                            §§goto(addr0129);
                                                         }
                                                         §§goto(addr01c2);
                                                      }
                                                      addr0161:
                                                      this.vars.onComplete.apply(null,this.vars.onCompleteParams);
                                                      if(_loc3_)
                                                      {
                                                         addr01be:
                                                         addr01c2:
                                                         §§push(this.cachedTotalTime == 0);
                                                         if(!_loc3_)
                                                         {
                                                            addr01ca:
                                                            var _temp_16:* = §§pop();
                                                            addr01cb:
                                                            §§push(_temp_16);
                                                            if(_temp_16)
                                                            {
                                                               if(_loc4_ || param1)
                                                               {
                                                                  addr01dd:
                                                                  §§pop();
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     §§goto(addr0203);
                                                                  }
                                                                  §§goto(addr0215);
                                                               }
                                                            }
                                                         }
                                                         addr0203:
                                                         addr01fa:
                                                         if(Boolean(this.vars.onReverseComplete))
                                                         {
                                                            if(_loc4_ || param2)
                                                            {
                                                               addr0215:
                                                               this.vars.onReverseComplete.apply(null,this.vars.onReverseCompleteParams);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr022b);
                                                   }
                                                   §§goto(addr0149);
                                                }
                                                §§goto(addr0119);
                                             }
                                             §§goto(addr01a7);
                                          }
                                          §§goto(addr01b8);
                                       }
                                    }
                                    addr022b:
                                    return;
                                 }
                                 §§goto(addr0109);
                              }
                              §§goto(addr01fa);
                           }
                           §§goto(addr00e7);
                        }
                        else
                        {
                           this.active = false;
                           if(!_loc3_)
                           {
                              §§goto(addr0089);
                           }
                        }
                        §§goto(addr01fa);
                     }
                     §§goto(addr0150);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0050);
            }
            §§goto(addr0203);
         }
         §§goto(addr0030);
      }
      
      public function get totalTime() : Number
      {
         return this.cachedTotalTime;
      }
      
      public function get startTime() : Number
      {
         return this.cachedStartTime;
      }
      
      public function get reversed() : Boolean
      {
         return this.cachedReversed;
      }
      
      public function set currentTime(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            setTotalTime(param1,false);
         }
      }
      
      protected function setDirtyCache(param1:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            var _loc2_:TweenCore = param1 ? this : this.timeline;
            while(_loc2_)
            {
               _loc2_.cacheIsDirty = true;
               if(_loc4_)
               {
                  break;
               }
               _loc2_ = _loc2_.timeline;
            }
            return;
         }
         §§goto(addr002a);
      }
      
      public function reverse(param1:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.reversed = true;
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(param1);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0062:
                        this.paused = false;
                        if(_loc2_ && _loc2_)
                        {
                           addr0085:
                           this.setEnabled(true,false);
                        }
                     }
                  }
                  else
                  {
                     addr007c:
                     if(this.gc)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr0085);
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007c);
            }
            addr008c:
            return;
         }
         §§goto(addr0062);
      }
      
      public function set paused(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(this.cachedPaused);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && param1))
                              {
                                 §§goto(addr0061);
                              }
                              §§goto(addr017c);
                           }
                           §§goto(addr0081);
                        }
                        §§goto(addr0152);
                     }
                     §§goto(addr017c);
                  }
                  addr0061:
                  §§pop();
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(Boolean(this.timeline));
                     if(_loc3_ || param1)
                     {
                        addr0081:
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       this.cachedPauseTime = this.timeline.rawTime;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§goto(addr0109);
                                       }
                                       §§goto(addr019d);
                                    }
                                    §§goto(addr0109);
                                 }
                                 else
                                 {
                                    §§push(this);
                                    §§push(this.cachedStartTime);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(this.timeline.rawTime);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() - this.cachedPauseTime);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().cachedStartTime = §§pop();
                                    if(!_loc2_)
                                    {
                                       addr00f0:
                                       this.cachedPauseTime = NaN;
                                       if(_loc3_)
                                       {
                                          §§goto(addr00fc);
                                       }
                                       §§goto(addr0186);
                                    }
                                 }
                                 §§goto(addr019d);
                              }
                              §§goto(addr014b);
                           }
                           §§goto(addr00f0);
                        }
                        §§goto(addr0145);
                     }
                     §§goto(addr0151);
                  }
                  addr00fc:
                  setDirtyCache(false);
                  if(_loc3_)
                  {
                     addr0109:
                     this.cachedPaused = param1;
                     if(_loc3_)
                     {
                        this.active = Boolean(!this.cachedPaused && this.cachedTotalTime > 0 && this.cachedTotalTime < this.cachedTotalDuration);
                        if(!_loc2_)
                        {
                           addr0145:
                           §§push(param1);
                           if(_loc3_)
                           {
                              addr014b:
                              §§push(!§§pop());
                              if(_loc3_)
                              {
                                 addr0151:
                                 var _temp_12:* = §§pop();
                                 addr0152:
                                 §§push(_temp_12);
                                 if(_temp_12)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr015b);
                                    }
                                    §§goto(addr017c);
                                 }
                                 §§goto(addr017d);
                              }
                              addr015b:
                              §§pop();
                              if(!_loc2_)
                              {
                                 addr017d:
                                 addr0161:
                                 §§push(this.gc);
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr017c:
                                    §§push(§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr0186:
                                       this.setTotalTime(this.cachedTotalTime,false);
                                       if(_loc3_ || param1)
                                       {
                                          addr019d:
                                          this.setEnabled(true,false);
                                       }
                                       §§goto(addr01a4);
                                    }
                                    §§goto(addr019d);
                                 }
                              }
                              §§goto(addr01a4);
                           }
                           §§goto(addr0151);
                        }
                        §§goto(addr0161);
                     }
                     §§goto(addr01a4);
                  }
                  addr01a4:
                  return;
               }
               §§goto(addr0152);
            }
            §§goto(addr0081);
         }
         §§goto(addr0145);
      }
      
      public function kill() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            setEnabled(false,false);
         }
      }
      
      public function set totalTime(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            setTotalTime(param1,false);
         }
      }
      
      public function get currentTime() : Number
      {
         return this.cachedTime;
      }
      
      protected function setTotalTime(param1:Number, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(this.timeline);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr003f:
                     §§push(this.cachedPaused);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              §§push(this.cachedPauseTime);
                              if(_loc6_ || Boolean(this))
                              {
                                 §§push(§§pop());
                                 if(_loc6_ || Boolean(param1))
                                 {
                                    addr0094:
                                    §§push(§§pop());
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       addr00a3:
                                       _loc3_ = §§pop();
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          §§push(this.cachedReversed);
                                          if(!(_loc5_ && Boolean(this)))
                                          {
                                             addr00c4:
                                             if(§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   addr00d2:
                                                   addr00ce:
                                                   if(this.cacheIsDirty)
                                                   {
                                                      if(_loc6_ || Boolean(_loc3_))
                                                      {
                                                         §§push(this.totalDuration);
                                                         if(_loc6_ || Boolean(this))
                                                         {
                                                            addr00f6:
                                                            §§push(§§pop());
                                                            if(!_loc5_)
                                                            {
                                                               addr0130:
                                                               §§push(§§pop());
                                                               if(_loc6_ || param2)
                                                               {
                                                                  addr013f:
                                                                  _loc4_ = §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr0147);
                                                                  }
                                                                  §§goto(addr01ce);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0121:
                                                            §§push(§§pop());
                                                            if(!(_loc5_ && Boolean(_loc3_)))
                                                            {
                                                               §§goto(addr0130);
                                                            }
                                                         }
                                                         §§goto(addr020e);
                                                      }
                                                      §§goto(addr01ce);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.cachedTotalDuration);
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§goto(addr0121);
                                                      }
                                                   }
                                                   §§goto(addr013f);
                                                }
                                                §§goto(addr01ce);
                                             }
                                             else
                                             {
                                                §§push(this);
                                                §§push(_loc3_);
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   §§push(param1);
                                                   if(!(_loc5_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(§§pop() / this.cachedTimeScale);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§pop().cachedStartTime = §§pop();
                                                if(!(_loc5_ && Boolean(param1)))
                                                {
                                                   §§goto(addr01ce);
                                                }
                                             }
                                             §§goto(addr020a);
                                          }
                                          §§goto(addr00d2);
                                       }
                                       §§goto(addr00ce);
                                    }
                                    §§goto(addr020e);
                                 }
                                 §§goto(addr00f6);
                              }
                              §§goto(addr00a3);
                           }
                           addr0147:
                           §§push(this);
                           §§push(_loc3_);
                           if(_loc6_ || Boolean(this))
                           {
                              §§push(_loc4_);
                              if(_loc6_ || Boolean(param1))
                              {
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    §§goto(addr0183);
                                 }
                                 §§goto(addr0181);
                              }
                              §§goto(addr017d);
                           }
                           addr0183:
                           §§push(§§pop() - §§pop());
                           if(_loc6_ || param2)
                           {
                              addr0181:
                              addr017d:
                              §§push(§§pop() / this.cachedTimeScale);
                           }
                           §§pop().cachedStartTime = §§pop() - §§pop();
                           if(!(_loc5_ && param2))
                           {
                              addr01ce:
                              addr01d2:
                              if(!this.timeline.cacheIsDirty)
                              {
                                 if(_loc6_ || Boolean(this))
                                 {
                                    setDirtyCache(false);
                                    if(_loc6_ || param2)
                                    {
                                       addr020a:
                                       addr020e:
                                       if(this.cachedTotalTime != param1)
                                       {
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             renderTime(param1,param2,false);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr022b);
                              }
                              §§goto(addr020a);
                           }
                           §§goto(addr022b);
                        }
                        else
                        {
                           §§push(this.timeline);
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              addr008a:
                              §§push(Number(§§pop().cachedTotalTime));
                              if(_loc6_)
                              {
                                 §§goto(addr0094);
                              }
                              §§goto(addr00f6);
                           }
                        }
                        §§goto(addr01d2);
                     }
                     §§goto(addr00c4);
                  }
               }
               addr022b:
               return;
            }
            §§goto(addr008a);
         }
         §§goto(addr003f);
      }
      
      public function pause() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            this.paused = true;
         }
      }
      
      public function set totalDuration(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.duration = param1;
         }
      }
      
      public function get totalDuration() : Number
      {
         return this.cachedTotalDuration;
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(this);
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(!§§pop());
            }
            §§pop().gc = §§pop();
            if(_loc3_ || param2)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.active = Boolean(!this.cachedPaused && this.cachedTotalTime > 0 && this.cachedTotalTime < this.cachedTotalDuration);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0081:
                           §§push(param2);
                           if(_loc3_)
                           {
                              §§push(!§§pop());
                              if(_loc3_)
                              {
                                 addr008d:
                                 var _temp_6:* = §§pop();
                                 §§push(_temp_6);
                                 §§push(_temp_6);
                                 if(!(_loc4_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          addr00a6:
                                          §§pop();
                                          if(!_loc4_)
                                          {
                                             §§push(this.cachedOrphan);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(§§pop());
                                                if(!(_loc4_ && param2))
                                                {
                                                   addr00d9:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc4_ && Boolean(this)))
                                                      {
                                                         §§push(this.timeline);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(this);
                                                            §§push(this.cachedStartTime);
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop() - _delay);
                                                            }
                                                            §§pop().insert(§§pop(),§§pop());
                                                            if(_loc4_ && param1)
                                                            {
                                                               addr015d:
                                                               §§push(this.cachedOrphan);
                                                               if(_loc3_ || param2)
                                                               {
                                                                  §§goto(addr0188);
                                                               }
                                                               §§goto(addr0174);
                                                            }
                                                            §§goto(addr0187);
                                                         }
                                                         §§goto(addr0181);
                                                      }
                                                   }
                                                   §§goto(addr0187);
                                                }
                                                addr0188:
                                                §§goto(addr016e);
                                             }
                                             §§goto(addr0174);
                                          }
                                          §§goto(addr0187);
                                       }
                                       §§goto(addr016e);
                                    }
                                    §§goto(addr00d9);
                                 }
                                 else
                                 {
                                    addr0140:
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§pop();
                                          if(!_loc4_)
                                          {
                                             §§goto(addr015d);
                                          }
                                          §§goto(addr0187);
                                       }
                                       §§goto(addr0188);
                                    }
                                 }
                                 §§goto(addr0174);
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr015d);
                     }
                     else
                     {
                        addr012a:
                        §§push(param2);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(!§§pop());
                           if(!_loc4_)
                           {
                              var _temp_15:* = §§pop();
                              §§goto(addr0140);
                              §§push(_temp_15);
                              §§push(_temp_15);
                           }
                           addr016e:
                           §§push(!§§pop());
                           if(_loc3_)
                           {
                              addr0174:
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    addr0181:
                                    this.timeline.remove(this,true);
                                    addr017d:
                                 }
                              }
                              addr0187:
                              return false;
                           }
                        }
                     }
                     §§goto(addr0174);
                  }
                  else
                  {
                     this.active = false;
                     if(_loc3_)
                     {
                        §§goto(addr012a);
                     }
                  }
                  §§goto(addr017d);
               }
               §§goto(addr0188);
            }
            §§goto(addr0081);
         }
         §§goto(addr015d);
      }
   }
}

