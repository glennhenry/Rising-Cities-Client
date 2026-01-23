package com.greensock
{
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   
   public class TweenLite extends TweenCore
   {
      
      public static var rootTimeline:SimpleTimeline;
      
      public static var fastEaseLookup:Dictionary;
      
      public static var onPluginEvent:Function;
      
      public static var rootFramesTimeline:SimpleTimeline;
      
      public static var defaultEase:Function;
      
      public static const version:Number = 11.63;
      
      public static var plugins:Object;
      
      public static var masterList:Dictionary;
      
      public static var overwriteManager:Object;
      
      public static var rootFrame:Number;
      
      public static var killDelayedCallsTo:Function;
      
      private static var _shape:Shape;
      
      protected static var _reservedProps:Object;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         version = 11.63;
         if(_loc2_ || _loc2_)
         {
            addr0033:
            plugins = {};
            if(_loc2_ || _loc2_)
            {
               fastEaseLookup = new Dictionary(false);
               if(!(_loc1_ && TweenLite))
               {
                  killDelayedCallsTo = TweenLite.killTweensOf;
                  if(_loc2_)
                  {
                     §§goto(addr0070);
                  }
                  §§goto(addr00b5);
               }
               §§goto(addr0091);
            }
         }
         addr0070:
         defaultEase = TweenLite.easeOut;
         if(!_loc1_)
         {
            masterList = new Dictionary(false);
            if(_loc2_)
            {
               _shape = new Shape();
               addr0091:
               if(!(_loc1_ && TweenLite))
               {
                  _reservedProps = {
                     "ease":1,
                     "delay":1,
                     "overwrite":1,
                     "onComplete":1,
                     "onCompleteParams":1,
                     "useFrames":1,
                     "runBackwards":1,
                     "startAt":1,
                     "onUpdate":1,
                     "onUpdateParams":1,
                     "onStart":1,
                     "onStartParams":1,
                     "onInit":1,
                     "onInitParams":1,
                     "onReverseComplete":1,
                     "onReverseCompleteParams":1,
                     "onRepeat":1,
                     "onRepeatParams":1,
                     "proxiedEase":1,
                     "easeParams":1,
                     "yoyo":1,
                     "onCompleteListener":1,
                     "onUpdateListener":1,
                     "onStartListener":1,
                     "onReverseCompleteListener":1,
                     "onRepeatListener":1,
                     "orientToBezier":1,
                     "timeScale":1,
                     "immediateRender":1,
                     "repeat":1,
                     "repeatDelay":1,
                     "timeline":1,
                     "data":1,
                     "paused":1
                  };
                  addr00b5:
               }
               §§goto(addr0171);
            }
            §§goto(addr00b5);
         }
         addr0171:
         return;
      }
      §§goto(addr0033);
      
      protected var _hasPlugins:Boolean;
      
      public var propTweenLookup:Object;
      
      public var cachedPT1:PropTween;
      
      protected var _overwrite:int;
      
      protected var _ease:Function;
      
      public var target:Object;
      
      public var ratio:Number = 0;
      
      protected var _overwrittenProps:Object;
      
      protected var _notifyPluginsOfEnabled:Boolean;
      
      public function TweenLite(param1:Object, param2:Number, param3:Object)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:TweenLite = null;
         if(!_loc9_)
         {
            super(param2,param3);
            if(_loc8_ || Boolean(param1))
            {
               if(param1 == null)
               {
                  if(_loc8_ || Boolean(param2))
                  {
                     throw new Error("Cannot tween a null object.");
                  }
               }
               else
               {
                  this.target = param1;
                  if(_loc8_)
                  {
                     §§push(this.target is TweenCore);
                     if(!_loc9_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        if(_temp_3)
                        {
                           if(!_loc9_)
                           {
                              §§pop();
                              if(_loc8_)
                              {
                                 addr008c:
                                 addr0083:
                                 if(Boolean(this.vars.timeScale))
                                 {
                                    if(!(_loc9_ && Boolean(param1)))
                                    {
                                       addr009e:
                                       this.cachedTimeScale = 1;
                                       if(_loc8_)
                                       {
                                          addr00aa:
                                          propTweenLookup = {};
                                          if(!(_loc9_ && Boolean(this)))
                                          {
                                             §§goto(addr00c0);
                                          }
                                          §§goto(addr00d7);
                                       }
                                    }
                                    addr00c0:
                                    _ease = defaultEase;
                                    if(_loc8_ || Boolean(param3))
                                    {
                                       addr00d7:
                                       §§push(§§findproperty(_overwrite));
                                       if(_loc8_)
                                       {
                                          §§push(Number(param3.overwrite) > -1);
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             §§push(!§§pop());
                                             if(_loc8_ || Boolean(param3))
                                             {
                                                var _temp_9:* = §§pop();
                                                §§push(_temp_9);
                                                §§push(_temp_9);
                                                if(!_loc9_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §§goto(addr011b);
                                                      }
                                                      §§goto(addr0150);
                                                   }
                                                   §§goto(addr0167);
                                                }
                                                §§goto(addr0131);
                                             }
                                             §§goto(addr0167);
                                          }
                                          addr011b:
                                          §§pop();
                                          if(!_loc9_)
                                          {
                                             addr0122:
                                             §§push(!overwriteManager.enabled);
                                             if(_loc8_)
                                             {
                                                var _temp_10:* = §§pop();
                                                addr0131:
                                                §§push(_temp_10);
                                                if(_temp_10)
                                                {
                                                   if(_loc8_ || Boolean(param1))
                                                   {
                                                      addr0150:
                                                      §§pop();
                                                      if(_loc8_ || Boolean(param1))
                                                      {
                                                         §§goto(addr0167);
                                                      }
                                                      §§goto(addr016b);
                                                   }
                                                }
                                                addr0167:
                                                §§goto(addr015f);
                                             }
                                             §§goto(addr0150);
                                          }
                                          addr015f:
                                          if(param3.overwrite > 1)
                                          {
                                             addr016b:
                                             §§push(int(overwriteManager.mode));
                                             if(_loc9_ && Boolean(param2))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§push(int(param3.overwrite));
                                          }
                                          §§pop()._overwrite = §§pop();
                                          §§goto(addr0193);
                                       }
                                       §§goto(addr0122);
                                    }
                                    §§goto(addr0193);
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr009e);
                           }
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr00d7);
            }
            addr0193:
            var _loc4_:Array = masterList[param1];
            if(!_loc4_)
            {
               if(_loc8_ || Boolean(param2))
               {
                  masterList[param1] = [this];
                  if(!(_loc8_ || Boolean(param2)))
                  {
                     §§goto(addr01e4);
                  }
               }
               §§goto(addr0247);
            }
            else
            {
               §§push(_overwrite);
               if(!(_loc9_ && Boolean(param2)))
               {
                  if(§§pop() == 1)
                  {
                     addr01e4:
                     §§goto(addr01e6);
                  }
                  else
                  {
                     _loc4_[_loc4_.length] = this;
                     if(!_loc9_)
                     {
                        §§goto(addr0247);
                     }
                  }
                  §§goto(addr027e);
               }
            }
            addr01e6:
            for each(_loc5_ in _loc4_)
            {
               if(!_loc5_.gc)
               {
                  if(!_loc9_)
                  {
                     _loc5_.setEnabled(false,false);
                  }
               }
            }
            if(!_loc9_)
            {
               masterList[param1] = [this];
               if(_loc8_)
               {
               }
               addr0247:
               §§push(this.active);
               if(_loc8_ || Boolean(param1))
               {
                  var _temp_19:* = §§pop();
                  §§push(_temp_19);
                  if(!_temp_19)
                  {
                     if(_loc8_)
                     {
                        addr026f:
                        §§pop();
                        if(!(_loc9_ && Boolean(param2)))
                        {
                           §§goto(addr0287);
                        }
                        §§goto(addr0291);
                     }
                  }
                  addr0287:
                  addr027e:
                  if(Boolean(this.vars.immediateRender))
                  {
                     if(_loc8_)
                     {
                        addr0291:
                        renderTime(0,false,true);
                     }
                  }
                  §§goto(addr029c);
               }
               §§goto(addr026f);
            }
            addr029c:
            return;
         }
         §§goto(addr0083);
      }
      
      public static function initClass() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            rootFrame = 0;
            if(!_loc2_)
            {
               rootTimeline = new SimpleTimeline(null);
               if(!(_loc2_ && _loc2_))
               {
                  rootFramesTimeline = new SimpleTimeline(null);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(rootTimeline);
                     if(_loc1_)
                     {
                        §§pop().cachedStartTime = getTimer() * 0.001;
                        if(_loc1_ || _loc1_)
                        {
                           §§push(rootFramesTimeline);
                           if(_loc1_ || _loc2_)
                           {
                              §§pop().cachedStartTime = rootFrame;
                              if(_loc1_ || _loc2_)
                              {
                                 addr00b2:
                                 rootTimeline.autoRemoveChildren = true;
                                 if(_loc1_)
                                 {
                                    addr00be:
                                    rootFramesTimeline.autoRemoveChildren = true;
                                    addr00bb:
                                    if(_loc1_ || _loc1_)
                                    {
                                       _shape.addEventListener(Event.ENTER_FRAME,updateAll,false,0,true);
                                       addr00cf:
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          addr00f9:
                                          if(overwriteManager == null)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr0106:
                                                overwriteManager = {
                                                   "mode":1,
                                                   "enabled":false
                                                };
                                             }
                                          }
                                          §§goto(addr0117);
                                       }
                                    }
                                    §§goto(addr0106);
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr0106);
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr0117);
               }
               §§goto(addr0106);
            }
            §§goto(addr00f9);
         }
         addr0117:
      }
      
      public static function killTweensOf(param1:Object, param2:Boolean = false, param3:Object = null) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:TweenLite = null;
         if(!_loc7_)
         {
            if(param1 in masterList)
            {
               addr0035:
               _loc4_ = masterList[param1];
               _loc5_ = int(_loc4_.length);
               while(true)
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - 1);
                     if(_loc8_ || Boolean(param3))
                     {
                        addr0151:
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(_loc8_ || Boolean(param3))
                        {
                           §§push(§§pop());
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              _loc5_ = §§pop();
                              addr017f:
                              §§push(-1);
                           }
                        }
                        if(§§pop() <= §§pop())
                        {
                           break;
                        }
                        _loc6_ = _loc4_[_loc5_];
                        if(_loc6_.gc)
                        {
                           continue;
                        }
                        if(_loc8_)
                        {
                           §§push(param2);
                           if(_loc8_)
                           {
                              if(§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    _loc6_.complete(false,false);
                                    if(!(_loc8_ || Boolean(param1)))
                                    {
                                       continue;
                                    }
                                    addr008c:
                                    if(param3 != null)
                                    {
                                       if(_loc8_ || Boolean(param3))
                                       {
                                          addr00a0:
                                          _loc6_.killVars(param3);
                                          if(_loc8_ || param2)
                                          {
                                             addr00b5:
                                             §§push(param3 == null);
                                             if(!_loc7_)
                                             {
                                                var _temp_11:* = §§pop();
                                                §§push(_temp_11);
                                                §§push(_temp_11);
                                                if(!_loc7_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc8_ || TweenLite)
                                                      {
                                                         §§pop();
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§push(_loc6_.cachedPT1 == null);
                                                            if(!_loc7_)
                                                            {
                                                               var _temp_14:* = §§pop();
                                                               addr0101:
                                                               §§push(_temp_14);
                                                               if(_temp_14)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr010b:
                                                                     §§pop();
                                                                     if(_loc8_ || Boolean(param3))
                                                                     {
                                                                        addr0120:
                                                                        addr011a:
                                                                        if(!_loc6_.initted)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!(_loc8_ || Boolean(param3)))
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     addr0132:
                                                                     _loc6_.setEnabled(false,false);
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr0120);
                                                            }
                                                            §§goto(addr010b);
                                                         }
                                                         §§goto(addr0132);
                                                      }
                                                      §§goto(addr010b);
                                                   }
                                                   §§goto(addr0120);
                                                }
                                                §§goto(addr0101);
                                             }
                                             §§goto(addr010b);
                                          }
                                       }
                                       §§goto(addr011a);
                                    }
                                    §§goto(addr00b5);
                                 }
                                 §§goto(addr00a0);
                              }
                              §§goto(addr008c);
                           }
                           §§goto(addr0120);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr017f);
                  }
                  §§goto(addr0151);
               }
               if(_loc8_)
               {
                  if(param3 == null)
                  {
                     if(_loc8_ || param2)
                     {
                        addr019f:
                        delete masterList[param1];
                     }
                  }
                  §§goto(addr01a7);
               }
               §§goto(addr019f);
            }
            addr01a7:
            return;
         }
         §§goto(addr0035);
      }
      
      public static function from(param1:Object, param2:Number, param3:Object) : TweenLite
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            if(param3.isGSVars)
            {
               if(!_loc4_)
               {
                  param3 = param3.vars;
                  addr003e:
                  param3.runBackwards = true;
                  if(_loc5_)
                  {
                     if(!("immediateRender" in param3))
                     {
                        if(!_loc4_)
                        {
                           addr0059:
                           param3.immediateRender = true;
                        }
                     }
                     return new TweenLite(param1,param2,param3);
                  }
               }
               §§goto(addr0059);
            }
            §§goto(addr003e);
         }
         §§goto(addr0059);
      }
      
      protected static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         §§push(1);
         §§push(1);
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() / param4);
         }
         §§push(§§pop() - §§pop());
         if(_loc7_)
         {
            var _temp_2:* = §§pop();
            §§push(_temp_2);
            §§push(_temp_2);
            if(_loc7_)
            {
               var _loc5_:* = §§pop();
               §§goto(addr0081);
            }
            §§goto(addr0080);
         }
         addr0081:
         if(!(_loc6_ && Boolean(param2)))
         {
            §§push(§§pop());
            if(_loc7_ || TweenLite)
            {
               param1 = §§pop();
               §§push(_loc5_);
            }
         }
         if(_loc7_ || Boolean(param3))
         {
            addr0080:
            §§push(§§pop() * param1);
         }
         return §§pop() - §§pop();
      }
      
      public static function delayedCall(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : TweenLite
      {
         return new TweenLite(param2,0,{
            "delay":param1,
            "onComplete":param2,
            "onCompleteParams":param3,
            "immediateRender":false,
            "useFrames":param4,
            "overwrite":0
         });
      }
      
      protected static function updateAll(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:Dictionary = null;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         if(_loc9_)
         {
            §§push(rootTimeline);
            §§push(getTimer() * 0.001);
            if(_loc9_)
            {
               §§push(rootTimeline);
               if(!_loc8_)
               {
                  addr0059:
                  §§push(§§pop() - §§pop().cachedStartTime);
                  if(!_loc8_)
                  {
                     addr0055:
                     §§push(§§pop() * rootTimeline.cachedTimeScale);
                  }
                  §§pop().renderTime(§§pop(),false,false);
                  if(_loc9_)
                  {
                     §§push(§§findproperty(rootFrame));
                     §§push(rootFrame);
                     if(_loc9_ || Boolean(_loc2_))
                     {
                        §§push(§§pop() + 1);
                     }
                     §§pop().rootFrame = §§pop();
                     if(_loc9_ || TweenLite)
                     {
                        §§push(rootFramesTimeline);
                        §§push(rootFrame);
                        if(!_loc8_)
                        {
                           §§push(rootFramesTimeline);
                           if(_loc9_ || Boolean(_loc2_))
                           {
                              §§push(§§pop() - §§pop().cachedStartTime);
                              if(!_loc8_)
                              {
                                 addr00b7:
                                 addr00b4:
                                 §§push(§§pop() * rootFramesTimeline.cachedTimeScale);
                              }
                              §§pop().renderTime(§§pop(),false,false);
                              if(!(_loc8_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00e9);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00b4);
                     }
                  }
                  §§goto(addr00e9);
               }
               §§goto(addr0055);
            }
            §§goto(addr0059);
         }
         addr00cf:
         §§push(rootFrame);
         if(_loc9_)
         {
            §§push(§§pop() % 60);
         }
         if(!§§pop())
         {
            addr00e9:
            _loc2_ = masterList;
            loop0:
            for(_loc3_ in _loc2_)
            {
               _loc4_ = _loc2_[_loc3_];
               §§push(int(_loc4_.length));
               if(_loc9_ || Boolean(param1))
               {
                  _loc5_ = §§pop();
                  if(!_loc8_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc5_);
                        if(_loc9_)
                        {
                           while(true)
                           {
                              §§push(§§pop() - 1);
                              if(!_loc8_)
                              {
                                 var _temp_8:* = §§pop();
                                 §§push(_temp_8);
                                 §§push(_temp_8);
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc8_ && TweenLite))
                                    {
                                       addr018a:
                                       _loc5_ = §§pop();
                                       while(true)
                                       {
                                          §§push(-1);
                                       }
                                       addr018c:
                                    }
                                    while(true)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(_loc9_ || Boolean(param1))
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       if(TweenLite(_loc4_[_loc5_]).gc)
                                       {
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             _loc4_.splice(_loc5_,1);
                                             if(!(_loc9_ || Boolean(param1)))
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          delete _loc2_[_loc3_];
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    break;
                                 }
                                 §§goto(addr018a);
                              }
                           }
                           break;
                           addr0165:
                        }
                        §§goto(addr018c);
                     }
                     if(_loc4_.length != 0)
                     {
                        continue;
                     }
                     if(_loc8_ && Boolean(_loc3_))
                     {
                        continue;
                     }
                     §§goto(addr01c5);
                  }
                  §§goto(addr0145);
               }
               §§goto(addr0165);
            }
         }
      }
      
      public static function to(param1:Object, param2:Number, param3:Object) : TweenLite
      {
         return new TweenLite(param1,param2,param3);
      }
      
      protected function easeProxy(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return this.vars.proxiedEase.apply(null,arguments.concat(this.vars.easeParams));
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = false;
         var _loc5_:Number = this.cachedTime;
         if(!_loc9_)
         {
            §§push(param1);
            if(!(_loc9_ && Boolean(this)))
            {
               if(§§pop() >= this.cachedDuration)
               {
                  if(!_loc9_)
                  {
                     this.cachedTotalTime = this.cachedTime = this.cachedDuration;
                     if(_loc8_ || param3)
                     {
                        this.ratio = 1;
                        if(_loc8_)
                        {
                           §§push(true);
                           if(!_loc9_)
                           {
                              _loc4_ = §§pop();
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 if(this.cachedDuration == 0)
                                 {
                                    if(_loc8_)
                                    {
                                       §§push(param1);
                                       if(_loc8_ || Boolean(this))
                                       {
                                          §§push(0);
                                          if(_loc8_ || param2)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc8_)
                                             {
                                                var _temp_7:* = §§pop();
                                                §§push(_temp_7);
                                                §§push(_temp_7);
                                                if(!(_loc9_ && param2))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §§pop();
                                                         if(!(_loc9_ && Boolean(param1)))
                                                         {
                                                            §§push(_rawPrevTime < 0);
                                                            if(_loc8_)
                                                            {
                                                               addr00ef:
                                                               var _temp_10:* = §§pop();
                                                               §§push(_temp_10);
                                                               §§push(_temp_10);
                                                               if(_loc8_)
                                                               {
                                                                  addr00f6:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc9_ && param3))
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(_rawPrevTime == param1);
                                                                           if(_loc8_ || Boolean(param1))
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!(_loc9_ && param3))
                                                                              {
                                                                                 addr0131:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc8_ || Boolean(param1))
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(_loc8_ || param2)
                                                                                       {
                                                                                          param3 = §§pop();
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr0159:
                                                                                             _rawPrevTime = param1;
                                                                                             if(!(_loc9_ && Boolean(param1)))
                                                                                             {
                                                                                                addr031e:
                                                                                                §§push(this.cachedTime == _loc5_);
                                                                                                if(_loc8_ || param2)
                                                                                                {
                                                                                                   addr0333:
                                                                                                   var _temp_18:* = §§pop();
                                                                                                   §§push(_temp_18);
                                                                                                   §§push(_temp_18);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            addr0344:
                                                                                                            §§pop();
                                                                                                            if(!(_loc9_ && param2))
                                                                                                            {
                                                                                                               addr0353:
                                                                                                               §§push(param3);
                                                                                                               if(_loc8_ || Boolean(param1))
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(_loc8_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     addr037c:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        addr0464:
                                                                                                                        §§push(!this.cachedPaused);
                                                                                                                        if(_loc8_ || param3)
                                                                                                                        {
                                                                                                                           addr0477:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 this.active = true;
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr048c:
                                                                                                                                    addr0490:
                                                                                                                                    addr048e:
                                                                                                                                    §§push(_loc5_ == 0);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       var _temp_23:* = §§pop();
                                                                                                                                       §§push(_temp_23);
                                                                                                                                       if(_temp_23)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             addr04ad:
                                                                                                                                             addr04a4:
                                                                                                                                             §§push(this.vars.onStart);
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                var _temp_24:* = §§pop();
                                                                                                                                                §§push(_temp_24);
                                                                                                                                                §§push(_temp_24);
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr04bc:
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         addr04c6:
                                                                                                                                                         §§pop();
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.cachedTime == 0);
                                                                                                                                                            if(!(_loc9_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr04e2:
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  addr04e9:
                                                                                                                                                                  var _temp_26:* = §§pop();
                                                                                                                                                                  §§push(_temp_26);
                                                                                                                                                                  §§push(_temp_26);
                                                                                                                                                                  if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     addr04f8:
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0502:
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                           {
                                                                                                                                                                              addr0511:
                                                                                                                                                                              §§push(this.cachedDuration == 0);
                                                                                                                                                                              if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0526:
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr052e:
                                                                                                                                                                                    var _temp_30:* = §§pop();
                                                                                                                                                                                    addr052f:
                                                                                                                                                                                    §§push(_temp_30);
                                                                                                                                                                                    if(_temp_30)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0539:
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0558:
                                                                                                                                                                                             addr0548:
                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                             if(_loc8_ || Boolean(param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0557:
                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc8_ || param3)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr056a:
                                                                                                                                                                                                   this.vars.onStart.apply(null,this.vars.onStartParams);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr057f:
                                                                                                                                                                                             var _loc6_:PropTween = this.cachedPT1;
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc6_.target[_loc6_.property] = _loc6_.start + this.ratio * _loc6_.change;
                                                                                                                                                                                                   if(!_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc6_ = _loc6_.nextNode;
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_hasUpdate);
                                                                                                                                                                                                   if(!(_loc9_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      var _temp_35:* = §§pop();
                                                                                                                                                                                                      §§push(_temp_35);
                                                                                                                                                                                                      §§push(_temp_35);
                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr05e9:
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               if(_loc8_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr063b:
                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(!(_loc9_ && param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     var _temp_37:* = §§pop();
                                                                                                                                                                                                                     §§push(_temp_37);
                                                                                                                                                                                                                     §§push(_temp_37);
                                                                                                                                                                                                                     if(_loc8_ || Boolean(param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr066b:
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(!this.gc);
                                                                                                                                                                                                                                 if(!(_loc9_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0685:
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr068f:
                                                                                                                                                                                                                                          §§push(_hasPlugins);
                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(_loc8_ || param2)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr06a7:
                                                                                                                                                                                                                                                var _temp_41:* = §§pop();
                                                                                                                                                                                                                                                addr06a8:
                                                                                                                                                                                                                                                §§push(_temp_41);
                                                                                                                                                                                                                                                if(_temp_41)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc8_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr06ba:
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr06dc:
                                                                                                                                                                                                                                                         addr06d7:
                                                                                                                                                                                                                                                         if(Boolean(this.cachedPT1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               onPluginEvent("onComplete",this);
                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr06f7:
                                                                                                                                                                                                                                                                  complete(true,param2);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr0700);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr06f7);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr06dc);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr06ba);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr06a7);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0700);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr06a7);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0700);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr06ba);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0685);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr06a8);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr06dc);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr06a7);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr0606:
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               this.vars.onUpdate.apply(null,this.vars.onUpdateParams);
                                                                                                                                                                                                               if(!(_loc9_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr063b);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr068f);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr0700:
                                                                                                                                                                                                            return;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr063b);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr06a8);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr05e9);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr06d7);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(!§§pop());
                                                                                                                                                                                                if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr0606);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0685);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr066b);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr056a);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0558);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0557);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0558);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr056a);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0539);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0526);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr052f);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0539);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0548);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr052e);
                                                                                                                                                }
                                                                                                                                                §§goto(addr04f8);
                                                                                                                                             }
                                                                                                                                             §§goto(addr04e9);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0548);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04ad);
                                                                                                                                    }
                                                                                                                                    §§goto(addr04e2);
                                                                                                                                 }
                                                                                                                                 §§goto(addr056a);
                                                                                                                              }
                                                                                                                              §§goto(addr057f);
                                                                                                                           }
                                                                                                                           §§goto(addr048c);
                                                                                                                        }
                                                                                                                        §§goto(addr052e);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        if(!this.initted)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              addr039b:
                                                                                                                              init();
                                                                                                                              if(_loc8_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 addr03b0:
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    if(_loc8_ || param3)
                                                                                                                                    {
                                                                                                                                       addr03c7:
                                                                                                                                       var _temp_49:* = §§pop();
                                                                                                                                       §§push(_temp_49);
                                                                                                                                       §§push(_temp_49);
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          addr03ce:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc8_ || param3)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                if(_loc8_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(this.cachedTime));
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr03fa:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr0404:
                                                                                                                                                            this.ratio = _ease(this.cachedTime,0,1,this.cachedDuration);
                                                                                                                                                            if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                            {
                                                                                                                                                               addr0429:
                                                                                                                                                               §§push(!this.active);
                                                                                                                                                               if(_loc8_ || Boolean(this))
                                                                                                                                                               {
                                                                                                                                                                  addr043c:
                                                                                                                                                                  var _temp_54:* = §§pop();
                                                                                                                                                                  §§push(_temp_54);
                                                                                                                                                                  §§push(_temp_54);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                        {
                                                                                                                                                                           addr0455:
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(_loc8_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr0464);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr048c);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04c6);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0477);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr052f);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04e2);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0511);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0429);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr04e9);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0511);
                                                                                                                                             }
                                                                                                                                             §§goto(addr043c);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03fa);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04f8);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0477);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0502);
                                                                                                                              }
                                                                                                                              §§goto(addr0548);
                                                                                                                           }
                                                                                                                           §§goto(addr057f);
                                                                                                                        }
                                                                                                                        §§goto(addr0429);
                                                                                                                     }
                                                                                                                     §§goto(addr04e2);
                                                                                                                  }
                                                                                                                  §§goto(addr0502);
                                                                                                               }
                                                                                                               §§goto(addr0526);
                                                                                                            }
                                                                                                            §§goto(addr057f);
                                                                                                         }
                                                                                                         §§goto(addr0455);
                                                                                                      }
                                                                                                      §§goto(addr037c);
                                                                                                   }
                                                                                                   §§goto(addr04bc);
                                                                                                }
                                                                                                §§goto(addr0502);
                                                                                             }
                                                                                             §§goto(addr057f);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0260:
                                                                                             §§push(this.cachedReversed);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr026b:
                                                                                                var _temp_57:* = §§pop();
                                                                                                §§push(_temp_57);
                                                                                                §§push(_temp_57);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc9_ && param3))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr028b:
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc8_ || param3)
                                                                                                            {
                                                                                                               addr029b:
                                                                                                               §§push(0);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr02a3:
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  if(!(_loc9_ && param3))
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr02b9:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              addr02c3:
                                                                                                                              §§push(true);
                                                                                                                              if(!(_loc9_ && param2))
                                                                                                                              {
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 if(_loc8_ || param2)
                                                                                                                                 {
                                                                                                                                    §§goto(addr031e);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0464);
                                                                                                                              }
                                                                                                                              §§goto(addr0558);
                                                                                                                           }
                                                                                                                           §§goto(addr039b);
                                                                                                                        }
                                                                                                                        §§goto(addr031e);
                                                                                                                     }
                                                                                                                     §§goto(addr03c7);
                                                                                                                  }
                                                                                                                  §§goto(addr04e2);
                                                                                                               }
                                                                                                               §§goto(addr0490);
                                                                                                            }
                                                                                                            §§goto(addr048e);
                                                                                                         }
                                                                                                         §§goto(addr03b0);
                                                                                                      }
                                                                                                      §§goto(addr04c6);
                                                                                                   }
                                                                                                   §§goto(addr02b9);
                                                                                                }
                                                                                                §§goto(addr04f8);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0344);
                                                                                       }
                                                                                       §§goto(addr03c7);
                                                                                    }
                                                                                    §§goto(addr04a4);
                                                                                 }
                                                                                 §§goto(addr0159);
                                                                              }
                                                                              §§goto(addr02b9);
                                                                           }
                                                                           §§goto(addr04e2);
                                                                        }
                                                                        §§goto(addr02c3);
                                                                     }
                                                                     §§goto(addr0558);
                                                                  }
                                                                  §§goto(addr0131);
                                                               }
                                                               §§goto(addr03ce);
                                                            }
                                                            §§goto(addr043c);
                                                         }
                                                         else
                                                         {
                                                            addr01d3:
                                                            §§push(param1);
                                                            if(!_loc9_)
                                                            {
                                                               addr01da:
                                                               §§push(0);
                                                               if(!_loc9_)
                                                               {
                                                                  addr01e2:
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(_loc8_ || param3)
                                                                     {
                                                                        this.active = false;
                                                                        if(_loc8_ || Boolean(param1))
                                                                        {
                                                                           addr0207:
                                                                           if(this.cachedDuration == 0)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(_rawPrevTime >= 0)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          param3 = §§pop();
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(true);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                if(!(_loc9_ && param3))
                                                                                                {
                                                                                                   addr024b:
                                                                                                   _rawPrevTime = param1;
                                                                                                   if(_loc8_ || Boolean(param1))
                                                                                                   {
                                                                                                      §§goto(addr0260);
                                                                                                   }
                                                                                                   §§goto(addr057f);
                                                                                                }
                                                                                                §§goto(addr0353);
                                                                                             }
                                                                                             §§goto(addr04c6);
                                                                                          }
                                                                                          §§goto(addr0429);
                                                                                       }
                                                                                       §§goto(addr052e);
                                                                                    }
                                                                                    §§goto(addr028b);
                                                                                 }
                                                                                 §§goto(addr024b);
                                                                              }
                                                                              §§goto(addr057f);
                                                                           }
                                                                           §§goto(addr0260);
                                                                        }
                                                                        §§goto(addr031e);
                                                                     }
                                                                     §§goto(addr0207);
                                                                  }
                                                                  §§goto(addr0260);
                                                               }
                                                               §§goto(addr02a3);
                                                            }
                                                         }
                                                         §§goto(addr029b);
                                                      }
                                                      §§goto(addr0333);
                                                   }
                                                   §§goto(addr00ef);
                                                }
                                                §§goto(addr00f6);
                                             }
                                             §§goto(addr026b);
                                          }
                                          §§goto(addr01e2);
                                       }
                                       §§goto(addr029b);
                                    }
                                    §§goto(addr039b);
                                 }
                                 §§goto(addr031e);
                              }
                              §§goto(addr03b0);
                           }
                           §§goto(addr052e);
                        }
                        §§goto(addr03b0);
                     }
                     §§goto(addr0159);
                  }
                  §§goto(addr031e);
               }
               else
               {
                  §§push(param1);
                  if(!_loc9_)
                  {
                     §§push(0);
                     if(!(_loc9_ && param2))
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!(_loc9_ && Boolean(this)))
                           {
                              §§push(this);
                              §§push(this);
                              var _loc7_:*;
                              this.ratio = _loc7_ = 0;
                              §§push(_loc7_);
                              if(_loc8_ || param3)
                              {
                                 _loc7_ = §§pop();
                                 §§push(_loc7_);
                              }
                              §§pop().cachedTime = §§pop();
                              §§pop().cachedTotalTime = _loc7_;
                              if(!(_loc9_ && param3))
                              {
                                 §§goto(addr01d3);
                              }
                              §§goto(addr031e);
                           }
                           §§goto(addr0511);
                        }
                        else
                        {
                           this.cachedTotalTime = this.cachedTime = param1;
                           if(_loc8_ || Boolean(param1))
                           {
                              this.ratio = _ease(param1,0,1,this.cachedDuration);
                              if(_loc8_)
                              {
                                 §§goto(addr031e);
                              }
                              §§goto(addr0548);
                           }
                        }
                        §§goto(addr0404);
                     }
                     §§goto(addr01e2);
                  }
               }
               §§goto(addr01da);
            }
            §§goto(addr029b);
         }
         §§goto(addr057f);
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Array = null;
         if(_loc4_ || Boolean(this))
         {
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr0040:
                     _loc3_ = TweenLite.masterList[this.target];
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           if(!(_loc5_ && Boolean(this)))
                           {
                              TweenLite.masterList[this.target] = [this];
                              if(_loc5_ && Boolean(this))
                              {
                              }
                           }
                        }
                        else
                        {
                           _loc3_[_loc3_.length] = this;
                        }
                     }
                     addr009e:
                     super.setEnabled(param1,param2);
                     if(!_loc5_)
                     {
                        §§push(_notifyPluginsOfEnabled);
                        if(!_loc5_)
                        {
                           addr00b4:
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              var _temp_5:* = §§pop();
                              §§push(_temp_5);
                              if(_temp_5)
                              {
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    §§pop();
                                    if(!_loc5_)
                                    {
                                       §§goto(addr011e);
                                    }
                                    §§goto(addr011d);
                                 }
                                 addr011e:
                                 §§push(Boolean(this.cachedPT1));
                                 if(_loc4_)
                                 {
                                    addr00ec:
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          addr00f6:
                                          §§push(§§findproperty(onPluginEvent));
                                          if(!_loc5_)
                                          {
                                             if(param1)
                                             {
                                                return "onEnable".onPluginEvent(_loc4_ ? §§pop() : §§pop(),this);
                                                addr0104:
                                             }
                                             else
                                             {
                                                §§push("onDisable");
                                             }
                                             §§goto(addr0116);
                                          }
                                          §§goto(addr0104);
                                       }
                                    }
                                    addr011d:
                                    return false;
                                 }
                              }
                           }
                        }
                        §§goto(addr00ec);
                     }
                     §§goto(addr011d);
                  }
                  §§goto(addr00f6);
               }
               §§goto(addr009e);
            }
            §§goto(addr00b4);
         }
         §§goto(addr0040);
      }
      
      protected function init() : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:* = undefined;
         var _loc4_:* = false;
         var _loc5_:Array = null;
         var _loc6_:PropTween = null;
         if(!(_loc11_ && _loc3_))
         {
            if(this.vars.onInit)
            {
               if(!(_loc11_ && Boolean(this)))
               {
                  this.vars.onInit.apply(null,this.vars.onInitParams);
                  if(!_loc11_)
                  {
                     addr006d:
                     if(typeof this.vars.ease == "function")
                     {
                        if(_loc10_)
                        {
                           addr0084:
                           _ease = this.vars.ease;
                           if(!(_loc11_ && Boolean(_loc2_)))
                           {
                              addr00a0:
                              if(this.vars.easeParams)
                              {
                                 if(_loc10_)
                                 {
                                    this.vars.proxiedEase = _ease;
                                    if(!_loc11_)
                                    {
                                       addr00c3:
                                       _ease = easeProxy;
                                       if(_loc10_)
                                       {
                                          addr00d3:
                                          this.cachedPT1 = null;
                                          if(!(_loc11_ && Boolean(_loc2_)))
                                          {
                                             addr00e6:
                                             this.propTweenLookup = {};
                                          }
                                          addr00ec:
                                          var _loc7_:* = 0;
                                          var _loc8_:* = this.vars;
                                          loop0:
                                          for(_loc7_ in _loc8_)
                                          {
                                             §§push(_loc7_);
                                             if(_loc10_ || _loc3_)
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc10_)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc10_)
                                                   {
                                                      addr011e:
                                                      §§push(§§pop() in _reservedProps);
                                                      if(!_loc11_)
                                                      {
                                                         var _temp_6:* = §§pop();
                                                         §§push(_temp_6);
                                                         §§push(_temp_6);
                                                         if(_loc10_ || Boolean(_loc2_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc11_ && Boolean(this)))
                                                               {
                                                                  §§pop();
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(!(_loc11_ && Boolean(_loc1_)))
                                                                     {
                                                                        addr0167:
                                                                        §§push("timeScale");
                                                                        if(!(_loc11_ && Boolean(this)))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              var _temp_13:* = §§pop();
                                                                              §§push(_temp_13);
                                                                              §§push(_temp_13);
                                                                              if(_loc10_ || Boolean(this))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc11_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr01a8:
                                                                                       §§pop();
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.target is TweenCore);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr01c5:
                                                                                             §§push(!§§pop());
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr01cc:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   this.cachedPT1 = new PropTween(_loc3_,"changeFactor",0,1,_loc3_.overwriteProps.length == 1 ? _loc3_.overwriteProps[0] : "_MULTIPLE_",true,this.cachedPT1);
                                                                                                   addr0256:
                                                                                                   if(_loc10_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(this.cachedPT1);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         addr02a7:
                                                                                                         addr02aa:
                                                                                                         if(§§pop().name == "_MULTIPLE_")
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr02b4:
                                                                                                               §§push(int(_loc3_.overwriteProps.length));
                                                                                                               if(!(_loc11_ && Boolean(this)))
                                                                                                               {
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                  {
                                                                                                                     loop1:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(!(_loc11_ && _loc3_))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                              if(!(_loc11_ && Boolean(_loc1_)))
                                                                                                                              {
                                                                                                                                 var _temp_23:* = §§pop();
                                                                                                                                 §§push(_temp_23);
                                                                                                                                 §§push(_temp_23);
                                                                                                                                 if(_loc10_ || Boolean(_loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       addr0338:
                                                                                                                                       _loc2_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(-1);
                                                                                                                                       }
                                                                                                                                       addr0339:
                                                                                                                                    }
                                                                                                                                    while(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       this.propTweenLookup[_loc3_.overwriteProps[_loc2_]] = this.cachedPT1;
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr0338);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           addr0306:
                                                                                                                        }
                                                                                                                        §§goto(addr0339);
                                                                                                                     }
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        addr0361:
                                                                                                                        if(_loc3_.priority)
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           addr0374:
                                                                                                                           this.cachedPT1.priority = _loc3_.priority;
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(true);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              addr0389:
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 addr0391:
                                                                                                                                 §§push(Boolean(_loc3_.onDisable));
                                                                                                                                 if(!(_loc11_ && Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    var _temp_26:* = §§pop();
                                                                                                                                    addr03a5:
                                                                                                                                    §§push(_temp_26);
                                                                                                                                    if(!_temp_26)
                                                                                                                                    {
                                                                                                                                       if(!(_loc11_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          addr03b7:
                                                                                                                                          §§pop();
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          addr03be:
                                                                                                                                          §§push(Boolean(_loc3_.onEnable));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr03c4:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc10_ || Boolean(_loc1_))
                                                                                                                                       {
                                                                                                                                          addr03d6:
                                                                                                                                          _notifyPluginsOfEnabled = true;
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             addr03e3:
                                                                                                                                             _hasPlugins = true;
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr045e:
                                                                                                                                          this.propTweenLookup[_loc1_] = this.cachedPT1;
                                                                                                                                       }
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr03e3);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03b7);
                                                                                                                              }
                                                                                                                              §§goto(addr03d6);
                                                                                                                           }
                                                                                                                           §§goto(addr03b7);
                                                                                                                        }
                                                                                                                        §§goto(addr0391);
                                                                                                                     }
                                                                                                                     addr02f7:
                                                                                                                  }
                                                                                                                  §§goto(addr03be);
                                                                                                               }
                                                                                                               §§goto(addr0306);
                                                                                                            }
                                                                                                            §§goto(addr03be);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.propTweenLookup[this.cachedPT1.name] = this.cachedPT1;
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§goto(addr0361);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr045e);
                                                                                                      }
                                                                                                      §§goto(addr0374);
                                                                                                   }
                                                                                                   §§goto(addr03d6);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(_loc1_);
                                                                                                   if(_loc10_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(§§pop() in plugins);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         addr01fb:
                                                                                                         var _temp_30:* = §§pop();
                                                                                                         §§push(_temp_30);
                                                                                                         §§push(_temp_30);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr0202:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  addr020c:
                                                                                                                  §§pop();
                                                                                                                  if(!(_loc11_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     addr0244:
                                                                                                                     _loc3_ = new (plugins[_loc1_] as Class)();
                                                                                                                     if(Boolean(_loc3_.onInitTween(this.target,this.vars[_loc1_],this)))
                                                                                                                     {
                                                                                                                        if(!(_loc11_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr0256);
                                                                                                                        }
                                                                                                                        §§goto(addr0391);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        this.cachedPT1 = new PropTween(this.target,_loc1_,Number(this.target[_loc1_]),typeof this.vars[_loc1_] == "number" ? Number(this.vars[_loc1_]) - this.target[_loc1_] : Number(this.vars[_loc1_]),_loc1_,false,this.cachedPT1);
                                                                                                                        if(!(_loc10_ || Boolean(this)))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr045e);
                                                                                                                  }
                                                                                                                  §§goto(addr0256);
                                                                                                               }
                                                                                                               §§goto(addr0389);
                                                                                                            }
                                                                                                            §§goto(addr0244);
                                                                                                         }
                                                                                                         §§goto(addr03a5);
                                                                                                      }
                                                                                                      §§goto(addr03c4);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr02a7);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr01fb);
                                                                                       }
                                                                                       §§goto(addr02b4);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr01c5);
                                                                              }
                                                                              §§goto(addr0202);
                                                                           }
                                                                           §§goto(addr01a8);
                                                                        }
                                                                        §§goto(addr02aa);
                                                                     }
                                                                     §§goto(addr02a7);
                                                                  }
                                                                  §§goto(addr02f7);
                                                               }
                                                            }
                                                            §§goto(addr01cc);
                                                         }
                                                         §§goto(addr03a5);
                                                      }
                                                      §§goto(addr020c);
                                                   }
                                                   §§goto(addr0167);
                                                }
                                                §§goto(addr0361);
                                             }
                                             §§goto(addr011e);
                                          }
                                          if(!(_loc11_ && Boolean(_loc1_)))
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc11_ && Boolean(this)))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      onPluginEvent("onInitAllProps",this);
                                                      if(_loc10_ || Boolean(this))
                                                      {
                                                         addr04b6:
                                                         if(this.vars.runBackwards)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               addr04c8:
                                                               §§push(this.cachedPT1);
                                                               if(!(_loc11_ && _loc3_))
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(!_loc11_)
                                                                  {
                                                                     while(_loc6_)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        §§push(_loc6_.start);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop() + _loc6_.change);
                                                                        }
                                                                        §§pop().start = §§pop();
                                                                        if(_loc11_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc6_);
                                                                        §§push(_loc6_.change);
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           §§push(-§§pop());
                                                                        }
                                                                        §§pop().change = §§pop();
                                                                        if(!(_loc10_ || Boolean(this)))
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc6_ = _loc6_.nextNode;
                                                                     }
                                                                  }
                                                                  addr053d:
                                                                  _hasUpdate = Boolean(this.vars.onUpdate != null);
                                                                  if(!(_loc11_ && Boolean(this)))
                                                                  {
                                                                     if(_overwrittenProps)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           addr056e:
                                                                           killVars(_overwrittenProps);
                                                                           if(!(_loc11_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§push(this.cachedPT1);
                                                                              if(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 addr0598:
                                                                                 if(§§pop() == null)
                                                                                 {
                                                                                    if(!(_loc11_ && _loc3_))
                                                                                    {
                                                                                       this.setEnabled(false,false);
                                                                                       if(_loc10_ || Boolean(this))
                                                                                       {
                                                                                          addr05c0:
                                                                                          §§push(_overwrite > 1);
                                                                                          if(_loc10_ || Boolean(_loc2_))
                                                                                          {
                                                                                             addr05d4:
                                                                                             var _temp_49:* = §§pop();
                                                                                             §§push(_temp_49);
                                                                                             if(_temp_49)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!(_loc11_ && _loc3_))
                                                                                                {
                                                                                                   addr05ee:
                                                                                                   addr05ed:
                                                                                                   §§push(this.cachedPT1);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      var _temp_51:* = §§pop();
                                                                                                      §§push(_temp_51);
                                                                                                      §§push(_temp_51);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               addr0607:
                                                                                                               §§pop();
                                                                                                               if(_loc10_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  addr062d:
                                                                                                                  _loc5_ = masterList[this.target];
                                                                                                                  var _temp_54:* = _loc5_;
                                                                                                                  addr062e:
                                                                                                                  addr0616:
                                                                                                                  §§push(_temp_54);
                                                                                                                  if(_temp_54)
                                                                                                                  {
                                                                                                                     if(!(_loc11_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        addr0640:
                                                                                                                        §§pop();
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr064e:
                                                                                                                           addr0647:
                                                                                                                           if(_loc5_.length > 1)
                                                                                                                           {
                                                                                                                              if(!(_loc11_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 addr066d:
                                                                                                                                 if(overwriteManager.manageOverwrites(this,this.propTweenLookup,_loc5_,_overwrite))
                                                                                                                                 {
                                                                                                                                    if(_loc10_ || Boolean(_loc1_))
                                                                                                                                    {
                                                                                                                                       addr0691:
                                                                                                                                       init();
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          addr069e:
                                                                                                                                          this.initted = true;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr06a3);
                                                                                                                                 }
                                                                                                                                 §§goto(addr069e);
                                                                                                                              }
                                                                                                                              addr06a3:
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           §§goto(addr069e);
                                                                                                                        }
                                                                                                                        §§goto(addr0691);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr064e);
                                                                                                               }
                                                                                                               §§goto(addr0647);
                                                                                                            }
                                                                                                            §§goto(addr0640);
                                                                                                         }
                                                                                                         §§goto(addr062d);
                                                                                                      }
                                                                                                      §§goto(addr062e);
                                                                                                   }
                                                                                                   §§goto(addr064e);
                                                                                                }
                                                                                                §§goto(addr0647);
                                                                                             }
                                                                                             §§goto(addr05ee);
                                                                                          }
                                                                                          §§goto(addr0607);
                                                                                       }
                                                                                       §§goto(addr0647);
                                                                                    }
                                                                                    §§goto(addr0691);
                                                                                 }
                                                                                 §§goto(addr05c0);
                                                                              }
                                                                              §§goto(addr05ed);
                                                                           }
                                                                           §§goto(addr0616);
                                                                        }
                                                                        §§goto(addr066d);
                                                                     }
                                                                     §§goto(addr05c0);
                                                                  }
                                                                  §§goto(addr0691);
                                                               }
                                                               §§goto(addr0598);
                                                            }
                                                            §§goto(addr05c0);
                                                         }
                                                         §§goto(addr053d);
                                                      }
                                                      §§goto(addr056e);
                                                   }
                                                   §§goto(addr04c8);
                                                }
                                                §§goto(addr04b6);
                                             }
                                             §§goto(addr05d4);
                                          }
                                          §§goto(addr04c8);
                                       }
                                       §§goto(addr00e6);
                                    }
                                    §§goto(addr00ec);
                                 }
                                 §§goto(addr00c3);
                              }
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr00ec);
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr00c3);
            }
            §§goto(addr006d);
         }
         §§goto(addr00c3);
      }
      
      public function killVars(param1:Object, param2:Boolean = true) : Boolean
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc3_:* = null;
         var _loc4_:PropTween = null;
         var _loc5_:* = false;
         if(_loc9_ || Boolean(param1))
         {
            if(_overwrittenProps == null)
            {
               if(_loc9_)
               {
                  addr003d:
                  _overwrittenProps = {};
               }
            }
            var _loc6_:* = 0;
            var _loc7_:* = param1;
            for(_loc6_ in _loc7_)
            {
               §§push(_loc6_);
               if(!_loc8_)
               {
                  _loc3_ = §§pop();
                  if(!_loc8_)
                  {
                     addr0066:
                     §§push(_loc3_ in propTweenLookup);
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc9_ || Boolean(param1)))
                           {
                              continue;
                           }
                           _loc4_ = propTweenLookup[_loc3_];
                           §§push(_loc4_.isPlugin);
                           if(_loc9_ || param2)
                           {
                              §§push(§§pop());
                              if(_loc9_ || Boolean(_loc3_))
                              {
                                 var _temp_7:* = §§pop();
                                 §§push(_temp_7);
                                 §§push(_temp_7);
                                 if(!(_loc8_ && Boolean(this)))
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc8_)
                                       {
                                          §§pop();
                                          if(_loc9_)
                                          {
                                             §§push(_loc4_.name);
                                             if(_loc9_)
                                             {
                                                §§push("_MULTIPLE_");
                                                if(!(_loc8_ && Boolean(this)))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc8_ && Boolean(this)))
                                                   {
                                                      addr00fa:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc8_ && Boolean(this)))
                                                         {
                                                            _loc4_.target.killProps(param1);
                                                            if(!(_loc8_ && Boolean(this)))
                                                            {
                                                               if(_loc4_.target.overwriteProps.length == 0)
                                                               {
                                                                  if(!(_loc8_ && Boolean(this)))
                                                                  {
                                                                     _loc4_.name = "";
                                                                     if(_loc9_)
                                                                     {
                                                                        addr0151:
                                                                        §§push(_loc3_);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§§pop() == _loc4_.target.propName);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!_loc8_)
                                                                              {
                                                                                 var _temp_14:* = §§pop();
                                                                                 §§push(_temp_14);
                                                                                 §§push(_temp_14);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    addr0176:
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr0180:
                                                                                          §§pop();
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(_loc4_.name);
                                                                                             if(_loc9_ || Boolean(this))
                                                                                             {
                                                                                                addr019a:
                                                                                                §§push("");
                                                                                                if(_loc9_ || Boolean(param1))
                                                                                                {
                                                                                                   addr01b6:
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr01bd:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr01c7:
                                                                                                            §§push(delete propTweenLookup[_loc3_]);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr01db:
                                                                                                                  addr01e3:
                                                                                                                  addr01e0:
                                                                                                                  if(_loc4_.name != "_MULTIPLE_")
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§push(_loc4_.nextNode);
                                                                                                                        if(_loc9_ || param2)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc9_ || Boolean(_loc3_))
                                                                                                                              {
                                                                                                                                 addr0217:
                                                                                                                                 _loc4_.nextNode.prevNode = _loc4_.prevNode;
                                                                                                                                 addr0212:
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    addr0225:
                                                                                                                                    §§push(_loc4_.prevNode);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             addr023f:
                                                                                                                                             _loc4_.prevNode.nextNode = _loc4_.nextNode;
                                                                                                                                             if(!(_loc8_ && Boolean(this)))
                                                                                                                                             {
                                                                                                                                                addr0288:
                                                                                                                                                §§push(_loc4_.isPlugin);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr029a:
                                                                                                                                                      var _temp_20:* = §§pop();
                                                                                                                                                      addr029b:
                                                                                                                                                      §§push(_temp_20);
                                                                                                                                                      if(_temp_20)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            addr02ad:
                                                                                                                                                            §§pop();
                                                                                                                                                            if(_loc9_ || param2)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(_loc4_.target.onDisable));
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  addr02cb:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr02d5:
                                                                                                                                                                        _loc4_.target.onDisable();
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           addr02e4:
                                                                                                                                                                           if(_loc4_.target.activeDisable)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                                                                              {
                                                                                                                                                                                 addr02ff:
                                                                                                                                                                                 §§push(true);
                                                                                                                                                                                 if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                    if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0325:
                                                                                                                                                                                       delete propTweenLookup[_loc3_];
                                                                                                                                                                                       addr031e:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr0326:
                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                    if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr033c:
                                                                                                                                                                                          var _temp_27:* = §§pop();
                                                                                                                                                                                          §§push(_temp_27);
                                                                                                                                                                                          if(_temp_27)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_ || Boolean(this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr036e:
                                                                                                                                                                                                   §§push(param1 == _overwrittenProps);
                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr036d:
                                                                                                                                                                                                      §§push(!§§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr0378:
                                                                                                                                                                                                _overwrittenProps[_loc3_] = 1;
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr036d);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr036e);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr033c);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0325);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0326);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr031e);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr02ff);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr031e);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0325);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr02d5);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0325);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02cb);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0325);
                                                                                                                                                }
                                                                                                                                                §§goto(addr029a);
                                                                                                                                             }
                                                                                                                                             §§goto(addr031e);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else if(this.cachedPT1 == _loc4_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ && Boolean(this)))
                                                                                                                                          {
                                                                                                                                             this.cachedPT1 = _loc4_.nextNode;
                                                                                                                                             if(!(_loc8_ && Boolean(param1)))
                                                                                                                                             {
                                                                                                                                                §§goto(addr0288);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02e4);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02d5);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0288);
                                                                                                                                    }
                                                                                                                                    §§goto(addr023f);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr0288);
                                                                                                                           }
                                                                                                                           §§goto(addr0225);
                                                                                                                        }
                                                                                                                        §§goto(addr0217);
                                                                                                                     }
                                                                                                                     §§goto(addr02d5);
                                                                                                                  }
                                                                                                                  §§goto(addr0326);
                                                                                                               }
                                                                                                               §§goto(addr02d5);
                                                                                                            }
                                                                                                            §§goto(addr02cb);
                                                                                                         }
                                                                                                         §§goto(addr0212);
                                                                                                      }
                                                                                                      §§goto(addr01db);
                                                                                                   }
                                                                                                   §§goto(addr029a);
                                                                                                }
                                                                                                §§goto(addr01e3);
                                                                                             }
                                                                                             §§goto(addr01e0);
                                                                                          }
                                                                                          §§goto(addr02d5);
                                                                                       }
                                                                                       §§goto(addr029a);
                                                                                    }
                                                                                    §§goto(addr01bd);
                                                                                 }
                                                                                 §§goto(addr029b);
                                                                              }
                                                                              §§goto(addr0180);
                                                                           }
                                                                           §§goto(addr02cb);
                                                                        }
                                                                        §§goto(addr01e0);
                                                                     }
                                                                     §§goto(addr031e);
                                                                  }
                                                                  §§goto(addr01c7);
                                                               }
                                                               §§goto(addr0151);
                                                            }
                                                            §§goto(addr0225);
                                                         }
                                                         §§goto(addr031e);
                                                      }
                                                      §§goto(addr01db);
                                                   }
                                                   §§goto(addr0180);
                                                }
                                                §§goto(addr01b6);
                                             }
                                             §§goto(addr019a);
                                          }
                                          §§goto(addr02e4);
                                       }
                                       §§goto(addr029a);
                                    }
                                    §§goto(addr00fa);
                                 }
                                 §§goto(addr0176);
                              }
                              §§goto(addr02ad);
                           }
                           §§goto(addr029a);
                        }
                        §§goto(addr0326);
                     }
                     §§goto(addr033c);
                  }
                  §§goto(addr0378);
               }
               §§goto(addr0066);
            }
            return _loc5_;
         }
         §§goto(addr003d);
      }
      
      override public function invalidate() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(_notifyPluginsOfEnabled);
            if(!_loc3_)
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!_loc3_)
                     {
                        addr0037:
                        §§pop();
                        if(!_loc3_)
                        {
                           addr0042:
                           if(Boolean(this.cachedPT1))
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 onPluginEvent("onDisable",this);
                                 if(!_loc3_)
                                 {
                                    addr006f:
                                    this.cachedPT1 = null;
                                    if(_loc2_)
                                    {
                                       addr0079:
                                       _overwrittenProps = null;
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§push(§§findproperty(_hasUpdate));
                                          §§push(this);
                                          §§push(this);
                                          var _loc1_:*;
                                          _notifyPluginsOfEnabled = _loc1_ = false;
                                          §§push(_loc1_);
                                          if(!_loc3_)
                                          {
                                             _loc1_ = §§pop();
                                             §§push(_loc1_);
                                          }
                                          §§pop().active = §§pop();
                                          §§push(_loc1_);
                                          if(_loc2_ || _loc1_)
                                          {
                                             _loc1_ = §§pop();
                                             §§push(_loc1_);
                                          }
                                          §§pop().initted = §§pop();
                                          §§pop()._hasUpdate = _loc1_;
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr00dd:
                                             this.propTweenLookup = {};
                                          }
                                       }
                                       §§goto(addr00e3);
                                    }
                                 }
                                 §§goto(addr00dd);
                              }
                              §§goto(addr00e3);
                           }
                           §§goto(addr006f);
                        }
                        §§goto(addr0079);
                     }
                  }
               }
               §§goto(addr0042);
            }
            §§goto(addr0037);
         }
         addr00e3:
      }
   }
}

