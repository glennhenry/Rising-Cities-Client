package com.greensock.core
{
   public class SimpleTimeline extends TweenCore
   {
      
      public var autoRemoveChildren:Boolean;
      
      protected var _lastChild:TweenCore;
      
      protected var _firstChild:TweenCore;
      
      public function SimpleTimeline(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(0,param1);
         }
      }
      
      public function get rawTime() : Number
      {
         return this.cachedTotalTime;
      }
      
      public function insert(param1:TweenCore, param2:* = 0) : TweenCore
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:SimpleTimeline = param1.timeline;
         if(!_loc5_)
         {
            §§push(param1.cachedOrphan);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(_loc4_ || param2)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr004c:
                           §§pop();
                           if(!(_loc5_ && param2))
                           {
                              §§push(Boolean(_loc3_));
                              if(_loc4_)
                              {
                                 addr0063:
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       _loc3_.remove(param1,true);
                                       if(!(_loc5_ && param2))
                                       {
                                          addr0082:
                                          param1.timeline = this;
                                          if(_loc4_ || Boolean(_loc3_))
                                          {
                                             param1.cachedStartTime = Number(param2) + param1.delay;
                                             if(!_loc5_)
                                             {
                                                §§push(param1.gc);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         addr00be:
                                                         param1.setEnabled(true,true);
                                                         if(!(_loc5_ && Boolean(param1)))
                                                         {
                                                            addr00d3:
                                                            §§push(param1.cachedPaused);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc4_)
                                                               {
                                                                  addr00f1:
                                                                  var _temp_7:* = §§pop();
                                                                  addr00f2:
                                                                  §§push(_temp_7);
                                                                  if(_temp_7)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr00fc:
                                                                        §§pop();
                                                                        if(_loc4_)
                                                                        {
                                                                           addr0115:
                                                                           §§push(_loc3_ == this);
                                                                           if(!(_loc5_ && Boolean(_loc3_)))
                                                                           {
                                                                              addr0114:
                                                                              §§push(!§§pop());
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(param1);
                                                                                 §§push(param1.cachedStartTime);
                                                                                 if(!(_loc5_ && Boolean(this)))
                                                                                 {
                                                                                    §§push(this.rawTime);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(param1.cachedStartTime);
                                                                                       if(_loc4_ || Boolean(param1))
                                                                                       {
                                                                                          addr015b:
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr0159:
                                                                                             addr0155:
                                                                                             §§push(§§pop() / param1.cachedTimeScale);
                                                                                          }
                                                                                          §§pop().cachedPauseTime = §§pop() + §§pop();
                                                                                          if(_loc4_ || param2)
                                                                                          {
                                                                                             addr016c:
                                                                                             §§push(_lastChild);
                                                                                             if(!(_loc5_ && Boolean(param1)))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr018a:
                                                                                                      _lastChild.nextNode = param1;
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         param1.prevNode = _lastChild;
                                                                                                         addr01ad:
                                                                                                         if(_loc4_ || param2)
                                                                                                         {
                                                                                                            addr01ce:
                                                                                                            _lastChild = param1;
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr01db);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr01e6);
                                                                                                      }
                                                                                                      §§goto(addr01db);
                                                                                                   }
                                                                                                   §§goto(addr01ad);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _firstChild = param1;
                                                                                                   if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      §§goto(addr01ad);
                                                                                                   }
                                                                                                }
                                                                                                addr01db:
                                                                                                param1.nextNode = null;
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr01e6:
                                                                                                   param1.cachedOrphan = false;
                                                                                                }
                                                                                                §§goto(addr01eb);
                                                                                             }
                                                                                             §§goto(addr018a);
                                                                                          }
                                                                                          §§goto(addr01e6);
                                                                                       }
                                                                                       §§goto(addr0159);
                                                                                    }
                                                                                    §§goto(addr0155);
                                                                                 }
                                                                                 §§goto(addr015b);
                                                                              }
                                                                              addr01eb:
                                                                              return param1;
                                                                           }
                                                                           §§goto(addr016c);
                                                                        }
                                                                        §§goto(addr01db);
                                                                     }
                                                                     §§goto(addr0114);
                                                                  }
                                                               }
                                                               §§goto(addr0115);
                                                            }
                                                            §§goto(addr00fc);
                                                         }
                                                         §§goto(addr01e6);
                                                      }
                                                      §§goto(addr01ce);
                                                   }
                                                   §§goto(addr00d3);
                                                }
                                                §§goto(addr00f1);
                                             }
                                             §§goto(addr01ad);
                                          }
                                       }
                                    }
                                    §§goto(addr01e6);
                                 }
                                 §§goto(addr0082);
                              }
                              §§goto(addr0114);
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00fc);
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr00f2);
               }
               §§goto(addr004c);
            }
            §§goto(addr00f1);
         }
         §§goto(addr00be);
      }
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:* = NaN;
         var _loc6_:TweenCore = null;
         var _loc4_:TweenCore = _firstChild;
         if(!(_loc8_ && param2))
         {
            this.cachedTotalTime = param1;
            if(!(_loc8_ && Boolean(this)))
            {
               addr0045:
               this.cachedTime = param1;
            }
            for(; _loc4_; _loc4_ = _loc6_)
            {
               _loc6_ = _loc4_.nextNode;
               if(_loc8_ && Boolean(param1))
               {
                  continue;
               }
               §§push(_loc4_.active);
               if(!(_loc8_ && param3))
               {
                  §§push(§§pop());
                  if(_loc7_)
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(!_loc8_)
                     {
                        if(!§§pop())
                        {
                           if(_loc7_)
                           {
                              §§pop();
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§push(param1);
                              if(_loc7_ || param3)
                              {
                                 §§push(§§pop() >= _loc4_.cachedStartTime);
                                 if(!(_loc8_ && Boolean(this)))
                                 {
                                    var _temp_8:* = §§pop();
                                    §§push(_temp_8);
                                    §§push(_temp_8);
                                    if(_loc7_)
                                    {
                                       addr00c3:
                                       if(§§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§pop();
                                             if(_loc8_ && Boolean(this))
                                             {
                                                continue;
                                             }
                                             §§push(_loc4_.cachedPaused);
                                             if(!_loc8_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc7_ || Boolean(param1))
                                                {
                                                   addr00f6:
                                                   var _temp_11:* = §§pop();
                                                   addr00f7:
                                                   §§push(_temp_11);
                                                   if(_temp_11)
                                                   {
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         addr0109:
                                                         §§pop();
                                                         if(_loc8_ && param3)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc4_.gc);
                                                         if(!_loc8_)
                                                         {
                                                            addr0130:
                                                            §§push(!§§pop());
                                                            if(_loc7_ || param2)
                                                            {
                                                               addr013f:
                                                               if(!§§pop())
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc7_)
                                                               {
                                                                  §§push(_loc4_.cachedReversed);
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr0154:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc8_ && Boolean(param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(_loc4_);
                                                                        §§push(param1);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(_loc4_.cachedStartTime);
                                                                           if(!(_loc8_ && param3))
                                                                           {
                                                                              addr018f:
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr018e:
                                                                                 §§push(§§pop() * _loc4_.cachedTimeScale);
                                                                              }
                                                                              §§pop().renderTime(§§pop(),param2,false);
                                                                              if(_loc7_ || Boolean(param1))
                                                                              {
                                                                              }
                                                                              continue;
                                                                           }
                                                                           §§goto(addr018e);
                                                                        }
                                                                        §§goto(addr018f);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loc4_.cacheIsDirty);
                                                                     }
                                                                  }
                                                                  addr01ac:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc8_ && Boolean(param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc4_.totalDuration);
                                                                     if(!(_loc8_ && Boolean(this)))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc7_ || Boolean(param1)))
                                                                        {
                                                                           addr01ef:
                                                                           addr01f7:
                                                                           §§push(§§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                              addr01f6:
                                                                              §§push(§§pop());
                                                                           }
                                                                           _loc5_ = §§pop();
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr01ff:
                                                                           §§push(_loc4_);
                                                                           §§push(_loc5_);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(param1);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(_loc4_.cachedStartTime);
                                                                                 if(_loc7_ || Boolean(param1))
                                                                                 {
                                                                                    addr0245:
                                                                                    addr0246:
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!(_loc8_ && Boolean(this)))
                                                                                    {
                                                                                       addr0244:
                                                                                       §§push(§§pop() * _loc4_.cachedTimeScale);
                                                                                    }
                                                                                    §§pop().renderTime(§§pop() - §§pop(),param2,false);
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr0244);
                                                                              }
                                                                              §§goto(addr0245);
                                                                           }
                                                                           §§goto(addr0246);
                                                                        }
                                                                        §§goto(addr01f6);
                                                                     }
                                                                     §§goto(addr01ef);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc4_.cachedTotalDuration);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr01ef);
                                                                     }
                                                                  }
                                                                  §§goto(addr01f7);
                                                               }
                                                               §§goto(addr01ff);
                                                            }
                                                            §§goto(addr01ac);
                                                         }
                                                         §§goto(addr0154);
                                                      }
                                                      §§goto(addr01ac);
                                                   }
                                                   §§goto(addr013f);
                                                }
                                                §§goto(addr0130);
                                             }
                                          }
                                          §§goto(addr0109);
                                       }
                                       §§goto(addr00f6);
                                    }
                                    §§goto(addr00f7);
                                 }
                                 §§goto(addr0154);
                              }
                              §§goto(addr01ef);
                           }
                           §§goto(addr0154);
                        }
                        §§goto(addr013f);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr0154);
               }
               §§goto(addr013f);
            }
            return;
         }
         §§goto(addr0045);
      }
      
      public function remove(param1:TweenCore, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §§push(param1.cachedOrphan);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     return;
                  }
                  addr00c1:
                  §§push(param1.prevNode);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr00e1:
                           param1.prevNode.nextNode = param1.nextNode;
                           addr00dd:
                           if(!_loc3_)
                           {
                              addr0113:
                              _firstChild = param1.nextNode;
                              if(!(_loc4_ && param2))
                              {
                                 addr012b:
                                 param1.cachedOrphan = true;
                              }
                              §§goto(addr0130);
                           }
                           §§goto(addr012b);
                        }
                        addr0130:
                        return;
                     }
                     if(_firstChild == param1)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr0113);
                        }
                     }
                     §§goto(addr012b);
                  }
                  §§goto(addr00e1);
               }
               else
               {
                  addr0043:
                  if(!param2)
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        param1.setEnabled(false,true);
                        if(!_loc4_)
                        {
                           addr0062:
                           §§push(param1.nextNode);
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr0079:
                                    param1.nextNode.prevNode = param1.prevNode;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§goto(addr00c1);
                                    }
                                 }
                                 else
                                 {
                                    addr00b1:
                                    _lastChild = param1.prevNode;
                                    if(!_loc4_)
                                    {
                                       §§goto(addr00c1);
                                    }
                                 }
                                 §§goto(addr00dd);
                              }
                              else if(_lastChild == param1)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr00b1);
                                 }
                                 §§goto(addr012b);
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr0079);
                        }
                        §§goto(addr0113);
                     }
                     §§goto(addr00dd);
                  }
                  §§goto(addr0062);
               }
               §§goto(addr00dd);
            }
            §§goto(addr0043);
         }
         §§goto(addr00c1);
      }
   }
}

