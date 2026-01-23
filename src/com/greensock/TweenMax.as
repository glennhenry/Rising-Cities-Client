package com.greensock
{
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   
   public class TweenMax extends TweenLite implements IEventDispatcher
   {
      
      private static var _overwriteMode:int;
      
      public static const version:Number = 11.69;
      
      public static var killDelayedCallsTo:Function;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         version = 11.69;
         if(_loc2_ || _loc1_)
         {
            §§push(§§findproperty(_overwriteMode));
            if(_loc2_)
            {
               if(OverwriteManager.enabled)
               {
                  addr003e:
                  §§push(OverwriteManager.mode);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§§pop());
                     if(_loc2_)
                     {
                     }
                  }
                  else
                  {
                     addr0073:
                     §§push(§§pop());
                  }
               }
               else
               {
                  §§push(OverwriteManager.init(2));
                  if(!_loc1_)
                  {
                     §§goto(addr0073);
                  }
               }
               §§pop()._overwriteMode = §§pop();
               if(!(_loc1_ && TweenMax))
               {
                  §§goto(addr0085);
               }
               §§goto(addr00c1);
            }
            §§goto(addr003e);
         }
         §§goto(addr00c1);
      }
      addr0085:
      
      public static var killTweensOf:Function = TweenLite.killTweensOf;
      
      if(!(_loc1_ && _loc1_))
      {
         killDelayedCallsTo = TweenLite.killTweensOf;
         if(_loc2_ || TweenMax)
         {
            addr00c1:
            TweenPlugin.activate([AutoAlphaPlugin,EndArrayPlugin,FramePlugin,RemoveTintPlugin,TintPlugin,VisiblePlugin,VolumePlugin,BevelFilterPlugin,BezierPlugin,BezierThroughPlugin,BlurFilterPlugin,ColorMatrixFilterPlugin,ColorTransformPlugin,DropShadowFilterPlugin,FrameLabelPlugin,GlowFilterPlugin,HexColorsPlugin,RoundPropsPlugin,ShortRotationPlugin,{}]);
         }
      }
      
      protected var _cyclesComplete:int = 0;
      
      protected var _dispatcher:EventDispatcher;
      
      protected var _hasUpdateListener:Boolean;
      
      protected var _easeType:int;
      
      protected var _repeatDelay:Number = 0;
      
      public var yoyo:Boolean;
      
      protected var _easePower:int;
      
      protected var _repeat:int = 0;
      
      public function TweenMax(param1:Object, param2:Number, param3:Object)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            super(param1,param2,param3);
            if(_loc5_)
            {
               if(TweenLite.version < 11.2)
               {
                  if(!(_loc4_ && Boolean(param3)))
                  {
                     throw new Error("TweenMax error! Please update your TweenLite class or try deleting your ASO files. TweenMax requires a more recent version. Download updates at http://www.TweenMax.com.");
                  }
                  §§goto(addr0237);
               }
               else
               {
                  this.yoyo = Boolean(this.vars.yoyo);
                  if(_loc5_ || Boolean(param3))
                  {
                     _repeat = uint(this.vars.repeat);
                     if(_loc5_)
                     {
                        §§push(§§findproperty(_repeatDelay));
                        if(!_loc4_)
                        {
                           if(this.vars.repeatDelay)
                           {
                              addr00a7:
                              §§push(Number(this.vars.repeatDelay));
                              if(_loc4_)
                              {
                              }
                           }
                           else
                           {
                              §§push(0);
                           }
                           §§pop()._repeatDelay = §§pop();
                           if(!(_loc4_ && Boolean(this)))
                           {
                              this.cacheIsDirty = true;
                              if(_loc5_ || Boolean(param1))
                              {
                                 addr00e5:
                                 §§push(Boolean(this.vars.onCompleteListener));
                                 if(!(_loc4_ && Boolean(param3)))
                                 {
                                    var _temp_16:* = §§pop();
                                    §§push(_temp_16);
                                    §§push(_temp_16);
                                    if(_loc5_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc4_ && Boolean(param2)))
                                          {
                                             §§pop();
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                §§push(Boolean(this.vars.onInitListener));
                                                if(_loc5_ || Boolean(param2))
                                                {
                                                   addr013a:
                                                   var _temp_20:* = §§pop();
                                                   §§push(_temp_20);
                                                   §§push(_temp_20);
                                                   if(!_loc4_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            addr014b:
                                                            §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               addr0152:
                                                               §§push(Boolean(this.vars.onUpdateListener));
                                                               if(!_loc4_)
                                                               {
                                                                  addr0160:
                                                                  var _temp_21:* = §§pop();
                                                                  §§push(_temp_21);
                                                                  §§push(_temp_21);
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc5_ || Boolean(this))
                                                                        {
                                                                           §§pop();
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(Boolean(this.vars.onStartListener));
                                                                              if(!(_loc4_ && Boolean(param1)))
                                                                              {
                                                                                 addr01aa:
                                                                                 var _temp_25:* = §§pop();
                                                                                 §§push(_temp_25);
                                                                                 §§push(_temp_25);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!(_loc4_ && Boolean(param3)))
                                                                                       {
                                                                                          addr01c3:
                                                                                          §§pop();
                                                                                          if(_loc5_ || Boolean(param2))
                                                                                          {
                                                                                             §§push(Boolean(this.vars.onRepeatListener));
                                                                                             if(_loc5_ || Boolean(param3))
                                                                                             {
                                                                                                addr01e9:
                                                                                                var _temp_29:* = §§pop();
                                                                                                §§push(_temp_29);
                                                                                                §§push(_temp_29);
                                                                                                if(_loc5_ || Boolean(param3))
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc5_ || Boolean(this))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(Boolean(this.vars.onReverseCompleteListener));
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr0220:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr022a:
                                                                                                                     initDispatcher();
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr0237:
                                                                                                                        §§push(param2 == 0);
                                                                                                                        if(!(_loc4_ && Boolean(param3)))
                                                                                                                        {
                                                                                                                           addr0249:
                                                                                                                           var _temp_4:* = §§pop();
                                                                                                                           §§push(_temp_4);
                                                                                                                           §§push(_temp_4);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr0250:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ && Boolean(param1)))
                                                                                                                                 {
                                                                                                                                    §§goto(addr0262);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02d8);
                                                                                                                              }
                                                                                                                              §§goto(addr027d);
                                                                                                                           }
                                                                                                                           §§goto(addr02d9);
                                                                                                                        }
                                                                                                                        addr0262:
                                                                                                                        §§pop();
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr0269:
                                                                                                                           §§push(_delay == 0);
                                                                                                                           if(!(_loc4_ && Boolean(param2)))
                                                                                                                           {
                                                                                                                              addr027d:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    addr0287:
                                                                                                                                    _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.UPDATE));
                                                                                                                                    if(_loc5_ || Boolean(this))
                                                                                                                                    {
                                                                                                                                       §§goto(addr02a8);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02c9);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02a8);
                                                                                                                              }
                                                                                                                              §§goto(addr02c9);
                                                                                                                           }
                                                                                                                           §§goto(addr030c);
                                                                                                                        }
                                                                                                                        addr02a8:
                                                                                                                        _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.COMPLETE));
                                                                                                                        if(_loc5_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           addr02c9:
                                                                                                                           §§push(Boolean(this.vars.timeScale));
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              addr02d8:
                                                                                                                              var _temp_9:* = §§pop();
                                                                                                                              addr02d9:
                                                                                                                              §§push(_temp_9);
                                                                                                                              if(_temp_9)
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       addr030d:
                                                                                                                                       §§push(this.target is TweenCore);
                                                                                                                                       if(_loc5_ || Boolean(param3))
                                                                                                                                       {
                                                                                                                                          addr030c:
                                                                                                                                          §§push(!§§pop());
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && Boolean(param2)))
                                                                                                                                          {
                                                                                                                                             addr031f:
                                                                                                                                             this.cachedTimeScale = this.vars.timeScale;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr032b);
                                                                                                                                 }
                                                                                                                                 §§goto(addr030c);
                                                                                                                              }
                                                                                                                              §§goto(addr030d);
                                                                                                                           }
                                                                                                                           §§goto(addr030c);
                                                                                                                        }
                                                                                                                        §§goto(addr032b);
                                                                                                                     }
                                                                                                                     §§goto(addr0287);
                                                                                                                  }
                                                                                                                  addr032b:
                                                                                                                  return;
                                                                                                               }
                                                                                                               §§goto(addr02c9);
                                                                                                            }
                                                                                                            §§goto(addr0249);
                                                                                                         }
                                                                                                         §§goto(addr02c9);
                                                                                                      }
                                                                                                      §§goto(addr0249);
                                                                                                   }
                                                                                                   §§goto(addr0220);
                                                                                                }
                                                                                                §§goto(addr02d9);
                                                                                             }
                                                                                             §§goto(addr0220);
                                                                                          }
                                                                                          §§goto(addr0269);
                                                                                       }
                                                                                       §§goto(addr0220);
                                                                                    }
                                                                                    §§goto(addr01e9);
                                                                                 }
                                                                                 §§goto(addr0250);
                                                                              }
                                                                              §§goto(addr027d);
                                                                           }
                                                                           §§goto(addr031f);
                                                                        }
                                                                     }
                                                                     §§goto(addr01aa);
                                                                  }
                                                                  §§goto(addr0250);
                                                               }
                                                               §§goto(addr0262);
                                                            }
                                                            §§goto(addr0237);
                                                         }
                                                         §§goto(addr027d);
                                                      }
                                                      §§goto(addr0160);
                                                   }
                                                   §§goto(addr02d9);
                                                }
                                                §§goto(addr014b);
                                             }
                                             §§goto(addr031f);
                                          }
                                          §§goto(addr0160);
                                       }
                                       §§goto(addr013a);
                                    }
                                    §§goto(addr0250);
                                 }
                                 §§goto(addr01c3);
                              }
                              §§goto(addr0237);
                           }
                           §§goto(addr031f);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr0237);
                  }
                  §§goto(addr00e5);
               }
               §§goto(addr0269);
            }
            §§goto(addr0152);
         }
         §§goto(addr022a);
      }
      
      public static function set globalTimeScale(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            §§push(param1);
            if(_loc6_)
            {
               if(§§pop() == 0)
               {
                  if(!_loc5_)
                  {
                     §§push(0.0001);
                     if(_loc6_)
                     {
                        addr0035:
                        §§push(§§pop());
                     }
                     param1 = §§pop();
                     if(_loc6_ || Boolean(param1))
                     {
                        §§goto(addr0045);
                     }
                  }
                  §§goto(addr0056);
               }
               addr0045:
               if(TweenLite.rootTimeline == null)
               {
                  if(_loc6_)
                  {
                     addr0056:
                     TweenLite.to({},0,{});
                  }
               }
               §§goto(addr0063);
            }
            §§goto(addr0035);
         }
         addr0063:
         var _loc2_:SimpleTimeline = TweenLite.rootTimeline;
         §§push(getTimer() * 0.001);
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(_loc2_);
            §§push(_loc3_);
            if(_loc6_ || _loc3_)
            {
               §§push(_loc3_);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() - _loc2_.cachedStartTime);
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr00d1);
                  }
                  §§goto(addr00cf);
               }
               addr00d1:
               §§goto(addr00d2);
            }
            addr00d2:
            §§push(§§pop() * _loc2_.cachedTimeScale);
            if(_loc6_)
            {
               addr00cf:
               §§push(§§pop() / param1);
            }
            §§pop().cachedStartTime = §§pop() - §§pop();
            §§goto(addr00d5);
         }
         addr00d5:
         _loc2_ = TweenLite.rootFramesTimeline;
         if(!(_loc5_ && Boolean(param1)))
         {
            _loc3_ = TweenLite.rootFrame;
            if(_loc6_)
            {
               §§push(_loc2_);
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§push(_loc3_);
                  if(_loc6_ || TweenMax)
                  {
                     §§push(§§pop() - _loc2_.cachedStartTime);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        §§goto(addr0148);
                     }
                     §§goto(addr0146);
                  }
                  addr0148:
                  §§goto(addr0149);
               }
               addr0149:
               §§push(§§pop() * _loc2_.cachedTimeScale);
               if(_loc6_ || Boolean(_loc3_))
               {
                  addr0146:
                  §§push(§§pop() / param1);
               }
               §§pop().cachedStartTime = §§pop() - §§pop();
               if(_loc6_ || TweenMax)
               {
                  TweenLite.rootFramesTimeline.cachedTimeScale = TweenLite.rootTimeline.cachedTimeScale = param1;
               }
               §§goto(addr0174);
            }
         }
         addr0174:
      }
      
      public static function fromTo(param1:Object, param2:Number, param3:Object, param4:Object) : TweenMax
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!_loc5_)
         {
            if(param4.isGSVars)
            {
               if(_loc6_)
               {
                  param4 = param4.vars;
                  addr0040:
                  if(param3.isGSVars)
                  {
                     if(_loc6_)
                     {
                        addr005c:
                        param3 = param3.vars;
                        addr0063:
                        param4.startAt = param3;
                        if(!_loc5_)
                        {
                           §§goto(addr006f);
                        }
                        §§goto(addr007d);
                     }
                     addr006f:
                     if(param3.immediateRender)
                     {
                        if(_loc6_)
                        {
                           addr007d:
                           param4.immediateRender = true;
                        }
                     }
                     return new TweenMax(param1,param2,param4);
                  }
                  §§goto(addr0063);
               }
               §§goto(addr005c);
            }
            §§goto(addr0040);
         }
         §§goto(addr007d);
      }
      
      public static function allFromTo(param1:Array, param2:Number, param3:Object, param4:Object, param5:Number = 0, param6:Function = null, param7:Array = null) : Array
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         if(!_loc8_)
         {
            if(param4.isGSVars)
            {
               if(_loc9_ || Boolean(param3))
               {
                  param4 = param4.vars;
                  addr003a:
                  if(param3.isGSVars)
                  {
                     if(!(_loc8_ && TweenMax))
                     {
                        param3 = param3.vars;
                        §§goto(addr0063);
                     }
                     §§goto(addr009a);
                  }
                  addr0063:
                  param4.startAt = param3;
                  if(_loc9_ || Boolean(param3))
                  {
                     addr0084:
                     if(param3.immediateRender)
                     {
                        if(!(_loc8_ && Boolean(param3)))
                        {
                           addr009a:
                           param4.immediateRender = true;
                        }
                     }
                  }
                  §§goto(addr00a0);
               }
               addr00a0:
               return allTo(param1,param2,param4,param5,param6,param7);
            }
            §§goto(addr003a);
         }
         §§goto(addr0084);
      }
      
      public static function pauseAll(param1:Boolean = true, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || param1)
         {
            changePause(true,param1,param2);
         }
      }
      
      public static function getTweensOf(param1:Object) : Array
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc2_:Array = masterList[param1];
         var _loc3_:Array = [];
         if(_loc7_)
         {
            if(_loc2_)
            {
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  addr0045:
                  §§push(int(_loc2_.length));
                  if(!(_loc8_ && TweenMax))
                  {
                     _loc4_ = §§pop();
                     if(_loc7_ || Boolean(param1))
                     {
                        addr0075:
                        _loc5_ = 0;
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        if(_loc7_ || Boolean(param1))
                        {
                           §§push(§§pop() - 1);
                           if(_loc7_ || TweenMax)
                           {
                              addr00de:
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              §§push(_temp_6);
                              if(_loc7_ || Boolean(param1))
                              {
                                 §§push(§§pop());
                                 if(_loc7_)
                                 {
                                    addr00f4:
                                    _loc4_ = §§pop();
                                    addr00f6:
                                    §§push(-1);
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    break;
                                 }
                                 if(!TweenLite(_loc2_[_loc4_]).gc)
                                 {
                                    if(!_loc8_)
                                    {
                                       var _loc6_:*;
                                       _loc3_[_loc6_ = _loc5_++] = _loc2_[_loc4_];
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr00f4);
                           }
                           §§goto(addr00f6);
                        }
                        §§goto(addr00de);
                     }
                     addr00fc:
                     return _loc3_;
                     addr00b1:
                  }
                  §§goto(addr0075);
               }
               §§goto(addr00b1);
            }
            §§goto(addr00fc);
         }
         §§goto(addr0045);
      }
      
      public static function get globalTimeScale() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(TweenLite.rootTimeline == null)
            {
               addr0021:
               §§push(1);
               if(_loc2_)
               {
               }
            }
            else
            {
               return TweenLite.rootTimeline.cachedTimeScale;
            }
            return §§pop();
         }
         §§goto(addr0021);
      }
      
      public static function killChildTweensOf(param1:DisplayObjectContainer, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:Object = null;
         var _loc5_:DisplayObjectContainer = null;
         var _loc3_:Array = getAllTweens();
         var _loc6_:* = int(_loc3_.length);
         while(true)
         {
            §§push(_loc6_);
            if(_loc7_ || param2)
            {
               §§push(§§pop() - 1);
               if(!(_loc8_ && param2))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        addr0102:
                        _loc6_ = §§pop();
                        addr0104:
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        break;
                     }
                     _loc4_ = _loc3_[_loc6_].target;
                     if(!(_loc4_ is DisplayObject))
                     {
                        continue;
                     }
                     _loc5_ = _loc4_.parent;
                     if(_loc7_)
                     {
                        while(_loc5_)
                        {
                           if(_loc5_ == param1)
                           {
                              if(_loc7_)
                              {
                                 while(true)
                                 {
                                    if(param2)
                                    {
                                       if(_loc8_ && TweenMax)
                                       {
                                          break;
                                       }
                                       _loc3_[_loc6_].complete(false);
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       _loc3_[_loc6_].setEnabled(false,false);
                                       if(!(_loc7_ || param2))
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 addr006a:
                              }
                              break;
                           }
                           while(true)
                           {
                              _loc5_ = _loc5_.parent;
                              break;
                           }
                        }
                        continue;
                     }
                     §§goto(addr006a);
                  }
                  §§goto(addr0102);
               }
            }
            §§goto(addr0104);
         }
      }
      
      public static function delayedCall(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : TweenMax
      {
         return new TweenMax(param2,0,{
            "delay":param1,
            "onComplete":param2,
            "onCompleteParams":param3,
            "immediateRender":false,
            "useFrames":param4,
            "overwrite":0
         });
      }
      
      public static function isTweening(param1:Object) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:TweenLite = null;
         var _loc2_:Array = getTweensOf(param1);
         var _loc3_:* = int(_loc2_.length);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || Boolean(param1))
            {
               §§push(§§pop() - 1);
               if(_loc5_ || TweenMax)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        _loc3_ = §§pop();
                        addr0109:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     return false;
                  }
                  _loc4_ = _loc2_[_loc3_];
                  §§push(_loc4_.active);
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     §§push(_temp_6);
                     if(!_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc5_ || Boolean(_loc3_)))
                           {
                              break;
                           }
                           §§pop();
                           if(_loc6_)
                           {
                              continue;
                           }
                           §§push(_loc4_.cachedStartTime == _loc4_.timeline.cachedTime);
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              addr0093:
                              var _temp_9:* = §§pop();
                              addr0094:
                              §§push(_temp_9);
                              if(_temp_9)
                              {
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    §§pop();
                                    if(!_loc6_)
                                    {
                                       §§push(_loc4_.timeline.active);
                                       if(_loc6_ && Boolean(param1))
                                       {
                                          break;
                                       }
                                       addr00c4:
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(true);
                                 }
                                 break;
                              }
                           }
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0093);
               }
            }
            §§goto(addr0109);
         }
         return §§pop();
      }
      
      public static function killAll(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:* = false;
         var _loc4_:Array = getAllTweens();
         var _loc6_:* = int(_loc4_.length);
         while(true)
         {
            §§push(_loc6_);
            if(!_loc7_)
            {
               §§push(§§pop() - 1);
               if(!(_loc7_ && param3))
               {
                  addr0146:
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     if(_loc8_ || param1)
                     {
                        _loc6_ = §§pop();
                        addr015e:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  §§push(_loc4_[_loc6_].target == _loc4_[_loc6_].vars.onComplete);
                  if(!_loc7_)
                  {
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     §§push(_temp_6);
                     if(_loc8_)
                     {
                        _loc5_ = §§pop();
                        if(!_loc7_)
                        {
                           §§push(param3);
                           if(!_loc7_)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc8_)
                              {
                                 var _temp_7:* = §§pop();
                                 §§push(_temp_7);
                                 §§push(_temp_7);
                                 if(_loc8_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc8_ || param1)
                                       {
                                          addr0084:
                                          §§pop();
                                          if(!(_loc7_ && param3))
                                          {
                                             §§push(_loc5_);
                                             if(!(_loc7_ && param3))
                                             {
                                                addr00b3:
                                                §§push(§§pop() == param2);
                                                if(_loc8_ || param2)
                                                {
                                                   addr00c2:
                                                   §§push(!§§pop());
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      addr00d1:
                                                      if(!§§pop())
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      addr00db:
                                                      §§push(param1);
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   if(!(_loc8_ || TweenMax))
                                                   {
                                                      break;
                                                   }
                                                   _loc4_[_loc6_].complete(false);
                                                   if(!(_loc8_ || param1))
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc4_[_loc6_].setEnabled(false,false);
                                                   if(_loc7_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr00d1);
                                          }
                                          §§goto(addr00db);
                                       }
                                    }
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr00b3);
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr015e);
            }
            §§goto(addr0146);
         }
      }
      
      private static function changePause(param1:Boolean, param2:Boolean = true, param3:Boolean = false) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:* = false;
         var _loc4_:Array = getAllTweens();
         var _loc6_:* = int(_loc4_.length);
         while(true)
         {
            §§push(_loc6_);
            if(!(_loc8_ && TweenMax))
            {
               §§push(§§pop() - 1);
               if(!(_loc8_ && param3))
               {
                  addr0128:
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(!(_loc8_ && param3))
                  {
                     §§push(§§pop());
                     if(!(_loc8_ && param1))
                     {
                        addr0146:
                        _loc6_ = §§pop();
                        addr0148:
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        break;
                     }
                     §§push(TweenLite(_loc4_[_loc6_]).target == TweenLite(_loc4_[_loc6_]).vars.onComplete);
                     if(_loc7_ || param2)
                     {
                        var _temp_8:* = §§pop();
                        §§push(_temp_8);
                        §§push(_temp_8);
                        if(!_loc8_)
                        {
                           _loc5_ = §§pop();
                           if(!(_loc8_ && param2))
                           {
                              addr0078:
                              §§push(param3);
                              if(_loc7_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc8_)
                                 {
                                    addr0086:
                                    var _temp_10:* = §§pop();
                                    §§push(_temp_10);
                                    §§push(_temp_10);
                                    if(!_loc8_)
                                    {
                                       addr008d:
                                       if(!§§pop())
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             §§pop();
                                             if(_loc8_)
                                             {
                                                continue;
                                             }
                                             §§push(_loc5_);
                                             if(!(_loc8_ && param2))
                                             {
                                                addr00cb:
                                                addr00c3:
                                                §§push(§§pop() == param2);
                                                if(_loc7_)
                                                {
                                                   addr00ca:
                                                   §§push(!§§pop());
                                                }
                                                if(§§pop())
                                                {
                                                   if(_loc8_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   TweenCore(_loc4_[_loc6_]).paused = param1;
                                                   if(!(_loc7_ || param2))
                                                   {
                                                      break;
                                                   }
                                                }
                                                continue;
                                             }
                                          }
                                          §§goto(addr00ca);
                                       }
                                       §§goto(addr00cb);
                                    }
                                    §§goto(addr00c3);
                                 }
                                 §§goto(addr00cb);
                              }
                              §§goto(addr00c3);
                           }
                           §§goto(addr0086);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0146);
               }
               §§goto(addr0148);
            }
            §§goto(addr0128);
         }
      }
      
      public static function from(param1:Object, param2:Number, param3:Object) : TweenMax
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            if(param3.isGSVars)
            {
               if(_loc5_ || Boolean(param1))
               {
                  addr003e:
                  param3 = param3.vars;
                  param3.runBackwards = true;
                  addr0045:
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(!("immediateRender" in param3))
                     {
                        if(_loc5_)
                        {
                           addr0075:
                           param3.immediateRender = true;
                        }
                     }
                     return new TweenMax(param1,param2,param3);
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0045);
         }
         §§goto(addr003e);
      }
      
      public static function allFrom(param1:Array, param2:Number, param3:Object, param4:Number = 0, param5:Function = null, param6:Array = null) : Array
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(_loc8_)
         {
            if(param3.isGSVars)
            {
               if(!_loc7_)
               {
                  param3 = param3.vars;
                  addr0049:
                  param3.runBackwards = true;
                  if(_loc8_)
                  {
                     if(!("immediateRender" in param3))
                     {
                        if(_loc8_)
                        {
                           addr0064:
                           param3.immediateRender = true;
                        }
                     }
                     §§goto(addr0069);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0069);
            }
            §§goto(addr0049);
         }
         addr0069:
         return allTo(param1,param2,param3,param4,param5,param6);
      }
      
      public static function getAllTweens() : Array
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc1_:Dictionary = masterList;
         var _loc2_:int = 0;
         var _loc3_:Array = [];
         for each(_loc4_ in _loc1_)
         {
            §§push(int(_loc4_.length));
            if(!(_loc10_ && TweenMax))
            {
               _loc5_ = §§pop();
               if(!_loc10_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc9_ || Boolean(_loc3_))
                     {
                        while(true)
                        {
                           §§push(§§pop() - 1);
                           if(!(_loc10_ && Boolean(_loc2_)))
                           {
                              loop4:
                              while(true)
                              {
                                 var _temp_5:* = §§pop();
                                 §§push(_temp_5);
                                 §§push(_temp_5);
                                 if(_loc9_ || Boolean(_loc1_))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc10_ && Boolean(_loc3_)))
                                    {
                                       _loc5_ = §§pop();
                                       while(true)
                                       {
                                          §§push(-1);
                                       }
                                       addr00f4:
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       break loop4;
                                    }
                                    if(!TweenLite(_loc4_[_loc5_]).gc)
                                    {
                                       if(!(_loc10_ && Boolean(_loc2_)))
                                       {
                                          while(true)
                                          {
                                             var _loc8_:*;
                                             _loc3_[_loc8_ = _loc2_++] = _loc4_[_loc5_];
                                             if(_loc10_)
                                             {
                                                break loop4;
                                             }
                                             continue loop1;
                                          }
                                          break loop4;
                                          addr008d:
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              break loop1;
                              addr00c6:
                           }
                           §§goto(addr00f4);
                        }
                        addr00b7:
                     }
                     §§goto(addr00c6);
                  }
                  continue;
               }
               §§goto(addr008d);
            }
            §§goto(addr00b7);
         }
         return _loc3_;
      }
      
      public static function resumeAll(param1:Boolean = true, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            changePause(false,param1,param2);
         }
      }
      
      public static function to(param1:Object, param2:Number, param3:Object) : TweenMax
      {
         return new TweenMax(param1,param2,param3);
      }
      
      public static function allTo(param1:Array, param2:Number, param3:Object, param4:Number = 0, param5:Function = null, param6:Array = null) : Array
      {
         var targets:Array;
         var onCompleteAll:Function;
         var duration:Number;
         var onCompleteProxy:Function;
         var lastIndex:int;
         var a:Array;
         var curDelay:Number;
         var i:int;
         var vars:Object;
         var stagger:Number;
         var onCompleteAllParams:Array;
         var p:String;
         var varsDup:Object;
         var onCompleteParamsProxy:Array;
         var l:int;
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc11_ && Boolean(param1)))
         {
            §§push(0);
            if(!(_loc11_ && Boolean(param3)))
            {
               §§pop().§§slot[7] = §§pop();
               if(!_loc11_)
               {
                  §§push(§§newactivation());
                  if(!(_loc11_ && TweenMax))
                  {
                     §§push(null);
                     if(!_loc11_)
                     {
                        §§pop().§§slot[8] = §§pop();
                        if(!(_loc11_ && Boolean(param2)))
                        {
                           §§push(§§newactivation());
                           if(_loc10_)
                           {
                              §§push(null);
                              if(_loc10_)
                              {
                                 addr0079:
                                 §§pop().§§slot[9] = §§pop();
                                 if(!(_loc11_ && TweenMax))
                                 {
                                    §§push(§§newactivation());
                                    if(!(_loc11_ && Boolean(param2)))
                                    {
                                       §§push(null);
                                       if(!_loc11_)
                                       {
                                          addr00a1:
                                          §§pop().§§slot[13] = §§pop();
                                          if(_loc10_)
                                          {
                                             addr00ab:
                                             §§push(§§newactivation());
                                             if(!_loc11_)
                                             {
                                                addr00b4:
                                                §§pop().§§slot[14] = null;
                                                addr00b3:
                                                if(_loc10_)
                                                {
                                                   addr00be:
                                                   §§push(§§newactivation());
                                                   if(!(_loc11_ && Boolean(param2)))
                                                   {
                                                      addr00ce:
                                                      §§push(param1);
                                                      if(!_loc11_)
                                                      {
                                                         §§pop().§§slot[1] = §§pop();
                                                         if(_loc10_ || Boolean(param1))
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!_loc11_)
                                                            {
                                                               §§push(param2);
                                                               if(!(_loc11_ && Boolean(param2)))
                                                               {
                                                                  §§pop().§§slot[2] = §§pop();
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr0104:
                                                                     §§push(§§newactivation());
                                                                     if(!(_loc11_ && Boolean(param2)))
                                                                     {
                                                                        §§pop().§§slot[3] = param3;
                                                                        if(_loc10_ || Boolean(param2))
                                                                        {
                                                                           addr0125:
                                                                           §§push(§§newactivation());
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(param4);
                                                                              if(!(_loc11_ && Boolean(param3)))
                                                                              {
                                                                                 §§pop().§§slot[4] = §§pop();
                                                                                 if(!(_loc11_ && Boolean(param2)))
                                                                                 {
                                                                                    addr014d:
                                                                                    §§push(§§newactivation());
                                                                                    if(!(_loc11_ && Boolean(param2)))
                                                                                    {
                                                                                       addr015d:
                                                                                       §§pop().§§slot[5] = param5;
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc10_ || TweenMax)
                                                                                          {
                                                                                             §§push(param6);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr017f:
                                                                                                §§pop().§§slot[6] = §§pop();
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc11_ && Boolean(param3)))
                                                                                                   {
                                                                                                      §§push(§§newactivation());
                                                                                                      if(!(_loc11_ && Boolean(param1)))
                                                                                                      {
                                                                                                         addr01a9:
                                                                                                         §§push(int(§§pop().§§slot[1].length));
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§pop().§§slot[10] = §§pop();
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               addr01ba:
                                                                                                               §§push(§§newactivation());
                                                                                                               if(!(_loc11_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  addr01ca:
                                                                                                                  §§pop().§§slot[11] = [];
                                                                                                                  if(_loc10_ || Boolean(param2))
                                                                                                                  {
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        addr01e6:
                                                                                                                        if(§§pop().§§slot[3].isGSVars)
                                                                                                                        {
                                                                                                                           if(_loc10_ || Boolean(param3))
                                                                                                                           {
                                                                                                                              §§push(§§newactivation());
                                                                                                                              if(_loc10_ || Boolean(param1))
                                                                                                                              {
                                                                                                                                 addr020d:
                                                                                                                                 §§push(§§newactivation());
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    addr0215:
                                                                                                                                    §§pop().§§slot[3] = §§pop().§§slot[3].vars;
                                                                                                                                    if(!_loc11_)
                                                                                                                                    {
                                                                                                                                       addr0224:
                                                                                                                                       §§push(§§newactivation());
                                                                                                                                       if(_loc10_ || TweenMax)
                                                                                                                                       {
                                                                                                                                          if("delay" in vars)
                                                                                                                                          {
                                                                                                                                             if(!(_loc11_ && Boolean(param1)))
                                                                                                                                             {
                                                                                                                                                §§push(Number(vars.delay));
                                                                                                                                                if(!(_loc11_ && Boolean(param2)))
                                                                                                                                                {
                                                                                                                                                   addr027d:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr0284:
                                                                                                                                                      §§pop().§§slot[12] = §§pop();
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         addr028c:
                                                                                                                                                         §§push(§§newactivation());
                                                                                                                                                         if(!(_loc11_ && Boolean(param3)))
                                                                                                                                                         {
                                                                                                                                                            addr02a9:
                                                                                                                                                            §§push(§§newactivation());
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               addr02b1:
                                                                                                                                                               §§pop().§§slot[13] = §§pop().§§slot[3].onComplete;
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  addr02c0:
                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     addr02c8:
                                                                                                                                                                     §§push(§§newactivation());
                                                                                                                                                                     if(!_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().§§slot[14] = §§pop().§§slot[3].onCompleteParams;
                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           addr02e0:
                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                           if(!_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              addr02ea:
                                                                                                                                                                              addr02e8:
                                                                                                                                                                              §§push(l);
                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr02f3:
                                                                                                                                                                                 addr02f2:
                                                                                                                                                                                 §§push(int(§§pop() - 1));
                                                                                                                                                                                 if(!(_loc11_ && TweenMax))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0302:
                                                                                                                                                                                    §§pop().§§slot[15] = §§pop();
                                                                                                                                                                                    if(!_loc11_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr030e:
                                                                                                                                                                                       i = 0;
                                                                                                                                                                                       addr030c:
                                                                                                                                                                                       addr030a:
                                                                                                                                                                                    }
                                                                                                                                                                                    loop0:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                       if(!_loc11_)
                                                                                                                                                                                       {
                                                                                                                                                                                          loop1:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().§§slot[7]);
                                                                                                                                                                                             loop2:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                                                                loop3:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().§§slot[10]);
                                                                                                                                                                                                   while(§§pop() < §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§newactivation());
                                                                                                                                                                                                      if(!(_loc11_ && TweenMax))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().§§slot[8] = {};
                                                                                                                                                                                                         if(_loc10_ || TweenMax)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop2;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            var _loc8_:* = §§pop();
                                                                                                                                                                                                            if(!(_loc11_ && TweenMax))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               var _loc9_:* = vars;
                                                                                                                                                                                                               if(_loc11_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(§§hasnext(_loc9_,_loc8_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                                  if(!(_loc11_ && Boolean(param2)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().§§slot[9] = §§nextname(_loc8_,_loc9_);
                                                                                                                                                                                                                     if(_loc11_ && Boolean(param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§newactivation());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().§§slot[8][p] = vars[p];
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc11_ && TweenMax))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                               if(_loc11_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop0;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§§slot[8].delay = curDelay;
                                                                                                                                                                                                               if(!_loc11_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                                  if(_loc11_ && Boolean(param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop0;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop().§§slot[7]);
                                                                                                                                                                                                                  if(!(_loc10_ || Boolean(param2)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop2;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§newactivation());
                                                                                                                                                                                                                  if(!(_loc10_ || Boolean(param2)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop3;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop().§§slot[15]);
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     var _temp_58:* = §§pop();
                                                                                                                                                                                                                     §§push(_temp_58);
                                                                                                                                                                                                                     if(_temp_58)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           if(_loc11_ && Boolean(param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop0;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§newactivation());
                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr043c:
                                                                                                                                                                                                                              §§push(§§pop().§§slot[5] == null);
                                                                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr043b:
                                                                                                                                                                                                                                 §§push(!§§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc11_ && Boolean(param1)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§newactivation());
                                                                                                                                                                                                                                    if(_loc10_ || Boolean(param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr045e:
                                                                                                                                                                                                                                       §§pop().§§slot[8].onComplete = function():void
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(onCompleteProxy != null)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             onCompleteProxy.apply(null,onCompleteParamsProxy);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          onCompleteAll.apply(null,onCompleteAllParams);
                                                                                                                                                                                                                                       };
                                                                                                                                                                                                                                       if(!(_loc10_ || Boolean(param2)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr0474:
                                                                                                                                                                                                                                       §§push(§§newactivation());
                                                                                                                                                                                                                                       if(_loc10_ || Boolean(param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().§§slot[11]);
                                                                                                                                                                                                                                          if(_loc10_ || Boolean(param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop()[i] = new TweenMax(targets[i],duration,varsDup);
                                                                                                                                                                                                                                             if(_loc10_ || TweenMax)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr04bf:
                                                                                                                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                                                                                                                if(_loc11_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop1;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§newactivation());
                                                                                                                                                                                                                                                if(!(_loc11_ && Boolean(param1)))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop().§§slot[12]);
                                                                                                                                                                                                                                                   if(!(_loc11_ && Boolean(param2)))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + stagger);
                                                                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         if(!(_loc11_ && Boolean(param3)))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr0501:
                                                                                                                                                                                                                                                            §§pop().§§slot[12] = §§pop();
                                                                                                                                                                                                                                                            if(!_loc11_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr0509:
                                                                                                                                                                                                                                                               §§push(§§newactivation());
                                                                                                                                                                                                                                                               if(_loc11_ && Boolean(param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break loop0;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr0527:
                                                                                                                                                                                                                                                               addr0519:
                                                                                                                                                                                                                                                               §§push(i);
                                                                                                                                                                                                                                                               if(_loc10_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr0532:
                                                                                                                                                                                                                                                                  §§push(int(§§pop() + 1));
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§pop().§§slot[7] = §§pop();
                                                                                                                                                                                                                                                               if(_loc11_ && TweenMax)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0532);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr0501);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0532);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr0527);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0509);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr0559);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0519);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0509);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0474);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0519);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr043c);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr043b);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0509);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr04bf);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr045e);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§newactivation());
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr0559:
                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                    §§push(§§pop().§§slot[11]);
                                                                                                                                                                                    addr0543:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr030e);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr030c);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0543);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr02ea);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr030c);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr02e0);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr02ea);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr02c8);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02e0);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr02f3);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02e8);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr027d);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0284);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr0302);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02a9);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02c0);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02b1);
                                                                                                                              }
                                                                                                                              §§goto(addr030c);
                                                                                                                           }
                                                                                                                           §§goto(addr028c);
                                                                                                                        }
                                                                                                                        §§goto(addr0224);
                                                                                                                     }
                                                                                                                     §§goto(addr02a9);
                                                                                                                  }
                                                                                                                  §§goto(addr030a);
                                                                                                               }
                                                                                                               §§goto(addr01e6);
                                                                                                            }
                                                                                                            §§goto(addr0543);
                                                                                                         }
                                                                                                         §§goto(addr02f2);
                                                                                                      }
                                                                                                      §§goto(addr0215);
                                                                                                   }
                                                                                                   §§goto(addr01ca);
                                                                                                }
                                                                                                §§goto(addr01ba);
                                                                                             }
                                                                                             §§goto(addr01a9);
                                                                                          }
                                                                                          §§goto(addr020d);
                                                                                       }
                                                                                       §§goto(addr02c0);
                                                                                    }
                                                                                    §§goto(addr020d);
                                                                                 }
                                                                                 §§goto(addr0543);
                                                                              }
                                                                              §§goto(addr02f3);
                                                                           }
                                                                           §§goto(addr01e6);
                                                                        }
                                                                        §§goto(addr0543);
                                                                     }
                                                                     §§goto(addr01ca);
                                                                  }
                                                                  §§goto(addr014d);
                                                               }
                                                               §§goto(addr02f3);
                                                            }
                                                            §§goto(addr015d);
                                                         }
                                                         §§goto(addr0125);
                                                      }
                                                      §§goto(addr017f);
                                                   }
                                                   §§goto(addr02c8);
                                                }
                                                §§goto(addr01ba);
                                             }
                                             §§goto(addr01ca);
                                          }
                                          §§goto(addr00be);
                                       }
                                       §§goto(addr00b4);
                                    }
                                    §§goto(addr01e6);
                                 }
                                 §§goto(addr00ab);
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr01ca);
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr0104);
            }
            §§goto(addr02f2);
         }
         §§goto(addr00b3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(_dispatcher == null)
            {
               addr0021:
               §§push(false);
               if(_loc2_ || Boolean(this))
               {
               }
            }
            else
            {
               return _dispatcher.dispatchEvent(param1);
            }
            return §§pop();
         }
         §§goto(addr0021);
      }
      
      public function set timeScale(param1:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() == 0)
               {
                  if(_loc3_)
                  {
                     §§push(0.0001);
                     if(!_loc4_)
                     {
                        addr0031:
                        §§push(§§pop());
                        if(_loc3_ || _loc2_)
                        {
                           addr003f:
                           param1 = §§pop();
                           if(!(_loc4_ && _loc3_))
                           {
                              addr004e:
                              §§push(Boolean(this.cachedPauseTime));
                              if(_loc3_ || _loc2_)
                              {
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 if(!_temp_4)
                                 {
                                    if(_loc3_)
                                    {
                                       §§pop();
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr008b:
                                          addr0084:
                                          if(this.cachedPauseTime == 0)
                                          {
                                             addr008f:
                                             §§push(this.cachedPauseTime);
                                             if(!_loc4_)
                                             {
                                                addr00b4:
                                                §§push(§§pop());
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.timeline.cachedTotalTime);
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                §§goto(addr00b4);
                                             }
                                          }
                                          addr00b5:
                                          var _loc2_:* = §§pop();
                                          if(_loc3_)
                                          {
                                             §§push(this);
                                             §§push(_loc2_);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(_loc2_);
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() - this.cachedStartTime);
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr00f7);
                                                   }
                                                }
                                                §§goto(addr00f4);
                                             }
                                             addr00f7:
                                             §§push(§§pop() * this.cachedTimeScale);
                                             if(!_loc4_)
                                             {
                                                addr00f4:
                                                §§push(§§pop() / param1);
                                             }
                                             §§pop().cachedStartTime = §§pop() - §§pop();
                                             if(_loc3_ || Boolean(this))
                                             {
                                                this.cachedTimeScale = param1;
                                                if(_loc3_)
                                                {
                                                   addr0111:
                                                   setDirtyCache(false);
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr0111);
                                       }
                                       §§goto(addr008f);
                                    }
                                 }
                              }
                              §§goto(addr008b);
                           }
                           §§goto(addr0084);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr003f);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr004e);
            }
            §§goto(addr0031);
         }
         §§goto(addr0084);
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1957
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      override public function set totalDuration(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(_repeat == -1)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               addr0040:
               §§push(this);
               §§push(param1);
               if(_loc3_)
               {
                  §§push(_repeat);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(§§pop() * _repeatDelay);
                     if(_loc3_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0081:
                           addr007e:
                           addr007b:
                           §§push(§§pop() / (_repeat + 1));
                        }
                        §§pop().duration = §§pop();
                        §§goto(addr0085);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr007b);
            }
            addr0085:
            return;
         }
         §§goto(addr0040);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_ || Boolean(param1))
         {
            if(_dispatcher == null)
            {
               if(!_loc6_)
               {
                  initDispatcher();
                  if(!_loc6_)
                  {
                     addr0058:
                     if(param1 == TweenEvent.UPDATE)
                     {
                        if(_loc7_ || param3)
                        {
                           addr0071:
                           _hasUpdateListener = true;
                           if(_loc7_)
                           {
                              addr007e:
                              _dispatcher.addEventListener(param1,param2,param3,param4,param5);
                           }
                        }
                        return;
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr0071);
            }
         }
         §§goto(addr0058);
      }
      
      override protected function init() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TweenMax = null;
         if(_loc3_)
         {
            if(this.vars.startAt)
            {
               if(_loc3_)
               {
                  this.vars.startAt.overwrite = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     this.vars.startAt.immediateRender = true;
                     if(_loc3_)
                     {
                        _loc1_ = new TweenMax(this.target,0,this.vars.startAt);
                        addr0076:
                        if(_dispatcher)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.INIT));
                              if(_loc3_)
                              {
                                 §§goto(addr00a2);
                              }
                           }
                           §§goto(addr00ac);
                        }
                        addr00a2:
                        super.init();
                        if(!_loc2_)
                        {
                           addr00ac:
                           if(_ease in fastEaseLookup)
                           {
                              if(!_loc2_)
                              {
                                 addr00c9:
                                 _easeType = fastEaseLookup[_ease][0];
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00ea:
                                    _easePower = fastEaseLookup[_ease][1];
                                 }
                              }
                           }
                        }
                        return;
                        addr0055:
                     }
                     §§goto(addr00c9);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr00ea);
            }
            §§goto(addr0076);
         }
         §§goto(addr0055);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            if(_dispatcher)
            {
               if(_loc5_ || Boolean(param2))
               {
                  addr002e:
                  _dispatcher.removeEventListener(param1,param2,param3);
               }
            }
            return;
         }
         §§goto(addr002e);
      }
      
      public function setDestination(param1:String, param2:*, param3:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:Object = {};
         _loc4_[param1] = param2;
         if(!(_loc5_ && param2))
         {
            updateTo(_loc4_,!param3);
         }
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(_dispatcher == null)
            {
               addr0026:
               §§push(false);
               if(_loc3_)
               {
               }
            }
            else
            {
               return _dispatcher.willTrigger(param1);
            }
            return §§pop();
         }
         §§goto(addr0026);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(_dispatcher == null)
            {
               addr0020:
               §§push(false);
               if(_loc2_)
               {
               }
            }
            else
            {
               return _dispatcher.hasEventListener(param1);
            }
            return §§pop();
         }
         §§goto(addr0020);
      }
      
      protected function initDispatcher() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(_dispatcher == null)
            {
               if(!_loc2_)
               {
                  _dispatcher = new EventDispatcher(this);
                  if(!_loc2_)
                  {
                     addr003b:
                     §§push(this.vars.onInitListener is Function);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(_loc1_ || _loc1_)
                           {
                              addr0064:
                              _dispatcher.addEventListener(TweenEvent.INIT,this.vars.onInitListener,false,0,true);
                              if(_loc1_ || _loc2_)
                              {
                                 addr0089:
                                 §§push(this.vars.onStartListener is Function);
                                 if(_loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          _dispatcher.addEventListener(TweenEvent.START,this.vars.onStartListener,false,0,true);
                                          if(_loc1_)
                                          {
                                             addr00bd:
                                             §§push(this.vars.onUpdateListener is Function);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      _dispatcher.addEventListener(TweenEvent.UPDATE,this.vars.onUpdateListener,false,0,true);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         _hasUpdateListener = true;
                                                         if(!_loc2_)
                                                         {
                                                            addr011f:
                                                            §§push(this.vars.onCompleteListener is Function);
                                                            if(_loc1_)
                                                            {
                                                               addr012e:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     addr013f:
                                                                     _dispatcher.addEventListener(TweenEvent.COMPLETE,this.vars.onCompleteListener,false,0,true);
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr015b:
                                                                        §§push(this.vars.onRepeatListener is Function);
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr016b:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr0174);
                                                                              }
                                                                           }
                                                                           §§goto(addr01a3);
                                                                        }
                                                                        §§goto(addr01ae);
                                                                     }
                                                                  }
                                                                  addr0174:
                                                                  _dispatcher.addEventListener(TweenEvent.REPEAT,this.vars.onRepeatListener,false,0,true);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     addr01a3:
                                                                     addr01ae:
                                                                     if(this.vars.onReverseCompleteListener is Function)
                                                                     {
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           addr01bf:
                                                                           _dispatcher.addEventListener(TweenEvent.REVERSE_COMPLETE,this.vars.onReverseCompleteListener,false,0,true);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr01d7);
                                                               }
                                                               §§goto(addr015b);
                                                            }
                                                            §§goto(addr016b);
                                                         }
                                                         §§goto(addr01d7);
                                                      }
                                                      §§goto(addr01a3);
                                                   }
                                                   §§goto(addr01d7);
                                                }
                                                §§goto(addr011f);
                                             }
                                             §§goto(addr016b);
                                          }
                                       }
                                       addr01d7:
                                       return;
                                    }
                                    §§goto(addr00bd);
                                 }
                                 §§goto(addr012e);
                              }
                              §§goto(addr0174);
                           }
                           §§goto(addr01bf);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr012e);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr013f);
            }
         }
         §§goto(addr003b);
      }
      
      public function set currentProgress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(_cyclesComplete == 0)
            {
               if(_loc3_)
               {
                  setTotalTime(this.duration * param1,false);
                  addr003d:
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               §§push(§§findproperty(setTotalTime));
               §§push(this.duration * param1);
               if(_loc3_)
               {
                  §§push(§§pop() + _cyclesComplete * this.cachedDuration);
               }
               §§pop().setTotalTime(§§pop(),false);
            }
            return;
         }
         §§goto(addr003d);
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
         if(!_loc3_)
         {
            §§push(§§findproperty(setTotalTime));
            §§push(this.totalDuration);
            if(_loc2_ || Boolean(param1))
            {
               §§push(§§pop() * param1);
            }
            §§pop().setTotalTime(§§pop(),false);
         }
      }
      
      public function updateTo(param1:Object, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc4_:String = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:PropTween = null;
         var _loc8_:* = NaN;
         var _loc3_:Number = this.ratio;
         if(_loc12_)
         {
            §§push(param2);
            if(!_loc11_)
            {
               §§push(§§pop());
               if(!_loc11_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(!_loc11_)
                  {
                     if(§§pop())
                     {
                        if(!_loc11_)
                        {
                           §§pop();
                           if(_loc12_ || Boolean(this))
                           {
                              §§push(this.timeline == null);
                              if(_loc12_)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc11_ && Boolean(this)))
                                 {
                                    addr007d:
                                    var _temp_5:* = §§pop();
                                    addr007e:
                                    §§push(_temp_5);
                                    if(_temp_5)
                                    {
                                       if(_loc12_)
                                       {
                                          addr0088:
                                          §§pop();
                                          if(!(_loc11_ && param2))
                                          {
                                             addr00a3:
                                             if(this.cachedStartTime < this.timeline.cachedTime)
                                             {
                                                if(_loc12_)
                                                {
                                                   this.cachedStartTime = this.timeline.cachedTime;
                                                   if(!(_loc11_ && Boolean(param1)))
                                                   {
                                                      this.setDirtyCache(false);
                                                      if(!_loc11_)
                                                      {
                                                         addr00d2:
                                                         if(this.gc)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               addr00e0:
                                                               this.setEnabled(true,false);
                                                               if(_loc11_ && Boolean(param1))
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.timeline.insert(this,this.cachedStartTime - _delay);
                                                         }
                                                      }
                                                      addr010a:
                                                      for(_loc4_ in param1)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            this.vars[_loc4_] = param1[_loc4_];
                                                         }
                                                      }
                                                      if(!_loc11_)
                                                      {
                                                         if(this.initted)
                                                         {
                                                            if(_loc12_ || Boolean(param1))
                                                            {
                                                               §§push(param2);
                                                               if(!(_loc11_ && Boolean(this)))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc12_ || Boolean(this))
                                                                     {
                                                                        addr017c:
                                                                        this.initted = false;
                                                                        if(_loc11_ && Boolean(param1))
                                                                        {
                                                                           addr027e:
                                                                           this.initted = false;
                                                                           if(!(_loc11_ && Boolean(this)))
                                                                           {
                                                                              addr0291:
                                                                              init();
                                                                              if(_loc12_ || Boolean(param1))
                                                                              {
                                                                                 addr02a6:
                                                                                 §§push(1 / (1 - _loc3_));
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr02b2:
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 _loc6_ = §§pop();
                                                                              }
                                                                           }
                                                                           addr02b5:
                                                                           _loc7_ = this.cachedPT1;
                                                                           if(_loc12_ || param2)
                                                                           {
                                                                              while(_loc7_)
                                                                              {
                                                                                 §§push(_loc7_.start);
                                                                                 if(!(_loc11_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(§§pop() + _loc7_.change);
                                                                                    if(_loc12_ || Boolean(_loc3_))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                    }
                                                                                 }
                                                                                 _loc8_ = §§pop();
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    §§push(_loc7_.change);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       §§push(§§pop() * _loc6_);
                                                                                    }
                                                                                    §§pop().change = §§pop();
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(_loc7_);
                                                                                    §§push(_loc8_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc7_.change);
                                                                                    }
                                                                                    §§pop().start = §§pop();
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr034e:
                                                                              return;
                                                                              addr0348:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = _loc7_.nextNode;
                                                                              §§goto(addr0348);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr024b:
                                                                        this.renderTime(_loc5_,true,false);
                                                                        if(_loc11_ && param2)
                                                                        {
                                                                           §§goto(addr0291);
                                                                        }
                                                                     }
                                                                     §§goto(addr034e);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_notifyPluginsOfEnabled);
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr01a9:
                                                                        var _temp_19:* = §§pop();
                                                                        §§push(_temp_19);
                                                                        if(_temp_19)
                                                                        {
                                                                           if(!(_loc11_ && param2))
                                                                           {
                                                                              §§pop();
                                                                              if(_loc12_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr01d0:
                                                                                 if(Boolean(this.cachedPT1))
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       onPluginEvent("onDisable",this);
                                                                                       if(_loc12_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr01f3:
                                                                                          §§push(this.cachedTime / this.cachedDuration);
                                                                                          if(_loc12_)
                                                                                          {
                                                                                             if(§§pop() > 0.998)
                                                                                             {
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   addr020e:
                                                                                                   §§push(this.cachedTime);
                                                                                                   if(!(_loc11_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr0221:
                                                                                                      _loc5_ = §§pop();
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         this.renderTime(0,true,false);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            addr0238:
                                                                                                            this.initted = false;
                                                                                                            if(_loc12_ || Boolean(this))
                                                                                                            {
                                                                                                               §§goto(addr024b);
                                                                                                            }
                                                                                                            §§goto(addr034e);
                                                                                                         }
                                                                                                         §§goto(addr024b);
                                                                                                      }
                                                                                                      §§goto(addr0238);
                                                                                                   }
                                                                                                   §§goto(addr02b2);
                                                                                                }
                                                                                                §§goto(addr02a6);
                                                                                             }
                                                                                             else if(this.cachedTime > 0)
                                                                                             {
                                                                                                if(!(_loc11_ && Boolean(param1)))
                                                                                                {
                                                                                                   §§goto(addr027e);
                                                                                                }
                                                                                                §§goto(addr0291);
                                                                                             }
                                                                                             §§goto(addr034e);
                                                                                          }
                                                                                          §§goto(addr0221);
                                                                                       }
                                                                                       §§goto(addr020e);
                                                                                    }
                                                                                    §§goto(addr0238);
                                                                                 }
                                                                                 §§goto(addr01f3);
                                                                              }
                                                                              §§goto(addr034e);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr01d0);
                                                                  }
                                                               }
                                                               §§goto(addr01a9);
                                                            }
                                                            §§goto(addr017c);
                                                         }
                                                         §§goto(addr034e);
                                                      }
                                                      §§goto(addr02b5);
                                                   }
                                                   §§goto(addr00d2);
                                                }
                                             }
                                             §§goto(addr010a);
                                          }
                                          §§goto(addr00e0);
                                       }
                                    }
                                    §§goto(addr00a3);
                                 }
                              }
                              §§goto(addr0088);
                           }
                           §§goto(addr010a);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr007e);
               }
            }
            §§goto(addr007d);
         }
         §§goto(addr010a);
      }
      
      public function get currentProgress() : Number
      {
         return this.cachedTime / this.duration;
      }
      
      public function get repeat() : int
      {
         return _repeat;
      }
      
      override public function set currentTime(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(_cyclesComplete);
            if(!(_loc2_ && Boolean(param1)))
            {
               §§push(0);
               if(!_loc2_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_ || Boolean(param1))
                     {
                     }
                     addr0131:
                     setTotalTime(param1,false);
                  }
                  else
                  {
                     §§push(this.yoyo);
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           var _temp_7:* = §§pop();
                           §§push(_temp_7);
                           if(_temp_7)
                           {
                              if(!_loc2_)
                              {
                                 addr0074:
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    addr007f:
                                    addr007d:
                                    §§push(_cyclesComplete % 2);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(1);
                                       if(_loc3_)
                                       {
                                          addr00a0:
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                addr00a9:
                                                §§push(this.duration - param1);
                                                if(_loc3_)
                                                {
                                                   §§push(_cyclesComplete);
                                                   if(!_loc2_)
                                                   {
                                                      addr00bc:
                                                      §§push(§§pop() * (this.cachedDuration + _repeatDelay));
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               addr00e6:
                                                               param1 = §§pop();
                                                               if(_loc3_)
                                                               {
                                                               }
                                                               §§goto(addr0131);
                                                            }
                                                            else
                                                            {
                                                               addr0123:
                                                               param1 = §§pop();
                                                               addr0122:
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  §§goto(addr0131);
                                                               }
                                                            }
                                                            §§goto(addr013a);
                                                         }
                                                         §§goto(addr0122);
                                                      }
                                                      else
                                                      {
                                                         addr0114:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            §§goto(addr0122);
                                                         }
                                                      }
                                                      §§goto(addr0123);
                                                   }
                                                   else
                                                   {
                                                      addr0101:
                                                      §§push(§§pop() * (this.duration + _repeatDelay));
                                                   }
                                                   §§goto(addr0114);
                                                }
                                                §§goto(addr00e6);
                                             }
                                             §§goto(addr0131);
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§goto(addr0101);
                                                §§push(_cyclesComplete);
                                             }
                                          }
                                          §§goto(addr0122);
                                       }
                                       §§goto(addr00bc);
                                    }
                                    §§goto(addr00e6);
                                 }
                                 §§goto(addr0131);
                              }
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0074);
                     }
                     §§goto(addr00a0);
                  }
                  addr013a:
                  return;
               }
               §§goto(addr007f);
            }
            §§goto(addr007d);
         }
         §§goto(addr00a9);
      }
      
      public function get repeatDelay() : Number
      {
         return _repeatDelay;
      }
      
      public function killProperties(param1:Array) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Object = {};
         var _loc3_:* = int(param1.length);
         do
         {
            §§push(_loc3_);
            if(_loc4_ || Boolean(param1))
            {
               §§push(§§pop() - 1);
               if(_loc4_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        addr0079:
                        _loc3_ = §§pop();
                        addr007a:
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr008e);
                     }
                     continue;
                  }
                  §§goto(addr0079);
               }
            }
            §§goto(addr007a);
         }
         while(_loc2_[param1[_loc3_]] = true, _loc4_);
         
         killVars(_loc2_);
         addr008e:
      }
      
      public function set repeatDelay(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            _repeatDelay = param1;
            if(_loc2_ || Boolean(this))
            {
               addr003e:
               setDirtyCache(true);
            }
            return;
         }
         §§goto(addr003e);
      }
      
      public function set repeat(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            _repeat = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0029:
               setDirtyCache(true);
            }
            return;
         }
         §§goto(addr0029);
      }
      
      override public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super.complete(param1,param2);
            if(_loc4_)
            {
               addr0029:
               §§push(param2);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(_loc4_ || _loc3_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§push(Boolean(_dispatcher));
                                 if(!(_loc3_ && param2))
                                 {
                                    addr0065:
                                    if(§§pop())
                                    {
                                       if(_loc4_ || param2)
                                       {
                                          §§push(this.cachedTotalTime == this.cachedTotalDuration);
                                          if(!_loc3_)
                                          {
                                             var _temp_6:* = §§pop();
                                             §§push(_temp_6);
                                             §§push(_temp_6);
                                             if(_loc4_)
                                             {
                                                addr0097:
                                                if(§§pop())
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      addr00a8:
                                                      §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         §§push(!this.cachedReversed);
                                                         if(!_loc3_)
                                                         {
                                                            addr00b8:
                                                            if(§§pop())
                                                            {
                                                               if(_loc4_ || param2)
                                                               {
                                                                  _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.COMPLETE));
                                                                  if(_loc3_)
                                                                  {
                                                                     addr011f:
                                                                     addr0126:
                                                                     if(this.cachedTotalTime == 0)
                                                                     {
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           addr0137:
                                                                           _dispatcher.dispatchEvent(new TweenEvent(TweenEvent.REVERSE_COMPLETE));
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr014a);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.cachedReversed);
                                                               if(_loc4_)
                                                               {
                                                                  addr00f1:
                                                                  var _temp_10:* = §§pop();
                                                                  addr00f2:
                                                                  §§push(_temp_10);
                                                                  if(_temp_10)
                                                                  {
                                                                     if(!(_loc3_ && param2))
                                                                     {
                                                                        addr0103:
                                                                        §§pop();
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           §§goto(addr011f);
                                                                        }
                                                                        §§goto(addr0137);
                                                                     }
                                                                  }
                                                                  §§goto(addr0126);
                                                               }
                                                               §§goto(addr0103);
                                                            }
                                                         }
                                                         §§goto(addr0103);
                                                      }
                                                      §§goto(addr014a);
                                                   }
                                                   §§goto(addr0103);
                                                }
                                                §§goto(addr00b8);
                                             }
                                             §§goto(addr00f2);
                                          }
                                          §§goto(addr0126);
                                       }
                                       §§goto(addr0137);
                                    }
                                    §§goto(addr014a);
                                 }
                                 §§goto(addr0126);
                              }
                              §§goto(addr014a);
                           }
                           §§goto(addr00f1);
                        }
                        §§goto(addr0065);
                     }
                     §§goto(addr0097);
                  }
               }
               §§goto(addr00a8);
            }
            addr014a:
            return;
         }
         §§goto(addr0029);
      }
      
      override public function invalidate() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.yoyo = Boolean(this.vars.yoyo == true);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§findproperty(_repeat));
               if(_loc1_)
               {
                  if(this.vars.repeat)
                  {
                     addr0049:
                     §§push(int(Number(this.vars.repeat)));
                     if(_loc1_ || _loc2_)
                     {
                     }
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§pop()._repeat = §§pop();
                  if(_loc1_)
                  {
                     §§push(§§findproperty(_repeatDelay));
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(this.vars.repeatDelay)
                        {
                           addr008d:
                           §§push(Number(this.vars.repeatDelay));
                           if(_loc1_ || _loc1_)
                           {
                           }
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§pop()._repeatDelay = §§pop();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _hasUpdateListener = false;
                           §§goto(addr00be);
                        }
                        §§goto(addr0173);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0173);
               }
               §§goto(addr0049);
            }
            addr00be:
            if(_loc1_ || Boolean(this))
            {
               §§push(this.vars.onCompleteListener == null);
               if(_loc1_ || _loc1_)
               {
                  §§push(!§§pop());
                  if(!_loc2_)
                  {
                     var _temp_8:* = §§pop();
                     §§push(_temp_8);
                     §§push(_temp_8);
                     if(!_loc2_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr010f);
                           }
                           §§goto(addr015f);
                        }
                        §§goto(addr0139);
                     }
                     §§goto(addr013a);
                  }
                  addr010f:
                  §§pop();
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(this.vars.onUpdateListener == null);
                     if(_loc1_ || _loc1_)
                     {
                        §§push(!§§pop());
                        if(_loc1_)
                        {
                           addr0139:
                           var _temp_12:* = §§pop();
                           addr013a:
                           §§push(_temp_12);
                           if(!_temp_12)
                           {
                              if(!_loc2_)
                              {
                                 §§pop();
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §§goto(addr0160);
                                 }
                                 §§goto(addr019c);
                              }
                              §§goto(addr015f);
                           }
                        }
                     }
                     addr0160:
                     addr0151:
                     §§push(this.vars.onStartListener == null);
                     if(_loc1_)
                     {
                        addr015f:
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           addr0173:
                           initDispatcher();
                           if(_loc1_ || _loc2_)
                           {
                              §§goto(addr0187);
                           }
                           §§goto(addr019c);
                        }
                     }
                     §§goto(addr0187);
                  }
                  addr0187:
                  setDirtyCache(true);
                  if(_loc1_ || _loc2_)
                  {
                     addr019c:
                     super.invalidate();
                  }
                  §§goto(addr01a1);
               }
               §§goto(addr015f);
            }
            addr01a1:
            return;
         }
         §§goto(addr0151);
      }
      
      public function get timeScale() : Number
      {
         return this.cachedTimeScale;
      }
      
      override public function get totalDuration() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this.cacheIsDirty)
            {
               if(_loc2_)
               {
                  §§push(this);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     if(_repeat == -1)
                     {
                        §§goto(addr003a);
                     }
                     else
                     {
                        §§push(this.cachedDuration * (_repeat + 1));
                        if(!_loc1_)
                        {
                           §§goto(addr0065);
                        }
                     }
                     §§goto(addr0089);
                  }
                  addr003a:
                  §§push(999999999999);
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     if(!_loc2_)
                     {
                        addr0065:
                        §§push(_repeatDelay);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(§§pop() * _repeat);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc2_)
                        {
                           addr0089:
                           §§push(§§pop());
                        }
                     }
                  }
                  §§pop().cachedTotalDuration = §§pop();
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr009a:
                     this.cacheIsDirty = false;
                  }
                  §§goto(addr009f);
               }
               §§goto(addr009a);
            }
         }
         addr009f:
         return this.cachedTotalDuration;
      }
   }
}

