package com.greensock.easing
{
   public class Back
   {
      
      public function Back()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         §§push(param3);
         if(!(_loc8_ && Back))
         {
            §§push(param1);
            if(!(_loc8_ && Boolean(param1)))
            {
               §§push(param4);
               if(!(_loc8_ && Boolean(param2)))
               {
                  §§push(§§pop() / §§pop());
                  if(_loc7_ || Back)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc8_)
                     {
                        addr0059:
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(!_loc8_)
                        {
                           var _loc6_:* = §§pop();
                           if(!_loc8_)
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 param1 = §§pop();
                                 §§push(_loc6_);
                              }
                           }
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              §§push(param1);
                              if(_loc7_)
                              {
                                 §§goto(addr0096);
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00f2);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr00f2);
                  }
                  §§goto(addr0059);
               }
               addr0096:
               §§push(§§pop() * §§pop());
               if(_loc7_)
               {
                  §§push(param5);
                  if(_loc7_ || Boolean(param3))
                  {
                     addr00ad:
                     §§push(§§pop() + 1);
                     if(!_loc8_)
                     {
                        addr00b6:
                        §§push(param1);
                        if(!_loc8_)
                        {
                           §§goto(addr00da);
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr00d7);
                  }
                  addr00da:
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || Back)
                  {
                     addr00d9:
                     addr00d7:
                     §§push(§§pop() + param5);
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc8_)
                     {
                        §§goto(addr00ea);
                     }
                     §§goto(addr00f2);
                  }
               }
               §§goto(addr00ea);
            }
            addr00ea:
            §§push(§§pop() * §§pop());
            if(!_loc8_)
            {
               addr00f2:
               addr00f1:
               return §§pop() + param2;
            }
         }
         §§goto(addr00f1);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         §§push(param3);
         if(!(_loc7_ && Boolean(param2)))
         {
            §§push(param1);
            if(_loc8_)
            {
               §§push(param4);
               if(!_loc7_)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc7_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc8_)
                     {
                        var _loc6_:* = §§pop();
                        if(_loc8_)
                        {
                           §§push(§§pop());
                           if(!(_loc7_ && Boolean(param2)))
                           {
                              param1 = §§pop();
                              §§push(_loc6_);
                           }
                        }
                        if(!(_loc7_ && Boolean(param2)))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc8_ || Boolean(param2))
                           {
                              addr0087:
                              §§push(param1);
                              if(_loc8_)
                              {
                                 addr008e:
                                 §§push(§§pop() * §§pop());
                                 if(_loc8_ || Back)
                                 {
                                    addr009d:
                                    §§push(param5);
                                    if(_loc8_ || Boolean(param3))
                                    {
                                       §§push(§§pop() + 1);
                                       if(!_loc7_)
                                       {
                                          addr00b6:
                                          §§push(param1);
                                          if(!(_loc7_ && Boolean(param2)))
                                          {
                                             addr00d2:
                                             §§push(§§pop() * §§pop());
                                             if(_loc8_)
                                             {
                                                addr00db:
                                                addr00d9:
                                                §§push(§§pop() - param5);
                                                if(!(_loc7_ && Boolean(param1)))
                                                {
                                                   §§goto(addr00ea);
                                                }
                                             }
                                             §§goto(addr00f2);
                                          }
                                          §§goto(addr00db);
                                       }
                                    }
                                    §§goto(addr00d9);
                                 }
                                 §§goto(addr00f1);
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr009d);
                        }
                        addr00ea:
                        §§push(§§pop() * §§pop());
                        if(!_loc7_)
                        {
                           addr00f2:
                           addr00f1:
                           return §§pop() + param2;
                        }
                     }
                     §§goto(addr00d2);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr00d2);
            }
            §§goto(addr00b6);
         }
         §§goto(addr0087);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_ || Back)
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(param4);
               if(_loc7_)
               {
                  §§push(0.5);
                  if(_loc7_ || Boolean(param2))
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc8_)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc7_ || Boolean(param3))
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           §§push(_temp_4);
                           if(_loc7_ || Boolean(param2))
                           {
                              var _loc6_:* = §§pop();
                              if(_loc7_)
                              {
                                 §§push(§§pop());
                                 if(_loc7_)
                                 {
                                    param1 = §§pop();
                                    §§push(_loc6_);
                                    if(!_loc8_)
                                    {
                                       addr0080:
                                       if(_loc7_)
                                       {
                                          §§push(1);
                                          if(_loc7_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc7_ || Boolean(param3))
                                                {
                                                   addr00a2:
                                                   §§push(param3);
                                                   if(!_loc8_)
                                                   {
                                                      addr00a9:
                                                      §§push(0.5);
                                                      if(_loc7_ || Boolean(param3))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc7_)
                                                         {
                                                            addr00c0:
                                                            §§push(param1);
                                                            if(!_loc8_)
                                                            {
                                                               addr00c7:
                                                               §§push(param1);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc8_ && Boolean(param1)))
                                                                  {
                                                                     addr00dd:
                                                                     §§push(param5);
                                                                     if(_loc7_ || Back)
                                                                     {
                                                                        §§push(1.525);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc7_ || Boolean(param1))
                                                                           {
                                                                              var _temp_11:* = §§pop();
                                                                              §§push(_temp_11);
                                                                              §§push(_temp_11);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       param5 = §§pop();
                                                                                       if(!(_loc8_ && Boolean(param2)))
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(!(_loc8_ && Boolean(param3)))
                                                                                          {
                                                                                             addr013a:
                                                                                             if(!(_loc8_ && Back))
                                                                                             {
                                                                                                addr014a:
                                                                                                §§push(1);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      addr0159:
                                                                                                      §§push(param1);
                                                                                                      if(!(_loc8_ && Boolean(param1)))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc8_ && Boolean(param3)))
                                                                                                         {
                                                                                                            §§push(param5);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               addr018c:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr0193:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc7_ || Boolean(param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§push(param2);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           addr01b0:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              return §§pop();
                                                                                                                           }
                                                                                                                           addr0302:
                                                                                                                           §§push(param2);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr01cf:
                                                                                                                           §§push(2);
                                                                                                                           if(_loc7_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc7_ || Back)
                                                                                                                              {
                                                                                                                                 var _temp_20:* = §§pop();
                                                                                                                                 §§push(_temp_20);
                                                                                                                                 §§push(_temp_20);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    addr01f5:
                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       addr01fd:
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc8_ && Boolean(param2)))
                                                                                                                                       {
                                                                                                                                          param1 = §§pop();
                                                                                                                                          addr020d:
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(_loc7_ || Boolean(param1))
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && Boolean(param1)))
                                                                                                                                             {
                                                                                                                                                §§push(param1);
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      addr023b:
                                                                                                                                                      §§push(param5);
                                                                                                                                                      if(!(_loc8_ && Boolean(param3)))
                                                                                                                                                      {
                                                                                                                                                         §§push(1.525);
                                                                                                                                                         if(_loc7_ || Back)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc7_ || Boolean(param2))
                                                                                                                                                            {
                                                                                                                                                               addr026a:
                                                                                                                                                               var _temp_27:* = §§pop();
                                                                                                                                                               §§push(_temp_27);
                                                                                                                                                               §§push(_temp_27);
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  _loc6_ = §§pop();
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0279:
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     if(_loc7_ || Back)
                                                                                                                                                                     {
                                                                                                                                                                        addr0288:
                                                                                                                                                                        param5 = §§pop();
                                                                                                                                                                        addr028a:
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc8_ && Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        addr029c:
                                                                                                                                                                        addr029e:
                                                                                                                                                                        §§push(§§pop() + 1);
                                                                                                                                                                        if(_loc7_ || Boolean(param3))
                                                                                                                                                                        {
                                                                                                                                                                           addr02ad:
                                                                                                                                                                           §§push(param1);
                                                                                                                                                                           if(!(_loc8_ && Back))
                                                                                                                                                                           {
                                                                                                                                                                              addr02db:
                                                                                                                                                                              addr02bc:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc7_ || Boolean(param3))
                                                                                                                                                                              {
                                                                                                                                                                                 addr02da:
                                                                                                                                                                                 addr02cb:
                                                                                                                                                                                 §§push(§§pop() + param5);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc8_ && Boolean(param3)))
                                                                                                                                                                              {
                                                                                                                                                                                 addr02ea:
                                                                                                                                                                                 addr02ec:
                                                                                                                                                                                 §§push(§§pop() + 2);
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr02f3:
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(!(_loc8_ && Boolean(param3)))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr0302);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0304);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr0303:
                                                                                                                                                                              addr0304:
                                                                                                                                                                              return §§pop();
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr02da);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr02cb);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr02db);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0288);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr02da);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr02cb);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr02bc);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02db);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02ea);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02ad);
                                                                                                                                             }
                                                                                                                                             §§goto(addr023b);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr028a);
                                                                                                                                 }
                                                                                                                                 §§goto(addr026a);
                                                                                                                              }
                                                                                                                              §§goto(addr023b);
                                                                                                                           }
                                                                                                                           §§goto(addr02ec);
                                                                                                                        }
                                                                                                                        §§goto(addr0303);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr01c8:
                                                                                                                        §§push(param1);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§goto(addr01cf);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr02ea);
                                                                                                                  }
                                                                                                                  §§goto(addr023b);
                                                                                                               }
                                                                                                               §§goto(addr029c);
                                                                                                            }
                                                                                                            §§goto(addr02bc);
                                                                                                         }
                                                                                                         §§goto(addr0193);
                                                                                                      }
                                                                                                      §§goto(addr018c);
                                                                                                   }
                                                                                                   §§goto(addr01f5);
                                                                                                }
                                                                                                §§goto(addr029e);
                                                                                             }
                                                                                             §§goto(addr0159);
                                                                                          }
                                                                                          §§goto(addr0279);
                                                                                       }
                                                                                       §§goto(addr01fd);
                                                                                    }
                                                                                    §§goto(addr0279);
                                                                                 }
                                                                                 §§goto(addr013a);
                                                                              }
                                                                              §§goto(addr02da);
                                                                           }
                                                                           §§goto(addr02ad);
                                                                        }
                                                                        §§goto(addr02da);
                                                                     }
                                                                     §§goto(addr01f5);
                                                                  }
                                                                  §§goto(addr01cf);
                                                               }
                                                               §§goto(addr014a);
                                                            }
                                                            §§goto(addr00dd);
                                                         }
                                                         else
                                                         {
                                                            addr01bf:
                                                            addr01c1:
                                                            §§push(§§pop() / 2);
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr01c8);
                                                            }
                                                         }
                                                         §§goto(addr0304);
                                                      }
                                                      §§goto(addr01b0);
                                                   }
                                                   §§goto(addr00c0);
                                                }
                                                else
                                                {
                                                   addr01b8:
                                                   §§push(param3);
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr01bf);
                                                   }
                                                }
                                                §§goto(addr0302);
                                             }
                                             §§goto(addr01b8);
                                          }
                                          §§goto(addr01c1);
                                       }
                                       §§goto(addr00a9);
                                    }
                                 }
                                 §§goto(addr020d);
                              }
                              §§goto(addr0080);
                           }
                           §§goto(addr01cf);
                        }
                        §§goto(addr0304);
                     }
                     §§goto(addr02f3);
                  }
                  §§goto(addr0193);
               }
               §§goto(addr00c7);
            }
            §§goto(addr00a9);
         }
         §§goto(addr00a2);
      }
   }
}

