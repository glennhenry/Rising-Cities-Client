package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IHighlightManager;
   import net.bigpoint.field3d.interfaces.IMatrixObject3dVo;
   
   public class HighlightManagerExtended implements IHighlightManager
   {
      
      public static const INMOVE_ALLOW_MOVE_TINT:String = "INMOVE_ALLOW_MOVE_TINT";
      
      public static const INMOVE_DISALLOW_TINT:String = "INMOVE_DISALLOW_TINT";
      
      public static const INMOVE_RANGE_TINT:String = "INMOVE_RANGE_TINT";
      
      public static const COLOR_RESET:String = "COLOR_RESET";
      
      private static const ACTIVE_COLOR:uint = 16777215;
      
      private static const INACTIVE_COLOR:uint = 16777215;
      
      private static const DESTROY_COLOR:uint = 16604766;
      
      private static const MOVE_COLOR:uint = 6152958;
      
      private static const SPECIAL_COLOR:uint = 16766976;
      
      private static const INMOVE_ALLOW_PLACEMENT:uint = 7143168;
      
      private static const INMOVE_DISALLOW_PLACEMENT:uint = 16604766;
      
      private static const INMOVE_IN_RANGE:uint = 6152958;
      
      private static const RESET_TINT:uint = 0;
      
      private static const HIGHLIGHT_MOVE:String = "move";
      
      private static const HIGHLIGHT_DESTROY:String = "destroy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         INMOVE_ALLOW_MOVE_TINT = "INMOVE_ALLOW_MOVE_TINT";
         if(!_loc2_)
         {
            INMOVE_DISALLOW_TINT = "INMOVE_DISALLOW_TINT";
            if(!(_loc2_ && HighlightManagerExtended))
            {
               INMOVE_RANGE_TINT = "INMOVE_RANGE_TINT";
               if(_loc1_)
               {
                  COLOR_RESET = "COLOR_RESET";
                  if(_loc1_ || _loc1_)
                  {
                     ACTIVE_COLOR = 16777215;
                     if(_loc1_)
                     {
                        addr006a:
                        INACTIVE_COLOR = 16777215;
                        if(_loc1_)
                        {
                           DESTROY_COLOR = 16604766;
                           if(_loc1_ || HighlightManagerExtended)
                           {
                              MOVE_COLOR = 6152958;
                              if(_loc1_)
                              {
                                 SPECIAL_COLOR = 16766976;
                                 if(!(_loc2_ && HighlightManagerExtended))
                                 {
                                    INMOVE_ALLOW_PLACEMENT = 7143168;
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§goto(addr00cf);
                                    }
                                    §§goto(addr0103);
                                 }
                                 addr00cf:
                                 INMOVE_DISALLOW_PLACEMENT = 16604766;
                                 if(!(_loc2_ && HighlightManagerExtended))
                                 {
                                    addr00e4:
                                    INMOVE_IN_RANGE = 6152958;
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr0103:
                                       RESET_TINT = 0;
                                       if(_loc1_)
                                       {
                                          addr0110:
                                          HIGHLIGHT_MOVE = "move";
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr0128:
                                             HIGHLIGHT_DESTROY = "destroy";
                                          }
                                          §§goto(addr0131);
                                       }
                                    }
                                    §§goto(addr0128);
                                 }
                                 §§goto(addr0131);
                              }
                           }
                           §§goto(addr0103);
                        }
                        §§goto(addr00e4);
                     }
                     addr0131:
                     return;
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr0128);
            }
            §§goto(addr006a);
         }
         §§goto(addr0128);
      }
      §§goto(addr0110);
      
      private var _lastApplicationMode:String;
      
      private var _billboardObjectVo:BillboardObjectVo;
      
      private var _target:SmartObjectContainer;
      
      private var _lastState:String;
      
      private var _selectedFilter:String;
      
      private var _selectedTint:uint;
      
      private var _lastTint:uint;
      
      private var _filterDic:Dictionary;
      
      private var _isVisible:Boolean;
      
      private var _isDirty:Boolean;
      
      public function HighlightManagerExtended()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!_loc2_)
            {
               this._filterDic = new Dictionary();
            }
         }
      }
      
      public function prepareHighlightManager(param1:IMatrixObject3dVo, param2:DisplayObject) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            this._billboardObjectVo = param1 as BillboardObjectVo;
            if(_loc3_ || Boolean(param2))
            {
               this._target = param2 as SmartObjectContainer;
               if(!_loc4_)
               {
                  addr005c:
                  this.prepareGlowFilter();
                  if(_loc3_)
                  {
                     addr0067:
                     this._selectedTint = RESET_TINT;
                     if(!_loc4_)
                     {
                        this._lastTint = RESET_TINT;
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0067);
            }
            addr007b:
            return;
         }
         §§goto(addr005c);
      }
      
      public function invalidateHighlightManager(param1:String, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:Sprite = null;
         if(_loc5_ || param2)
         {
            this.nullCheck("HighlightManager, prepare before invalidate!");
            if(_loc5_)
            {
               this.checkForState(param1);
               if(!(_loc6_ && Boolean(param1)))
               {
                  this.checkVisibility(param2);
               }
            }
         }
         §§push(this.checkTint(param2));
         if(!_loc6_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc6_ && Boolean(this)))
         {
            this.checkData();
            if(!_loc6_)
            {
               §§push(this._isDirty);
               if(!(_loc6_ && Boolean(param1)))
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(this._isVisible);
                        if(_loc5_ || Boolean(this))
                        {
                           addr00ab:
                           if(§§pop())
                           {
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 §§push(this._billboardObjectVo);
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(this._billboardObjectVo);
                                          if(_loc5_ || Boolean(this))
                                          {
                                             §§push(§§pop() is ExpansionFieldObjectVo);
                                             if(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      addr00f7:
                                                      §§push(this._billboardObjectVo);
                                                      if(!_loc6_)
                                                      {
                                                         §§push((§§pop() as ExpansionFieldObjectVo).configOrigin);
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop().sx);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§push(6);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     var _temp_11:* = §§pop();
                                                                     §§push(_temp_11);
                                                                     §§push(_temp_11);
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc5_ || Boolean(param1))
                                                                           {
                                                                              §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(this._billboardObjectVo);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§push((§§pop() as ExpansionFieldObjectVo).configOrigin);
                                                                                    if(_loc5_ || Boolean(this))
                                                                                    {
                                                                                       addr0189:
                                                                                       §§push(§§pop().sy);
                                                                                       if(_loc5_ || param2)
                                                                                       {
                                                                                          §§push(6);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr01a9:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr01b3:
                                                                                                      _loc4_ = new ExpansionBox6_6();
                                                                                                      addr025e:
                                                                                                      _loc4_.name = "highlight";
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         this._target.addChildAt(_loc4_,0);
                                                                                                         if(!(_loc6_ && Boolean(this)))
                                                                                                         {
                                                                                                            addr0293:
                                                                                                            addr0294:
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               if(_loc5_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr02be:
                                                                                                                  this._isDirty = false;
                                                                                                               }
                                                                                                               §§goto(addr02c3);
                                                                                                            }
                                                                                                            §§goto(addr02be);
                                                                                                         }
                                                                                                         §§goto(addr02c3);
                                                                                                      }
                                                                                                      §§goto(addr02be);
                                                                                                   }
                                                                                                   §§goto(addr0293);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this._billboardObjectVo);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push((§§pop() as ExpansionFieldObjectVo).configOrigin);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr01d9:
                                                                                                         §§push(§§pop().sx);
                                                                                                         if(_loc5_ || Boolean(this))
                                                                                                         {
                                                                                                            addr01ea:
                                                                                                            §§push(7);
                                                                                                            if(_loc5_ || Boolean(this))
                                                                                                            {
                                                                                                               addr01fa:
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!(_loc6_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  addr0209:
                                                                                                                  var _temp_20:* = §§pop();
                                                                                                                  addr020a:
                                                                                                                  §§push(_temp_20);
                                                                                                                  if(_temp_20)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr0233:
                                                                                                                           addr0231:
                                                                                                                           addr022e:
                                                                                                                           addr0227:
                                                                                                                           addr0223:
                                                                                                                           §§push((this._billboardObjectVo as ExpansionFieldObjectVo).configOrigin.sy == 14);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              addr023a:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    _loc4_ = new ExpansionBox14_7();
                                                                                                                                    §§goto(addr025e);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02be);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 _loc4_ = new ExpansionBox7_7();
                                                                                                                              }
                                                                                                                              §§goto(addr025e);
                                                                                                                           }
                                                                                                                           §§goto(addr0294);
                                                                                                                        }
                                                                                                                        §§goto(addr02be);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr023a);
                                                                                                            }
                                                                                                            §§goto(addr0233);
                                                                                                         }
                                                                                                         §§goto(addr0231);
                                                                                                      }
                                                                                                      §§goto(addr022e);
                                                                                                   }
                                                                                                   §§goto(addr0227);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0294);
                                                                                          }
                                                                                          §§goto(addr01fa);
                                                                                       }
                                                                                       §§goto(addr01ea);
                                                                                    }
                                                                                    §§goto(addr01d9);
                                                                                 }
                                                                                 §§goto(addr0227);
                                                                              }
                                                                              §§goto(addr0223);
                                                                           }
                                                                           §§goto(addr023a);
                                                                        }
                                                                        §§goto(addr01a9);
                                                                     }
                                                                     §§goto(addr020a);
                                                                  }
                                                                  §§goto(addr01a9);
                                                               }
                                                               §§goto(addr01fa);
                                                            }
                                                            §§goto(addr01ea);
                                                         }
                                                         §§goto(addr0189);
                                                      }
                                                      §§goto(addr0227);
                                                   }
                                                   §§goto(addr02c3);
                                                }
                                                §§goto(addr025e);
                                             }
                                             §§goto(addr0209);
                                          }
                                          §§goto(addr0227);
                                       }
                                       §§goto(addr02c3);
                                    }
                                    §§goto(addr025e);
                                 }
                                 §§goto(addr0227);
                              }
                              §§goto(addr02be);
                           }
                           else
                           {
                              this.hideGlow();
                              if(_loc5_ || Boolean(param1))
                              {
                                 §§goto(addr02be);
                              }
                           }
                           §§goto(addr02c3);
                        }
                        §§goto(addr0294);
                     }
                     §§goto(addr01b3);
                  }
                  addr02c3:
                  return;
               }
               §§goto(addr00ab);
            }
         }
         §§goto(addr00f7);
      }
      
      private function prepareGlowFilter() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._filterDic["active"] = new GlowFilter(ACTIVE_COLOR,1,5,5,100,1);
            if(_loc1_)
            {
               this._filterDic["inactive"] = new GlowFilter(INACTIVE_COLOR,1,5,5,100,1);
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr0061);
               }
               §§goto(addr00e1);
            }
            §§goto(addr00bf);
         }
         addr0061:
         this._filterDic["destroy"] = new GlowFilter(DESTROY_COLOR,1,5,5,100,1);
         if(_loc1_ || Boolean(this))
         {
            this._filterDic["move"] = new GlowFilter(MOVE_COLOR,1,5,5,100,1);
            if(!(_loc2_ && Boolean(this)))
            {
               addr00bf:
               this._filterDic["allow_move"] = new GlowFilter(INMOVE_ALLOW_PLACEMENT,1,5,5,100,1);
               if(_loc1_)
               {
                  this._filterDic["disallow_move"] = new GlowFilter(INMOVE_DISALLOW_PLACEMENT,1,5,5,100,1);
                  §§goto(addr00e1);
               }
               §§goto(addr0115);
            }
            addr00e1:
            if(!(_loc2_ && Boolean(this)))
            {
               addr0115:
               this._filterDic["inrange"] = new GlowFilter(INMOVE_IN_RANGE,1,5,5,100,1);
            }
            §§goto(addr0132);
         }
         addr0132:
      }
      
      private function checkData() : void
      {
      }
      
      private function checkVisibility(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this._isVisible == param1)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               this._isDirty = true;
               if(!_loc2_)
               {
                  addr0043:
                  this._isVisible = param1;
               }
            }
            return;
         }
         §§goto(addr0043);
      }
      
      private function checkForState(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            if(this._lastState == param1)
            {
               if(!_loc3_)
               {
                  §§goto(addr0035);
               }
            }
            else
            {
               this._isDirty = true;
               if(!(_loc3_ && _loc3_))
               {
                  this._lastState = param1;
               }
            }
            var _loc2_:* = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(ApplicationModeProxy.MODE_NORMAL);
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§push(0);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                           }
                        }
                        else
                        {
                           addr02e8:
                           §§push(6);
                           if(_loc3_ && _loc3_)
                           {
                           }
                        }
                        §§goto(addr0307);
                     }
                     else
                     {
                        §§push(ApplicationModeProxy.MODE_DESTROY);
                        if(_loc4_ || Boolean(param1))
                        {
                           addr01cc:
                           §§push(_loc2_);
                           if(!(_loc3_ && Boolean(_loc2_)))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(1);
                                    if(_loc4_ || Boolean(this))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr025e:
                                    §§push(3);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(ApplicationModeProxy.MODE_MOVE);
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc3_ && Boolean(_loc2_)))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             §§push(2);
                                             if(_loc3_ && Boolean(_loc2_))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr02c1:
                                             §§push(5);
                                             if(_loc3_ && Boolean(param1))
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
                                             if(_loc4_)
                                             {
                                                addr0254:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr025e);
                                                   }
                                                   else
                                                   {
                                                      addr028b:
                                                      §§push(4);
                                                      if(_loc4_ || Boolean(_loc2_))
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(INMOVE_DISALLOW_TINT);
                                                   if(_loc4_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc4_)
                                                      {
                                                         addr0282:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr028b);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr02c1);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(INMOVE_RANGE_TINT);
                                                            if(_loc4_)
                                                            {
                                                               addr02a8:
                                                               §§push(_loc2_);
                                                               if(_loc4_ || Boolean(_loc2_))
                                                               {
                                                                  addr02b7:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr02c1);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr02e8);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr02e4);
                                                                  }
                                                                  §§goto(addr02e8);
                                                               }
                                                               addr02e4:
                                                               §§goto(addr02e3);
                                                            }
                                                            addr02e3:
                                                            if(COLOR_RESET === _loc2_)
                                                            {
                                                               §§goto(addr02e8);
                                                            }
                                                            else
                                                            {
                                                               §§push(7);
                                                            }
                                                            §§goto(addr0307);
                                                         }
                                                         §§goto(addr0307);
                                                      }
                                                      §§goto(addr02b7);
                                                   }
                                                   §§goto(addr02a8);
                                                }
                                                §§goto(addr0307);
                                             }
                                             §§goto(addr02e4);
                                          }
                                          §§goto(addr02e3);
                                       }
                                       §§goto(addr0307);
                                    }
                                    §§goto(addr0254);
                                 }
                                 §§goto(addr02e3);
                              }
                              addr0307:
                              switch(§§pop())
                              {
                                 case 0:
                                    this._selectedFilter = "active";
                                    if(!_loc3_)
                                    {
                                       this._selectedTint = RESET_TINT;
                                       if(!_loc3_)
                                       {
                                          this._lastApplicationMode = param1;
                                          if(_loc3_ && Boolean(_loc2_))
                                          {
                                          }
                                          break;
                                       }
                                       addr00d9:
                                       this._lastApplicationMode = param1;
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    break;
                                 case 1:
                                    this._selectedFilter = "destroy";
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    this._selectedTint = RESET_TINT;
                                    if(!_loc3_)
                                    {
                                       this._lastApplicationMode = param1;
                                       if(_loc4_)
                                       {
                                       }
                                       break;
                                    }
                                    addr00c5:
                                    this._selectedTint = RESET_TINT;
                                    if(_loc3_ && Boolean(_loc2_))
                                    {
                                       break;
                                    }
                                    §§goto(addr00d9);
                                    break;
                                 case 2:
                                    this._selectedFilter = "move";
                                    if(_loc3_ && Boolean(this))
                                    {
                                       break;
                                    }
                                    §§goto(addr00c5);
                                    break;
                                 case 3:
                                    this._selectedFilter = "allow_move";
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       this._selectedTint = INMOVE_ALLOW_PLACEMENT;
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       addr011b:
                                       this._selectedTint = INMOVE_DISALLOW_PLACEMENT;
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                    break;
                                 case 4:
                                    this._selectedFilter = "disallow_move";
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr011b);
                                    break;
                                 case 5:
                                    this._selectedFilter = "inrange";
                                    if(!_loc3_)
                                    {
                                       this._selectedTint = INMOVE_IN_RANGE;
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    break;
                                 case 6:
                                    this._isVisible = false;
                                    if(_loc4_ || _loc3_)
                                    {
                                    }
                              }
                              return;
                           }
                           §§goto(addr0282);
                        }
                        §§goto(addr02a8);
                     }
                  }
                  §§goto(addr02e4);
               }
               §§goto(addr01cc);
            }
            §§goto(addr02e8);
         }
         addr0035:
      }
      
      private function checkTint(param1:Boolean) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(this._selectedTint != this._lastTint)
            {
               if(_loc2_ || _loc2_)
               {
                  addr0046:
                  §§push(true);
                  if(!(_loc3_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0055:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr0055);
         }
         §§goto(addr0046);
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
         if(!_loc3_)
         {
            this._lastTint = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(param1 == RESET_TINT)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     TweenMax.to(this._target,0,{"colorTransform":{
                        "tint":param1,
                        "tintAmount":0
                     }});
                     if(_loc3_ && Boolean(this))
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
            }
         }
      }
      
      private function hideGlow() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:DisplayObject = null;
         var _loc2_:String = null;
         if(!_loc3_)
         {
            §§push(this._target);
            if(_loc4_ || Boolean(_loc1_))
            {
               §§push("highlight");
               if(_loc4_ || _loc3_)
               {
                  if(§§pop().getChildByName(§§pop()) != null)
                  {
                     addr006a:
                     _loc1_ = this._target.getChildByName("highlight");
                     addr0067:
                     addr0063:
                     if(!_loc3_)
                     {
                        _loc2_ = _loc1_.name;
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           this._target.removeChild(_loc1_);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr006a);
            }
            §§goto(addr0067);
         }
         §§goto(addr0063);
      }
      
      private function nullCheck(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this._billboardObjectVo == null);
            if(!(_loc2_ && Boolean(param1)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§pop();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr0078);
                  }
               }
            }
            addr0067:
            if(this._target == null)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr0078:
                  throw new RamaCityError(param1);
               }
            }
            §§goto(addr0081);
         }
         addr0081:
      }
   }
}

