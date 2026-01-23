package flex.util.ui.throbber
{
   import flash.display.CapsStyle;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class SimpleThrobber extends Sprite
   {
      
      public var colors:Array;
      
      public var lineAlpha:Number = 1;
      
      public var lineThickness:int = 3;
      
      public var delay:int = 100;
      
      public var autoStart:Boolean = false;
      
      public var hideWhenStopped:Boolean = false;
      
      private var lastDraw:int = 0;
      
      private var w:Number;
      
      private var h:Number;
      
      private var _running:Boolean;
      
      private var _currentStep:int = 0;
      
      private var _maxSteps:int = 12;
      
      public function SimpleThrobber(param1:int = 32, param2:int = 32, param3:int = 3)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            this.colors = [5209744,4880775,4486527,3432035,2704977];
            if(_loc5_ || Boolean(param1))
            {
               super();
               if(_loc5_ || Boolean(param2))
               {
                  this.w = param1;
                  if(!_loc4_)
                  {
                     this.h = param2;
                     if(!_loc4_)
                     {
                        this.lineThickness = param3;
                        addr0073:
                        if(!_loc4_)
                        {
                           addr0089:
                           addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr00a5:
                              addEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
                           }
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0089);
            }
            addr00b4:
            return;
         }
         §§goto(addr0073);
      }
      
      public function deleteThrobber() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
            if(!_loc1_)
            {
               removeEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
               if(!_loc1_)
               {
                  addr0059:
                  removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
                  if(!(_loc1_ && _loc1_))
                  {
                     delete global[this];
                  }
               }
            }
            return;
         }
         §§goto(addr0059);
      }
      
      private function addedToStage(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.autoStart);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     this.start();
                     if(!_loc2_)
                     {
                        addr0061:
                        this.redraw();
                     }
                  }
               }
               else
               {
                  addr0050:
                  if(!this.hideWhenStopped)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr0061);
                     }
                  }
               }
               §§goto(addr0066);
            }
            §§goto(addr0050);
         }
         addr0066:
      }
      
      private function removedFromStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.stop();
         }
      }
      
      public function get running() : Boolean
      {
         return this._running;
      }
      
      public function get currentStep() : int
      {
         return this._currentStep;
      }
      
      public function nextStep() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this);
            §§push(this._currentStep + 1);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop() % this.maxSteps);
            }
            §§pop()._currentStep = §§pop();
            if(_loc1_)
            {
               this.redraw();
            }
         }
      }
      
      public function get maxSteps() : int
      {
         return this._maxSteps;
      }
      
      public function start() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(!this._running)
            {
               if(_loc1_ || _loc1_)
               {
                  this._running = true;
                  if(!_loc2_)
                  {
                     this.redraw();
                     if(!_loc2_)
                     {
                        addEventListener(Event.ENTER_FRAME,this.enterFrameHandler,false,0,true);
                     }
                  }
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this._running);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     this._running = false;
                     if(_loc2_)
                     {
                        addr0044:
                        removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr006d:
                           if(this.hideWhenStopped)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr007e:
                                 graphics.clear();
                                 if(_loc2_)
                                 {
                                    addr008a:
                                    this._currentStep = 0;
                                 }
                              }
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr007e);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0044);
               }
               §§goto(addr0090);
            }
            §§goto(addr006d);
         }
         addr0090:
      }
      
      public function reset() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this._currentStep = 0;
            if(!(_loc1_ && _loc2_))
            {
               §§push(this.running);
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0063:
                        addr005f:
                        if(this.hideWhenStopped)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              graphics.clear();
                              if(_loc1_)
                              {
                              }
                           }
                        }
                        else
                        {
                           this.redraw();
                        }
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0063);
            }
            §§goto(addr005f);
         }
         addr0089:
      }
      
      private function enterFrameHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            if(this.running)
            {
               if(_loc4_)
               {
                  §§push(getTimer() - this.lastDraw);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     _loc2_ = §§pop();
                     if(!_loc3_)
                     {
                        §§goto(addr0061);
                     }
                     §§goto(addr0077);
                  }
                  addr0061:
                  §§goto(addr0060);
               }
               addr0060:
               if(_loc2_ > this.delay)
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr0077:
                     this.nextStep();
                  }
               }
               §§goto(addr007d);
            }
         }
         addr007d:
      }
      
      protected function redraw() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.lastDraw = getTimer();
            if(_loc1_ || Boolean(this))
            {
               addr002e:
               this.drawLines();
            }
            return;
         }
         §§goto(addr002e);
      }
      
      protected function drawLines() : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:int = 0;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = 0;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc1_:Graphics = graphics;
         if(_loc16_)
         {
            _loc1_.clear();
         }
         var _loc2_:int = Math.round(this.w / 2);
         var _loc3_:int = Math.round(this.w / 2);
         var _loc4_:int = Math.min(_loc2_,_loc3_);
         §§push(_loc4_);
         if(_loc16_)
         {
            §§push(0);
            if(_loc16_ || Boolean(this))
            {
               §§push(§§pop() > §§pop());
               if(!_loc15_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(!_loc15_)
                  {
                     if(§§pop())
                     {
                        if(_loc16_ || Boolean(_loc1_))
                        {
                           §§pop();
                           if(!_loc15_)
                           {
                              §§push(this.lineThickness);
                              if(_loc16_ || Boolean(this))
                              {
                                 addr00c6:
                                 §§push(§§pop() > 0);
                                 if(!(_loc15_ && Boolean(_loc3_)))
                                 {
                                    addr00d5:
                                    var _temp_8:* = §§pop();
                                    addr00d6:
                                    §§push(_temp_8);
                                    if(_temp_8)
                                    {
                                       if(!_loc15_)
                                       {
                                          addr00e0:
                                          §§pop();
                                          if(!(_loc15_ && Boolean(_loc3_)))
                                          {
                                             addr00ef:
                                             §§push(this.lineAlpha);
                                             if(!_loc15_)
                                             {
                                                §§push(0);
                                                if(!(_loc15_ && Boolean(_loc1_)))
                                                {
                                                   addr010b:
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc15_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(0);
                                                         if(_loc16_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc15_ && Boolean(_loc1_)))
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(_loc16_)
                                                               {
                                                                  addr013c:
                                                                  §§push(2);
                                                                  if(!_loc15_)
                                                                  {
                                                                     addr0144:
                                                                     §§push(§§pop() * Math.PI);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc15_ && Boolean(this)))
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           §§push(_loc6_);
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr0168:
                                                                              addr016c:
                                                                              §§push(§§pop() / this.maxSteps);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr0173:
                                                                                 §§push(§§pop());
                                                                              }
                                                                              _loc7_ = §§pop();
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr017e:
                                                                                 _loc8_ = 0;
                                                                                 addr017c:
                                                                              }
                                                                              loop0:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    while(§§pop() < §§pop())
                                                                                    {
                                                                                       §§push(this.getColor(_loc8_));
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                       }
                                                                                       _loc9_ = §§pop();
                                                                                       if(!(_loc15_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          _loc1_.lineStyle(this.lineThickness,_loc9_,this.lineAlpha,true,null,CapsStyle.ROUND);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!(_loc15_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(!(_loc15_ && Boolean(_loc1_)))
                                                                                                {
                                                                                                   §§push(§§pop() * Math.sin(_loc5_));
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc16_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc15_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            _loc10_ = §§pop();
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  if(!(_loc15_ && Boolean(_loc3_)))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * Math.cos(_loc5_));
                                                                                                                     if(_loc16_ || Boolean(_loc1_))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(_loc15_ && Boolean(_loc1_))
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           _loc11_ = §§pop();
                                                                                                                           if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              addr0282:
                                                                                                                              §§push(3);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(!(_loc15_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    addr029a:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!(_loc15_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / 5);
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          addr02b2:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             addr02b9:
                                                                                                                                             _loc12_ = §§pop();
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                addr02c1:
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                if(_loc16_ || Boolean(_loc1_))
                                                                                                                                                {
                                                                                                                                                   addr02d0:
                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr02d8:
                                                                                                                                                      §§push(§§pop() * Math.sin(_loc5_));
                                                                                                                                                      if(!(_loc15_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         addr02ef:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc16_)
                                                                                                                                                         {
                                                                                                                                                            continue loop1;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            addr02fd:
                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                            if(!(_loc15_ && Boolean(_loc1_)))
                                                                                                                                                            {
                                                                                                                                                               addr0319:
                                                                                                                                                               addr0310:
                                                                                                                                                               addr030e:
                                                                                                                                                               addr030d:
                                                                                                                                                               §§push(_loc3_ - _loc12_ * Math.cos(_loc5_));
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  addr0320:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc14_ = §§pop();
                                                                                                                                                                     if(_loc16_ || Boolean(_loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc1_.moveTo(_loc10_,_loc11_);
                                                                                                                                                                        if(_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        addr0346:
                                                                                                                                                                        _loc1_.lineTo(_loc13_,_loc14_);
                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                           {
                                                                                                                                                                              addr035d:
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              if(!(_loc16_ || Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc16_ || Boolean(_loc3_)))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop1;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(_loc16_ || Boolean(_loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              addr0398:
                                                                                                                                                                              _loc5_ = §§pop();
                                                                                                                                                                              if(!_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              addr03a0:
                                                                                                                                                                              _loc8_++;
                                                                                                                                                                              if(!(_loc16_ || Boolean(_loc1_)))
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop0;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop1;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop0;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr035d);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03a0);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0320);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0319);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0310);
                                                                                                                                                }
                                                                                                                                                §§goto(addr030e);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0346);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02d0);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02fd);
                                                                                                                                    }
                                                                                                                                    §§goto(addr035d);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0310);
                                                                                                                              }
                                                                                                                              §§goto(addr02d0);
                                                                                                                           }
                                                                                                                           §§goto(addr02c1);
                                                                                                                        }
                                                                                                                        §§goto(addr0398);
                                                                                                                     }
                                                                                                                     §§goto(addr02ef);
                                                                                                                  }
                                                                                                                  §§goto(addr02d8);
                                                                                                               }
                                                                                                               §§goto(addr02b9);
                                                                                                            }
                                                                                                            §§goto(addr030d);
                                                                                                         }
                                                                                                         §§goto(addr035d);
                                                                                                      }
                                                                                                      §§goto(addr02b2);
                                                                                                   }
                                                                                                   §§goto(addr02ef);
                                                                                                }
                                                                                                §§goto(addr029a);
                                                                                             }
                                                                                             §§goto(addr030e);
                                                                                          }
                                                                                          §§goto(addr0282);
                                                                                       }
                                                                                       §§goto(addr02c1);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              addr03b8:
                                                                              return;
                                                                              addr03b0:
                                                                           }
                                                                        }
                                                                        §§goto(addr0173);
                                                                     }
                                                                     §§goto(addr0168);
                                                                  }
                                                                  §§goto(addr017e);
                                                               }
                                                               §§goto(addr017c);
                                                            }
                                                            §§goto(addr0173);
                                                         }
                                                         §§goto(addr017e);
                                                      }
                                                      §§goto(addr03b0);
                                                   }
                                                   §§goto(addr03b8);
                                                }
                                                §§goto(addr016c);
                                             }
                                             §§goto(addr0168);
                                          }
                                          §§goto(addr013c);
                                       }
                                    }
                                 }
                                 §§goto(addr010b);
                              }
                              §§goto(addr0144);
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr010b);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr00e0);
            }
            §§goto(addr00c6);
         }
         §§goto(addr017e);
      }
      
      private function getColor(param1:int) : uint
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc2_:* = uint(this.colors[0]);
         if(_loc6_)
         {
            §§push(this.currentStep);
            if(!_loc5_)
            {
               §§push(0);
               if(_loc6_ || Boolean(this))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§push(this.currentStep);
                        if(!_loc5_)
                        {
                           §§push(param1);
                           if(_loc6_)
                           {
                              §§push(§§pop() - §§pop());
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 §§push(§§pop());
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc5_ && Boolean(_loc2_)))
                                    {
                                       addr00a4:
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          §§push(0);
                                          if(!(_loc5_ && Boolean(param1)))
                                          {
                                             addr00bb:
                                             if(§§pop() < §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc6_ || Boolean(this))
                                                   {
                                                      addr00d8:
                                                      addr00d4:
                                                      addr00d9:
                                                      §§push(int(§§pop() + this.maxSteps));
                                                      if(_loc6_ || Boolean(param1))
                                                      {
                                                         addr00e8:
                                                         _loc3_ = §§pop();
                                                         if(_loc6_ || Boolean(_loc2_))
                                                         {
                                                            addr0112:
                                                            _loc4_ = Math.min(this.colors.length - 1,_loc3_);
                                                            addr00f7:
                                                            if(!_loc5_)
                                                            {
                                                               §§push(uint(this.colors[_loc4_]));
                                                               if(!(_loc5_ && Boolean(_loc3_)))
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  addr0133:
                                                                  return _loc2_;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0133);
                                                      }
                                                      §§goto(addr0112);
                                                   }
                                                   §§goto(addr00e8);
                                                }
                                             }
                                             §§goto(addr00f7);
                                          }
                                          §§goto(addr00d8);
                                       }
                                       §§goto(addr00d4);
                                    }
                                    §§goto(addr00f7);
                                 }
                                 §§goto(addr0112);
                              }
                              §§goto(addr00d9);
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr0112);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0133);
               }
               §§goto(addr00d8);
            }
            §§goto(addr00d4);
         }
         §§goto(addr00f7);
      }
   }
}

