package com.greensock.easing
{
   public class Bounce
   {
      
      public function Bounce()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(!(_loc6_ && Bounce))
         {
            §§push(param1);
            if(!(_loc6_ && Bounce))
            {
               §§push(param4);
               if(!_loc6_)
               {
                  §§push(§§pop() / §§pop());
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(_loc7_ || Boolean(param1))
                     {
                        var _loc5_:* = §§pop();
                        if(!(_loc6_ && Boolean(param3)))
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              addr0070:
                              param1 = §§pop();
                              §§push(_loc5_);
                           }
                           if(!_loc6_)
                           {
                              §§push(1);
                              if(_loc7_)
                              {
                                 §§push(2.75);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(!_loc6_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(param3);
                                             if(!(_loc6_ && Boolean(param3)))
                                             {
                                                §§push(7.5625);
                                                if(!(_loc6_ && Boolean(param2)))
                                                {
                                                   §§push(param1);
                                                   if(!(_loc6_ && Boolean(param1)))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc6_ && Boolean(param1)))
                                                      {
                                                         addr00d9:
                                                         §§push(param1);
                                                         if(!(_loc6_ && Boolean(param1)))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc6_ && Boolean(param3)))
                                                               {
                                                                  §§push(param2);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc7_ || Boolean(param1))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr03e0:
                                                                     §§push(param1);
                                                                     if(_loc7_ || Bounce)
                                                                     {
                                                                        §§goto(addr03fc);
                                                                     }
                                                                     §§goto(addr0405);
                                                                  }
                                                               }
                                                               §§goto(addr0246);
                                                            }
                                                            else
                                                            {
                                                               addr0358:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc7_ || Bounce)
                                                               {
                                                                  §§goto(addr0367);
                                                               }
                                                               else
                                                               {
                                                                  addr0377:
                                                                  §§push(7.5625);
                                                                  if(_loc7_ || Boolean(param3))
                                                                  {
                                                                     addr0387:
                                                                     §§push(param1);
                                                                     if(_loc7_ || Boolean(param3))
                                                                     {
                                                                        §§push(2.625);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr039e:
                                                                           addr03a0:
                                                                           §§push(§§pop() / 2.75);
                                                                           if(_loc7_)
                                                                           {
                                                                              addr03a7:
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr03ae:
                                                                                 var _temp_20:* = §§pop();
                                                                                 §§goto(addr03af);
                                                                              }
                                                                              §§goto(addr03d9);
                                                                           }
                                                                        }
                                                                        addr03af:
                                                                        _loc5_ = §§pop();
                                                                        §§push(_loc5_);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc6_ && Boolean(param3)))
                                                                           {
                                                                              addr03c6:
                                                                              param1 = §§pop();
                                                                              addr03c7:
                                                                              §§push(_loc5_);
                                                                           }
                                                                        }
                                                                        if(!(_loc6_ && Boolean(param2)))
                                                                        {
                                                                           addr03d9:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr03e0);
                                                                           }
                                                                           §§goto(addr0403);
                                                                        }
                                                                        addr03fc:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           addr0405:
                                                                           addr0403:
                                                                           §§push(§§pop() + 0.984375);
                                                                           if(_loc7_ || Boolean(param2))
                                                                           {
                                                                              §§goto(addr0414);
                                                                           }
                                                                           §§goto(addr041c);
                                                                        }
                                                                        §§goto(addr0414);
                                                                     }
                                                                     §§goto(addr03ae);
                                                                  }
                                                               }
                                                            }
                                                            addr0414:
                                                            §§goto(addr041d);
                                                         }
                                                         §§goto(addr03d9);
                                                      }
                                                      else
                                                      {
                                                         addr013d:
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(param3);
                                                               if(_loc7_ || Boolean(param1))
                                                               {
                                                                  §§push(7.5625);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(param1);
                                                                     if(!(_loc6_ && Boolean(param3)))
                                                                     {
                                                                        §§push(1.5);
                                                                        if(!(_loc6_ && Boolean(param2)))
                                                                        {
                                                                           §§push(2.75);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc6_ && Bounce))
                                                                                 {
                                                                                    var _temp_27:* = §§pop();
                                                                                    §§push(_temp_27);
                                                                                    §§push(_temp_27);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             param1 = §§pop();
                                                                                             if(!(_loc6_ && Boolean(param1)))
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(!(_loc6_ && Boolean(param2)))
                                                                                                {
                                                                                                   addr01d0:
                                                                                                   if(!(_loc6_ && Boolean(param1)))
                                                                                                   {
                                                                                                      addr01e0:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc7_ || Bounce)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         if(!(_loc6_ && Bounce))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr0212:
                                                                                                               §§push(0.75);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        addr0228:
                                                                                                                        §§push(param2);
                                                                                                                        if(!(_loc6_ && Boolean(param3)))
                                                                                                                        {
                                                                                                                           addr0237:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc7_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              §§goto(addr0246);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr0351:
                                                                                                                              §§push(param2);
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 §§goto(addr0358);
                                                                                                                              }
                                                                                                                              §§goto(addr041c);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0387);
                                                                                                                     }
                                                                                                                     §§goto(addr041b);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr031d:
                                                                                                                     §§push(param1);
                                                                                                                     if(!(_loc6_ && Bounce))
                                                                                                                     {
                                                                                                                        addr032c:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           addr0333:
                                                                                                                           §§push(0.9375);
                                                                                                                           if(!(_loc6_ && Bounce))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr0351);
                                                                                                                                 }
                                                                                                                                 §§goto(addr041b);
                                                                                                                              }
                                                                                                                              §§goto(addr03e0);
                                                                                                                           }
                                                                                                                           §§goto(addr03ae);
                                                                                                                        }
                                                                                                                        §§goto(addr0387);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr03ae);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0274:
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr0285:
                                                                                                                           §§push(param3);
                                                                                                                           if(_loc7_ || Boolean(param3))
                                                                                                                           {
                                                                                                                              §§push(7.5625);
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 addr029c:
                                                                                                                                 §§push(param1);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    addr02a3:
                                                                                                                                    §§push(2.25);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       addr02ab:
                                                                                                                                       §§push(2.75);
                                                                                                                                       if(!(_loc6_ && Bounce))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                          if(!(_loc6_ && Bounce))
                                                                                                                                          {
                                                                                                                                             addr02ca:
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                var _temp_40:* = §§pop();
                                                                                                                                                §§push(_temp_40);
                                                                                                                                                §§push(_temp_40);
                                                                                                                                                if(_loc7_ || Boolean(param2))
                                                                                                                                                {
                                                                                                                                                   addr02e0:
                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      addr02e8:
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(_loc7_ || Boolean(param3))
                                                                                                                                                      {
                                                                                                                                                         addr02f7:
                                                                                                                                                         param1 = §§pop();
                                                                                                                                                         if(_loc7_ || Boolean(param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr0316:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr031d);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0333);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0405);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03c6);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr03c7);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03c6);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02f7);
                                                                                                                                                }
                                                                                                                                                §§goto(addr03af);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03fc);
                                                                                                                                          }
                                                                                                                                          §§goto(addr039e);
                                                                                                                                       }
                                                                                                                                       §§goto(addr03a0);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02ca);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0316);
                                                                                                                              }
                                                                                                                              §§goto(addr03e0);
                                                                                                                           }
                                                                                                                           §§goto(addr041b);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr0368:
                                                                                                                           §§push(param3);
                                                                                                                           if(_loc7_ || Bounce)
                                                                                                                           {
                                                                                                                              §§goto(addr0377);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr041d);
                                                                                                                     }
                                                                                                                     §§goto(addr0368);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0387);
                                                                                                            }
                                                                                                            §§goto(addr0358);
                                                                                                         }
                                                                                                         §§goto(addr02a3);
                                                                                                      }
                                                                                                      §§goto(addr0403);
                                                                                                   }
                                                                                                   §§goto(addr0405);
                                                                                                }
                                                                                                §§goto(addr02e8);
                                                                                             }
                                                                                             §§goto(addr03c7);
                                                                                          }
                                                                                          §§goto(addr01d0);
                                                                                       }
                                                                                       §§goto(addr03c6);
                                                                                    }
                                                                                    §§goto(addr03a7);
                                                                                 }
                                                                                 §§goto(addr01e0);
                                                                              }
                                                                              §§goto(addr02ab);
                                                                           }
                                                                           §§goto(addr03a0);
                                                                        }
                                                                        §§goto(addr02e0);
                                                                     }
                                                                     §§goto(addr0274);
                                                                  }
                                                                  §§goto(addr0212);
                                                               }
                                                               §§goto(addr0377);
                                                            }
                                                            §§goto(addr0285);
                                                         }
                                                         else
                                                         {
                                                            addr0255:
                                                            §§push(param1);
                                                            if(_loc7_)
                                                            {
                                                               §§push(2.5);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(2.75);
                                                                  if(_loc7_ || Bounce)
                                                                  {
                                                                     §§goto(addr0274);
                                                                  }
                                                                  §§goto(addr032c);
                                                               }
                                                               §§goto(addr031d);
                                                            }
                                                         }
                                                      }
                                                      addr0367:
                                                      return §§pop();
                                                   }
                                                   §§goto(addr0316);
                                                }
                                                §§goto(addr00d9);
                                             }
                                             §§goto(addr0377);
                                          }
                                          §§goto(addr0255);
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          if(_loc7_)
                                          {
                                             addr012e:
                                             addr012c:
                                             §§push(2 / 2.75);
                                             if(!(_loc6_ && Boolean(param1)))
                                             {
                                                §§goto(addr013d);
                                             }
                                             §§goto(addr029c);
                                          }
                                       }
                                       addr0246:
                                       return §§pop();
                                    }
                                    §§goto(addr0333);
                                 }
                                 §§goto(addr012e);
                              }
                              §§goto(addr012c);
                           }
                           §§goto(addr041b);
                        }
                        §§goto(addr0070);
                     }
                     §§goto(addr0237);
                  }
                  §§goto(addr0228);
               }
               §§goto(addr0212);
            }
            addr041d:
            §§push(§§pop() * §§pop());
            if(!_loc6_)
            {
               addr041c:
               addr041b:
               return §§pop() + param2;
            }
         }
         §§goto(addr0368);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param3);
         if(_loc6_)
         {
            §§push(§§findproperty(easeOut));
            §§push(param4);
            if(_loc6_)
            {
               §§push(§§pop() - param1);
            }
            §§push(§§pop().easeOut(§§pop(),0,param3,param4));
            if(_loc6_)
            {
               §§goto(addr004d);
            }
            §§goto(addr004c);
         }
         addr004d:
         §§push(§§pop() - §§pop());
         if(_loc6_)
         {
            addr004c:
            return §§pop() + param2;
         }
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!(_loc5_ && Bounce))
         {
            §§push(param1);
            if(!(_loc5_ && Boolean(param3)))
            {
               §§push(param4);
               if(_loc6_ || Bounce)
               {
                  §§push(0.5);
                  if(!_loc5_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc5_ && Boolean(param3)))
                     {
                        if(§§pop() < §§pop())
                        {
                           if(_loc6_)
                           {
                              §§push(§§findproperty(easeIn));
                              §§push(param1);
                              if(!(_loc5_ && Boolean(param3)))
                              {
                                 §§push(2);
                                 if(_loc6_)
                                 {
                                    addr007d:
                                    §§push(§§pop() * §§pop());
                                    §§push(0);
                                 }
                                 §§push(§§pop().easeIn(§§pop(),§§pop(),param3,param4));
                                 if(!(_loc5_ && Boolean(param3)))
                                 {
                                    §§push(0.5);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc5_ && Bounce))
                                       {
                                          addr00b8:
                                          §§push(param2);
                                          if(!(_loc5_ && Bounce))
                                          {
                                             addr00c7:
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_)
                                             {
                                                return §§pop();
                                             }
                                             addr010a:
                                             §§push(0.5);
                                             if(_loc6_ || Boolean(param1))
                                             {
                                                §§goto(addr011a);
                                             }
                                             §§goto(addr013a);
                                          }
                                          §§goto(addr011a);
                                       }
                                       §§goto(addr0152);
                                    }
                                    addr011a:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc5_)
                                    {
                                       addr012b:
                                       §§push(param3);
                                       if(_loc6_ || Boolean(param2))
                                       {
                                          addr013a:
                                          addr013c:
                                          §§push(§§pop() * 0.5);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr0143);
                                          }
                                          §§goto(addr0153);
                                       }
                                       addr0143:
                                    }
                                    §§goto(addr0154);
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr007d);
                           }
                           else
                           {
                              addr00cf:
                              §§push(§§findproperty(easeOut));
                              §§push(param1);
                              if(_loc6_)
                              {
                                 §§push(2);
                                 if(_loc6_ || Boolean(param1))
                                 {
                                    addr00fb:
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc5_ && Boolean(param2)))
                                    {
                                       §§push(§§pop() - param4);
                                    }
                                    §§push(0);
                                 }
                                 §§push(§§pop().easeOut(§§pop(),§§pop(),param3,param4));
                                 if(!_loc5_)
                                 {
                                    §§goto(addr010a);
                                 }
                                 §§goto(addr012b);
                              }
                              §§goto(addr00fb);
                           }
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr013c);
               }
               §§goto(addr0143);
            }
            addr0154:
            §§push(§§pop() + §§pop());
            if(!(_loc5_ && Boolean(param3)))
            {
               addr0153:
               addr0152:
               return §§pop() + param2;
            }
         }
         §§goto(addr00cf);
      }
   }
}

