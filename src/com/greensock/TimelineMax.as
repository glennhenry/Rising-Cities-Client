package com.greensock
{
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import flash.events.*;
   
   public class TimelineMax extends TimelineLite implements IEventDispatcher
   {
      
      public static const version:Number = 1.671;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         version = 1.671;
      }
      
      protected var _cyclesComplete:int;
      
      protected var _dispatcher:EventDispatcher;
      
      protected var _hasUpdateListener:Boolean;
      
      public var yoyo:Boolean;
      
      protected var _repeatDelay:Number;
      
      protected var _repeat:int;
      
      public function TimelineMax(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super(param1);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§findproperty(_repeat));
               if(!_loc2_)
               {
                  if(this.vars.repeat)
                  {
                     addr0046:
                     §§push(int(Number(this.vars.repeat)));
                     if(_loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§pop()._repeat = §§pop();
                  if(_loc3_)
                  {
                     §§push(§§findproperty(_repeatDelay));
                     if(!(_loc2_ && _loc2_))
                     {
                        if(this.vars.repeatDelay)
                        {
                           addr0081:
                           §§push(Number(this.vars.repeatDelay));
                           if(_loc3_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§pop()._repeatDelay = §§pop();
                        if(!_loc2_)
                        {
                           addr00aa:
                           _cyclesComplete = 0;
                           if(_loc3_ || _loc2_)
                           {
                              this.yoyo = Boolean(this.vars.yoyo == true);
                              if(_loc3_ || Boolean(param1))
                              {
                                 this.cacheIsDirty = true;
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(this.vars.onCompleteListener == null);
                                    if(_loc3_)
                                    {
                                       §§push(!§§pop());
                                       if(!_loc2_)
                                       {
                                          var _temp_9:* = §§pop();
                                          §§push(_temp_9);
                                          §§push(_temp_9);
                                          if(!_loc2_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   addr0121:
                                                   §§pop();
                                                   if(!_loc2_)
                                                   {
                                                      addr0127:
                                                      §§push(this.vars.onUpdateListener == null);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            addr014b:
                                                            var _temp_12:* = §§pop();
                                                            §§push(_temp_12);
                                                            §§push(_temp_12);
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc3_ || Boolean(this))
                                                                     {
                                                                        §§push(this.vars.onStartListener == null);
                                                                        if(!(_loc2_ && Boolean(this)))
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              addr0194:
                                                                              var _temp_17:* = §§pop();
                                                                              §§push(_temp_17);
                                                                              §§push(_temp_17);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 addr01a2:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                       {
                                                                                          addr01b9:
                                                                                          §§push(this.vars.onRepeatListener == null);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01c7:
                                                                                             §§push(!§§pop());
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr01cd:
                                                                                                var _temp_20:* = §§pop();
                                                                                                addr01ce:
                                                                                                §§push(_temp_20);
                                                                                                if(!_temp_20)
                                                                                                {
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      §§goto(addr01ec);
                                                                                                   }
                                                                                                   §§goto(addr0208);
                                                                                                }
                                                                                                §§goto(addr0209);
                                                                                             }
                                                                                             addr01ec:
                                                                                             §§pop();
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr0209:
                                                                                                addr01f2:
                                                                                                §§push(this.vars.onReverseCompleteListener == null);
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   addr0208:
                                                                                                   §§push(!§§pop());
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr0212:
                                                                                                      initDispatcher();
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0219);
                                                                                          }
                                                                                          §§goto(addr0208);
                                                                                       }
                                                                                       §§goto(addr0219);
                                                                                    }
                                                                                    §§goto(addr01c7);
                                                                                 }
                                                                                 §§goto(addr01cd);
                                                                              }
                                                                              §§goto(addr01ce);
                                                                           }
                                                                           §§goto(addr01cd);
                                                                        }
                                                                        §§goto(addr0209);
                                                                     }
                                                                     §§goto(addr0212);
                                                                  }
                                                                  §§goto(addr01ec);
                                                               }
                                                               §§goto(addr0194);
                                                            }
                                                            §§goto(addr01a2);
                                                         }
                                                         §§goto(addr01ec);
                                                      }
                                                      §§goto(addr01c7);
                                                   }
                                                   §§goto(addr01b9);
                                                }
                                                §§goto(addr0208);
                                             }
                                             §§goto(addr014b);
                                          }
                                          §§goto(addr01ce);
                                       }
                                       §§goto(addr0194);
                                    }
                                    §§goto(addr0121);
                                 }
                                 §§goto(addr01b9);
                              }
                              §§goto(addr01f2);
                           }
                           §§goto(addr01b9);
                        }
                        addr0219:
                        return;
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr01f2);
               }
               §§goto(addr0046);
            }
            §§goto(addr0127);
         }
         §§goto(addr00aa);
      }
      
      private static function easeNone(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(param1);
         if(_loc5_ || Boolean(param1))
         {
            return §§pop() / param4;
         }
      }
      
      private static function onInitTweenTo(param1:TweenLite, param2:TimelineMax, param3:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            param2.paused = true;
            if(!_loc5_)
            {
               if(!isNaN(param3))
               {
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     addr004a:
                     param2.currentTime = param3;
                     if(!(_loc5_ && Boolean(param3)))
                     {
                        addr0069:
                        if(param1.vars.currentTime != param2.currentTime)
                        {
                           if(!_loc5_)
                           {
                              addr007e:
                              param1.duration = Math.abs(Number(param1.vars.currentTime) - param2.currentTime) / param2.cachedTimeScale;
                           }
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr007e);
                  }
                  addr009e:
                  return;
               }
               §§goto(addr0069);
            }
            §§goto(addr004a);
         }
         §§goto(addr007e);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_dispatcher == null)
            {
               addr0028:
               §§push(false);
               if(_loc2_)
               {
               }
            }
            else
            {
               return _dispatcher.dispatchEvent(param1);
            }
            return §§pop();
         }
         §§goto(addr0028);
      }
      
      public function get currentLabel() : String
      {
         return getLabelBefore(this.cachedTime + 1e-8);
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2525
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function addCallback(param1:Function, param2:*, param3:Array = null) : TweenLite
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:TweenLite = new TweenLite(param1,0,{
            "onComplete":param1,
            "onCompleteParams":param3,
            "overwrite":0,
            "immediateRender":false
         });
         if(_loc5_)
         {
            insert(_loc4_,param2);
         }
         return _loc4_;
      }
      
      public function tweenFromTo(param1:*, param2:*, param3:Object = null) : TweenLite
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:TweenLite = tweenTo(param2,param3);
         _loc4_.vars.onInitParams[2] = parseTimeOrLabel(param1);
         if(!_loc5_)
         {
            _loc4_.duration = Math.abs(Number(_loc4_.vars.currentTime) - _loc4_.vars.onInitParams[2]) / this.cachedTimeScale;
         }
         return _loc4_;
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            if(_dispatcher != null)
            {
               if(!_loc4_)
               {
                  _dispatcher.removeEventListener(param1,param2,param3);
               }
            }
         }
      }
      
      override public function set currentTime(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(_cyclesComplete);
            if(!_loc3_)
            {
               §§push(0);
               if(_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        setTotalTime(param1,false);
                        if(_loc3_ && Boolean(param1))
                        {
                           addr0096:
                           addr009f:
                           addr009b:
                           addr0099:
                           if(_cyclesComplete % 2 == 1)
                           {
                              if(!_loc3_)
                              {
                                 §§push(§§findproperty(setTotalTime));
                                 §§push(this.duration - param1);
                                 if(_loc2_ || Boolean(param1))
                                 {
                                    §§push(§§pop() + _cyclesComplete * (this.cachedDuration + _repeatDelay));
                                 }
                                 §§pop().setTotalTime(§§pop(),false);
                                 if(_loc2_ || _loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(§§findproperty(setTotalTime));
                              §§push(param1);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(§§pop() + _cyclesComplete * (this.duration + _repeatDelay));
                              }
                              §§pop().setTotalTime(§§pop(),false);
                           }
                        }
                        §§goto(addr010f);
                     }
                     §§goto(addr0096);
                  }
                  else
                  {
                     §§push(this.yoyo);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0071:
                           var _temp_8:* = §§pop();
                           §§push(_temp_8);
                           if(_temp_8)
                           {
                              if(_loc2_)
                              {
                                 §§pop();
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§goto(addr0096);
                                 }
                                 §§goto(addr010f);
                              }
                           }
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr0099);
         }
         addr010f:
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_ || param3)
         {
            if(_dispatcher == null)
            {
               if(_loc6_ || Boolean(param1))
               {
                  initDispatcher();
                  if(!_loc7_)
                  {
                     addr0052:
                     if(param1 == TweenEvent.UPDATE)
                     {
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           §§goto(addr007a);
                        }
                     }
                  }
               }
               §§goto(addr008f);
            }
            §§goto(addr0052);
         }
         addr007a:
         _hasUpdateListener = true;
         if(!(_loc7_ && Boolean(this)))
         {
            addr008f:
            _dispatcher.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function tweenTo(param1:*, param2:Object = null) : TweenLite
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:String = null;
         var _loc5_:TweenLite = null;
         var _loc3_:Object = {
            "ease":easeNone,
            "overwrite":2,
            "useFrames":this.useFrames,
            "immediateRender":false
         };
         for(_loc4_ in param2)
         {
            if(!_loc8_)
            {
               _loc3_[_loc4_] = param2[_loc4_];
            }
         }
         if(!(_loc8_ && Boolean(this)))
         {
            _loc3_.onInit = onInitTweenTo;
            if(!(_loc8_ && Boolean(param2)))
            {
               _loc3_.onInitParams = [null,this,NaN];
               if(!_loc8_)
               {
                  addr00b5:
                  _loc3_.currentTime = parseTimeOrLabel(param1);
               }
            }
            §§push(§§findproperty(TweenLite));
            §§push(this);
            if(!(_loc8_ && Boolean(_loc3_)))
            {
               §§push(Math.abs(Number(_loc3_.currentTime) - this.cachedTime) / this.cachedTimeScale);
               if(_loc9_)
               {
                  §§push(§§pop());
                  if(_loc9_)
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(!_temp_5)
                     {
                        if(!_loc8_)
                        {
                           addr0111:
                           §§pop();
                           addr0112:
                           §§push(0.001);
                           if(_loc9_)
                           {
                              addr011a:
                              §§push(§§pop());
                           }
                        }
                     }
                     _loc5_ = new §§pop().TweenLite(§§pop(),§§pop(),_loc3_);
                     _loc5_.vars.onInitParams[0] = _loc5_;
                     return _loc5_;
                  }
                  §§goto(addr011a);
               }
               §§goto(addr0111);
            }
            §§goto(addr0112);
         }
         §§goto(addr00b5);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(_dispatcher == null)
            {
               addr0034:
               §§push(false);
               if(_loc2_ || _loc3_)
               {
               }
            }
            else
            {
               return _dispatcher.hasEventListener(param1);
            }
            return §§pop();
         }
         §§goto(addr0034);
      }
      
      protected function initDispatcher() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(_dispatcher == null)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr0033:
                  _dispatcher = new EventDispatcher(this);
                  if(_loc2_)
                  {
                     addr0044:
                     §§push(this.vars.onStartListener is Function);
                     if(_loc2_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              _dispatcher.addEventListener(TweenEvent.START,this.vars.onStartListener,false,0,true);
                              if(!_loc1_)
                              {
                                 addr0088:
                                 §§push(this.vars.onUpdateListener is Function);
                                 if(!_loc1_)
                                 {
                                    addr0097:
                                    if(§§pop())
                                    {
                                       if(_loc2_ || Boolean(this))
                                       {
                                          _dispatcher.addEventListener(TweenEvent.UPDATE,this.vars.onUpdateListener,false,0,true);
                                          if(!_loc1_)
                                          {
                                             _hasUpdateListener = true;
                                             if(!_loc1_)
                                             {
                                                addr00da:
                                                §§push(this.vars.onCompleteListener is Function);
                                                if(!(_loc1_ && Boolean(this)))
                                                {
                                                   addr00f1:
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr0102:
                                                         _dispatcher.addEventListener(TweenEvent.COMPLETE,this.vars.onCompleteListener,false,0,true);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            addr0126:
                                                            §§push(this.vars.onRepeatListener is Function);
                                                            if(_loc2_)
                                                            {
                                                               addr0135:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     _dispatcher.addEventListener(TweenEvent.REPEAT,this.vars.onRepeatListener,false,0,true);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr0164:
                                                                        addr016e:
                                                                        if(this.vars.onReverseCompleteListener is Function)
                                                                        {
                                                                           if(_loc2_ || Boolean(this))
                                                                           {
                                                                              addr017f:
                                                                              _dispatcher.addEventListener(TweenEvent.REVERSE_COMPLETE,this.vars.onReverseCompleteListener,false,0,true);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr0164);
                                                            }
                                                            §§goto(addr016e);
                                                         }
                                                      }
                                                      §§goto(addr0164);
                                                   }
                                                   §§goto(addr0126);
                                                }
                                                §§goto(addr0135);
                                             }
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr0164);
                                       }
                                       §§goto(addr0102);
                                    }
                                    §§goto(addr00da);
                                 }
                                 §§goto(addr00f1);
                              }
                              §§goto(addr017f);
                           }
                           §§goto(addr0102);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr0126);
               }
               §§goto(addr0088);
            }
            §§goto(addr0044);
         }
         §§goto(addr0033);
      }
      
      public function get repeat() : int
      {
         return _repeat;
      }
      
      public function getLabelBefore(param1:Number = NaN) : String
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           §§push(param1);
                           if(_loc4_)
                           {
                              addr0072:
                              §§push(§§pop() == 0);
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 addr0063:
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    addr0081:
                                    param1 = this.cachedTime;
                                    addr007c:
                                 }
                              }
                              §§goto(addr0082);
                           }
                           §§goto(addr0081);
                        }
                        addr0082:
                        var _loc2_:Array = getLabelsArray();
                        var _loc3_:* = int(_loc2_.length);
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              §§push(§§pop() - 1);
                              if(!_loc5_)
                              {
                                 var _temp_6:* = §§pop();
                                 §§push(_temp_6);
                                 §§push(_temp_6);
                                 if(!(_loc5_ && Boolean(param1)))
                                 {
                                    §§push(§§pop());
                                    if(!_loc5_)
                                    {
                                       addr00f3:
                                       _loc3_ = §§pop();
                                       addr00f4:
                                       §§push(-1);
                                    }
                                    if(§§pop() <= §§pop())
                                    {
                                       break;
                                    }
                                    if(_loc2_[_loc3_].time < param1)
                                    {
                                       if(!_loc5_)
                                       {
                                          return _loc2_[_loc3_].name;
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr00f3);
                              }
                           }
                           §§goto(addr00f4);
                        }
                        return null;
                     }
                     §§goto(addr0063);
                  }
               }
               §§goto(addr0072);
            }
            §§goto(addr0081);
         }
         §§goto(addr007c);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(_dispatcher == null)
            {
               addr0036:
               §§push(false);
               if(_loc3_ || _loc3_)
               {
               }
            }
            else
            {
               return _dispatcher.willTrigger(param1);
            }
            return §§pop();
         }
         §§goto(addr0036);
      }
      
      public function get totalProgress() : Number
      {
         return this.cachedTotalTime / this.totalDuration;
      }
      
      public function set totalProgress(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(§§findproperty(setTotalTime));
            §§push(this.totalDuration);
            if(_loc2_ || Boolean(this))
            {
               §§push(§§pop() * param1);
            }
            §§pop().setTotalTime(§§pop(),false);
         }
      }
      
      protected function getLabelsArray() : Array
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for(_loc2_ in _labels)
         {
            if(!_loc6_)
            {
               _loc1_[_loc1_.length] = {
                  "time":_labels[_loc2_],
                  "name":_loc2_
               };
            }
         }
         if(!_loc6_)
         {
            _loc1_.sortOn("time",Array.NUMERIC);
         }
         return _loc1_;
      }
      
      public function removeCallback(param1:Function, param2:* = null) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:Array = null;
         var _loc4_:* = false;
         var _loc5_:* = 0;
         if(_loc6_ || param2)
         {
            if(param2 == null)
            {
               if(!(_loc7_ && Boolean(param1)))
               {
                  return killTweensOf(param1,false);
               }
            }
            else
            {
               addr0053:
               if(typeof param2 == "string")
               {
                  if(!_loc7_)
                  {
                     §§push(param2 in _labels);
                     if(_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              addr0080:
                              return false;
                              addr007f:
                           }
                        }
                        param2 = _labels[param2];
                        addr0097:
                        _loc3_ = getTweensOf(param1,false);
                        if(_loc6_)
                        {
                           _loc5_ = int(_loc3_.length);
                        }
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              §§push(§§pop() - 1);
                              if(_loc6_ || Boolean(this))
                              {
                                 addr012b:
                                 var _temp_5:* = §§pop();
                                 §§push(_temp_5);
                                 §§push(_temp_5);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc7_)
                                    {
                                       _loc5_ = §§pop();
                                       addr013b:
                                       §§push(-1);
                                    }
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    break;
                                 }
                                 if(_loc3_[_loc5_].cachedStartTime == param2)
                                 {
                                    if(_loc7_ && Boolean(this))
                                    {
                                       break;
                                    }
                                    remove(_loc3_[_loc5_] as TweenCore);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(true);
                                    if(!(_loc6_ || Boolean(_loc3_)))
                                    {
                                       return §§pop();
                                    }
                                    _loc4_ = §§pop();
                                    if(_loc7_ && Boolean(this))
                                    {
                                       break;
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr013b);
                           }
                           §§goto(addr012b);
                        }
                        §§goto(addr0143);
                        §§push(_loc4_);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0097);
            }
            §§goto(addr007f);
         }
         §§goto(addr0053);
      }
      
      public function get repeatDelay() : Number
      {
         return _repeatDelay;
      }
      
      public function set repeatDelay(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            _repeatDelay = param1;
            if(!_loc2_)
            {
               addr002b:
               setDirtyCache(true);
            }
            return;
         }
         §§goto(addr002b);
      }
      
      public function set repeat(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            _repeat = param1;
            if(_loc2_ || Boolean(param1))
            {
               addr0041:
               setDirtyCache(true);
            }
            return;
         }
         §§goto(addr0041);
      }
      
      override public function get totalDuration() : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = NaN;
         if(_loc3_ || _loc3_)
         {
            if(this.cacheIsDirty)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(super.totalDuration);
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§push(§§pop());
                  }
                  _loc1_ = §§pop();
                  if(_loc3_ || _loc2_)
                  {
                     addr0063:
                     §§push(this);
                     if(!_loc2_)
                     {
                        if(_repeat == -1)
                        {
                           addr0072:
                           §§push(999999999999);
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§push(§§pop());
                              if(!_loc3_)
                              {
                                 addr00c8:
                                 §§push(§§pop());
                              }
                           }
                        }
                        else
                        {
                           §§push(this.cachedDuration * (_repeat + 1));
                           if(!_loc2_)
                           {
                              §§push(_repeatDelay);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop() * _repeat);
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00c8);
                              }
                           }
                        }
                        §§pop().cachedTotalDuration = §§pop();
                        §§goto(addr00cc);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr0063);
            }
         }
         addr00cc:
         return this.cachedTotalDuration;
      }
      
      override public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super.complete(param1,param2);
            if(_loc3_ || param2)
            {
               §§push(Boolean(_dispatcher));
               if(_loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(_loc3_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              addr0053:
                              §§push(param2);
                              if(_loc3_)
                              {
                                 addr0059:
                                 §§push(!§§pop());
                                 if(!(_loc4_ && param2))
                                 {
                                    §§goto(addr0068);
                                 }
                                 §§goto(addr00eb);
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr0059);
                     }
                     addr0068:
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§push(this.cachedReversed);
                           if(!_loc4_)
                           {
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              §§push(_temp_6);
                              if(!_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr00a1);
                                    }
                                 }
                                 §§goto(addr00b5);
                              }
                              §§goto(addr00b6);
                           }
                           addr00a1:
                           §§pop();
                           if(!_loc4_)
                           {
                              addr00a8:
                              §§push(this.cachedTotalTime == 0);
                              if(!_loc4_)
                              {
                                 addr00b5:
                                 var _temp_7:* = §§pop();
                                 addr00b6:
                                 §§push(_temp_7);
                                 if(_temp_7)
                                 {
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§pop();
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          addr00ec:
                                          §§push(this.cachedDuration == 0);
                                          if(!(_loc4_ && param2))
                                          {
                                             addr00eb:
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.REVERSE_COMPLETE));
                                                if(_loc3_ || param1)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.COMPLETE));
                                          }
                                       }
                                       §§goto(addr0143);
                                    }
                                    §§goto(addr00eb);
                                 }
                              }
                              §§goto(addr00ec);
                           }
                           §§goto(addr0143);
                        }
                     }
                     §§goto(addr0143);
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr00ec);
            }
            addr0143:
            return;
         }
         §§goto(addr0053);
      }
      
      override public function invalidate() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(§§findproperty(_repeat));
            if(_loc1_)
            {
               if(this.vars.repeat)
               {
                  addr0028:
                  §§push(int(Number(this.vars.repeat)));
                  if(_loc2_ && _loc1_)
                  {
                  }
               }
               else
               {
                  §§push(0);
               }
               §§pop()._repeat = §§pop();
               if(_loc1_ || _loc1_)
               {
                  §§push(§§findproperty(_repeatDelay));
                  if(!_loc2_)
                  {
                     if(this.vars.repeatDelay)
                     {
                        addr006b:
                        §§push(Number(this.vars.repeatDelay));
                        if(_loc1_ || _loc2_)
                        {
                        }
                     }
                     else
                     {
                        §§push(0);
                     }
                     §§pop()._repeatDelay = §§pop();
                     if(_loc1_)
                     {
                        this.yoyo = Boolean(this.vars.yoyo == true);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00b4:
                           §§push(this.vars.onCompleteListener == null);
                           if(_loc1_ || _loc2_)
                           {
                              §§push(!§§pop());
                              if(_loc1_ || Boolean(this))
                              {
                                 var _temp_7:* = §§pop();
                                 §§push(_temp_7);
                                 §§push(_temp_7);
                                 if(_loc1_ || Boolean(this))
                                 {
                                    if(!§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§pop();
                                          if(_loc1_ || _loc2_)
                                          {
                                             §§push(this.vars.onUpdateListener == null);
                                             if(_loc1_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc1_ || _loc2_)
                                                {
                                                   addr0123:
                                                   var _temp_11:* = §§pop();
                                                   §§push(_temp_11);
                                                   §§push(_temp_11);
                                                   if(!_loc2_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc1_ || Boolean(this))
                                                         {
                                                            addr013a:
                                                            §§pop();
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               §§goto(addr0148);
                                                            }
                                                            §§goto(addr01bd);
                                                         }
                                                         §§goto(addr0173);
                                                      }
                                                      §§goto(addr015c);
                                                   }
                                                   §§goto(addr016a);
                                                }
                                                §§goto(addr0173);
                                             }
                                             §§goto(addr013a);
                                          }
                                          §§goto(addr0208);
                                       }
                                       §§goto(addr019d);
                                    }
                                    §§goto(addr0123);
                                 }
                                 §§goto(addr016a);
                              }
                              §§goto(addr0173);
                           }
                           §§goto(addr0156);
                        }
                        §§goto(addr01e7);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr006b);
               }
               addr0148:
               §§push(this.vars.onStartListener == null);
               if(_loc1_)
               {
                  addr0156:
                  §§push(!§§pop());
                  if(!_loc2_)
                  {
                     addr015c:
                     var _temp_14:* = §§pop();
                     §§push(_temp_14);
                     §§push(_temp_14);
                     if(!(_loc2_ && _loc1_))
                     {
                        addr016a:
                        if(!§§pop())
                        {
                           if(_loc1_)
                           {
                              addr0173:
                              §§pop();
                              if(_loc1_)
                              {
                                 §§push(this.vars.onRepeatListener == null);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§goto(addr018f);
                                 }
                                 §§goto(addr01cb);
                              }
                              §§goto(addr01e7);
                           }
                           §§goto(addr01cc);
                        }
                        §§goto(addr019d);
                     }
                     §§goto(addr019e);
                  }
               }
               addr018f:
               §§push(!§§pop());
               if(_loc1_ || Boolean(this))
               {
                  addr019d:
                  var _temp_18:* = §§pop();
                  addr019e:
                  §§push(_temp_18);
                  if(!_temp_18)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr01af);
                     }
                     §§goto(addr01cb);
                  }
                  §§goto(addr01cc);
               }
               addr01af:
               §§pop();
               if(!(_loc2_ && _loc2_))
               {
                  addr01cc:
                  addr01bd:
                  §§push(this.vars.onReverseCompleteListener == null);
                  if(_loc1_)
                  {
                     addr01cb:
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        addr01e7:
                        initDispatcher();
                        if(_loc1_)
                        {
                           §§goto(addr01f3);
                        }
                     }
                     §§goto(addr0208);
                  }
                  addr01f3:
                  setDirtyCache(true);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0208:
                     super.invalidate();
                  }
                  §§goto(addr020d);
               }
               addr020d:
               return;
            }
            §§goto(addr0028);
         }
         §§goto(addr01bd);
      }
      
      public function getActive(param1:Boolean = true, param2:Boolean = true, param3:Boolean = false) : Array
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc6_:* = 0;
         var _loc7_:TweenCore = null;
         var _loc4_:Array = [];
         var _loc5_:Array = getChildren(param1,param2,param3);
         var _loc8_:int = int(_loc5_.length);
         var _loc9_:int = 0;
         if(!_loc11_)
         {
            _loc6_ = 0;
         }
         while(_loc6_ < _loc8_)
         {
            _loc7_ = _loc5_[_loc6_];
            §§push(_loc7_.cachedPaused);
            if(_loc12_)
            {
               §§push(!§§pop());
               if(!_loc11_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc12_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc11_ && param3))
                        {
                           addr0082:
                           §§pop();
                           if(!_loc11_)
                           {
                              §§push(_loc7_.timeline);
                              if(!(_loc11_ && param1))
                              {
                                 §§push(§§pop().cachedTotalTime >= _loc7_.cachedStartTime);
                                 if(!(_loc11_ && param3))
                                 {
                                    addr00b3:
                                    var _temp_8:* = §§pop();
                                    §§push(_temp_8);
                                    §§push(_temp_8);
                                    if(!(_loc11_ && Boolean(this)))
                                    {
                                       addr00d0:
                                       if(§§pop())
                                       {
                                          if(_loc12_ || param3)
                                          {
                                             §§pop();
                                             if(_loc12_ || param1)
                                             {
                                                addr00f6:
                                                §§push(_loc7_.timeline.cachedTotalTime < _loc7_.cachedStartTime + _loc7_.cachedTotalDuration / _loc7_.cachedTimeScale);
                                                if(!_loc11_)
                                                {
                                                   addr0111:
                                                   var _temp_12:* = §§pop();
                                                   addr0112:
                                                   §§push(_temp_12);
                                                   if(_temp_12)
                                                   {
                                                      if(!(_loc11_ && param2))
                                                      {
                                                         addr0124:
                                                         §§pop();
                                                         if(_loc12_)
                                                         {
                                                            addr0146:
                                                            §§push(OverwriteManager.getGlobalPaused(_loc7_.timeline));
                                                            if(!(_loc11_ && param3))
                                                            {
                                                               addr0145:
                                                               §§push(!§§pop());
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc12_ || param2)
                                                               {
                                                                  var _loc10_:*;
                                                                  _loc4_[_loc10_ = _loc9_++] = _loc5_[_loc6_];
                                                                  if(_loc11_)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr0181:
                                                         §§push(_loc6_);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(int(§§pop() + 1));
                                                         }
                                                         _loc6_ = §§pop();
                                                         continue;
                                                      }
                                                      §§goto(addr0145);
                                                   }
                                                }
                                                §§goto(addr0146);
                                             }
                                             §§goto(addr0181);
                                          }
                                          §§goto(addr0146);
                                       }
                                       §§goto(addr0111);
                                    }
                                    §§goto(addr0112);
                                 }
                                 §§goto(addr0145);
                              }
                              §§goto(addr00f6);
                           }
                           §§goto(addr0181);
                        }
                        §§goto(addr0146);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr0082);
            }
            §§goto(addr0124);
         }
         return _loc4_;
      }
      
      public function getLabelAfter(param1:Number = NaN) : String
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc6_)
                        {
                           addr003b:
                           §§push(param1);
                           if(_loc6_ || _loc2_)
                           {
                              §§goto(addr005c);
                           }
                           §§goto(addr006b);
                        }
                        §§goto(addr0066);
                     }
                  }
               }
               addr005c:
               §§push(§§pop() == 0);
               if(!(_loc5_ && Boolean(this)))
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr006b:
                     param1 = this.cachedTime;
                     addr0066:
                  }
               }
               var _loc2_:Array = getLabelsArray();
               var _loc3_:int = int(_loc2_.length);
               var _loc4_:* = 0;
               loop0:
               do
               {
                  §§push(_loc4_);
                  loop1:
                  while(true)
                  {
                     §§push(_loc3_);
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           break loop1;
                        }
                        if(_loc2_[_loc4_].time > param1)
                        {
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              return _loc2_[_loc4_].name;
                           }
                        }
                        §§push(_loc4_);
                        if(_loc5_ && Boolean(param1))
                        {
                           break;
                        }
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§push(int(§§pop() + §§pop()));
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
                  break;
               }
               while(_loc4_ = §§pop(), !(_loc5_ && Boolean(_loc2_)));
               
               return null;
            }
            §§goto(addr006b);
         }
         §§goto(addr003b);
      }
   }
}

