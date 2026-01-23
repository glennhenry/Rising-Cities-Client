package com.greensock.easing
{
   public class Elastic
   {
      
      private static const _2PI:Number;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _2PI = Math.PI * 2;
      }
      
      public function Elastic()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0) : Number
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc7_:* = NaN;
         if(_loc10_)
         {
            §§push(param1);
            if(!_loc9_)
            {
               §§push(0);
               if(_loc10_ || Boolean(param2))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc9_)
                     {
                        §§push(param2);
                        if(!_loc9_)
                        {
                           §§goto(addr0046);
                        }
                        else
                        {
                           addr0308:
                           §§push(§§pop() * Math.pow(2,10 * (param1 = param1 - 1)));
                           if(_loc10_ || Elastic)
                           {
                              addr032d:
                              §§push(§§pop() * Math.sin((param1 * param4 - _loc7_) * _2PI / param6));
                              if(!_loc9_)
                              {
                                 §§goto(addr0355);
                              }
                              §§goto(addr0364);
                           }
                        }
                     }
                     else
                     {
                        addr00b6:
                        §§push(param2);
                        if(!(_loc9_ && Boolean(param1)))
                        {
                           §§push(param3);
                           if(_loc10_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc10_)
                              {
                                 return §§pop();
                              }
                              addr0132:
                              §§push(!§§pop());
                              if(!_loc9_)
                              {
                                 var _temp_7:* = §§pop();
                                 §§push(_temp_7);
                                 §§push(_temp_7);
                                 if(!_loc9_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc10_ || Boolean(param1))
                                       {
                                          §§pop();
                                          if(!(_loc9_ && Boolean(param2)))
                                          {
                                             addr0161:
                                             §§push(param3);
                                             if(!(_loc9_ && Elastic))
                                             {
                                                §§push(0);
                                                if(!(_loc9_ && Boolean(param2)))
                                                {
                                                   addr0180:
                                                   §§push(§§pop() > §§pop());
                                                   if(_loc10_)
                                                   {
                                                      var _temp_12:* = §§pop();
                                                      §§push(_temp_12);
                                                      §§push(_temp_12);
                                                      if(_loc10_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               addr0198:
                                                               §§pop();
                                                               if(!(_loc9_ && Boolean(param1)))
                                                               {
                                                                  addr01b4:
                                                                  §§push(param5);
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr01bc:
                                                                     §§push(param3);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(§§pop() < §§pop());
                                                                        if(!(_loc9_ && Elastic))
                                                                        {
                                                                           addr01d2:
                                                                           var _temp_15:* = §§pop();
                                                                           §§push(_temp_15);
                                                                           §§push(_temp_15);
                                                                           if(_loc10_ || Boolean(param1))
                                                                           {
                                                                              addr01e1:
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc10_ || Boolean(param3))
                                                                                 {
                                                                                    addr01f3:
                                                                                    §§pop();
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr01fa:
                                                                                       §§push(param3);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc10_ || Boolean(param3))
                                                                                          {
                                                                                             addr0211:
                                                                                             §§push(§§pop() < §§pop());
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr0218:
                                                                                                var _temp_19:* = §§pop();
                                                                                                addr0219:
                                                                                                §§push(_temp_19);
                                                                                                if(_temp_19)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr0223:
                                                                                                      §§pop();
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(param5);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§push(param3);
                                                                                                            if(!(_loc9_ && Boolean(param3)))
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(_loc10_ || Boolean(param2))
                                                                                                               {
                                                                                                                  addr0251:
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr025b:
                                                                                                                        §§push(param3);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              addr0269:
                                                                                                                              param5 = §§pop();
                                                                                                                              if(!(_loc9_ && Elastic))
                                                                                                                              {
                                                                                                                                 §§push(param6);
                                                                                                                                 if(_loc10_ || Boolean(param1))
                                                                                                                                 {
                                                                                                                                    addr028b:
                                                                                                                                    addr0289:
                                                                                                                                    §§push(§§pop() / 4);
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(_loc10_ || Boolean(param3))
                                                                                                                                       {
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr0300:
                                                                                                                                          §§push(param5);
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0308);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr02ef:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!(_loc9_ && Boolean(param3)))
                                                                                                                                          {
                                                                                                                                             addr02fe:
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             §§goto(addr0300);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr0355:
                                                                                                                                       §§goto(addr0366);
                                                                                                                                    }
                                                                                                                                    §§goto(addr032d);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0364);
                                                                                                                              }
                                                                                                                              §§goto(addr0300);
                                                                                                                           }
                                                                                                                           §§goto(addr0366);
                                                                                                                        }
                                                                                                                        §§goto(addr0364);
                                                                                                                     }
                                                                                                                     §§goto(addr0300);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(param6);
                                                                                                                     if(!(_loc9_ && Elastic))
                                                                                                                     {
                                                                                                                        §§push(_2PI);
                                                                                                                        if(!(_loc9_ && Boolean(param2)))
                                                                                                                        {
                                                                                                                           addr02ce:
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              addr02d5:
                                                                                                                              §§push(§§pop() * Math.asin(param3 / param5));
                                                                                                                              if(_loc10_ || Boolean(param2))
                                                                                                                              {
                                                                                                                                 §§goto(addr02ef);
                                                                                                                              }
                                                                                                                              §§goto(addr0308);
                                                                                                                           }
                                                                                                                           §§goto(addr0355);
                                                                                                                        }
                                                                                                                        §§goto(addr0365);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr02ef);
                                                                                                               }
                                                                                                               §§goto(addr02ce);
                                                                                                            }
                                                                                                            §§goto(addr0365);
                                                                                                         }
                                                                                                         addr0366:
                                                                                                         §§push(-§§pop());
                                                                                                         if(_loc10_ || Boolean(param1))
                                                                                                         {
                                                                                                            addr0364:
                                                                                                            addr0365:
                                                                                                            return §§pop() + param2;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0300);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0251);
                                                                                             }
                                                                                             §§goto(addr0223);
                                                                                          }
                                                                                          §§goto(addr028b);
                                                                                       }
                                                                                       §§goto(addr02fe);
                                                                                    }
                                                                                    §§goto(addr025b);
                                                                                 }
                                                                                 §§goto(addr0223);
                                                                              }
                                                                              §§goto(addr0251);
                                                                           }
                                                                           §§goto(addr0219);
                                                                        }
                                                                        §§goto(addr01f3);
                                                                     }
                                                                     §§goto(addr02ce);
                                                                  }
                                                                  §§goto(addr032d);
                                                               }
                                                               §§goto(addr0300);
                                                            }
                                                            §§goto(addr0218);
                                                         }
                                                         §§goto(addr01d2);
                                                      }
                                                      §§goto(addr01e1);
                                                   }
                                                   §§goto(addr0218);
                                                }
                                                §§goto(addr0211);
                                             }
                                             §§goto(addr0364);
                                          }
                                          §§goto(addr0300);
                                       }
                                       §§goto(addr0223);
                                    }
                                    §§goto(addr01d2);
                                 }
                                 §§goto(addr0219);
                              }
                              §§goto(addr0198);
                           }
                           §§goto(addr0365);
                        }
                        §§goto(addr0269);
                     }
                     §§goto(addr0355);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc10_ || Boolean(param2))
                     {
                        §§push(param4);
                        if(_loc10_)
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc10_ || Boolean(param3))
                           {
                              var _temp_31:* = §§pop();
                              §§push(_temp_31);
                              §§push(_temp_31);
                              if(!_loc9_)
                              {
                                 var _loc8_:* = §§pop();
                                 if(_loc10_ || Elastic)
                                 {
                                    §§push(§§pop());
                                    if(!_loc9_)
                                    {
                                       param1 = §§pop();
                                       §§push(_loc8_);
                                    }
                                 }
                                 if(_loc10_ || Boolean(param1))
                                 {
                                    §§push(1);
                                    if(_loc10_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             §§goto(addr00b6);
                                          }
                                          §§goto(addr01fa);
                                       }
                                       else
                                       {
                                          §§push(param6);
                                          if(!(_loc9_ && Elastic))
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   §§push(param4);
                                                   if(_loc10_)
                                                   {
                                                      §§push(0.3);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc10_ || Boolean(param1))
                                                            {
                                                               param6 = §§pop();
                                                               if(_loc10_)
                                                               {
                                                                  addr0122:
                                                                  §§push(param5);
                                                                  if(!(_loc9_ && Boolean(param1)))
                                                                  {
                                                                     §§goto(addr0132);
                                                                  }
                                                                  §§goto(addr02fe);
                                                               }
                                                               §§goto(addr0161);
                                                            }
                                                            §§goto(addr01bc);
                                                         }
                                                         §§goto(addr0308);
                                                      }
                                                      §§goto(addr0365);
                                                   }
                                                   §§goto(addr0289);
                                                }
                                                §§goto(addr0161);
                                             }
                                             §§goto(addr0122);
                                          }
                                       }
                                       §§goto(addr02fe);
                                    }
                                    §§goto(addr0180);
                                 }
                                 §§goto(addr02d5);
                              }
                              §§goto(addr0365);
                           }
                           §§goto(addr0308);
                        }
                        §§goto(addr02ce);
                     }
                  }
                  §§goto(addr0132);
               }
               §§goto(addr028b);
            }
            addr0046:
            return §§pop();
         }
         §§goto(addr01b4);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0) : Number
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc7_:* = NaN;
         if(!(_loc10_ && Boolean(param2)))
         {
            §§push(param1);
            if(_loc9_ || Elastic)
            {
               §§push(0);
               if(!(_loc10_ && Boolean(param1)))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc9_ || Elastic)
                     {
                        §§push(param2);
                        if(_loc9_ || Elastic)
                        {
                           return §§pop();
                        }
                        addr00a9:
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        §§push(_temp_6);
                        if(!_loc10_)
                        {
                           var _loc8_:* = §§pop();
                           if(_loc9_)
                           {
                              §§push(§§pop());
                              if(_loc9_ || Elastic)
                              {
                                 addr00c7:
                                 param1 = §§pop();
                                 §§push(_loc8_);
                              }
                              if(_loc9_)
                              {
                                 §§push(2);
                                 if(_loc9_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc9_ || Elastic)
                                       {
                                          §§push(param2);
                                          if(!_loc10_)
                                          {
                                             §§push(param3);
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc9_)
                                                {
                                                   §§goto(addr0101);
                                                }
                                                else
                                                {
                                                   addr043f:
                                                   §§push(§§pop() * Math.sin((param1 * param4 - _loc7_) * _2PI / param6));
                                                   if(!(_loc10_ && Boolean(param3)))
                                                   {
                                                      §§goto(addr046f);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr03ac:
                                                §§push(§§pop() * Math.pow(2,10 * (param1 = param1 - 1)));
                                                if(!_loc10_)
                                                {
                                                   addr03c9:
                                                   §§push(§§pop() * Math.sin((param1 * param4 - _loc7_) * _2PI / param6));
                                                   if(_loc9_ || Boolean(param1))
                                                   {
                                                      addr03ec:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         addr03f3:
                                                         §§push(param2);
                                                         if(_loc9_)
                                                         {
                                                            addr03fa:
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc9_ || Boolean(param2))
                                                            {
                                                               §§goto(addr0409);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr046f);
                                                            }
                                                         }
                                                         §§goto(addr0495);
                                                      }
                                                      §§goto(addr0494);
                                                   }
                                                   §§goto(addr03fa);
                                                }
                                                §§goto(addr03ec);
                                             }
                                          }
                                          §§goto(addr0494);
                                       }
                                       else
                                       {
                                          addr0381:
                                          §§push(param1);
                                          if(!(_loc10_ && Elastic))
                                          {
                                             addr0392:
                                             if(§§pop() < 1)
                                             {
                                                if(_loc9_)
                                                {
                                                   addr039c:
                                                   §§push(-0.5);
                                                   if(!_loc10_)
                                                   {
                                                      addr03a4:
                                                      §§push(param5);
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr03ac);
                                                      }
                                                      §§goto(addr03ec);
                                                   }
                                                   §§goto(addr03f3);
                                                }
                                                else
                                                {
                                                   addr040a:
                                                   §§push(param5);
                                                   if(_loc9_ || Elastic)
                                                   {
                                                      §§push(§§pop() * Math.pow(2,-10 * (param1 = param1 - 1)));
                                                      if(_loc9_ || Boolean(param1))
                                                      {
                                                         §§goto(addr043f);
                                                      }
                                                      §§goto(addr0496);
                                                   }
                                                }
                                                §§goto(addr046f);
                                             }
                                             §§goto(addr040a);
                                          }
                                       }
                                       §§goto(addr043f);
                                    }
                                    else
                                    {
                                       §§push(param6);
                                       if(_loc9_ || Boolean(param2))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc10_ && Boolean(param1)))
                                             {
                                                §§push(param4);
                                                if(!_loc10_)
                                                {
                                                   §§push(0.3);
                                                   if(!(_loc10_ && Elastic))
                                                   {
                                                      addr0144:
                                                      §§push(§§pop() * 1.5);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc9_ || Elastic)
                                                            {
                                                               param6 = §§pop();
                                                               if(_loc9_)
                                                               {
                                                                  addr0169:
                                                                  §§push(param5);
                                                                  if(!(_loc10_ && Boolean(param2)))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!_loc10_)
                                                                     {
                                                                        var _temp_23:* = §§pop();
                                                                        §§push(_temp_23);
                                                                        §§push(_temp_23);
                                                                        if(_loc9_ || Boolean(param1))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc9_ || Boolean(param3))
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§goto(addr01a8);
                                                                                 }
                                                                                 §§goto(addr02e6);
                                                                              }
                                                                           }
                                                                           §§goto(addr022c);
                                                                        }
                                                                        §§goto(addr0233);
                                                                     }
                                                                     §§goto(addr01f7);
                                                                  }
                                                                  §§goto(addr01b7);
                                                               }
                                                               §§goto(addr0257);
                                                            }
                                                            §§goto(addr0358);
                                                         }
                                                         §§goto(addr03a4);
                                                      }
                                                      §§goto(addr047f);
                                                   }
                                                   §§goto(addr03ac);
                                                }
                                                §§goto(addr03a4);
                                             }
                                             §§goto(addr039c);
                                          }
                                          §§goto(addr0169);
                                       }
                                       §§goto(addr0266);
                                    }
                                 }
                                 §§goto(addr01c7);
                              }
                              addr0409:
                              return §§pop();
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr03ac);
                     }
                     else
                     {
                        addr006c:
                        §§push(param1);
                        if(!_loc10_)
                        {
                           §§push(param4);
                           if(!(_loc10_ && Boolean(param3)))
                           {
                              §§push(0.5);
                              if(_loc9_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc10_ && Boolean(param3)))
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc9_ || Boolean(param3))
                                    {
                                       §§goto(addr00a9);
                                    }
                                    §§goto(addr0494);
                                 }
                                 §§goto(addr0495);
                              }
                              §§goto(addr0144);
                           }
                           §§goto(addr0495);
                        }
                     }
                     §§goto(addr0358);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0276);
            }
            addr0101:
            return §§pop();
         }
         addr01a8:
         §§push(param3);
         if(_loc9_ || Boolean(param3))
         {
            addr01b7:
            §§push(0);
            if(!(_loc10_ && Elastic))
            {
               addr01c7:
               §§push(§§pop() > §§pop());
               if(!(_loc10_ && Elastic))
               {
                  var _temp_29:* = §§pop();
                  §§push(_temp_29);
                  §§push(_temp_29);
                  if(!(_loc10_ && Boolean(param3)))
                  {
                     if(§§pop())
                     {
                        if(!(_loc10_ && Boolean(param3)))
                        {
                           addr01f7:
                           §§pop();
                           if(_loc9_)
                           {
                              §§push(param5);
                              if(_loc9_ || Elastic)
                              {
                                 §§push(param3);
                                 if(_loc9_ || Boolean(param1))
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(!(_loc10_ && Elastic))
                                    {
                                       addr022c:
                                       var _temp_35:* = §§pop();
                                       §§push(_temp_35);
                                       §§push(_temp_35);
                                       if(_loc9_)
                                       {
                                          addr0233:
                                          if(!§§pop())
                                          {
                                             if(!_loc10_)
                                             {
                                                §§pop();
                                                if(!(_loc10_ && Boolean(param3)))
                                                {
                                                   addr0257:
                                                   §§push(param3);
                                                   if(_loc9_ || Elastic)
                                                   {
                                                      addr0266:
                                                      §§push(0);
                                                      if(_loc9_ || Boolean(param1))
                                                      {
                                                         addr0276:
                                                         §§push(§§pop() < §§pop());
                                                         if(_loc9_ || Boolean(param3))
                                                         {
                                                            var _temp_40:* = §§pop();
                                                            addr0286:
                                                            §§push(_temp_40);
                                                            if(_temp_40)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  addr0290:
                                                                  §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(param5);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(param3);
                                                                        if(_loc9_ || Boolean(param1))
                                                                        {
                                                                           addr02ae:
                                                                           §§push(-§§pop());
                                                                           if(!(_loc10_ && Boolean(param3)))
                                                                           {
                                                                              addr02be:
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if(!(_loc10_ && Elastic))
                                                                                 {
                                                                                    §§push(param3);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          param5 = §§pop();
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr02e6:
                                                                                             §§push(param6);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr02ee:
                                                                                                §§push(4);
                                                                                                if(!(_loc10_ && Boolean(param3)))
                                                                                                {
                                                                                                   addr02fe:
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc9_ || Boolean(param1))
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc10_ && Boolean(param2)))
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         if(!(_loc10_ && Boolean(param1)))
                                                                                                         {
                                                                                                            §§goto(addr0381);
                                                                                                         }
                                                                                                         §§goto(addr039c);
                                                                                                      }
                                                                                                      §§goto(addr0494);
                                                                                                   }
                                                                                                   §§goto(addr03a4);
                                                                                                }
                                                                                                §§goto(addr0392);
                                                                                             }
                                                                                             §§goto(addr0496);
                                                                                          }
                                                                                          §§goto(addr0381);
                                                                                       }
                                                                                       §§goto(addr043f);
                                                                                    }
                                                                                    §§goto(addr02ee);
                                                                                 }
                                                                                 §§goto(addr0381);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(param6);
                                                                                 if(!(_loc10_ && Boolean(param3)))
                                                                                 {
                                                                                    §§push(_2PI);
                                                                                    if(!(_loc10_ && Boolean(param2)))
                                                                                    {
                                                                                       addr0351:
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§goto(addr0358);
                                                                                       }
                                                                                       §§goto(addr0496);
                                                                                    }
                                                                                    §§goto(addr03c9);
                                                                                 }
                                                                                 §§goto(addr036a);
                                                                              }
                                                                           }
                                                                           §§goto(addr0351);
                                                                        }
                                                                        §§goto(addr03ac);
                                                                     }
                                                                     addr0358:
                                                                     §§push(§§pop() * Math.asin(param3 / param5));
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr036a:
                                                                        §§push(§§pop());
                                                                        if(_loc9_ || Elastic)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§goto(addr0381);
                                                                           }
                                                                           §§goto(addr040a);
                                                                        }
                                                                        §§goto(addr043f);
                                                                     }
                                                                     §§goto(addr046f);
                                                                  }
                                                                  §§goto(addr0381);
                                                               }
                                                            }
                                                            §§goto(addr02be);
                                                         }
                                                         §§goto(addr0290);
                                                      }
                                                      §§goto(addr0392);
                                                   }
                                                   §§goto(addr03a4);
                                                }
                                                §§goto(addr040a);
                                             }
                                          }
                                          §§goto(addr02be);
                                       }
                                       §§goto(addr0286);
                                    }
                                    §§goto(addr02be);
                                 }
                                 §§goto(addr02ae);
                              }
                              §§goto(addr0266);
                           }
                           §§goto(addr040a);
                        }
                        §§goto(addr0290);
                     }
                     §§goto(addr022c);
                  }
                  §§goto(addr0233);
               }
               §§goto(addr02be);
            }
            §§goto(addr02fe);
         }
         addr046f:
         §§push(0.5);
         if(_loc9_ || Boolean(param2))
         {
            addr047f:
            §§push(§§pop() * §§pop());
            if(!_loc10_)
            {
               §§push(param3);
               if(_loc9_)
               {
                  §§goto(addr0496);
               }
               §§goto(addr0495);
            }
            addr0496:
            §§goto(addr048d);
         }
         addr048d:
         §§push(§§pop() + §§pop());
         if(_loc9_)
         {
            addr0495:
            addr0494:
            return §§pop() + param2;
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0) : Number
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc7_:* = NaN;
         if(!(_loc10_ && Boolean(param2)))
         {
            §§push(param1);
            if(!(_loc10_ && Elastic))
            {
               §§push(0);
               if(!_loc10_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc9_ || Boolean(param1))
                     {
                        §§push(param2);
                        if(!(_loc10_ && Boolean(param2)))
                        {
                           return §§pop();
                        }
                        addr0178:
                        §§push(0);
                        if(_loc9_ || Boolean(param1))
                        {
                           addr0188:
                           §§push(§§pop() > §§pop());
                           if(_loc9_)
                           {
                              addr018f:
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              §§push(_temp_6);
                              if(!(_loc10_ && Boolean(param2)))
                              {
                                 addr019e:
                                 if(§§pop())
                                 {
                                    if(_loc9_ || Elastic)
                                    {
                                       §§pop();
                                       if(_loc9_)
                                       {
                                          addr01b7:
                                          §§push(param5);
                                          if(!(_loc10_ && Boolean(param2)))
                                          {
                                             §§goto(addr01d3);
                                          }
                                          §§goto(addr02b0);
                                       }
                                       §§goto(addr0209);
                                    }
                                 }
                                 §§goto(addr01e9);
                              }
                              §§goto(addr0230);
                           }
                           §§goto(addr0242);
                        }
                        §§goto(addr0228);
                     }
                     §§goto(addr0251);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc9_)
                     {
                        §§push(param4);
                        if(!(_loc10_ && Boolean(param1)))
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc9_)
                           {
                              addr0083:
                              var _temp_33:* = §§pop();
                              §§push(_temp_33);
                              §§push(_temp_33);
                              if(_loc9_ || Boolean(param3))
                              {
                                 var _loc8_:* = §§pop();
                                 if(!(_loc10_ && Boolean(param2)))
                                 {
                                    §§push(§§pop());
                                    if(_loc9_)
                                    {
                                       addr00a9:
                                       param1 = §§pop();
                                       §§push(_loc8_);
                                    }
                                    if(_loc9_)
                                    {
                                       §§push(1);
                                       if(_loc9_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(param2);
                                                if(!(_loc10_ && Boolean(param3)))
                                                {
                                                   §§push(param3);
                                                   if(!_loc10_)
                                                   {
                                                      addr00dc:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr01d3:
                                                      §§push(param3);
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                         if(_loc9_ || Boolean(param1))
                                                         {
                                                            addr01e9:
                                                            var _temp_11:* = §§pop();
                                                            §§push(_temp_11);
                                                            §§push(_temp_11);
                                                            if(_loc9_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     addr01fa:
                                                                     §§pop();
                                                                     if(!(_loc10_ && Boolean(param1)))
                                                                     {
                                                                        addr0209:
                                                                        §§push(param3);
                                                                        if(_loc9_ || Elastic)
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc10_ && Elastic))
                                                                           {
                                                                              addr0228:
                                                                              §§push(§§pop() < §§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr022f:
                                                                                 var _temp_15:* = §§pop();
                                                                                 addr0230:
                                                                                 §§push(_temp_15);
                                                                                 if(_temp_15)
                                                                                 {
                                                                                    if(!(_loc10_ && Boolean(param3)))
                                                                                    {
                                                                                       addr0242:
                                                                                       §§pop();
                                                                                       if(_loc9_ || Boolean(param3))
                                                                                       {
                                                                                          addr0251:
                                                                                          §§push(param5);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr0259:
                                                                                             §§push(param3);
                                                                                             if(_loc9_ || Elastic)
                                                                                             {
                                                                                                addr0268:
                                                                                                §§push(-§§pop());
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr026f:
                                                                                                   addr0270:
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      if(_loc9_ || Boolean(param2))
                                                                                                      {
                                                                                                         addr0282:
                                                                                                         §§push(param3);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr0289:
                                                                                                            §§push(§§pop());
                                                                                                            if(!(_loc10_ && Boolean(param1)))
                                                                                                            {
                                                                                                               param5 = §§pop();
                                                                                                               if(!(_loc10_ && Elastic))
                                                                                                               {
                                                                                                                  §§push(param6);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §§goto(addr02b0);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr031e:
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        addr0325:
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        §§goto(addr0327);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0337);
                                                                                                               }
                                                                                                               §§goto(addr0327);
                                                                                                            }
                                                                                                            §§goto(addr0337);
                                                                                                         }
                                                                                                         addr02b0:
                                                                                                         §§goto(addr02b2);
                                                                                                      }
                                                                                                      §§goto(addr0327);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(param6);
                                                                                                      if(!(_loc10_ && Boolean(param3)))
                                                                                                      {
                                                                                                         §§push(_2PI);
                                                                                                         if(_loc9_ || Elastic)
                                                                                                         {
                                                                                                            addr0305:
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               addr030c:
                                                                                                               §§push(§§pop() * Math.asin(param3 / param5));
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§goto(addr031e);
                                                                                                               }
                                                                                                               §§goto(addr0352);
                                                                                                            }
                                                                                                            §§goto(addr039f);
                                                                                                         }
                                                                                                         §§goto(addr03a0);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0381);
                                                                                                }
                                                                                                §§goto(addr0305);
                                                                                             }
                                                                                             §§goto(addr026f);
                                                                                          }
                                                                                          §§goto(addr02d0);
                                                                                       }
                                                                                       §§goto(addr0327);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr0270);
                                                                           }
                                                                           addr02b2:
                                                                           §§push(§§pop() / 4);
                                                                           if(_loc9_ || Boolean(param3))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc10_ && Elastic))
                                                                              {
                                                                                 addr02d0:
                                                                                 _loc7_ = §§pop();
                                                                                 if(_loc10_ && Boolean(param2))
                                                                                 {
                                                                                 }
                                                                                 addr0327:
                                                                                 §§push(param5);
                                                                                 if(_loc9_ || Boolean(param2))
                                                                                 {
                                                                                    addr0337:
                                                                                    §§push(§§pop() * Math.pow(2,-10 * param1));
                                                                                    if(!(_loc10_ && Boolean(param2)))
                                                                                    {
                                                                                       §§goto(addr0352);
                                                                                    }
                                                                                    §§goto(addr0381);
                                                                                 }
                                                                                 addr0352:
                                                                                 §§push(§§pop() * Math.sin((param1 * param4 - _loc7_) * _2PI / param6));
                                                                                 if(_loc9_ || Boolean(param1))
                                                                                 {
                                                                                    addr0381:
                                                                                    §§push(param3);
                                                                                    if(!(_loc10_ && Boolean(param2)))
                                                                                    {
                                                                                       §§goto(addr03a1);
                                                                                    }
                                                                                    §§goto(addr03a0);
                                                                                 }
                                                                                 §§goto(addr03a1);
                                                                              }
                                                                           }
                                                                           addr03a1:
                                                                           §§goto(addr0390);
                                                                        }
                                                                        §§goto(addr0289);
                                                                     }
                                                                     §§goto(addr0251);
                                                                  }
                                                               }
                                                               §§goto(addr0270);
                                                            }
                                                            §§goto(addr0230);
                                                         }
                                                         §§goto(addr022f);
                                                      }
                                                      §§goto(addr0390);
                                                   }
                                                   addr0390:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc9_ || Elastic)
                                                   {
                                                      addr03a0:
                                                      addr039f:
                                                      return §§pop() + param2;
                                                   }
                                                }
                                                §§goto(addr01d3);
                                             }
                                             §§goto(addr0209);
                                          }
                                          else
                                          {
                                             §§push(param6);
                                             if(!(_loc10_ && Boolean(param3)))
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      addr0104:
                                                      §§push(param4);
                                                      if(!(_loc10_ && Boolean(param1)))
                                                      {
                                                         §§push(0.3);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  param6 = §§pop();
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr0132:
                                                                     §§push(param5);
                                                                     if(!(_loc10_ && Elastic))
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(!(_loc10_ && Elastic))
                                                                        {
                                                                           var _temp_41:* = §§pop();
                                                                           §§push(_temp_41);
                                                                           §§push(_temp_41);
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc9_ || Boolean(param3))
                                                                                    {
                                                                                       §§push(param3);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§goto(addr0178);
                                                                                       }
                                                                                       §§goto(addr0337);
                                                                                    }
                                                                                    §§goto(addr01b7);
                                                                                 }
                                                                                 §§goto(addr018f);
                                                                              }
                                                                              §§goto(addr01e9);
                                                                           }
                                                                           §§goto(addr019e);
                                                                        }
                                                                        §§goto(addr01fa);
                                                                     }
                                                                     §§goto(addr0325);
                                                                  }
                                                                  §§goto(addr0327);
                                                               }
                                                               §§goto(addr030c);
                                                            }
                                                            §§goto(addr0352);
                                                         }
                                                         §§goto(addr0268);
                                                      }
                                                      §§goto(addr0337);
                                                   }
                                                   §§goto(addr0282);
                                                }
                                                §§goto(addr0132);
                                             }
                                          }
                                          §§goto(addr0259);
                                       }
                                       §§goto(addr02b2);
                                    }
                                    §§goto(addr0178);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr03a0);
                           }
                           §§goto(addr03a1);
                        }
                        §§goto(addr00dc);
                     }
                  }
                  §§goto(addr0289);
               }
               §§goto(addr0188);
            }
            §§goto(addr0083);
         }
         §§goto(addr0104);
      }
   }
}

