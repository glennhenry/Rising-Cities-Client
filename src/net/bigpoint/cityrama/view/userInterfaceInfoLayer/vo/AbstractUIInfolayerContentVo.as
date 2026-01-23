package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   
   public class AbstractUIInfolayerContentVo
   {
      
      public static const HEADER_ICON_INFO:String = "HEADER_ICON_INFO";
      
      public static const HEADER_ICON_ALERT:String = "HEADER_ICON_ALERT";
      
      public static const HEADER_ICON_X:String = "HEADER_ICON_X";
      
      public static const HEADER_ICON_UPGRADE:String = "HEADER_ICON_UPGRADE";
      
      public static const HEADER_ICON_GREY_X:String = "HEADER_ICON_GREY_X";
      
      public static const HEADER_ICON_LOCKED:String = "HEADER_ICON_LOCKED";
      
      public static const HEADER_ICON_BONUSDAY:String = "HEADER_ICON_BONUSDAY";
      
      public static const HEADER_ICON_RC:String = "HEADER_ICON_RC";
      
      public static const ALIGN_TOP:uint;
      
      public static const ALIGN_BOTTOM:uint;
      
      public static const ALIGN_LEFT:uint;
      
      public static const ALIGN_RIGHT:uint;
      
      private static const VALID_ALIGNMENTS:Vector.<uint>;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         HEADER_ICON_INFO = "HEADER_ICON_INFO";
         if(!_loc2_)
         {
            HEADER_ICON_ALERT = "HEADER_ICON_ALERT";
            if(!_loc2_)
            {
               HEADER_ICON_X = "HEADER_ICON_X";
               if(_loc1_ || AbstractUIInfolayerContentVo)
               {
                  HEADER_ICON_UPGRADE = "HEADER_ICON_UPGRADE";
                  if(!(_loc2_ && _loc2_))
                  {
                     HEADER_ICON_GREY_X = "HEADER_ICON_GREY_X";
                     if(_loc1_ || AbstractUIInfolayerContentVo)
                     {
                        addr0073:
                        HEADER_ICON_LOCKED = "HEADER_ICON_LOCKED";
                        if(_loc1_ || AbstractUIInfolayerContentVo)
                        {
                           HEADER_ICON_BONUSDAY = "HEADER_ICON_BONUSDAY";
                           if(_loc1_ || _loc2_)
                           {
                              HEADER_ICON_RC = "HEADER_ICON_RC";
                              if(!_loc2_)
                              {
                                 §§goto(addr00b7);
                              }
                              §§goto(addr00e1);
                           }
                           addr00b7:
                           ALIGN_TOP = UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
                           if(_loc1_ || AbstractUIInfolayerContentVo)
                           {
                              addr00d0:
                              ALIGN_BOTTOM = UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                              if(!_loc2_)
                              {
                                 addr00e1:
                                 ALIGN_LEFT = UserInterfaceInfoLayerAlignLineVo.ALIGN_LEFT;
                                 if(!(_loc2_ && AbstractUIInfolayerContentVo))
                                 {
                                    addr0104:
                                    ALIGN_RIGHT = UserInterfaceInfoLayerAlignLineVo.ALIGN_RIGHT;
                                    if(_loc1_)
                                    {
                                       addr0115:
                                       VALID_ALIGNMENTS = new <uint>[ALIGN_TOP,ALIGN_BOTTOM];
                                    }
                                 }
                              }
                           }
                           §§goto(addr013c);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr0104);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0115);
            }
         }
      }
      addr013c:
      
      private var _pos:Point;
      
      private var _lineId:uint;
      
      private var _alignment:uint;
      
      private var _headerString:String;
      
      private var _headerIconType:String;
      
      public function AbstractUIInfolayerContentVo(param1:uint, param2:Point, param3:String = "", param4:String = "")
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_ || Boolean(param3))
         {
            super();
            if(!(_loc5_ && Boolean(param1)))
            {
               this._headerString = param3;
               if(!(_loc5_ && Boolean(param3)))
               {
                  addr005f:
                  this._lineId = param1;
                  if(_loc6_)
                  {
                     this._pos = param2;
                     if(_loc6_)
                     {
                        this._headerIconType = param4;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr005f);
      }
      
      public function get lineId() : uint
      {
         return this._lineId;
      }
      
      public function get pos() : Point
      {
         return this._pos;
      }
      
      public function get alignment() : uint
      {
         return this._alignment;
      }
      
      public function set alignment(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(VALID_ALIGNMENTS.indexOf(param1) == -1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  throw new ArgumentError(param1 + " no valid alignment");
               }
            }
         }
         this._alignment = param1;
      }
      
      public function get headerString() : String
      {
         return this._headerString;
      }
      
      public function set headerIconType(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._headerIconType = param1;
         }
      }
      
      public function get headerIconDynaVo() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = this._headerIconType;
         if(_loc3_ || Boolean(this))
         {
            §§push(HEADER_ICON_ALERT);
            if(!_loc2_)
            {
               §§push(_loc1_);
               if(_loc3_ || _loc3_)
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
                        addr0135:
                        §§push(1);
                        if(_loc2_ && _loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(HEADER_ICON_INFO);
                     if(_loc3_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc2_)
                        {
                           addr0124:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr0135);
                              }
                              else
                              {
                                 addr01ed:
                                 §§push(5);
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(HEADER_ICON_UPGRADE);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§push(_loc1_);
                                 if(_loc3_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(2);
                                          if(_loc2_ && _loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr023e:
                                          §§push(7);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       addr0255:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_attention");
                                          case 1:
                                             return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_info");
                                          case 2:
                                             return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_upgrade");
                                          case 3:
                                             return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_demolish");
                                          case 4:
                                             return new BriskDynaVo("gui_infield_gui_infolayer","cross_grey");
                                          case 5:
                                             return new BriskDynaVo("gui_infield_gui_infolayer","levellocked");
                                          case 6:
                                             return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_bonusDay");
                                          case 7:
                                             return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_rc");
                                          default:
                                             return null;
                                       }
                                    }
                                    else
                                    {
                                       §§push(HEADER_ICON_X);
                                       if(!_loc2_)
                                       {
                                          addr0182:
                                          §§push(_loc1_);
                                          if(!_loc2_)
                                          {
                                             addr0188:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(3);
                                                   if(_loc2_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr01bb:
                                                   §§push(4);
                                                   if(_loc3_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(HEADER_ICON_GREY_X);
                                                if(_loc3_)
                                                {
                                                   addr01a4:
                                                   §§push(_loc1_);
                                                   if(!_loc2_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            §§goto(addr01bb);
                                                         }
                                                         else
                                                         {
                                                            addr0223:
                                                            §§push(6);
                                                            if(_loc2_ && Boolean(this))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(HEADER_ICON_LOCKED);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            addr01d6:
                                                            §§push(_loc1_);
                                                            if(!_loc2_)
                                                            {
                                                               addr01dc:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§goto(addr01ed);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0223);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(HEADER_ICON_BONUSDAY);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        addr020e:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§goto(addr0223);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr023e);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr023a:
                                                                           addr0239:
                                                                           if(HEADER_ICON_RC === _loc1_)
                                                                           {
                                                                              §§goto(addr023e);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(8);
                                                                           }
                                                                           §§goto(addr0255);
                                                                        }
                                                                        §§goto(addr023e);
                                                                     }
                                                                     §§goto(addr023a);
                                                                  }
                                                                  §§goto(addr0239);
                                                               }
                                                               §§goto(addr0255);
                                                            }
                                                            §§goto(addr020e);
                                                         }
                                                         §§goto(addr0239);
                                                      }
                                                      §§goto(addr0255);
                                                   }
                                                   §§goto(addr01dc);
                                                }
                                                §§goto(addr01d6);
                                             }
                                             §§goto(addr0255);
                                          }
                                          §§goto(addr01dc);
                                       }
                                       §§goto(addr01a4);
                                    }
                                    §§goto(addr023e);
                                 }
                                 §§goto(addr01dc);
                              }
                              §§goto(addr0182);
                           }
                           §§goto(addr0255);
                        }
                        §§goto(addr0188);
                     }
                     §§goto(addr01d6);
                  }
                  §§goto(addr0255);
               }
               §§goto(addr0124);
            }
            §§goto(addr01d6);
         }
         §§goto(addr0223);
      }
   }
}

