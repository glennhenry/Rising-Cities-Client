package net.bigpoint.cityrama.view.newsscreen.vo
{
   public class NewsScreenSlideVo
   {
      
      public static const EXTERNAL:String = "EXTERNAL";
      
      public static const EXTERNAL_PARAM:String = "EXTERNAL_PARAM";
      
      public static const EKOMI:String = "EKOMI";
      
      public static const PAYMENT:String = "PAYMENT";
      
      public static const PLAYFIELD_ITEM:String = "PLAYFIELD_ITEM";
      
      public static const FORUM:String = "FORUM";
      
      public static const CITY_TREASURY:String = "CITY_TREASURY";
      
      public static const GOOD:String = "GOOD";
      
      public static const EVENT_SQUARE:String = "EVENT_SQUARE";
      
      public static const CITY_WHEEL:String = "CITY_WHEEL";
      
      public static const MYSTERY_BUILDING:String = "MYSTERY_BUILDING";
      
      public static const EXPANSION_SALE:String = "EXPANSION_SALE";
      
      public static const NO_ACTION:String = "NO_ACTION";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         EXTERNAL = "EXTERNAL";
         if(!_loc1_)
         {
            EXTERNAL_PARAM = "EXTERNAL_PARAM";
            if(!_loc1_)
            {
               EKOMI = "EKOMI";
               if(_loc2_)
               {
                  addr0040:
                  PAYMENT = "PAYMENT";
                  if(!_loc1_)
                  {
                     PLAYFIELD_ITEM = "PLAYFIELD_ITEM";
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0064:
                        FORUM = "FORUM";
                        if(_loc2_)
                        {
                           CITY_TREASURY = "CITY_TREASURY";
                           if(_loc2_ || NewsScreenSlideVo)
                           {
                              GOOD = "GOOD";
                              if(_loc2_)
                              {
                                 addr00a0:
                                 EVENT_SQUARE = "EVENT_SQUARE";
                                 if(!_loc1_)
                                 {
                                    CITY_WHEEL = "CITY_WHEEL";
                                    if(_loc2_ || NewsScreenSlideVo)
                                    {
                                       §§goto(addr00ce);
                                    }
                                    §§goto(addr00fc);
                                 }
                              }
                              addr00ce:
                              MYSTERY_BUILDING = "MYSTERY_BUILDING";
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr00e4:
                                 EXPANSION_SALE = "EXPANSION_SALE";
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00fc:
                                    NO_ACTION = "NO_ACTION";
                                 }
                              }
                              §§goto(addr0105);
                           }
                           §§goto(addr00e4);
                        }
                        §§goto(addr00a0);
                     }
                  }
                  §§goto(addr00fc);
               }
               §§goto(addr00a0);
            }
            §§goto(addr0064);
         }
         §§goto(addr0040);
      }
      addr0105:
      
      private var _gfxId:Number;
      
      private var _localeId:String;
      
      private var _type:String = "";
      
      private var _linkValue:String;
      
      private var _orderId:int;
      
      public function NewsScreenSlideVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._gfxId = param1;
         }
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function set localeId(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._localeId = param1;
         }
      }
      
      public function get linkValue() : String
      {
         return this._linkValue;
      }
      
      public function set linkValue(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._linkValue = param1;
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._type = param1;
         }
      }
      
      public function get haslink() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._type == "");
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function get orderId() : int
      {
         return this._orderId;
      }
      
      public function set orderId(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._orderId = param1;
         }
      }
      
      public function get buttonLabelIdentifier() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = this.type;
         if(_loc3_)
         {
            §§push(EXTERNAL);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(0);
                        if(_loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr02c1:
                        §§push(8);
                        if(_loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(EXTERNAL_PARAM);
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(!(_loc2_ && _loc3_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(1);
                                 if(_loc2_ && _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0206:
                                 §§push(4);
                                 if(_loc2_ && Boolean(this))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(EKOMI);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(_loc1_);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr0189:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(2);
                                          if(_loc3_ || _loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr026a:
                                          §§push(6);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(PLAYFIELD_ITEM);
                                       if(_loc3_)
                                       {
                                          addr01b5:
                                          §§push(_loc1_);
                                          if(_loc3_ || Boolean(this))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(3);
                                                   if(_loc3_ || Boolean(_loc1_))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr028c:
                                                   §§push(7);
                                                   if(_loc2_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(FORUM);
                                                if(_loc3_)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      addr01fd:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr0206);
                                                         }
                                                         else
                                                         {
                                                            addr0240:
                                                            §§push(5);
                                                            if(_loc2_ && Boolean(_loc1_))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(CITY_TREASURY);
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§goto(addr0240);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr028c);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(EVENT_SQUARE);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(_loc3_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§goto(addr026a);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr02d4:
                                                                              §§push(9);
                                                                              if(_loc2_ && _loc2_)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr02f3);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(CITY_WHEEL);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr027d:
                                                                              §§push(_loc1_);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr0283:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr028c);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr02d4);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(MYSTERY_BUILDING);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr029f:
                                                                                       §§push(_loc1_);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr02a5:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                             {
                                                                                                §§goto(addr02c1);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr02d4);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr02d0);
                                                                                          }
                                                                                          §§goto(addr02d4);
                                                                                       }
                                                                                       addr02d0:
                                                                                    }
                                                                                    §§goto(addr02cf);
                                                                                 }
                                                                                 §§goto(addr02d4);
                                                                              }
                                                                              §§goto(addr02a5);
                                                                           }
                                                                           §§goto(addr02cf);
                                                                        }
                                                                     }
                                                                     §§goto(addr0283);
                                                                  }
                                                                  addr02cf:
                                                                  if(NO_ACTION === _loc1_)
                                                                  {
                                                                     §§goto(addr02d4);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(10);
                                                                  }
                                                                  §§goto(addr02f3);
                                                               }
                                                               §§goto(addr02f3);
                                                            }
                                                            §§goto(addr0283);
                                                         }
                                                         §§goto(addr029f);
                                                      }
                                                      §§goto(addr02f3);
                                                   }
                                                   §§goto(addr0283);
                                                }
                                                §§goto(addr027d);
                                             }
                                             §§goto(addr02f3);
                                          }
                                          §§goto(addr01fd);
                                       }
                                       §§goto(addr02cf);
                                    }
                                    §§goto(addr02f3);
                                 }
                                 §§goto(addr0283);
                              }
                              §§goto(addr01b5);
                           }
                           §§goto(addr02f3);
                        }
                        §§goto(addr01fd);
                     }
                     §§goto(addr01b5);
                  }
                  addr02f3:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                        §§push("toLink");
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        §§goto(addr00e0);
                        break;
                     case 2:
                        §§push("toEkomi");
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        §§goto(addr00d1);
                        break;
                     case 3:
                        §§push("toArchitectualBook");
                        if(!(_loc2_ && Boolean(this)))
                        {
                           return §§pop();
                        }
                        break;
                     case 4:
                        §§push("toForum");
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        §§goto(addr00e0);
                        break;
                     case 5:
                        §§push("toTreasury");
                        if(!(_loc2_ && _loc2_))
                        {
                           return §§pop();
                        }
                        §§goto(addr00b9);
                        break;
                     case 6:
                        §§push("toEventSquare");
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        break;
                     case 7:
                        §§push("toCityWheel");
                        if(_loc3_)
                        {
                           addr00b9:
                           return §§pop();
                        }
                        break;
                     case 8:
                        §§push("toMystery");
                        if(_loc3_)
                        {
                           addr00d1:
                           return §§pop();
                        }
                        break;
                     case 9:
                        §§push("close");
                        if(_loc3_)
                        {
                           addr00e0:
                           return §§pop();
                        }
                        break;
                     default:
                        return "close";
                  }
                  return §§pop();
               }
               §§goto(addr0189);
            }
            §§goto(addr029f);
         }
         §§goto(addr028c);
      }
   }
}

