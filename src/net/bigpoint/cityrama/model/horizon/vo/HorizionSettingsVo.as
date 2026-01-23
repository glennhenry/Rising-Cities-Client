package net.bigpoint.cityrama.model.horizon.vo
{
   import as3isolib.geom.Pt;
   import flash.geom.Point;
   import net.bigpoint.util.LocaUtils;
   
   public class HorizionSettingsVo
   {
      
      public static const CITY_OFFSET_X:int = -1920;
      
      public static const CITY_OFFSET_Y:int = -607;
      
      public static const COASTAL_OFFSET_X:int = -1919;
      
      public static const COASTAL_OFFSET_Y:int = -604;
      
      public static const SUBURBAN_OFFSET_X:int = -1641;
      
      public static const SUBURBAN_OFFSET_Y:int = -195;
      
      public static const MOUNTAIN_OFFSET_X:int = -1822;
      
      public static const MOUNTAIN_OFFSET_Y:int = -294;
      
      private static const CITY_TILESIZE_X:int = 500;
      
      private static const CITY_TILESIZE_Y:int = 570;
      
      private static const COASTAL_TILESIZE_X:int = 500;
      
      private static const COASTAL_TILESIZE_Y:int = 570;
      
      private static const SUBURBAN_TILESIZE_X:int = 555;
      
      private static const SUBURBAN_TILESIZE_Y:int = 547;
      
      private static const MOUNTAIN_TILESIZE_X:int = 565;
      
      private static const MOUNTAINT_TILESIZE_Y:int = 496;
      
      private static const CITY_CENTER_POINT:Pt;
      
      private static const COASTAL_CENTER_POINT:Pt;
      
      private static const SUBURBAN_CENTER_POINT:Pt;
      
      private static const MOUNTAIN_CENTER_POINT:Pt;
      
      public static const MAX_WIDTH_MOTION_LIMIT_SPRITE:int = 4000;
      
      public static const MAX_HEIGHT_MOTION_LIMIT_SPRITE:int = 2850;
      
      public static const SUBURBAN_MAX_WIDTH_MOTION_LIMIT_SPRITE:int = 2775;
      
      public static const SUBURBAN_MAX_HEIGHT_MOTION_LIMIT_SPRITE:int = 1641;
      
      public static const MOUNTAIN_MAX_WIDTH_MOTION_LIMIT_SPRITE:int = 3392;
      
      public static const MOUNTAIN_MAX_HEIGHT_MOTION_LIMIT_SPRITE:int = 1984;
      
      public static const CITY_PLAYFIELD_GFXID:uint = 100;
      
      public static const COASTAL_PLAYFIELD_GFXID:uint = 101;
      
      public static const SUBURBAN_PLAYFIELD_GFXID:uint = 102;
      
      public static const MOUNTAIN_PLAYFIELD_GFXID:uint = 103;
      
      public static const CITY_PLAYFIELD_ID:uint = 1;
      
      public static const COASTAL_PLAYFIELD_ID:uint = 2;
      
      public static const SUBURBAN_PLAYFIELD_ID:uint = 3;
      
      public static const MOUNTAIN_PLAYFIELD_ID:uint = 4;
      
      private static const PLAYFIELD_Y_OFFSET_STANDARD:uint = 3;
      
      private static const PLAYFIELD_Y_OFFSET_COASTAL:uint = 3;
      
      private static const PLAYFIELD_Y_OFFSET_SUBURBAN:uint = 0;
      
      private static const PLAYFIELD_Y_OFFSET_MOUNTAIN:uint = 0;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         CITY_OFFSET_X = -1920;
         if(_loc2_ || _loc1_)
         {
            CITY_OFFSET_Y = -607;
            if(_loc2_ || HorizionSettingsVo)
            {
               COASTAL_OFFSET_X = -1919;
               if(!(_loc1_ && _loc2_))
               {
                  COASTAL_OFFSET_Y = -604;
                  if(!_loc1_)
                  {
                     addr0072:
                     SUBURBAN_OFFSET_X = -1641;
                     if(_loc2_ || _loc2_)
                     {
                        addr008b:
                        SUBURBAN_OFFSET_Y = -195;
                        if(!_loc1_)
                        {
                           MOUNTAIN_OFFSET_X = -1822;
                           if(_loc2_ || _loc2_)
                           {
                              MOUNTAIN_OFFSET_Y = -294;
                              if(!_loc1_)
                              {
                                 CITY_TILESIZE_X = 500;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00dc:
                                    CITY_TILESIZE_Y = 570;
                                    if(!_loc1_)
                                    {
                                       COASTAL_TILESIZE_X = 500;
                                       if(!(_loc1_ && HorizionSettingsVo))
                                       {
                                          §§goto(addr0100);
                                       }
                                       §§goto(addr025f);
                                    }
                                    §§goto(addr0124);
                                 }
                                 §§goto(addr025f);
                              }
                              addr0100:
                              COASTAL_TILESIZE_Y = 570;
                              if(_loc2_)
                              {
                                 addr010e:
                                 SUBURBAN_TILESIZE_X = 555;
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr0124:
                                    SUBURBAN_TILESIZE_Y = 547;
                                    if(_loc2_)
                                    {
                                       MOUNTAIN_TILESIZE_X = 565;
                                       if(!_loc1_)
                                       {
                                          addr0140:
                                          MOUNTAINT_TILESIZE_Y = 496;
                                          if(!(_loc1_ && HorizionSettingsVo))
                                          {
                                             CITY_CENTER_POINT = new Pt(-100,800,0);
                                             if(!(_loc1_ && HorizionSettingsVo))
                                             {
                                                COASTAL_CENTER_POINT = new Pt(0,0,0);
                                                if(_loc2_)
                                                {
                                                   SUBURBAN_CENTER_POINT = new Pt(-650,400,0);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      MOUNTAIN_CENTER_POINT = new Pt(300,1203,0);
                                                      if(_loc2_ || HorizionSettingsVo)
                                                      {
                                                         MAX_WIDTH_MOTION_LIMIT_SPRITE = 4000;
                                                         if(_loc2_)
                                                         {
                                                            addr01ec:
                                                            MAX_HEIGHT_MOTION_LIMIT_SPRITE = 2850;
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               addr0202:
                                                               SUBURBAN_MAX_WIDTH_MOTION_LIMIT_SPRITE = 2775;
                                                               if(!(_loc1_ && HorizionSettingsVo))
                                                               {
                                                                  §§goto(addr0218);
                                                               }
                                                               §§goto(addr0252);
                                                            }
                                                            §§goto(addr02cf);
                                                         }
                                                         §§goto(addr02b0);
                                                      }
                                                      §§goto(addr025f);
                                                   }
                                                   §§goto(addr0202);
                                                }
                                                §§goto(addr02e9);
                                             }
                                             §§goto(addr025f);
                                          }
                                          §§goto(addr02b0);
                                       }
                                       §§goto(addr0202);
                                    }
                                    §§goto(addr0140);
                                 }
                                 addr0218:
                                 SUBURBAN_MAX_HEIGHT_MOTION_LIMIT_SPRITE = 1641;
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    MOUNTAIN_MAX_WIDTH_MOTION_LIMIT_SPRITE = 3392;
                                    if(!_loc1_)
                                    {
                                       MOUNTAIN_MAX_HEIGHT_MOTION_LIMIT_SPRITE = 1984;
                                       if(_loc2_ || HorizionSettingsVo)
                                       {
                                          addr0252:
                                          CITY_PLAYFIELD_GFXID = 100;
                                          if(!_loc1_)
                                          {
                                             addr025f:
                                             COASTAL_PLAYFIELD_GFXID = 101;
                                             if(_loc2_)
                                             {
                                                SUBURBAN_PLAYFIELD_GFXID = 102;
                                                if(!(_loc1_ && HorizionSettingsVo))
                                                {
                                                   addr0281:
                                                   MOUNTAIN_PLAYFIELD_GFXID = 103;
                                                   if(!_loc1_)
                                                   {
                                                      addr028e:
                                                      CITY_PLAYFIELD_ID = 1;
                                                      if(_loc2_)
                                                      {
                                                         COASTAL_PLAYFIELD_ID = 2;
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            addr02b0:
                                                            SUBURBAN_PLAYFIELD_ID = 3;
                                                            if(!(_loc1_ && HorizionSettingsVo))
                                                            {
                                                               addr02cf:
                                                               MOUNTAIN_PLAYFIELD_ID = 4;
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr02dc);
                                                               }
                                                            }
                                                            §§goto(addr02e9);
                                                         }
                                                         §§goto(addr02f6);
                                                      }
                                                   }
                                                   §§goto(addr02cf);
                                                }
                                                §§goto(addr02dc);
                                             }
                                             §§goto(addr02b0);
                                          }
                                          §§goto(addr02f6);
                                       }
                                       §§goto(addr0281);
                                    }
                                    §§goto(addr02e9);
                                 }
                                 §§goto(addr02dc);
                              }
                              addr02dc:
                              PLAYFIELD_Y_OFFSET_STANDARD = 3;
                              if(_loc2_)
                              {
                                 addr02e9:
                                 PLAYFIELD_Y_OFFSET_COASTAL = 3;
                                 if(!_loc1_)
                                 {
                                    addr02f6:
                                    PLAYFIELD_Y_OFFSET_SUBURBAN = 0;
                                    if(!_loc1_)
                                    {
                                       addr0303:
                                       PLAYFIELD_Y_OFFSET_MOUNTAIN = 0;
                                    }
                                    §§goto(addr030b);
                                 }
                                 §§goto(addr0303);
                              }
                              addr030b:
                              return;
                           }
                           §§goto(addr010e);
                        }
                        §§goto(addr028e);
                     }
                     §§goto(addr0218);
                  }
                  §§goto(addr028e);
               }
               §§goto(addr01ec);
            }
            §§goto(addr0072);
         }
         §§goto(addr00dc);
      }
      §§goto(addr008b);
      
      private const CITY_MAX_VERTICAL_SLICES:int = 5;
      
      private const CITY_MAX_HORIZONTAL_SLICES:int = 8;
      
      private const COASTAL_MAX_VERTICAL_SLICES:int = 5;
      
      private const COASTAL_MAX_HORIZONTAL_SLICES:int = 8;
      
      private const SUBURBAN_MAX_VERTICAL_SLICES:int = 3;
      
      private const SUBURBAN_MAX_HORIZONTAL_SLICES:int = 5;
      
      private const MOUNTAIN_MAX_VERTICAL_SLICES:int = 4;
      
      private const MOUNTAIN_MAX_HORIZONTAL_SLICES:int = 6;
      
      private const LOADER_PREFIX:String = "playfield_";
      
      private var _gfxId:int;
      
      public function HorizionSettingsVo(param1:int)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               this._gfxId = param1;
            }
         }
      }
      
      public static function centerPoint(param1:int) : Pt
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(param1);
         if(_loc3_ || _loc2_)
         {
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               §§push(CITY_PLAYFIELD_GFXID);
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc3_ || Boolean(param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(1);
                           if(_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr0117:
                           §§push(3);
                           if(_loc4_ && Boolean(param1))
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(COASTAL_PLAYFIELD_GFXID);
                        if(_loc3_ || _loc2_)
                        {
                           addr00af:
                           §§push(_loc2_);
                           if(!(_loc4_ && _loc2_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§push(2);
                                    if(_loc3_ || _loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr0117);
                                 }
                              }
                              else
                              {
                                 §§push(SUBURBAN_PLAYFIELD_GFXID);
                                 if(_loc3_)
                                 {
                                    addr00ea:
                                    §§push(_loc2_);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr00f9:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§goto(addr0117);
                                          }
                                          else
                                          {
                                             addr0133:
                                             §§push(4);
                                             if(_loc4_ && _loc3_)
                                             {
                                             }
                                          }
                                          addr014b:
                                          switch(§§pop())
                                          {
                                             case 2:
                                                return COASTAL_CENTER_POINT;
                                             case 3:
                                                return SUBURBAN_CENTER_POINT;
                                             case 4:
                                                return MOUNTAIN_CENTER_POINT;
                                             default:
                                                return CITY_CENTER_POINT;
                                          }
                                          addr0149:
                                       }
                                       else
                                       {
                                          addr012f:
                                          addr012e:
                                          if(MOUNTAIN_PLAYFIELD_GFXID === _loc2_)
                                          {
                                             §§goto(addr0133);
                                          }
                                          else
                                          {
                                             §§push(0);
                                          }
                                          §§goto(addr0149);
                                       }
                                       §§goto(addr0133);
                                    }
                                    §§goto(addr012f);
                                 }
                                 §§goto(addr012e);
                              }
                              §§goto(addr0149);
                           }
                           §§goto(addr012f);
                        }
                        §§goto(addr00ea);
                     }
                     §§goto(addr0149);
                  }
                  §§goto(addr00f9);
               }
               §§goto(addr00af);
            }
            §§goto(addr0133);
         }
         §§goto(addr014b);
      }
      
      public static function maxWidthMotionLimit(param1:int) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(param1);
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               var _loc2_:* = §§pop();
               if(!(_loc4_ && HorizionSettingsVo))
               {
                  §§push(SUBURBAN_PLAYFIELD_GFXID);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(0);
                              if(_loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr0124:
                              §§push(2);
                              if(_loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(MOUNTAIN_PLAYFIELD_GFXID);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 addr00d6:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(1);
                                       if(_loc3_ || Boolean(param1))
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr0137:
                                       §§push(3);
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                    addr014f:
                                    while(true)
                                    {
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §§push(SUBURBAN_MAX_WIDTH_MOTION_LIMIT_SPRITE);
                                             if(_loc3_ || HorizionSettingsVo)
                                             {
                                                return §§pop();
                                             }
                                             continue loop0;
                                          case 1:
                                             §§push(MOUNTAIN_MAX_WIDTH_MOTION_LIMIT_SPRITE);
                                             if(_loc3_ || HorizionSettingsVo)
                                             {
                                                return §§pop();
                                             }
                                             break;
                                          case 2:
                                          case 3:
                                             §§push(MAX_WIDTH_MOTION_LIMIT_SPRITE);
                                       }
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    return §§pop();
                                    addr0151:
                                 }
                                 §§push(CITY_PLAYFIELD_GFXID);
                                 if(_loc3_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr0124);
                                          }
                                          else
                                          {
                                             §§goto(addr0137);
                                          }
                                       }
                                       else
                                       {
                                          addr0133:
                                          addr0132:
                                          if(COASTAL_PLAYFIELD_GFXID === _loc2_)
                                          {
                                             §§goto(addr0137);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                          §§goto(addr014f);
                                       }
                                       §§goto(addr0137);
                                    }
                                    §§goto(addr0133);
                                 }
                                 §§goto(addr0132);
                                 §§goto(addr0137);
                              }
                              §§goto(addr0133);
                           }
                           §§goto(addr0132);
                        }
                        §§goto(addr014f);
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr0132);
               }
               §§goto(addr0124);
            }
         }
         §§goto(addr0151);
      }
      
      public static function maxHeightMotionLimit(param1:int) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            loop0:
            while(true)
            {
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  §§push(SUBURBAN_PLAYFIELD_GFXID);
                  if(!_loc3_)
                  {
                     §§push(_loc2_);
                     if(!_loc3_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_)
                           {
                              addr0076:
                              §§push(0);
                              if(_loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr0111:
                              §§push(3);
                              if(_loc4_ || Boolean(param1))
                              {
                              }
                           }
                           addr0131:
                           loop1:
                           while(true)
                           {
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(SUBURBAN_MAX_HEIGHT_MOTION_LIMIT_SPRITE);
                                    if(!_loc3_)
                                    {
                                       break loop1;
                                    }
                                    break;
                                 case 1:
                                    §§push(MOUNTAIN_MAX_HEIGHT_MOTION_LIMIT_SPRITE);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       return §§pop();
                                    }
                                    continue loop0;
                                 case 2:
                                 case 3:
                                    §§push(MAX_HEIGHT_MOTION_LIMIT_SPRITE);
                              }
                              if(!_loc3_)
                              {
                                 return §§pop();
                              }
                           }
                           return §§pop();
                           addr0133:
                        }
                        §§push(MOUNTAIN_PLAYFIELD_GFXID);
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(1);
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr00fe:
                                    §§push(2);
                                    if(_loc3_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(CITY_PLAYFIELD_GFXID);
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr00db:
                                    §§push(_loc2_);
                                    if(!_loc3_)
                                    {
                                       addr00e1:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§goto(addr00fe);
                                          }
                                          else
                                          {
                                             §§goto(addr0111);
                                          }
                                       }
                                       else
                                       {
                                          addr010d:
                                          addr010c:
                                          if(COASTAL_PLAYFIELD_GFXID === _loc2_)
                                          {
                                             §§goto(addr0111);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                          §§goto(addr0131);
                                       }
                                       §§goto(addr0111);
                                    }
                                    §§goto(addr010d);
                                 }
                                 §§goto(addr010c);
                              }
                              §§goto(addr0131);
                           }
                           §§goto(addr00e1);
                        }
                        §§goto(addr00db);
                        §§goto(addr0111);
                     }
                     §§goto(addr00e1);
                  }
                  §§goto(addr00db);
               }
               §§goto(addr0076);
            }
         }
         §§goto(addr0133);
      }
      
      public static function minPositionX(param1:int) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  §§push(CITY_PLAYFIELD_GFXID);
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(_loc2_);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_)
                           {
                              §§push(1);
                              if(_loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr00fa:
                              §§push(2);
                              if(_loc4_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(COASTAL_PLAYFIELD_GFXID);
                           if(!(_loc3_ && HorizionSettingsVo))
                           {
                              §§push(_loc2_);
                              if(_loc4_ || _loc3_)
                              {
                                 addr00e8:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§goto(addr00fa);
                                    }
                                    else
                                    {
                                       addr0157:
                                       §§push(4);
                                       if(_loc4_ || _loc2_)
                                       {
                                       }
                                    }
                                    addr016d:
                                    loop1:
                                    while(true)
                                    {
                                       switch(§§pop())
                                       {
                                          case 2:
                                             §§push(COASTAL_OFFSET_X);
                                             if(_loc4_ || _loc2_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          case 3:
                                             §§push(SUBURBAN_OFFSET_X);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                break loop1;
                                             }
                                             continue loop0;
                                          case 4:
                                             §§push(MOUNTAIN_OFFSET_X);
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                return §§pop();
                                             }
                                             continue loop0;
                                          default:
                                             §§push(CITY_OFFSET_X);
                                             if(_loc4_)
                                             {
                                                return §§pop();
                                             }
                                       }
                                       return §§pop();
                                    }
                                    return §§pop();
                                    addr016f:
                                 }
                                 §§push(SUBURBAN_PLAYFIELD_GFXID);
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    addr0116:
                                    §§push(_loc2_);
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       addr0124:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(3);
                                             if(_loc4_ || Boolean(param1))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr0157);
                                          }
                                       }
                                       else
                                       {
                                          addr0153:
                                          addr0152:
                                          if(MOUNTAIN_PLAYFIELD_GFXID === _loc2_)
                                          {
                                             §§goto(addr0157);
                                          }
                                          else
                                          {
                                             §§push(0);
                                          }
                                       }
                                       §§goto(addr016d);
                                    }
                                    §§goto(addr0153);
                                 }
                                 §§goto(addr0152);
                                 §§goto(addr0157);
                              }
                              §§goto(addr0124);
                           }
                           §§goto(addr0116);
                        }
                        §§goto(addr016d);
                     }
                     §§goto(addr00e8);
                  }
                  §§goto(addr0152);
               }
               §§goto(addr00fa);
            }
         }
         §§goto(addr016f);
      }
      
      public static function minPositionY(param1:int) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               var _loc2_:* = §§pop();
               if(_loc4_ || _loc3_)
               {
                  §§push(CITY_PLAYFIELD_GFXID);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_)
                           {
                              §§push(1);
                              if(_loc4_ || HorizionSettingsVo)
                              {
                              }
                           }
                           else
                           {
                              addr00ea:
                              §§push(2);
                              if(_loc3_ && HorizionSettingsVo)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(COASTAL_PLAYFIELD_GFXID);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00ea);
                                    }
                                    else
                                    {
                                       addr012b:
                                       §§push(3);
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(SUBURBAN_PLAYFIELD_GFXID);
                                    if(_loc4_ || HorizionSettingsVo)
                                    {
                                       addr011b:
                                       §§push(_loc2_);
                                       if(_loc4_)
                                       {
                                          addr0122:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr012b);
                                             }
                                             else
                                             {
                                                addr013f:
                                                §§push(4);
                                                if(_loc3_)
                                                {
                                                }
                                             }
                                             addr014c:
                                             loop1:
                                             while(true)
                                             {
                                                switch(§§pop())
                                                {
                                                   case 2:
                                                      §§push(COASTAL_OFFSET_Y);
                                                      if(!_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      break;
                                                   case 3:
                                                      §§push(SUBURBAN_OFFSET_Y);
                                                      if(!_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop0;
                                                   case 4:
                                                      §§push(MOUNTAIN_OFFSET_Y);
                                                      if(!_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      break;
                                                   default:
                                                      §§push(CITY_OFFSET_Y);
                                                      if(!_loc3_)
                                                      {
                                                         break loop1;
                                                      }
                                                      continue loop0;
                                                }
                                             }
                                             return §§pop();
                                             addr014e:
                                          }
                                          addr013b:
                                          addr013a:
                                          if(MOUNTAIN_PLAYFIELD_GFXID === _loc2_)
                                          {
                                             §§goto(addr013f);
                                          }
                                          else
                                          {
                                             §§push(0);
                                          }
                                          §§goto(addr014c);
                                          §§goto(addr013f);
                                       }
                                       §§goto(addr013b);
                                    }
                                    §§goto(addr013a);
                                 }
                                 §§goto(addr014c);
                              }
                              §§goto(addr013b);
                           }
                           §§goto(addr013a);
                        }
                        §§goto(addr014c);
                     }
                     §§goto(addr0122);
                  }
                  §§goto(addr011b);
               }
               §§goto(addr00ea);
            }
         }
         §§goto(addr014e);
      }
      
      public static function getMinilayerText(param1:int) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(_loc4_)
         {
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               §§push(CITY_PLAYFIELD_GFXID);
               if(!(_loc3_ && HorizionSettingsVo))
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(1);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr0162:
                           §§push(3);
                           if(_loc4_ || Boolean(param1))
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(COASTAL_PLAYFIELD_GFXID);
                        if(_loc4_ || HorizionSettingsVo)
                        {
                           addr00f9:
                           §§push(_loc2_);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0107:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr0111:
                                    §§push(2);
                                    if(_loc4_ || _loc2_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr017e:
                                    §§push(4);
                                    if(_loc4_ || _loc2_)
                                    {
                                    }
                                 }
                                 addr0196:
                                 switch(§§pop())
                                 {
                                    case 2:
                                       §§push(LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.layerText.toCoast"));
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr0075);
                                       break;
                                    case 3:
                                       §§push(LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.layerText.toSuburban"));
                                       if(_loc4_)
                                       {
                                          addr0075:
                                          return §§pop();
                                       }
                                       break;
                                    case 4:
                                       §§push(LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.layerText.toMountain"));
                                       break;
                                    default:
                                       §§push(LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.layerText.toCity"));
                                       if(_loc4_)
                                       {
                                          return §§pop();
                                       }
                                 }
                                 return §§pop();
                                 addr0194:
                              }
                              else
                              {
                                 §§push(SUBURBAN_PLAYFIELD_GFXID);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr0135:
                                    §§push(_loc2_);
                                    if(_loc4_ || HorizionSettingsVo)
                                    {
                                       addr0144:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             §§goto(addr0162);
                                          }
                                          else
                                          {
                                             §§goto(addr017e);
                                          }
                                       }
                                       else
                                       {
                                          addr017a:
                                          addr0179:
                                          if(MOUNTAIN_PLAYFIELD_GFXID === _loc2_)
                                          {
                                             §§goto(addr017e);
                                          }
                                          else
                                          {
                                             §§push(0);
                                          }
                                          §§goto(addr0194);
                                       }
                                       §§goto(addr017e);
                                    }
                                    §§goto(addr017a);
                                 }
                                 §§goto(addr0179);
                              }
                              §§goto(addr017e);
                           }
                           §§goto(addr0144);
                        }
                        §§goto(addr0135);
                     }
                     §§goto(addr0194);
                  }
                  §§goto(addr0107);
               }
               §§goto(addr00f9);
            }
            §§goto(addr0111);
         }
         §§goto(addr0196);
      }
      
      public static function playfieldIdToGfxId(param1:int) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(!(_loc3_ && Boolean(param1)))
         {
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               §§push(CITY_PLAYFIELD_ID);
               if(_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc3_ && HorizionSettingsVo))
                        {
                           §§push(0);
                           if(_loc4_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr00fd:
                           §§push(1);
                           if(_loc4_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(COASTAL_PLAYFIELD_ID);
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              addr00ec:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr00fd);
                                 }
                                 else
                                 {
                                    addr014b:
                                    §§push(3);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(SUBURBAN_PLAYFIELD_ID);
                                 if(_loc4_ || HorizionSettingsVo)
                                 {
                                    addr011a:
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       addr0121:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(2);
                                             if(_loc4_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr014b);
                                          }
                                          §§goto(addr016b);
                                       }
                                       else
                                       {
                                          §§goto(addr013b);
                                       }
                                    }
                                    addr013b:
                                    §§goto(addr013a);
                                 }
                                 addr013a:
                                 if(MOUNTAIN_PLAYFIELD_ID === _loc2_)
                                 {
                                    §§goto(addr014b);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                              }
                              §§goto(addr016b);
                           }
                           §§goto(addr0121);
                        }
                        §§goto(addr011a);
                     }
                     addr016b:
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr017a);
                     }
                     return §§pop();
                  }
                  §§goto(addr00ec);
               }
               §§goto(addr011a);
            }
            §§goto(addr014b);
         }
         addr017a:
         switch(§§pop())
         {
            case 0:
               §§push(CITY_PLAYFIELD_GFXID);
               if(!(_loc3_ && HorizionSettingsVo))
               {
                  return §§pop();
               }
               §§goto(addr0048);
               break;
            case 1:
               §§push(COASTAL_PLAYFIELD_GFXID);
               if(!(_loc3_ && Boolean(param1)))
               {
                  addr0048:
                  return §§pop();
               }
               §§goto(addr0060);
               break;
            case 2:
               §§push(SUBURBAN_PLAYFIELD_GFXID);
               if(_loc4_)
               {
                  addr0060:
                  return §§pop();
               }
               break;
            case 3:
               return MOUNTAIN_PLAYFIELD_GFXID;
            default:
               return 0;
         }
         return §§pop();
      }
      
      public static function playfieldYOffset(param1:int) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(param1);
         if(!(_loc4_ && Boolean(param1)))
         {
            var _loc2_:* = §§pop();
            if(_loc3_ || HorizionSettingsVo)
            {
               §§push(CITY_PLAYFIELD_ID);
               if(!(_loc4_ && HorizionSettingsVo))
               {
                  §§push(_loc2_);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§push(1);
                           if(_loc4_ && _loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr00fc:
                           §§push(2);
                           if(_loc4_ && _loc2_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(COASTAL_PLAYFIELD_ID);
                        if(!_loc4_)
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr00fc);
                                 }
                                 else
                                 {
                                    addr013b:
                                    §§push(3);
                                    if(_loc4_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(SUBURBAN_PLAYFIELD_ID);
                                 if(!_loc4_)
                                 {
                                    addr0119:
                                    §§push(_loc2_);
                                    if(_loc3_)
                                    {
                                       addr012a:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr013b);
                                          }
                                          else
                                          {
                                             addr014f:
                                             §§push(4);
                                             if(_loc3_)
                                             {
                                             }
                                          }
                                          addr015e:
                                          switch(§§pop())
                                          {
                                             case 2:
                                                §§push(PLAYFIELD_Y_OFFSET_COASTAL);
                                                if(!(_loc4_ && Boolean(param1)))
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             case 3:
                                                §§push(PLAYFIELD_Y_OFFSET_SUBURBAN);
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr0063);
                                                break;
                                             case 4:
                                                addr0063:
                                                return §§pop();
                                                §§push(PLAYFIELD_Y_OFFSET_MOUNTAIN);
                                             default:
                                                §§push(PLAYFIELD_Y_OFFSET_STANDARD);
                                                if(_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                          }
                                          return §§pop();
                                          addr015c:
                                       }
                                       else
                                       {
                                          addr014b:
                                          addr014a:
                                          if(MOUNTAIN_PLAYFIELD_ID === _loc2_)
                                          {
                                             §§goto(addr014f);
                                          }
                                          else
                                          {
                                             §§push(0);
                                          }
                                          §§goto(addr015c);
                                       }
                                       §§goto(addr014f);
                                    }
                                    §§goto(addr014b);
                                 }
                                 §§goto(addr014a);
                              }
                              §§goto(addr015c);
                           }
                           §§goto(addr012a);
                        }
                        §§goto(addr014a);
                     }
                     §§goto(addr015c);
                  }
                  §§goto(addr014b);
               }
               §§goto(addr0119);
            }
            §§goto(addr00fc);
         }
         §§goto(addr015e);
      }
      
      public function get offsetPoint() : Point
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._gfxId);
         if(!_loc2_)
         {
            var _loc1_:* = §§pop();
            if(!(_loc2_ && _loc3_))
            {
               §§push(CITY_PLAYFIELD_GFXID);
               if(_loc3_)
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr00b4:
                           §§push(0);
                           if(_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr011d:
                           §§push(2);
                           if(_loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(COASTAL_PLAYFIELD_GFXID);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              addr00d5:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(1);
                                    if(_loc2_ && Boolean(this))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr011d);
                                 }
                              }
                              else
                              {
                                 §§push(SUBURBAN_PLAYFIELD_GFXID);
                                 if(!_loc2_)
                                 {
                                    addr00f9:
                                    §§push(_loc1_);
                                    if(!_loc2_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§goto(addr011d);
                                          }
                                          else
                                          {
                                             addr0130:
                                             §§push(3);
                                             if(_loc2_)
                                             {
                                             }
                                          }
                                          addr0149:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                return new Point(CITY_OFFSET_X,CITY_OFFSET_Y);
                                             case 1:
                                                return new Point(COASTAL_OFFSET_X,COASTAL_OFFSET_Y);
                                             case 2:
                                                return new Point(SUBURBAN_OFFSET_X,SUBURBAN_OFFSET_Y);
                                             case 3:
                                                return new Point(MOUNTAIN_OFFSET_X,MOUNTAIN_OFFSET_Y);
                                             default:
                                                return null;
                                          }
                                          addr0147:
                                       }
                                       else
                                       {
                                          addr012c:
                                          addr012b:
                                          if(MOUNTAIN_PLAYFIELD_GFXID === _loc1_)
                                          {
                                             §§goto(addr0130);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                          §§goto(addr0147);
                                       }
                                       §§goto(addr0130);
                                    }
                                    §§goto(addr012c);
                                 }
                                 §§goto(addr012b);
                              }
                              §§goto(addr0147);
                           }
                           §§goto(addr012c);
                        }
                        §§goto(addr00f9);
                     }
                     §§goto(addr0147);
                  }
                  §§goto(addr00d5);
               }
               §§goto(addr012b);
            }
            §§goto(addr00b4);
         }
         §§goto(addr0149);
      }
      
      public function get tileSizePoint() : Point
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._gfxId);
         if(!_loc2_)
         {
            var _loc1_:* = §§pop();
            if(!_loc2_)
            {
               §§push(CITY_PLAYFIELD_GFXID);
               if(_loc3_)
               {
                  §§push(_loc1_);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr0146:
                           §§push(3);
                           if(_loc2_ && _loc1_)
                           {
                           }
                        }
                        addr0167:
                        switch(§§pop())
                        {
                           case 0:
                              return new Point(CITY_TILESIZE_X,CITY_TILESIZE_Y);
                           case 1:
                              return new Point(COASTAL_TILESIZE_X,COASTAL_TILESIZE_Y);
                           case 2:
                              return new Point(SUBURBAN_TILESIZE_X,SUBURBAN_TILESIZE_Y);
                           case 3:
                              return new Point(MOUNTAIN_TILESIZE_X,MOUNTAINT_TILESIZE_Y);
                           default:
                              return null;
                        }
                        addr0165:
                     }
                     else
                     {
                        §§push(COASTAL_PLAYFIELD_GFXID);
                        if(!_loc2_)
                        {
                           addr00c0:
                           §§push(_loc1_);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§push(1);
                                    if(_loc2_ && _loc2_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr0146);
                                 }
                                 §§goto(addr0165);
                              }
                              else
                              {
                                 §§push(SUBURBAN_PLAYFIELD_GFXID);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc3_ || _loc1_)
                                          {
                                             §§push(2);
                                             if(_loc2_ && _loc2_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr0146);
                                          }
                                       }
                                       else
                                       {
                                          addr0142:
                                          addr0141:
                                          if(MOUNTAIN_PLAYFIELD_GFXID === _loc1_)
                                          {
                                             §§goto(addr0146);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                       }
                                       §§goto(addr0165);
                                    }
                                    §§goto(addr0142);
                                 }
                                 §§goto(addr0141);
                              }
                           }
                           §§goto(addr0142);
                        }
                        §§goto(addr0141);
                     }
                     §§goto(addr0146);
                  }
                  §§goto(addr0142);
               }
               §§goto(addr00c0);
            }
            §§goto(addr0146);
         }
         §§goto(addr0167);
      }
      
      public function get tileamount() : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(this._gfxId);
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               var _loc1_:* = §§pop();
               if(!_loc3_)
               {
                  §§push(CITY_PLAYFIELD_GFXID);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(_loc1_);
                     if(_loc2_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc3_)
                           {
                              §§push(0);
                              if(_loc2_)
                              {
                              }
                           }
                           else
                           {
                              addr013d:
                              §§push(1);
                              if(_loc3_ && _loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(COASTAL_PLAYFIELD_GFXID);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(_loc1_);
                              if(_loc2_ || _loc3_)
                              {
                                 addr012c:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§goto(addr013d);
                                    }
                                    else
                                    {
                                       addr018f:
                                       §§push(3);
                                       if(_loc2_ || _loc1_)
                                       {
                                       }
                                    }
                                    addr01ae:
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §§push(this.CITY_MAX_HORIZONTAL_SLICES);
                                             if(!_loc3_)
                                             {
                                                §§push(this.CITY_MAX_VERTICAL_SLICES);
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc2_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr0060);
                                                }
                                                break;
                                             }
                                             continue loop0;
                                          case 1:
                                             §§push(this.COASTAL_MAX_HORIZONTAL_SLICES);
                                             if(!_loc3_)
                                             {
                                                §§push(this.COASTAL_MAX_VERTICAL_SLICES);
                                                if(_loc3_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_)
                                                {
                                                   §§goto(addr0097);
                                                }
                                             }
                                             continue loop0;
                                             addr0060:
                                             return §§pop();
                                             break;
                                          case 2:
                                             §§push(this.SUBURBAN_MAX_HORIZONTAL_SLICES);
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                break loop0;
                                             }
                                             §§push(this.SUBURBAN_MAX_VERTICAL_SLICES);
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                break;
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_)
                                             {
                                                §§goto(addr00b6);
                                             }
                                             addr0097:
                                             return §§pop();
                                             break;
                                          case 3:
                                             §§push(this.MOUNTAIN_MAX_HORIZONTAL_SLICES);
                                             if(_loc2_)
                                             {
                                                §§push(this.MOUNTAIN_MAX_VERTICAL_SLICES);
                                                break;
                                             }
                                             continue;
                                          default:
                                             §§push(-1);
                                             break loop0;
                                       }
                                       addr00b6:
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    §§push(SUBURBAN_PLAYFIELD_GFXID);
                                    if(_loc2_)
                                    {
                                       addr0158:
                                       §§push(_loc1_);
                                       if(!_loc3_)
                                       {
                                          addr015e:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(2);
                                                if(_loc2_ || _loc3_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr018f);
                                             }
                                          }
                                          else
                                          {
                                             addr018b:
                                             addr018a:
                                             if(MOUNTAIN_PLAYFIELD_GFXID === _loc1_)
                                             {
                                                §§goto(addr018f);
                                             }
                                             else
                                             {
                                                §§push(4);
                                             }
                                          }
                                          §§goto(addr01ae);
                                       }
                                       §§goto(addr018b);
                                    }
                                    §§goto(addr018a);
                                 }
                                 §§goto(addr018f);
                              }
                              §§goto(addr015e);
                           }
                           §§goto(addr018a);
                        }
                        §§goto(addr01ae);
                     }
                     §§goto(addr012c);
                  }
                  §§goto(addr0158);
               }
               §§goto(addr013d);
            }
         }
         return §§pop();
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get loaderPrefix() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(this._gfxId);
         if(_loc2_)
         {
            var _loc1_:* = §§pop();
            if(!(_loc3_ && _loc1_))
            {
               §§push(CITY_PLAYFIELD_GFXID);
               if(_loc2_ || Boolean(this))
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc2_ || Boolean(this))
                           {
                           }
                        }
                        else
                        {
                           addr00c3:
                           §§push(1);
                           if(_loc2_ || _loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(COASTAL_PLAYFIELD_GFXID);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00c3);
                                 }
                                 else
                                 {
                                    addr00fd:
                                    §§push(2);
                                    if(_loc2_ || _loc3_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(SUBURBAN_PLAYFIELD_GFXID);
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr00e6:
                                    §§push(_loc1_);
                                    if(!_loc3_)
                                    {
                                       addr00ec:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§goto(addr00fd);
                                          }
                                          else
                                          {
                                             addr0122:
                                             §§push(3);
                                             if(_loc2_ || Boolean(this))
                                             {
                                             }
                                          }
                                          addr0143:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(this.LOADER_PREFIX);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   return §§pop();
                                                }
                                                addr0036:
                                                §§push(§§pop() + this._gfxId + "_");
                                                if(!_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                break;
                                             case 1:
                                             case 2:
                                             case 3:
                                                §§goto(addr0036);
                                                §§push(this.LOADER_PREFIX);
                                             default:
                                                §§push("");
                                          }
                                          return §§pop();
                                          addr0141:
                                       }
                                       else
                                       {
                                          addr011e:
                                          addr011d:
                                          if(MOUNTAIN_PLAYFIELD_GFXID === _loc1_)
                                          {
                                             §§goto(addr0122);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr0122);
                                    }
                                    §§goto(addr011e);
                                 }
                                 §§goto(addr011d);
                              }
                              §§goto(addr0141);
                           }
                           §§goto(addr00ec);
                        }
                        §§goto(addr00e6);
                     }
                     §§goto(addr0141);
                  }
                  §§goto(addr00ec);
               }
               §§goto(addr00e6);
            }
            §§goto(addr00fd);
         }
         §§goto(addr0143);
      }
      
      public function get maxHorizontalTiles() : int
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._gfxId);
         if(!(_loc2_ && _loc3_))
         {
            loop0:
            while(true)
            {
               var _loc1_:* = §§pop();
               if(_loc3_ || _loc2_)
               {
                  §§push(CITY_PLAYFIELD_GFXID);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(_loc1_);
                     if(_loc3_ || _loc1_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc2_)
                           {
                              addr00c7:
                              §§push(0);
                              if(_loc2_)
                              {
                              }
                           }
                           else
                           {
                              addr00f1:
                              §§push(1);
                              if(_loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(COASTAL_PLAYFIELD_GFXID);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(_loc1_);
                              if(!_loc2_)
                              {
                                 addr00e8:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00f1);
                                    }
                                    else
                                    {
                                       addr0143:
                                       §§push(3);
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    addr015a:
                                    if(!_loc2_)
                                    {
                                       switch(§§pop())
                                       {
                                          case 0:
                                             §§push(this.CITY_MAX_HORIZONTAL_SLICES);
                                             if(!_loc2_)
                                             {
                                                return §§pop();
                                             }
                                             break loop0;
                                          case 1:
                                             §§push(this.COASTAL_MAX_HORIZONTAL_SLICES);
                                             if(!_loc2_)
                                             {
                                                return §§pop();
                                             }
                                             break;
                                          case 2:
                                             §§push(this.SUBURBAN_MAX_HORIZONTAL_SLICES);
                                             if(_loc3_ || _loc3_)
                                             {
                                                return §§pop();
                                             }
                                             continue;
                                          case 3:
                                             §§push(this.MOUNTAIN_MAX_HORIZONTAL_SLICES);
                                             if(_loc3_ || _loc3_)
                                             {
                                                break;
                                             }
                                             continue;
                                          default:
                                             return 0;
                                       }
                                       return §§pop();
                                    }
                                    break;
                                 }
                                 §§push(SUBURBAN_PLAYFIELD_GFXID);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(_loc1_);
                                    if(_loc3_)
                                    {
                                       addr0112:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(2);
                                             if(_loc3_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr0143);
                                          }
                                       }
                                       else
                                       {
                                          addr013f:
                                          addr013e:
                                          if(MOUNTAIN_PLAYFIELD_GFXID === _loc1_)
                                          {
                                             §§goto(addr0143);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                       }
                                       §§goto(addr015a);
                                    }
                                    §§goto(addr013f);
                                 }
                                 §§goto(addr013e);
                                 §§goto(addr0143);
                              }
                              §§goto(addr0112);
                           }
                           §§goto(addr013e);
                        }
                        §§goto(addr015a);
                     }
                     §§goto(addr00e8);
                  }
                  §§goto(addr013e);
               }
               §§goto(addr00c7);
            }
         }
         return §§pop();
      }
      
      public function get maxVerticalTiles() : int
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._gfxId);
         if(!_loc2_)
         {
            var _loc1_:* = §§pop();
            if(!_loc2_)
            {
               §§push(CITY_PLAYFIELD_GFXID);
               if(!_loc2_)
               {
                  §§push(_loc1_);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc2_)
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr00f7:
                           §§push(2);
                           if(_loc3_ || _loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(COASTAL_PLAYFIELD_GFXID);
                        if(_loc3_)
                        {
                           addr00b6:
                           §§push(_loc1_);
                           if(_loc3_ || Boolean(this))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(1);
                                    if(_loc3_ || _loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr0120:
                                    §§push(3);
                                    if(_loc2_ && _loc3_)
                                    {
                                    }
                                 }
                                 §§goto(addr013f);
                              }
                              else
                              {
                                 §§push(SUBURBAN_PLAYFIELD_GFXID);
                                 if(_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc2_)
                                    {
                                       addr00ee:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr00f7);
                                          }
                                          else
                                          {
                                             §§goto(addr0120);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr011c);
                                       }
                                       §§goto(addr0120);
                                    }
                                    addr011c:
                                 }
                                 §§goto(addr011b);
                              }
                           }
                           §§goto(addr00ee);
                        }
                        addr011b:
                        if(MOUNTAIN_PLAYFIELD_GFXID === _loc1_)
                        {
                           §§goto(addr0120);
                        }
                        else
                        {
                           §§push(4);
                        }
                        §§goto(addr013f);
                     }
                     addr013f:
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(this.CITY_MAX_VERTICAL_SLICES);
                                 if(_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 break;
                              case 1:
                                 §§push(this.COASTAL_MAX_VERTICAL_SLICES);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 addr0043:
                                 return §§pop();
                                 break;
                              case 2:
                                 §§push(this.SUBURBAN_MAX_VERTICAL_SLICES);
                                 if(!_loc2_)
                                 {
                                    §§goto(addr0043);
                                    break;
                                 }
                                 continue;
                              case 3:
                                 §§push(this.MOUNTAIN_MAX_VERTICAL_SLICES);
                                 if(!_loc2_)
                                 {
                                    return §§pop();
                                 }
                                 continue;
                              default:
                                 return 0;
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr015c);
                  }
                  §§goto(addr00ee);
               }
               §§goto(addr00b6);
            }
            §§goto(addr00f7);
         }
         addr015c:
         return §§pop();
      }
   }
}

