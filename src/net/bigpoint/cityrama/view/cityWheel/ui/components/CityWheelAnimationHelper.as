package net.bigpoint.cityrama.view.cityWheel.ui.components
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Elastic;
   import com.greensock.easing.Linear;
   import net.bigpoint.cityrama.model.cityWheel.events.CityWheelItemEvent;
   import net.bigpoint.cityrama.view.common.components.WheelComponent;
   
   public class CityWheelAnimationHelper
   {
      
      private var _settings:CityWheelAnimationSettingsVo;
      
      private var _wheel:WheelComponent;
      
      private var _numberOfElements:int;
      
      private var _idleTween:TweenMax;
      
      private var _spinTween:TweenMax;
      
      private var _isWheelSpinning:Boolean;
      
      private var _isWheelStopping:Boolean;
      
      private var _lastTime:Number;
      
      private var _a:Number;
      
      private var _v:Number;
      
      private var _stopIndex:Number;
      
      private var _onSpinComplete:Function;
      
      public function CityWheelAnimationHelper(param1:WheelComponent, param2:CityWheelAnimationSettingsVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super();
            if(!(_loc3_ && Boolean(this)))
            {
               this._wheel = param1;
               if(_loc4_)
               {
                  addr0042:
                  this._settings = param2;
               }
               §§goto(addr0047);
            }
            §§goto(addr0042);
         }
         addr0047:
      }
      
      public function playJackpotAnimation(param1:Function) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(TweenMax);
            §§push(this._wheel);
            §§push(0.5);
            §§push("scrollPosition");
            §§push(this._stopIndex);
            if(!_loc3_)
            {
               §§push(§§pop() + 1);
            }
            §§pop().to(§§pop(),§§pop(),null);
         }
      }
      
      public function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._numberOfElements = this._wheel.dataGroup.dataProvider.length;
            if(!_loc2_)
            {
               addr0035:
               §§push(this._wheel);
               if(!_loc2_)
               {
                  §§push(CityWheelItemEvent.ITEM_OVER);
                  if(!_loc2_)
                  {
                     §§pop().addEventListener(§§pop(),this._wheel_ITEM_OVERHandler);
                     if(_loc1_)
                     {
                        §§goto(addr006a);
                     }
                     §§goto(addr007f);
                  }
                  addr006a:
                  this._wheel.addEventListener(CityWheelItemEvent.ITEM_OUT,this._wheel_ITEM_OUTHandler);
                  §§goto(addr0064);
               }
               addr0064:
               §§goto(addr0060);
            }
            addr0060:
            if(!(_loc2_ && Boolean(this)))
            {
               addr007f:
               this.spinWheelIdle();
            }
            return;
         }
         §§goto(addr0035);
      }
      
      public function dispose() : void
      {
      }
      
      public function spinWheelIdle() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._idleTween);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr0045);
                  }
                  §§goto(addr004e);
               }
               §§goto(addr0062);
            }
            addr0045:
            this._idleTween.kill();
            if(_loc1_)
            {
               addr004e:
               this._idleTween = null;
               if(_loc1_)
               {
                  addr0062:
                  this._idleTween = TweenMax.fromTo(this._wheel,this._settings.idleAnimationDuration,{"scrollPosition":0},{
                     "scrollPosition":this._numberOfElements,
                     "ease":Linear.easeInOut,
                     "repeat":-1
                  });
               }
            }
            §§goto(addr0095);
         }
         addr0095:
      }
      
      private function _wheel_ITEM_OVERHandler(param1:CityWheelItemEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this._idleTween);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr004c:
                     this._idleTween.pause();
                     addr0048:
                  }
               }
               return;
            }
            §§goto(addr004c);
         }
         §§goto(addr0048);
      }
      
      private function _wheel_ITEM_OUTHandler(param1:CityWheelItemEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            §§push(this._idleTween);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     addr004f:
                     this._idleTween.resume();
                     addr004b:
                  }
               }
               return;
            }
            §§goto(addr004f);
         }
         §§goto(addr004b);
      }
      
      public function spinWheel(param1:Function) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this._idleTween);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr003e:
                     this._idleTween.kill();
                     addr003a:
                     if(_loc3_ || _loc2_)
                     {
                        this._idleTween = null;
                        if(_loc3_ || Boolean(this))
                        {
                           addr006d:
                           this._onSpinComplete = param1;
                           if(_loc3_ || Boolean(param1))
                           {
                              addr007f:
                              this._isWheelSpinning = true;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr009d:
                                 this._spinTween = TweenMax.fromTo(this._wheel,this._settings.spinAnimationCycleDuration,{"scrollPosition":0},{
                                    "scrollPosition":this._numberOfElements,
                                    "ease":Linear.easeInOut,
                                    "repeat":-1
                                 });
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr009d);
                        }
                        addr00d0:
                        return;
                     }
                     §§goto(addr006d);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr006d);
            }
            §§goto(addr003e);
         }
         §§goto(addr003a);
      }
      
      public function stopWheelOnIndex(param1:Number, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_ || Boolean(param1))
         {
            §§push(this._isWheelStopping);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(_loc6_ || Boolean(this))
                  {
                     return;
                  }
                  addr00a9:
                  this._stopIndex = param1;
                  if(!_loc7_)
                  {
                     addr00b4:
                     §§push(param1);
                     if(_loc6_ || param2)
                     {
                        if(Math.random() > 0.5)
                        {
                           if(_loc6_ || param2)
                           {
                              §§push(-0.5 + (!_loc7_ ? §§pop() : §§pop()));
                              if(!_loc7_)
                              {
                                 addr00f6:
                                 param1 = §§pop();
                                 addr0100:
                                 addr00f7:
                                 §§push(0.25);
                                 if(_loc6_)
                                 {
                                    addr00ff:
                                    §§push(§§pop());
                                 }
                                 var _loc3_:* = §§pop();
                                 if(_loc6_)
                                 {
                                    this._v = this._numberOfElements / this._settings.spinAnimationCycleDuration;
                                    if(_loc6_)
                                    {
                                       addr011d:
                                       §§push(this);
                                       §§push(_loc3_);
                                       if(!(_loc7_ && Boolean(param1)))
                                       {
                                          §§push(this._v);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() / this._settings.spinDecelerationDuration);
                                          }
                                          §§push(§§pop() - §§pop());
                                       }
                                       §§pop()._a = §§pop();
                                    }
                                    §§push(param1);
                                    if(!_loc7_)
                                    {
                                       §§push(this._a);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() / 2);
                                          if(!_loc7_)
                                          {
                                             §§push(this._settings.spinDecelerationDuration);
                                             if(_loc6_)
                                             {
                                                §§push(this._settings);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop().spinDecelerationDuration);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_ || param2)
                                                      {
                                                         addr01c9:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc6_)
                                                         {
                                                            §§push(this._v);
                                                            if(!_loc7_)
                                                            {
                                                               addr01a9:
                                                               addr01b0:
                                                               addr01ad:
                                                               §§push(§§pop() * this._settings.spinDecelerationDuration);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc6_)
                                                            {
                                                               addr01b8:
                                                               addr01c8:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc6_ || param2)
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                               var _temp_8:* = §§pop();
                                                               §§push(_temp_8);
                                                               §§push(_temp_8);
                                                            }
                                                         }
                                                         var _loc4_:* = §§pop();
                                                         if(_loc6_ || Boolean(param1))
                                                         {
                                                            §§push(this._numberOfElements);
                                                            if(!(_loc7_ && Boolean(param1)))
                                                            {
                                                               §§push(§§pop() % §§pop());
                                                               if(_loc6_ || param2)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_ || Boolean(this))
                                                                  {
                                                                     var _temp_13:* = §§pop();
                                                                     §§push(_temp_13);
                                                                     §§push(_temp_13);
                                                                     if(!(_loc7_ && Boolean(param1)))
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc6_)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       §§push(this._numberOfElements);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr024c:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr0253:
                                                                                             §§push(§§pop());
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                if(_loc6_ || Boolean(param1))
                                                                                                {
                                                                                                   addr026a:
                                                                                                   §§push(_loc4_);
                                                                                                   if(!(_loc7_ && Boolean(param1)))
                                                                                                   {
                                                                                                      §§push(this._wheel);
                                                                                                      if(!(_loc7_ && Boolean(param1)))
                                                                                                      {
                                                                                                         §§push(§§pop().scrollPosition);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr02b3:
                                                                                                                     §§push(§§pop() + this._numberOfElements);
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr02c2:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr02c9:
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           addr02cb:
                                                                                                                           §§push(_loc4_);
                                                                                                                           if(_loc6_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              addr02df:
                                                                                                                              addr02db:
                                                                                                                              §§push(this._wheel.scrollPosition);
                                                                                                                              if(!(_loc7_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 §§goto(addr0319);
                                                                                                                              }
                                                                                                                              §§goto(addr0311);
                                                                                                                           }
                                                                                                                           §§goto(addr0319);
                                                                                                                        }
                                                                                                                        §§goto(addr02ff);
                                                                                                                     }
                                                                                                                     §§goto(addr0318);
                                                                                                                  }
                                                                                                                  addr0319:
                                                                                                                  §§goto(addr02f0);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr02cb);
                                                                                                         }
                                                                                                         addr02f0:
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc6_ || param2)
                                                                                                         {
                                                                                                            addr0311:
                                                                                                            addr02ff:
                                                                                                            §§push(this._settings.spinAnimationCycleDuration);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() / this._numberOfElements);
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr0318:
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                         }
                                                                                                         var _loc5_:* = §§pop();
                                                                                                         if(_loc6_ || Boolean(param1))
                                                                                                         {
                                                                                                            this._spinTween = TweenMax.to(this._wheel,_loc5_,{
                                                                                                               "scrollPosition":_loc4_,
                                                                                                               "onComplete":this.startDecelerationAnimation,
                                                                                                               "ease":Linear.easeInOut
                                                                                                            });
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr02df);
                                                                                                   }
                                                                                                   §§goto(addr02c2);
                                                                                                }
                                                                                                §§goto(addr02cb);
                                                                                             }
                                                                                             §§goto(addr02c9);
                                                                                          }
                                                                                          §§goto(addr02ff);
                                                                                       }
                                                                                       §§goto(addr02b3);
                                                                                    }
                                                                                    §§goto(addr0318);
                                                                                 }
                                                                              }
                                                                              §§goto(addr026a);
                                                                           }
                                                                           §§goto(addr024c);
                                                                        }
                                                                        §§goto(addr0253);
                                                                     }
                                                                     §§goto(addr0311);
                                                                  }
                                                                  §§goto(addr02c2);
                                                               }
                                                               §§goto(addr02db);
                                                            }
                                                            §§goto(addr02b3);
                                                         }
                                                         §§goto(addr0253);
                                                      }
                                                      §§goto(addr01a9);
                                                   }
                                                   §§goto(addr01b0);
                                                }
                                                §§goto(addr01ad);
                                             }
                                             §§goto(addr01a9);
                                          }
                                          §§goto(addr01b8);
                                       }
                                       §§goto(addr01c9);
                                    }
                                    §§goto(addr01c8);
                                 }
                                 §§goto(addr011d);
                              }
                           }
                           §§goto(addr00ff);
                        }
                        else
                        {
                           §§push(0.15);
                        }
                        §§goto(addr00ed);
                     }
                     §§goto(addr0100);
                  }
                  §§goto(addr00f7);
               }
               else
               {
                  this._isWheelStopping = true;
                  if(_loc6_)
                  {
                     addr0058:
                     if(param2)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(param1);
                           if(!_loc7_)
                           {
                              §§push(§§pop() - 1);
                              if(_loc6_ || param2)
                              {
                                 §§push(§§pop() % this._numberOfElements);
                                 if(!(_loc7_ && param2))
                                 {
                                    addr0093:
                                    §§push(§§pop());
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       param1 = §§pop();
                                       if(_loc6_)
                                       {
                                          §§goto(addr00a9);
                                       }
                                       §§goto(addr00f7);
                                    }
                                 }
                                 §§goto(addr0100);
                              }
                              §§goto(addr00f6);
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00a9);
                  }
               }
               §§goto(addr00b4);
            }
            §§goto(addr0058);
         }
         §§goto(addr00a9);
      }
      
      private function startDecelerationAnimation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._spinTween);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr003d:
                     this._spinTween.kill();
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr004e);
                     }
                  }
                  §§goto(addr006b);
               }
               §§goto(addr004e);
            }
            §§goto(addr003d);
         }
         addr004e:
         this._lastTime = 0;
         if(!(_loc2_ && _loc1_))
         {
            addr006b:
            this._spinTween = TweenMax.to(this._wheel,this._settings.spinDecelerationDuration,{
               "onUpdate":this.decelerationAnimationUpdate,
               "onComplete":this.decelerationLastStep
            });
         }
      }
      
      private function decelerationAnimationUpdate() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._spinTween.currentTime - this._lastTime);
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && _loc3_))
         {
            this._lastTime = this._spinTween.currentTime;
            if(_loc3_)
            {
               §§push(this._wheel);
               §§push(this._wheel.scrollPosition);
               if(_loc3_ || _loc3_)
               {
                  §§push(this._a);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§§pop() / 2);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(_loc1_);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr00a9);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00c5);
                        }
                        addr00a9:
                        §§goto(addr00c7);
                     }
                     §§goto(addr00af);
                  }
                  addr00c7:
                  §§goto(addr00c8);
               }
               addr00c8:
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  addr00c6:
                  addr00af:
                  §§push(this._v);
                  if(_loc3_)
                  {
                     addr00c5:
                     §§push(§§pop() * _loc1_);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().scrollPosition = §§pop() + §§pop();
               if(_loc3_)
               {
                  addr00d0:
                  §§push(this);
                  §§push(this._v);
                  if(_loc3_)
                  {
                     §§push(this._a);
                     if(_loc3_)
                     {
                        §§push(§§pop() * _loc1_);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop()._v = §§pop();
               }
               return;
            }
         }
         §§goto(addr00d0);
      }
      
      private function decelerationLastStep() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(this._wheel.scrollPosition);
         if(_loc2_ || _loc1_)
         {
            §§push(§§pop() % this._numberOfElements);
            if(!(_loc3_ && Boolean(this)))
            {
               addr0036:
               §§push(§§pop());
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               if(Math.abs(_loc1_ - this._stopIndex) > 1)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0069:
                     §§push(this);
                     §§push(this._stopIndex);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() + this._numberOfElements);
                     }
                     §§pop()._stopIndex = §§pop();
                     if(!_loc3_)
                     {
                        addr0094:
                        this._spinTween = TweenMax.fromTo(this._wheel,3.5,{"scrollPosition":_loc1_},{
                           "scrollPosition":this._stopIndex,
                           "onComplete":this.decelerationAnimationComplete,
                           "ease":Elastic.easeOut
                        });
                     }
                  }
                  return;
               }
               §§goto(addr0094);
            }
            §§goto(addr0069);
         }
         §§goto(addr0036);
      }
      
      private function decelerationAnimationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this._isWheelSpinning = false;
            if(_loc1_)
            {
               this._isWheelStopping = false;
               if(_loc1_ || Boolean(this))
               {
                  this._spinTween.kill();
                  if(_loc1_)
                  {
                     addr005a:
                     this._spinTween = null;
                     if(_loc1_ || Boolean(this))
                     {
                        addr006c:
                        if(this._onSpinComplete != null)
                        {
                           if(!_loc2_)
                           {
                              addr007a:
                              this._onSpinComplete();
                           }
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr006c);
               }
               addr007f:
               return;
            }
            §§goto(addr005a);
         }
         §§goto(addr007a);
      }
      
      public function get isWheelStopping() : Boolean
      {
         return this._isWheelStopping;
      }
      
      public function get isWheelSpinning() : Boolean
      {
         return this._isWheelSpinning;
      }
   }
}

