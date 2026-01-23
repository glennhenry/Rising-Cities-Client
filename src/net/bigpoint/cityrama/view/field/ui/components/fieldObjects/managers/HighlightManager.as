package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IHighlightManager;
   import net.bigpoint.field3d.interfaces.IMatrixObject3dVo;
   
   public class HighlightManager implements IHighlightManager
   {
      
      public static const INMOVE_ALLOW_MOVE_TINT:String = "INMOVE_ALLOW_MOVE_TINT";
      
      public static const INMOVE_DISALLOW_TINT:String = "INMOVE_DISALLOW_TINT";
      
      public static const INMOVE_RANGE_TINT:String = "INMOVE_RANGE_TINT";
      
      public static const COLOR_RESET:String = "COLOR_RESET";
      
      public static const SECURITY_GOOD:String = "SECURITY_GOOD";
      
      public static const SECURITY_MEDIUM:String = "SECURITY_MEDIUM";
      
      public static const SECURITY_BAD:String = "SECURITY_BAD";
      
      private static const ACTIVE_COLOR:uint = 16777215;
      
      private static const INACTIVE_COLOR:uint = 16777215;
      
      private static const DESTROY_COLOR:uint = 16604766;
      
      private static const MOVE_COLOR:uint = 6152958;
      
      private static const SPECIAL_COLOR:uint = 16766976;
      
      private static const INMOVE_ALLOW_PLACEMENT:uint = 7143168;
      
      private static const INMOVE_DISALLOW_PLACEMENT:uint = 16604766;
      
      private static const INMOVE_IN_RANGE:uint = 6152958;
      
      private static const IMROVEABLE:uint = 16777215;
      
      private static const RESET_TINT:uint = 0;
      
      private static const HIGHLIGHT_MOVE:String = "move";
      
      private static const HIGHLIGHT_DESTROY:String = "destroy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         INMOVE_ALLOW_MOVE_TINT = "INMOVE_ALLOW_MOVE_TINT";
         if(_loc1_)
         {
            addr0023:
            INMOVE_DISALLOW_TINT = "INMOVE_DISALLOW_TINT";
            if(_loc1_ || _loc2_)
            {
               INMOVE_RANGE_TINT = "INMOVE_RANGE_TINT";
               if(_loc1_ || HighlightManager)
               {
                  COLOR_RESET = "COLOR_RESET";
                  if(_loc1_ || HighlightManager)
                  {
                     SECURITY_GOOD = "SECURITY_GOOD";
                     if(!_loc2_)
                     {
                        SECURITY_MEDIUM = "SECURITY_MEDIUM";
                        if(!_loc2_)
                        {
                           §§goto(addr0081);
                        }
                        §§goto(addr0148);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr0114);
               }
               addr0081:
               SECURITY_BAD = "SECURITY_BAD";
               if(_loc1_ || HighlightManager)
               {
                  ACTIVE_COLOR = 16777215;
                  if(_loc1_)
                  {
                     INACTIVE_COLOR = 16777215;
                     if(!_loc2_)
                     {
                        addr00bb:
                        DESTROY_COLOR = 16604766;
                        if(_loc1_)
                        {
                           addr00c8:
                           MOVE_COLOR = 6152958;
                           if(!_loc2_)
                           {
                              addr00d5:
                              SPECIAL_COLOR = 16766976;
                              if(!(_loc2_ && HighlightManager))
                              {
                                 INMOVE_ALLOW_PLACEMENT = 7143168;
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    INMOVE_DISALLOW_PLACEMENT = 16604766;
                                    if(!(_loc2_ && HighlightManager))
                                    {
                                       addr0114:
                                       INMOVE_IN_RANGE = 6152958;
                                       if(_loc1_ || HighlightManager)
                                       {
                                          addr0129:
                                          IMROVEABLE = 16777215;
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr0148:
                                             RESET_TINT = 0;
                                             if(!_loc2_)
                                             {
                                                addr0155:
                                                HIGHLIGHT_MOVE = "move";
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr016b:
                                                   HIGHLIGHT_DESTROY = "destroy";
                                                }
                                             }
                                             §§goto(addr0176);
                                          }
                                       }
                                    }
                                    §§goto(addr0155);
                                 }
                                 §§goto(addr0129);
                              }
                              §§goto(addr0155);
                           }
                           §§goto(addr016b);
                        }
                        §§goto(addr0176);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr0176);
            }
            §§goto(addr0155);
         }
         addr0176:
         return;
      }
      §§goto(addr0023);
      
      private var _lastApplicationMode:String;
      
      private var _billboardObjectVo:BillboardObjectVo;
      
      private var _target:DisplayObject;
      
      private var _lastState:String;
      
      private var _selectedFilter:String;
      
      private var _selectedTint:uint;
      
      private var _lastTint:uint;
      
      private var _filterDic:Dictionary;
      
      private var _isVisible:Boolean;
      
      private var _isDirty:Boolean;
      
      public function HighlightManager()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
            if(!_loc1_)
            {
               this._filterDic = new Dictionary();
            }
         }
      }
      
      public function prepareHighlightManager(param1:IMatrixObject3dVo, param2:DisplayObject) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            this._billboardObjectVo = param1 as BillboardObjectVo;
            if(!(_loc3_ && _loc3_))
            {
               this._target = param2;
               if(_loc4_)
               {
                  this.prepareGlowFilter();
                  if(_loc4_ || _loc3_)
                  {
                     addr0071:
                     this._selectedTint = RESET_TINT;
                     if(_loc4_)
                     {
                        addr007e:
                        this._lastTint = RESET_TINT;
                     }
                  }
               }
               return;
            }
            §§goto(addr007e);
         }
         §§goto(addr0071);
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            this.nullCheck("HighlightManager, prepare before invalidate!");
            if(!(_loc5_ && Boolean(param1)))
            {
               this.checkForState(param1);
               if(_loc4_ || Boolean(this))
               {
                  this.checkVisibility(param2);
               }
            }
         }
         §§push(this.checkTint(param2));
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && param2))
         {
            this.checkData();
            if(_loc4_ || param2)
            {
               §§push(this._isDirty);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(this._isVisible);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || Boolean(this))
                              {
                                 addr00d2:
                                 this.setGlow(this._filterDic[this._selectedFilter]);
                                 if(!_loc5_)
                                 {
                                    addr00ea:
                                    if(_loc3_)
                                    {
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          addr0109:
                                          this.setTint(this._selectedTint);
                                          if(_loc5_)
                                          {
                                          }
                                          addr0137:
                                          this._isDirty = false;
                                       }
                                       else
                                       {
                                          addr0129:
                                          this.setTint(0);
                                          if(_loc4_)
                                          {
                                             §§goto(addr0137);
                                          }
                                       }
                                       §§goto(addr013c);
                                    }
                                    §§goto(addr0137);
                                 }
                              }
                           }
                           else
                           {
                              this.hideGlow();
                              if(_loc4_)
                              {
                                 §§goto(addr0129);
                              }
                           }
                           §§goto(addr013c);
                        }
                        §§goto(addr00ea);
                     }
                     §§goto(addr00d2);
                  }
                  addr013c:
                  return;
               }
               §§goto(addr00ea);
            }
            §§goto(addr0137);
         }
         §§goto(addr0109);
      }
      
      private function prepareGlowFilter() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._filterDic["active"] = new GlowFilter(ACTIVE_COLOR,1,6,6,100,1);
            if(!(_loc2_ && _loc2_))
            {
               this._filterDic["inactive"] = new GlowFilter(INACTIVE_COLOR,1,6,6,100,1);
               if(!(_loc2_ && _loc2_))
               {
                  this._filterDic["destroy"] = new GlowFilter(DESTROY_COLOR,1,6,6,100,1);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._filterDic["move"] = new GlowFilter(MOVE_COLOR,1,6,6,100,1);
                     if(_loc1_ || Boolean(this))
                     {
                        this._filterDic["allow_move"] = new GlowFilter(INMOVE_ALLOW_PLACEMENT,1,6,6,100,1);
                        addr00bd:
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr00f1);
                        }
                        §§goto(addr0135);
                     }
                     §§goto(addr0163);
                  }
                  §§goto(addr00bd);
               }
               addr00f1:
               this._filterDic["disallow_move"] = new GlowFilter(INMOVE_DISALLOW_PLACEMENT,1,6,6,100,1);
               if(!_loc2_)
               {
                  addr0113:
                  this._filterDic["inrange"] = new GlowFilter(INMOVE_IN_RANGE,1,6,6,100,1);
                  if(!_loc2_)
                  {
                     addr0135:
                     this._filterDic["security_good"] = new GlowFilter(SecurityGradeHeatMapMediator.GREEN,1,6,6,100,1);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0163:
                        this._filterDic["security_medium"] = new GlowFilter(SecurityGradeHeatMapMediator.YELLOW,1,6,6,100,1);
                        if(!(_loc2_ && _loc1_))
                        {
                           this._filterDic["security_bad"] = new GlowFilter(SecurityGradeHeatMapMediator.RED,1,6,6,100,1);
                           addr0191:
                           if(_loc1_ || _loc2_)
                           {
                              addr01c9:
                              this._filterDic["improvement"] = new GlowFilter(ACTIVE_COLOR,1,6,6,100,1);
                           }
                           §§goto(addr01e6);
                        }
                     }
                     §§goto(addr01c9);
                  }
               }
               addr01e6:
               return;
            }
            §§goto(addr0113);
         }
         §§goto(addr0191);
      }
      
      private function checkData() : void
      {
      }
      
      private function checkVisibility(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._isVisible == param1)
            {
               if(_loc2_)
               {
                  return;
               }
            }
            else
            {
               addr0040:
               this._isDirty = true;
               if(_loc2_)
               {
                  this._isVisible = param1;
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function checkForState(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            if(this._lastState == param1)
            {
               if(_loc4_ || _loc3_)
               {
                  return;
               }
            }
            else
            {
               this._isDirty = true;
               if(!_loc3_)
               {
                  addr0040:
                  this._lastState = param1;
               }
            }
            var _loc2_:* = param1;
            if(_loc4_)
            {
               §§push(ApplicationModeProxy.MODE_NORMAL);
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§push(_loc2_);
                  if(_loc4_ || Boolean(this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_)
                        {
                           §§push(0);
                           if(_loc3_ && Boolean(this))
                           {
                           }
                        }
                        else
                        {
                           addr0465:
                           §§push(10);
                           if(_loc3_)
                           {
                           }
                        }
                        §§goto(addr047c);
                     }
                     else
                     {
                        §§push(ApplicationModeProxy.MODE_DESTROY);
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(1);
                                    if(_loc3_ && _loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr03af:
                                    §§push(6);
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(ApplicationModeProxy.MODE_MOVE);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                             §§push(2);
                                             if(_loc4_ || Boolean(param1))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr0306:
                                             §§push(3);
                                             if(_loc3_ && _loc3_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(INMOVE_ALLOW_MOVE_TINT);
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                addr02f5:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc3_ && Boolean(param1)))
                                                   {
                                                      §§goto(addr0306);
                                                   }
                                                   else
                                                   {
                                                      addr0341:
                                                      §§push(4);
                                                      if(_loc4_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(INMOVE_DISALLOW_TINT);
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         addr0338:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr0341);
                                                            }
                                                            else
                                                            {
                                                               addr0375:
                                                               §§push(5);
                                                               if(_loc3_ && Boolean(this))
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(INMOVE_RANGE_TINT);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr035d:
                                                               §§push(_loc2_);
                                                               if(!_loc3_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§goto(addr0375);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr03ec:
                                                                        §§push(7);
                                                                        if(_loc3_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(COLOR_RESET);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr0390:
                                                                        §§push(_loc2_);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr03af);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr044f:
                                                                                 §§push(9);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(SECURITY_GOOD);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr03cc:
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    addr03da:
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          §§goto(addr03ec);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr044f);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(SECURITY_MEDIUM);
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          addr0407:
                                                                                          §§push(_loc2_);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr040d:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   addr041f:
                                                                                                   §§push(8);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr044f);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(SECURITY_BAD);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0434:
                                                                                                   §§push(_loc2_);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr0445:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr044f);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr0465);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr0461);
                                                                                                      }
                                                                                                      §§goto(addr0465);
                                                                                                   }
                                                                                                   addr0461:
                                                                                                   §§goto(addr0460);
                                                                                                }
                                                                                                addr0460:
                                                                                                if(ApplicationModeProxy.MODE_IMPROVEMENT === _loc2_)
                                                                                                {
                                                                                                   §§goto(addr0465);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(11);
                                                                                                }
                                                                                                §§goto(addr047c);
                                                                                             }
                                                                                             §§goto(addr047c);
                                                                                          }
                                                                                          §§goto(addr0445);
                                                                                       }
                                                                                       §§goto(addr0434);
                                                                                    }
                                                                                    §§goto(addr047c);
                                                                                 }
                                                                                 §§goto(addr0461);
                                                                              }
                                                                              §§goto(addr0407);
                                                                           }
                                                                           §§goto(addr047c);
                                                                        }
                                                                        §§goto(addr0445);
                                                                     }
                                                                     §§goto(addr0407);
                                                                  }
                                                                  §§goto(addr047c);
                                                               }
                                                               §§goto(addr0445);
                                                            }
                                                            §§goto(addr03cc);
                                                         }
                                                         §§goto(addr047c);
                                                      }
                                                      §§goto(addr03da);
                                                   }
                                                   §§goto(addr035d);
                                                }
                                                §§goto(addr047c);
                                             }
                                             §§goto(addr0338);
                                          }
                                          §§goto(addr0390);
                                       }
                                       §§goto(addr047c);
                                    }
                                    §§goto(addr02f5);
                                 }
                                 §§goto(addr03cc);
                              }
                              addr047c:
                              switch(§§pop())
                              {
                                 case 0:
                                    this._selectedFilter = "active";
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       this._selectedTint = RESET_TINT;
                                       if(_loc4_ || Boolean(_loc2_))
                                       {
                                          this._lastApplicationMode = param1;
                                          if(_loc4_ || _loc3_)
                                          {
                                             break;
                                          }
                                          addr01a6:
                                          this._selectedTint = SecurityGradeHeatMapMediator.YELLOW;
                                          if(_loc3_)
                                          {
                                          }
                                          break;
                                       }
                                       addr014d:
                                       this._selectedTint = INMOVE_IN_RANGE;
                                       if(_loc3_)
                                       {
                                       }
                                       break;
                                    }
                                    addr01cf:
                                    this._selectedTint = SecurityGradeHeatMapMediator.RED;
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       break;
                                    }
                                    addr01f9:
                                    this._selectedTint = IMROVEABLE;
                                    if(_loc3_)
                                    {
                                    }
                                    break;
                                 case 1:
                                    this._selectedFilter = "destroy";
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    this._selectedTint = RESET_TINT;
                                    if(_loc3_ && Boolean(this))
                                    {
                                       break;
                                    }
                                    this._lastApplicationMode = param1;
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr01cf);
                                    break;
                                 case 2:
                                    this._selectedFilter = "move";
                                    if(_loc4_)
                                    {
                                       this._selectedTint = RESET_TINT;
                                       if(_loc4_)
                                       {
                                          this._lastApplicationMode = param1;
                                          if(_loc4_ || Boolean(param1))
                                          {
                                             break;
                                          }
                                          addr0183:
                                          this._selectedTint = SecurityGradeHeatMapMediator.GREEN;
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                    }
                                    break;
                                 case 3:
                                    this._selectedFilter = "allow_move";
                                    if(!(_loc3_ && Boolean(param1)))
                                    {
                                       this._selectedTint = INMOVE_ALLOW_PLACEMENT;
                                       if(_loc4_ || Boolean(this))
                                       {
                                       }
                                    }
                                    break;
                                 case 4:
                                    this._selectedFilter = "disallow_move";
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       this._selectedTint = INMOVE_DISALLOW_PLACEMENT;
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§goto(addr0183);
                                    }
                                    else
                                    {
                                       §§goto(addr01a6);
                                    }
                                    break;
                                 case 5:
                                    this._selectedFilter = "inrange";
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§goto(addr014d);
                                    break;
                                 case 6:
                                    this._isVisible = false;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       break;
                                    }
                                    §§goto(addr01f9);
                                    break;
                                 case 7:
                                    this._selectedFilter = "security_good";
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr0183);
                                    break;
                                 case 8:
                                    this._selectedFilter = "security_medium";
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr01a6);
                                    break;
                                 case 9:
                                    this._selectedFilter = "security_bad";
                                    if(_loc3_ && Boolean(param1))
                                    {
                                       break;
                                    }
                                    §§goto(addr01cf);
                                    break;
                                 case 10:
                                    this._selectedFilter = "improvement";
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr01f9);
                              }
                              return;
                           }
                           §§goto(addr040d);
                        }
                        §§goto(addr0407);
                     }
                  }
                  §§goto(addr02f5);
               }
               §§goto(addr03cc);
            }
            §§goto(addr041f);
         }
         §§goto(addr0040);
      }
      
      private function checkTint(param1:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this._selectedTint != this._lastTint)
            {
               if(_loc3_ || param1)
               {
                  addr003f:
                  §§push(true);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0046:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr0046);
         }
         §§goto(addr003f);
      }
      
      private function setGlow(param1:GlowFilter) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._target.filters = [param1];
         }
      }
      
      private function setTint(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._lastTint = param1;
            if(_loc2_)
            {
               if(param1 == RESET_TINT)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     TweenMax.to(this._target,0,{"colorTransform":{
                        "tint":param1,
                        "tintAmount":0
                     }});
                     addr0044:
                     if(_loc2_ || _loc3_)
                     {
                     }
                  }
               }
               else
               {
                  TweenMax.to(this._target,0,{"colorTransform":{
                     "tint":param1,
                     "tintAmount":0.5
                  }});
               }
               §§goto(addr0099);
            }
            §§goto(addr0044);
         }
         addr0099:
      }
      
      private function hideGlow() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._target.filters = [];
         }
      }
      
      private function nullCheck(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(this._billboardObjectVo == null);
            if(!_loc2_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        addr004e:
                        if(this._target == null)
                        {
                           if(_loc3_)
                           {
                              throw new RamaCityError(param1);
                           }
                        }
                     }
                     §§goto(addr0060);
                  }
               }
            }
            §§goto(addr004e);
         }
         addr0060:
      }
   }
}

