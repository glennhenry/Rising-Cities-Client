package com.adobe.utils
{
   public class IntUtil
   {
      
      private static var hexChars:String = "0123456789abcdef";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         hexChars = "0123456789abcdef";
      }
      
      public function IntUtil()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      public static function toHex(param1:int, param2:Boolean = false) : String
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc3_:* = "";
         if(_loc6_ || IntUtil)
         {
            if(param2)
            {
               if(!(_loc7_ && IntUtil))
               {
                  addr0041:
                  _loc4_ = 0;
               }
               loop1:
               while(true)
               {
                  §§push(_loc4_);
                  if(!(_loc6_ || Boolean(param1)))
                  {
                     break;
                  }
                  §§push(4);
                  if(_loc6_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc7_ && Boolean(_loc3_))
                        {
                        }
                     }
                     else
                     {
                        §§push(_loc3_);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           §§push(hexChars);
                           if(_loc6_)
                           {
                              §§push(param1);
                              if(_loc6_ || Boolean(_loc3_))
                              {
                                 §§push(3);
                                 if(_loc6_ || Boolean(param1))
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc7_ && Boolean(param1)))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!_loc7_)
                                       {
                                          §§push(8);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc6_)
                                             {
                                                §§push(4);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc7_ && IntUtil))
                                                   {
                                                      §§push(§§pop() >> §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         addr00c5:
                                                         §§push(15);
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr00d5:
                                                            §§push(§§pop() & §§pop());
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr020a);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(15);
                                                               addr01b8:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() & §§pop());
                                                                  addr01b9:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + (§§pop().charAt(§§pop()) + hexChars.charAt(param1 >> _loc5_ * 8 & 0x0F)));
                                                                     if(!(_loc6_ || IntUtil))
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc7_ && Boolean(_loc3_)))
                                                                     {
                                                                        _loc5_++;
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr0201);
                                                                        }
                                                                        §§goto(addr0209);
                                                                     }
                                                                     §§goto(addr0201);
                                                                  }
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            addr020a:
                                                            §§push(§§pop() + (§§pop().charAt(§§pop()) + hexChars.charAt(param1 >> (3 - _loc4_) * 8 & 0x0F)));
                                                            if(_loc6_)
                                                            {
                                                               addr0108:
                                                               _loc3_ = §§pop();
                                                               if(_loc6_ || IntUtil)
                                                               {
                                                                  _loc4_++;
                                                                  if(!(_loc7_ && Boolean(_loc3_)))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr0201:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     break loop1;
                                                                  }
                                                                  addr0201:
                                                               }
                                                               addr0209:
                                                               §§push(_loc3_);
                                                            }
                                                            return §§pop();
                                                            addr01b6:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(8);
                                                            addr019d:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc7_ && IntUtil))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(4);
                                                                     addr01ae:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                  }
                                                                  addr01ac:
                                                               }
                                                               addr01af:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() >> §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr01b6);
                                                                  }
                                                                  §§goto(addr01b9);
                                                               }
                                                            }
                                                         }
                                                         addr019b:
                                                      }
                                                      §§goto(addr01b6);
                                                   }
                                                   §§goto(addr01ac);
                                                }
                                                §§goto(addr01ae);
                                             }
                                             §§goto(addr01ac);
                                          }
                                          §§goto(addr01ae);
                                       }
                                       §§goto(addr01af);
                                    }
                                    §§goto(addr019d);
                                 }
                                 §§goto(addr00d5);
                              }
                              §§goto(addr00c5);
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(_loc6_ || Boolean(param1))
                              {
                                 §§push(_loc5_);
                                 if(_loc6_)
                                 {
                                    §§goto(addr019b);
                                 }
                                 §§goto(addr01b8);
                              }
                              §§goto(addr01b9);
                           }
                           addr0184:
                        }
                        §§goto(addr0108);
                     }
                     §§goto(addr0209);
                  }
                  while(§§pop() < §§pop())
                  {
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        §§goto(addr0184);
                        §§push(hexChars);
                     }
                     §§goto(addr020a);
                  }
                  §§goto(addr0209);
               }
            }
            else
            {
               §§push(0);
               if(!(_loc7_ && param2))
               {
                  _loc5_ = §§pop();
                  if(_loc6_ || param2)
                  {
                  }
                  §§goto(addr0201);
               }
            }
            while(true)
            {
               §§goto(addr0205);
            }
         }
         §§goto(addr0041);
      }
      
      public static function ror(param1:int, param2:int) : uint
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(32);
         if(!(_loc5_ && IntUtil))
         {
            §§push(int(§§pop() - param2));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(_loc4_ || Boolean(param1))
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(§§pop() << §§pop());
               if(_loc4_ || _loc3_)
               {
                  addr0068:
                  addr0067:
                  return §§pop() | param1 >>> 32 - _loc3_;
               }
            }
            §§goto(addr0068);
         }
         §§goto(addr0067);
      }
      
      public static function rol(param1:int, param2:int) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(param1);
         if(_loc3_ || Boolean(param2))
         {
            §§push(param2);
            if(_loc3_ || Boolean(param1))
            {
               §§push(§§pop() << §§pop());
               if(!_loc4_)
               {
                  addr0041:
                  addr0040:
                  return §§pop() | param1 >>> 32 - param2;
               }
            }
            §§goto(addr0041);
         }
         §§goto(addr0040);
      }
   }
}

