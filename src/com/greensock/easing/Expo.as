package com.greensock.easing
{
   public class Expo
   {
      
      public function Expo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!(_loc5_ && Expo))
         {
            §§push(param1);
            if(_loc6_ || Expo)
            {
               §§push(param4);
               if(!_loc5_)
               {
                  if(§§pop() == §§pop())
                  {
                     addr0040:
                     §§push(param2);
                     if(_loc6_)
                     {
                        §§push(param3);
                        if(_loc6_ || Boolean(param3))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              addr0067:
                              §§push(§§pop());
                              if(_loc5_ && Boolean(param3))
                              {
                                 addr00d4:
                                 §§push(§§pop());
                              }
                           }
                           else
                           {
                              addr0081:
                              §§push(-Math.pow(2,-10 * param1 / param4));
                              if(!(_loc5_ && Boolean(param2)))
                              {
                                 §§push(§§pop() + 1);
                                 if(!(_loc5_ && Boolean(param2)))
                                 {
                                    §§goto(addr00bd);
                                 }
                                 §§goto(addr00cd);
                              }
                              addr00bd:
                              §§push(§§pop() * §§pop());
                              if(_loc6_ || Expo)
                              {
                                 addr00cd:
                                 addr00cc:
                                 §§push(§§pop() + param2);
                                 if(_loc6_)
                                 {
                                    §§goto(addr00d4);
                                 }
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00d5);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr0067);
                  }
                  else
                  {
                     §§push(param3);
                     if(_loc6_)
                     {
                        §§goto(addr0081);
                     }
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr00bd);
            }
            addr00d5:
            return §§pop();
         }
         §§goto(addr0040);
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc5_ && Boolean(param1)))
            {
               if(§§pop() == 0)
               {
                  §§goto(addr0030);
               }
               else
               {
                  §§push(param3);
                  if(!_loc5_)
                  {
                     §§goto(addr0065);
                  }
               }
               §§goto(addr00af);
            }
            §§goto(addr0065);
         }
         addr0030:
         §§push(param2);
         if(_loc6_ || Boolean(param3))
         {
            §§push(§§pop());
            if(_loc5_ && Boolean(param1))
            {
               addr0096:
               §§push(param3);
               if(_loc6_ || Expo)
               {
                  addr00a5:
                  §§push(§§pop() * 0.001);
               }
               §§push(§§pop() - §§pop());
               if(_loc6_)
               {
                  addr00af:
                  §§push(§§pop());
               }
            }
         }
         else
         {
            addr0065:
            §§push(§§pop() * Math.pow(2,10 * (param1 / param4 - 1)));
            if(!_loc5_)
            {
               §§push(param2);
               if(!_loc5_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc6_)
                  {
                     §§goto(addr0096);
                  }
                  §§goto(addr00b0);
               }
               §§goto(addr00a5);
            }
         }
         addr00b0:
         return §§pop();
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_)
         {
            §§push(param1);
            if(_loc7_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc7_ || Boolean(param1))
                     {
                        §§push(param2);
                        if(_loc7_)
                        {
                           return §§pop();
                        }
                        §§goto(addr0117);
                     }
                     else
                     {
                        addr0089:
                        §§push(param1);
                        if(_loc7_ || Boolean(param2))
                        {
                           §§goto(addr0098);
                        }
                     }
                     §§goto(addr0151);
                  }
                  else
                  {
                     addr004c:
                     §§push(param1);
                     if(_loc7_)
                     {
                        §§push(param4);
                        if(!_loc6_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc7_ || Boolean(param1))
                              {
                                 §§push(param2);
                                 if(!_loc6_)
                                 {
                                    §§push(param3);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc6_)
                                       {
                                          return §§pop();
                                       }
                                       addr0098:
                                       §§push(param4);
                                       if(_loc7_ || Expo)
                                       {
                                          addr00a8:
                                          §§push(§§pop() * 0.5);
                                          if(!_loc6_)
                                          {
                                             addr00b1:
                                             §§push(§§pop() / §§pop());
                                             if(_loc7_ || Boolean(param1))
                                             {
                                                var _temp_10:* = §§pop();
                                                §§push(_temp_10);
                                                §§push(_temp_10);
                                                if(_loc7_)
                                                {
                                                   var _loc5_:* = §§pop();
                                                   if(!(_loc6_ && Boolean(param2)))
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         addr00ea:
                                                         param1 = §§pop();
                                                         §§push(_loc5_);
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         addr00f7:
                                                         addr00f5:
                                                         if(§§pop() < 1)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addr0101:
                                                               §§push(param3);
                                                               if(_loc7_)
                                                               {
                                                                  §§goto(addr0108);
                                                               }
                                                               §§goto(addr01a4);
                                                            }
                                                            else
                                                            {
                                                               addr0142:
                                                               §§push(param3);
                                                               if(!(_loc6_ && Boolean(param3)))
                                                               {
                                                                  addr0151:
                                                                  §§push(0.5);
                                                                  if(_loc7_ || Expo)
                                                                  {
                                                                     addr0161:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(-Math.pow(2,-10 * --param1));
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() + 2);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr01a6);
                                                                           }
                                                                        }
                                                                        §§goto(addr01a5);
                                                                     }
                                                                     addr01a6:
                                                                  }
                                                                  §§goto(addr0195);
                                                               }
                                                            }
                                                            §§goto(addr01a6);
                                                         }
                                                         §§goto(addr0142);
                                                      }
                                                      addr0108:
                                                      §§push(0.5);
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr0110);
                                                      }
                                                      addr0195:
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc6_ && Boolean(param3)))
                                                      {
                                                         addr01a5:
                                                         addr01a4:
                                                         return §§pop() + param2;
                                                      }
                                                   }
                                                   §§goto(addr00ea);
                                                }
                                                §§goto(addr0161);
                                             }
                                             §§goto(addr01a6);
                                          }
                                       }
                                       addr0110:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc6_)
                                       {
                                          addr0117:
                                          §§push(§§pop() * Math.pow(2,10 * (param1 - 1)));
                                          if(_loc7_)
                                          {
                                             §§push(param2);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc6_ && Boolean(param1)))
                                                {
                                                   §§goto(addr0141);
                                                }
                                                else
                                                {
                                                   §§goto(addr0151);
                                                }
                                             }
                                             §§goto(addr0161);
                                          }
                                          §§goto(addr0141);
                                       }
                                       addr0141:
                                       return §§pop();
                                    }
                                    §§goto(addr00b1);
                                 }
                                 §§goto(addr01a6);
                              }
                              §§goto(addr0101);
                           }
                           else
                           {
                              §§goto(addr0089);
                           }
                        }
                        §§goto(addr00a8);
                     }
                  }
                  §§goto(addr01a6);
               }
               §§goto(addr00f7);
            }
            §§goto(addr00f5);
         }
         §§goto(addr004c);
      }
   }
}

