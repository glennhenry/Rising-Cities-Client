package net.bigpoint.util
{
   import flash.system.Capabilities;
   import mx.formatters.NumberBaseRoundType;
   import mx.formatters.NumberFormatter;
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.view.common.components.LinkedText;
   
   public class LocaUtils
   {
      
      private static const GAME_NAME_1:String = "GAME_NAME_1";
      
      private static const GAME_NAME_1_CAPITAL:String = "GAME_NAME_1_CAPITAL";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         GAME_NAME_1 = "GAME_NAME_1";
         if(!(_loc2_ && _loc2_))
         {
            addr002b:
            GAME_NAME_1_CAPITAL = "GAME_NAME_1_CAPITAL";
         }
         return;
      }
      §§goto(addr002b);
      
      public function LocaUtils()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      public static function getThousendSeperatedNumber(param1:int) : String
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc2_:NumberFormatter = new NumberFormatter();
         if(_loc8_)
         {
            _loc2_.useThousandsSeparator = true;
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               addr0045:
               _loc2_.useNegativeSign = true;
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  addr0059:
                  _loc2_.rounding = NumberBaseRoundType.NONE;
               }
               var _loc5_:String = Capabilities.language;
               var _loc6_:* = _loc5_;
               if(!_loc7_)
               {
                  §§push("en");
                  if(!(_loc7_ && LocaUtils))
                  {
                     §§push(_loc6_);
                     if(_loc8_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc7_)
                           {
                              addr011d:
                              §§push(0);
                              if(_loc7_)
                              {
                              }
                           }
                           else
                           {
                              addr014d:
                              §§push(1);
                              if(_loc8_ || Boolean(_loc3_))
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push("uk");
                           if(_loc8_)
                           {
                              addr0133:
                              §§push(_loc6_);
                              if(!_loc7_)
                              {
                                 addr013b:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc8_ || LocaUtils)
                                    {
                                       §§goto(addr014d);
                                    }
                                    else
                                    {
                                       addr01a3:
                                       §§push(3);
                                       if(_loc8_)
                                       {
                                       }
                                    }
                                    §§goto(addr01bb);
                                 }
                                 else
                                 {
                                    §§push("gb");
                                    if(!_loc7_)
                                    {
                                       §§push(_loc6_);
                                       if(_loc8_)
                                       {
                                          addr0173:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc7_ && Boolean(_loc2_)))
                                             {
                                                §§push(2);
                                                if(_loc8_ || LocaUtils)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr01a3);
                                             }
                                             §§goto(addr01bb);
                                          }
                                          else
                                          {
                                             §§goto(addr019f);
                                          }
                                       }
                                       addr019f:
                                    }
                                    §§goto(addr019d);
                                 }
                              }
                              §§goto(addr0173);
                           }
                           addr019d:
                           if("us" === _loc6_)
                           {
                              §§goto(addr01a3);
                           }
                           else
                           {
                              §§push(4);
                           }
                           §§goto(addr01bb);
                        }
                        addr01bb:
                        switch(§§pop())
                        {
                           case 0:
                           case 1:
                           case 2:
                           case 3:
                              §§push(",");
                              if(_loc8_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc8_ || Boolean(_loc2_))
                                 {
                                    §§push(".");
                                    if(_loc8_ || LocaUtils)
                                    {
                                       addr009c:
                                       _loc4_ = §§pop();
                                       if(_loc7_ && Boolean(param1))
                                       {
                                       }
                                       addr01d7:
                                       _loc2_.thousandsSeparatorFrom = _loc3_;
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                       _loc2_.thousandsSeparatorTo = _loc3_;
                                       if(!(_loc8_ || LocaUtils))
                                       {
                                          break;
                                       }
                                       addr0203:
                                       _loc2_.decimalSeparatorFrom = _loc4_;
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       addr00d4:
                                       _loc4_ = §§pop();
                                       if(_loc8_)
                                       {
                                          §§goto(addr01d7);
                                       }
                                    }
                                    _loc2_.decimalSeparatorTo = _loc4_;
                                    break;
                                 }
                                 §§goto(addr0203);
                              }
                              §§goto(addr009c);
                           default:
                              §§push(".");
                              if(!(_loc7_ && LocaUtils))
                              {
                                 _loc3_ = §§pop();
                                 if(_loc8_ || Boolean(_loc2_))
                                 {
                                    §§goto(addr00d4);
                                    §§push(",");
                                 }
                                 §§goto(addr01d7);
                              }
                              §§goto(addr00d4);
                        }
                        return String(_loc2_.format(param1));
                     }
                     §§goto(addr013b);
                  }
                  §§goto(addr0133);
               }
               §§goto(addr011d);
            }
            §§goto(addr0059);
         }
         §§goto(addr0045);
      }
      
      public static function getDurationHM(param1:int) : String
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = "";
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:* = uint(Math.floor(param1 % 3600 / 60));
         var _loc5_:uint = param1 % 60;
         if(_loc6_ || Boolean(_loc3_))
         {
            §§push(_loc4_);
            if(_loc6_ || Boolean(param1))
            {
               §§push(0);
               if(!_loc7_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!_loc7_)
                        {
                           addr0076:
                           §§pop();
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              §§push(_loc5_);
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 §§push(0);
                                 if(_loc6_)
                                 {
                                    addr009e:
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(1);
                                          if(_loc6_ || Boolean(_loc2_))
                                          {
                                             addr00b9:
                                             _loc4_ = §§pop();
                                             if(_loc6_)
                                             {
                                                addr00c1:
                                                §§push(_loc3_);
                                                if(_loc6_)
                                                {
                                                   addr00c8:
                                                   §§push(10);
                                                   if(!(_loc7_ && Boolean(_loc2_)))
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(!(_loc7_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc7_ && LocaUtils))
                                                            {
                                                               §§push("0");
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc7_ && LocaUtils))
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(!(_loc7_ && Boolean(_loc2_)))
                                                                     {
                                                                        addr012b:
                                                                        §§push(_loc2_);
                                                                        if(_loc6_ || Boolean(_loc3_))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop() + ":");
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr014b:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc6_ || Boolean(param1))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc7_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr0170:
                                                                                          addr0174:
                                                                                          addr0172:
                                                                                          if(_loc4_ < 10)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(_loc2_);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr0194:
                                                                                                   _loc2_ = §§pop() + "0";
                                                                                                   addr0188:
                                                                                                   if(_loc6_ || LocaUtils)
                                                                                                   {
                                                                                                      addr01a3:
                                                                                                      §§push(_loc2_);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§goto(addr01ac);
                                                                                                      }
                                                                                                      §§goto(addr01bc);
                                                                                                   }
                                                                                                   §§goto(addr01bd);
                                                                                                }
                                                                                                §§goto(addr01bc);
                                                                                             }
                                                                                             §§goto(addr01bd);
                                                                                          }
                                                                                          §§goto(addr01a3);
                                                                                       }
                                                                                       §§goto(addr01bd);
                                                                                    }
                                                                                    §§goto(addr01bc);
                                                                                 }
                                                                                 §§goto(addr0194);
                                                                              }
                                                                              §§goto(addr0188);
                                                                           }
                                                                           addr01ac:
                                                                           §§push(§§pop() + _loc4_);
                                                                           if(!(_loc7_ && Boolean(param1)))
                                                                           {
                                                                              addr01bc:
                                                                              _loc2_ = §§pop();
                                                                              addr01bd:
                                                                              return _loc2_;
                                                                           }
                                                                        }
                                                                        §§goto(addr01bc);
                                                                     }
                                                                     §§goto(addr0170);
                                                                  }
                                                                  §§goto(addr0194);
                                                               }
                                                               §§goto(addr014b);
                                                            }
                                                            §§goto(addr01bc);
                                                         }
                                                         §§goto(addr01bd);
                                                      }
                                                      §§goto(addr012b);
                                                   }
                                                   §§goto(addr0174);
                                                }
                                                §§goto(addr0172);
                                             }
                                             §§goto(addr01a3);
                                          }
                                          §§goto(addr0172);
                                       }
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr0174);
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr01a3);
                        }
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0174);
            }
            §§goto(addr00c8);
         }
         §§goto(addr01bd);
      }
      
      public static function getDuration(param1:int) : String
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = "";
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = Math.floor(param1 % 3600 / 60);
         var _loc5_:uint = param1 % 60;
         if(_loc7_ || Boolean(_loc2_))
         {
            §§push(_loc3_);
            if(_loc7_)
            {
               §§push(10);
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(_loc2_);
                        if(!_loc6_)
                        {
                           §§push("0");
                           if(_loc7_ || Boolean(param1))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc6_)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc7_ || Boolean(param1))
                                 {
                                    addr009a:
                                    §§push(_loc2_);
                                    if(!_loc6_)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc6_ && LocaUtils))
                                       {
                                          §§push(":");
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc7_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc7_ || Boolean(_loc3_))
                                                      {
                                                         addr00f3:
                                                         §§push(_loc4_);
                                                         if(_loc7_ || LocaUtils)
                                                         {
                                                            §§push(10);
                                                            if(!_loc6_)
                                                            {
                                                               addr010b:
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc7_ || LocaUtils)
                                                                     {
                                                                        §§push("0");
                                                                        if(_loc7_)
                                                                        {
                                                                           addr012d:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr0134:
                                                                              _loc2_ = §§pop();
                                                                              if(_loc7_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr0143:
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc6_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr015d:
                                                                                       §§push(§§pop() + ":");
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc7_ || Boolean(_loc3_))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc6_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                addr0182:
                                                                                                _loc2_ = §§pop();
                                                                                                if(_loc7_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   addr019c:
                                                                                                   addr01a0:
                                                                                                   addr019e:
                                                                                                   if(_loc5_ < 10)
                                                                                                   {
                                                                                                      if(_loc7_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         §§goto(addr01c1);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr01be);
                                                                                             }
                                                                                             §§goto(addr01b9);
                                                                                          }
                                                                                          §§goto(addr01bd);
                                                                                       }
                                                                                       §§goto(addr01bc);
                                                                                    }
                                                                                    addr01c1:
                                                                                    §§goto(addr01bf);
                                                                                 }
                                                                                 §§goto(addr01b9);
                                                                              }
                                                                              §§goto(addr01be);
                                                                           }
                                                                           §§goto(addr01bd);
                                                                        }
                                                                        §§goto(addr01bc);
                                                                     }
                                                                     §§goto(addr01bf);
                                                                  }
                                                                  §§goto(addr019c);
                                                               }
                                                               §§goto(addr0143);
                                                            }
                                                            §§goto(addr01a0);
                                                         }
                                                         §§goto(addr019e);
                                                      }
                                                      §§goto(addr019c);
                                                   }
                                                   §§goto(addr01b9);
                                                }
                                                §§goto(addr0134);
                                             }
                                             §§goto(addr012d);
                                          }
                                          §§goto(addr015d);
                                       }
                                       §§goto(addr01c1);
                                    }
                                    §§goto(addr0182);
                                 }
                                 §§goto(addr00f3);
                              }
                              §§goto(addr0134);
                           }
                           §§goto(addr01bc);
                        }
                        addr01bf:
                        §§goto(addr01b2);
                     }
                     addr01b2:
                     §§push(_loc2_);
                     if(_loc7_)
                     {
                        addr01bd:
                        _loc2_ = §§pop() + "0";
                        addr01be:
                        §§push(_loc2_);
                        addr01b9:
                        addr01bc:
                     }
                     return §§pop() + _loc5_;
                  }
                  §§goto(addr009a);
               }
               §§goto(addr010b);
            }
            §§goto(addr019e);
         }
         §§goto(addr01be);
      }
      
      public static function getDurationM(param1:int) : String
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = "";
         var _loc3_:uint = Math.floor(param1 / 3600);
         var _loc4_:uint = Math.floor(param1 / 60);
         var _loc5_:uint = param1 % 60;
         if(!_loc7_)
         {
            if(_loc4_ < 10)
            {
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§push(_loc2_);
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     _loc2_ = §§pop() + "0";
                     if(!(_loc7_ && LocaUtils))
                     {
                        §§goto(addr008f);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr00a1);
            }
         }
         addr008f:
         §§push(_loc2_);
         if(!_loc7_)
         {
            §§push(§§pop() + _loc4_);
            if(_loc6_)
            {
               addr00a0:
               _loc2_ = §§pop();
               addr00a1:
               return _loc2_;
            }
         }
      }
      
      public static function getDurationH(param1:int) : uint
      {
         return Math.abs(Math.floor(param1 / 3600) as int);
      }
      
      public static function getDaysFromSeconds(param1:Number) : uint
      {
         return Math.abs(Math.floor(getDurationH(param1) / 24));
      }
      
      public static function getExactDaysFromSecond(param1:Number) : Number
      {
         return getDurationH(param1) / 24;
      }
      
      public static function getString(param1:String, param2:String, param3:Array = null) : String
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            if(param3 == null)
            {
               addr001e:
               param3 = [];
            }
            §§push(mx.utils.StringUtil.substitute(ResourceManager.getInstance().getString(param1,param2),param3));
            if(!(_loc6_ && LocaUtils))
            {
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && Boolean(param3)))
            {
               checkGlobalWildCard(_loc4_);
            }
            return _loc4_;
         }
         §§goto(addr001e);
      }
      
      public static function getHoursFromSeconds(param1:Number) : int
      {
         return Math.floor(getDurationH(param1) / 60);
      }
      
      public static function checkGlobalWildCard(param1:String) : String
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc4_:* = null;
         var _loc5_:RegExp = null;
         var _loc6_:String = null;
         var _loc7_:* = null;
         if(_loc10_ || LocaUtils)
         {
            §§push(param1);
            if(!(_loc11_ && LocaUtils))
            {
               if(§§pop() == null)
               {
                  if(!_loc11_)
                  {
                     §§goto(addr004d);
                  }
               }
               §§push(param1);
               if(!_loc11_)
               {
                  addr0056:
                  §§push(§§pop());
               }
               var _loc2_:* = §§pop();
               var _loc3_:Vector.<String> = new <String>[GAME_NAME_1,GAME_NAME_1_CAPITAL];
               var _loc8_:int = 0;
               var _loc9_:* = _loc3_;
               for each(_loc8_ in _loc9_)
               {
                  §§push(_loc8_);
                  if(!_loc11_)
                  {
                     _loc4_ = §§pop();
                     if(_loc10_ || Boolean(_loc3_))
                     {
                        addr00a7:
                        §§push(param1);
                        §§push("{");
                        if(!_loc11_)
                        {
                           §§push(§§pop() + _loc4_);
                           if(_loc10_ || Boolean(param1))
                           {
                              addr00cf:
                              §§push(§§pop() + "}");
                           }
                           if(§§pop().indexOf(§§pop()) == -1)
                           {
                              continue;
                           }
                           addr00dd:
                           _loc5_ = new RegExp(("{" + _loc4_ + "}").toString(),"g");
                           if(_loc10_ || _loc2_)
                           {
                              _loc6_ = "default";
                              if(!(_loc10_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(§§findproperty(getString));
                              §§push("rcl.misc.branding");
                              if(!(_loc11_ && Boolean(_loc3_)))
                              {
                                 §§push("");
                                 if(_loc10_)
                                 {
                                    addr0138:
                                    §§push(§§pop() + §§pop());
                                    §§push("rcl.misc.branding.");
                                    if(_loc10_)
                                    {
                                       §§push(_loc6_);
                                       if(!_loc11_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc11_)
                                          {
                                             addr0151:
                                             §§push(§§pop() + ".");
                                             if(_loc10_ || Boolean(param1))
                                             {
                                                addr0163:
                                                addr0165:
                                                §§push(§§pop() + _loc4_);
                                             }
                                             §§push(§§pop().getString(§§pop(),§§pop()));
                                             if(!(_loc11_ && LocaUtils))
                                             {
                                                §§push(§§pop());
                                                if(_loc10_ || Boolean(param1))
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      addr019b:
                                                      §§push(_loc2_);
                                                      if(!_loc11_)
                                                      {
                                                         addr01a2:
                                                         §§push(§§pop().replace(_loc5_,_loc7_));
                                                      }
                                                      _loc2_ = §§pop();
                                                   }
                                                   continue;
                                                }
                                             }
                                             §§goto(addr01a2);
                                          }
                                          §§goto(addr0163);
                                       }
                                       §§goto(addr0165);
                                    }
                                 }
                                 §§goto(addr0151);
                              }
                              §§goto(addr0138);
                           }
                           §§goto(addr019b);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00dd);
                  }
                  §§goto(addr00a7);
               }
               return _loc2_;
            }
            §§goto(addr0056);
         }
         addr004d:
         return null;
      }
      
      public static function getCurrencySymbol(param1:String) : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(param1);
         if(!_loc4_)
         {
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               §§push("EUR");
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_ || LocaUtils)
                        {
                           §§push(0);
                           if(_loc4_ && _loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr0207:
                           §§push(6);
                           if(_loc4_)
                           {
                           }
                        }
                        §§goto(addr021f);
                     }
                     else
                     {
                        §§push("GBP");
                        if(_loc3_)
                        {
                           §§push(_loc2_);
                           if(_loc3_ || Boolean(param1))
                           {
                              §§goto(addr0102);
                           }
                           §§goto(addr01a0);
                        }
                        §§goto(addr0131);
                     }
                  }
                  addr0102:
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr01a9:
                        §§push(4);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("USD");
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        addr0131:
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(2);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr017c:
                                 §§push(3);
                                 if(_loc4_ && _loc2_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push("AUD");
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§push(_loc2_);
                                 if(_loc3_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr017c);
                                       }
                                       else
                                       {
                                          §§goto(addr0207);
                                       }
                                    }
                                    else
                                    {
                                       §§push("CAD");
                                       if(_loc3_)
                                       {
                                          addr0199:
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             addr01a0:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr01a9);
                                                }
                                                else
                                                {
                                                   §§goto(addr0207);
                                                }
                                             }
                                             else
                                             {
                                                §§push("JPY");
                                                if(!(_loc4_ && Boolean(param1)))
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc4_ && LocaUtils))
                                                   {
                                                      addr01d6:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(5);
                                                            if(_loc4_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr0207);
                                                         }
                                                         §§goto(addr021f);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0203);
                                                      }
                                                   }
                                                   addr0203:
                                                }
                                                §§goto(addr0202);
                                             }
                                             §§goto(addr0207);
                                          }
                                          §§goto(addr0203);
                                       }
                                       §§goto(addr0202);
                                    }
                                    §§goto(addr0207);
                                 }
                                 §§goto(addr01a0);
                              }
                              addr0202:
                              if("CHF" === _loc2_)
                              {
                                 §§goto(addr0207);
                              }
                              else
                              {
                                 §§push(7);
                              }
                              §§goto(addr021f);
                           }
                           §§goto(addr021f);
                        }
                        §§goto(addr01d6);
                     }
                     §§goto(addr0202);
                  }
                  addr021f:
                  switch(§§pop())
                  {
                     case 0:
                        §§push("€");
                        if(!(_loc4_ && LocaUtils))
                        {
                           return §§pop();
                        }
                        §§goto(addr007d);
                        break;
                     case 1:
                        §§push("£");
                        if(_loc3_ || _loc3_)
                        {
                           return §§pop();
                        }
                        §§goto(addr005c);
                        break;
                     case 2:
                     case 3:
                     case 4:
                        §§push("$");
                        if(!_loc4_)
                        {
                           addr005c:
                           return §§pop();
                        }
                        break;
                     case 5:
                        §§push("¥");
                        if(_loc3_ || LocaUtils)
                        {
                           addr007d:
                           return §§pop();
                        }
                        break;
                     case 6:
                        return "SFr";
                     default:
                        §§goto(addr023f);
                  }
                  return §§pop();
               }
               §§goto(addr0199);
            }
            §§goto(addr0207);
         }
         addr023f:
         return param1;
      }
      
      public static function removePossibleLinks(param1:String) : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:RegExp = null;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() == null)
               {
                  if(_loc3_)
                  {
                     §§goto(addr003e);
                  }
                  else
                  {
                     addr00de:
                     _loc2_ = /{linkEnd_playfieldItem}/g;
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§push(§§pop().replace(_loc2_,""));
                        }
                        param1 = §§pop();
                     }
                  }
               }
               else
               {
                  §§push(param1);
                  if(_loc3_ || Boolean(param1))
                  {
                     §§push(LinkedText.LINK_START_PLAYFIELDITEM);
                     if(_loc3_ || Boolean(param1))
                     {
                        if(§§pop().indexOf(§§pop()) != -1)
                        {
                           if(_loc3_)
                           {
                              _loc2_ = /{linkStart_playfieldItem}/g;
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§push(param1);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop().replace(_loc2_,""));
                                 }
                                 param1 = §§pop();
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr00de);
                        }
                        addr00bd:
                        §§push(param1);
                        if(_loc3_)
                        {
                           addr00c9:
                           addr00c3:
                           if(§§pop().indexOf(LinkedText.LINK_END_PLAYFIELDITEM) != -1)
                           {
                              §§goto(addr00de);
                           }
                           addr010b:
                           return param1;
                        }
                     }
                     §§goto(addr00c9);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr010b);
            }
            §§goto(addr00c3);
         }
         addr003e:
         return null;
      }
   }
}

