package net.bigpoint.cityrama.view.field.ui.components.strategy
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class DirectionStrategy extends EventDispatcher
   {
      
      private var _exDirection:String = "none";
      
      private var _direction:String = "none";
      
      public function DirectionStrategy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      public function playDirectionAnimation(param1:Point) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(this._exDirection);
         if(_loc4_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(param1.x == 1);
            if(_loc4_ || _loc2_)
            {
               var _temp_5:* = §§pop();
               §§push(_temp_5);
               §§push(_temp_5);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(param1.y == 0);
                           if(!_loc3_)
                           {
                              addr007d:
                              if(§§pop())
                              {
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push("north");
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr0167:
                                       _loc2_ = §§pop();
                                       if(_loc3_ && Boolean(param1))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr00d3:
                                    §§push(param1.y == 1);
                                    if(_loc4_)
                                    {
                                       addr00df:
                                       if(§§pop())
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§push("north_east");
                                             if(!_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                if(!(_loc4_ || Boolean(this)))
                                                {
                                                   addr01d3:
                                                   §§push("south_east");
                                                   if(!_loc3_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc3_ && _loc2_)
                                                      {
                                                         addr0211:
                                                         §§push(param1.y == 0);
                                                         if(!(_loc3_ && Boolean(param1)))
                                                         {
                                                            §§goto(addr0224);
                                                         }
                                                         §§goto(addr024e);
                                                      }
                                                      §§goto(addr0386);
                                                   }
                                                   §§goto(addr030f);
                                                }
                                                §§goto(addr0386);
                                             }
                                             §§goto(addr029b);
                                          }
                                          §§goto(addr022d);
                                       }
                                       else
                                       {
                                          §§push(param1.x == 0);
                                          if(!(_loc3_ && Boolean(param1)))
                                          {
                                             var _temp_32:* = §§pop();
                                             §§push(_temp_32);
                                             §§push(_temp_32);
                                             if(_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc3_ && Boolean(_loc2_)))
                                                   {
                                                      §§pop();
                                                      if(_loc4_)
                                                      {
                                                         §§push(param1.y == 1);
                                                         if(_loc4_)
                                                         {
                                                            addr014b:
                                                            if(§§pop())
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§push("east");
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr0167);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr030f);
                                                                  }
                                                               }
                                                               §§goto(addr0395);
                                                            }
                                                            else
                                                            {
                                                               §§push(param1.x == -1);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr018c:
                                                                  var _temp_36:* = §§pop();
                                                                  §§push(_temp_36);
                                                                  §§push(_temp_36);
                                                                  if(!(_loc3_ && Boolean(_loc2_)))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           addr01a4:
                                                                           §§pop();
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(param1.y == 1);
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 addr01ca:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr01d3);
                                                                                    }
                                                                                    §§goto(addr022d);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(param1.x == -1);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       var _temp_39:* = §§pop();
                                                                                       §§push(_temp_39);
                                                                                       §§push(_temp_39);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§goto(addr0201);
                                                                                       }
                                                                                       §§goto(addr02cf);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr024e);
                                                                              }
                                                                              §§goto(addr0356);
                                                                           }
                                                                           §§goto(addr0350);
                                                                        }
                                                                        §§goto(addr0356);
                                                                     }
                                                                     §§goto(addr01ca);
                                                                  }
                                                                  addr0201:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr0211);
                                                                        }
                                                                        §§goto(addr02e8);
                                                                     }
                                                                     §§goto(addr0356);
                                                                  }
                                                                  addr0224:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr022d:
                                                                        §§push("south");
                                                                        if(_loc4_)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0306:
                                                                              §§push("west");
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr030f:
                                                                                 _loc2_ = §§pop();
                                                                                 if(!(_loc4_ || _loc2_))
                                                                                 {
                                                                                    §§goto(addr0378);
                                                                                 }
                                                                                 §§goto(addr0386);
                                                                              }
                                                                              addr0378:
                                                                              _loc2_ = "north_west";
                                                                              §§goto(addr0374);
                                                                           }
                                                                           §§goto(addr0386);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0292);
                                                                     }
                                                                     §§goto(addr030f);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(param1.x == -1);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr024e:
                                                                        var _temp_19:* = §§pop();
                                                                        §§push(_temp_19);
                                                                        §§push(_temp_19);
                                                                        if(!(_loc3_ && Boolean(param1)))
                                                                        {
                                                                           addr025c:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc4_ || Boolean(param1))
                                                                              {
                                                                                 addr026e:
                                                                                 §§pop();
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(param1.y == -1);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr0280:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc4_ || Boolean(_loc2_))
                                                                                          {
                                                                                             addr0292:
                                                                                             §§push("south_west");
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr029b:
                                                                                                _loc2_ = §§pop();
                                                                                                if(!(_loc4_ || Boolean(this)))
                                                                                                {
                                                                                                   addr0350:
                                                                                                   addr0356:
                                                                                                   if(param1.y == -1)
                                                                                                   {
                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr0374);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0386);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr030f);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr0306);
                                                                                          }
                                                                                          §§goto(addr0378);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(param1.x == 0);
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             addr02c1:
                                                                                             var _temp_24:* = §§pop();
                                                                                             §§push(_temp_24);
                                                                                             §§push(_temp_24);
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                addr02cf:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc4_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      addr02e1:
                                                                                                      §§pop();
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr02e8:
                                                                                                         §§push(param1.y == -1);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr02f4:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc4_ || Boolean(param1))
                                                                                                               {
                                                                                                                  §§goto(addr0306);
                                                                                                               }
                                                                                                               §§goto(addr0386);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(param1.x == 1);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  addr032e:
                                                                                                                  var _temp_28:* = §§pop();
                                                                                                                  addr032f:
                                                                                                                  §§push(_temp_28);
                                                                                                                  if(_temp_28)
                                                                                                                  {
                                                                                                                     if(_loc4_ || Boolean(_loc2_))
                                                                                                                     {
                                                                                                                        §§goto(addr0341);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0356);
                                                                                                               }
                                                                                                               addr0341:
                                                                                                               §§pop();
                                                                                                               if(_loc4_ || Boolean(param1))
                                                                                                               {
                                                                                                                  §§goto(addr0350);
                                                                                                               }
                                                                                                               §§goto(addr0374);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0356);
                                                                                                      }
                                                                                                      §§goto(addr0374);
                                                                                                   }
                                                                                                   §§goto(addr032e);
                                                                                                }
                                                                                                §§goto(addr02f4);
                                                                                             }
                                                                                             §§goto(addr032f);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0356);
                                                                                    }
                                                                                    §§goto(addr0341);
                                                                                 }
                                                                                 §§goto(addr0386);
                                                                              }
                                                                              §§goto(addr02c1);
                                                                           }
                                                                           §§goto(addr0280);
                                                                        }
                                                                        §§goto(addr02cf);
                                                                     }
                                                                     §§goto(addr0341);
                                                                  }
                                                               }
                                                               §§goto(addr01a4);
                                                            }
                                                         }
                                                         §§goto(addr032e);
                                                      }
                                                      addr0374:
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         addr0386:
                                                         if(_loc2_ != this._exDirection)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr0395:
                                                               this.applyDirection(_loc2_);
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                }
                                                §§goto(addr014b);
                                             }
                                             §§goto(addr025c);
                                          }
                                          §§goto(addr018c);
                                       }
                                    }
                                    §§goto(addr014b);
                                 }
                                 §§goto(addr0386);
                              }
                              else
                              {
                                 §§push(param1.x == 1);
                                 if(_loc4_)
                                 {
                                    var _temp_40:* = §§pop();
                                    §§push(_temp_40);
                                    §§push(_temp_40);
                                    if(!(_loc3_ && Boolean(_loc2_)))
                                    {
                                       addr00c3:
                                       if(§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             addr00cc:
                                             §§pop();
                                             if(_loc4_)
                                             {
                                                §§goto(addr00d3);
                                             }
                                             §§goto(addr0306);
                                          }
                                          §§goto(addr02f4);
                                       }
                                       §§goto(addr00df);
                                    }
                                    §§goto(addr0201);
                                 }
                              }
                              §§goto(addr026e);
                           }
                           §§goto(addr018c);
                        }
                        §§goto(addr0386);
                     }
                     §§goto(addr02e1);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr00c3);
            }
            §§goto(addr00cc);
         }
         §§goto(addr0386);
      }
      
      private function applyDirection(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._direction = param1;
            if(_loc2_ || Boolean(this))
            {
               addr003d:
               dispatchEvent(new Event(Event.CHANGE));
            }
            return;
         }
         §§goto(addr003d);
      }
      
      public function get direction() : String
      {
         return this._direction;
      }
   }
}

