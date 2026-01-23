package net.bigpoint.cityrama.view.assistants.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.assistants.vo.PatrolViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ProgressBarMiniVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class PatrolSideMenu extends Group
   {
      
      public static const SHOW_INFO:String = "SHOW_INFO";
      
      public static const HIDE_INFO:String = "HIDE_INFO";
      
      public static const CLICK_INFO:String = "CLICK_INFO";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         SHOW_INFO = "SHOW_INFO";
         if(!_loc1_)
         {
            HIDE_INFO = "HIDE_INFO";
            if(!_loc1_)
            {
               addr0032:
               CLICK_INFO = "CLICK_INFO";
            }
            return;
         }
      }
      §§goto(addr0032);
      
      private var _2131590956itemGroup:Group;
      
      private var _1784090142menuContainer:Group;
      
      private var _398457948miniProgress:ProgressBarMini;
      
      private var _1914490085patrolIcon:BriskImageDynaLib;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:PatrolViewVo;
      
      private var _isDirty:Boolean;
      
      public function PatrolSideMenu()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc2_ && _loc1_))
               {
                  addr0053:
                  this.minWidth = 55;
                  if(!_loc2_)
                  {
                     addr005e:
                     this.minHeight = 53;
                     if(_loc1_ || _loc2_)
                     {
                        this.mxmlContent = [this._PatrolSideMenu_VGroup1_c(),this._PatrolSideMenu_Group3_i()];
                     }
                  }
               }
               return;
            }
            §§goto(addr005e);
         }
         §§goto(addr0053);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0051:
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr0057);
            }
            §§goto(addr0051);
         }
         addr0057:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:ProgressBarMiniVo = null;
         if(!_loc4_)
         {
            super.commitProperties();
            if(_loc3_)
            {
               §§push(this._isDirty);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     var _temp_1:* = §§pop();
                     §§push(_temp_1);
                     if(_temp_1)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           addr004c:
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(this._data);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    §§goto(addr0069);
                                 }
                                 §§goto(addr0093);
                              }
                              §§goto(addr0090);
                           }
                           §§goto(addr0245);
                        }
                     }
                     addr0069:
                     if(§§pop())
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr007a:
                           this._isDirty = false;
                           if(_loc3_ || _loc2_)
                           {
                              addr0093:
                              addr0090:
                              if(this._data.isActive)
                              {
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§push(this.plusIcon);
                                    if(_loc3_)
                                    {
                                       §§push(this.plusIcon);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(false);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             var _temp_9:* = §§pop();
                                             §§push(_temp_9);
                                             §§push(_temp_9);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                var _loc2_:* = §§pop();
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§pop().visible = §§pop();
                                                   if(!_loc4_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§pop().includeInLayout = §§pop();
                                                            if(_loc3_)
                                                            {
                                                               addr011f:
                                                               _loc1_ = new ProgressBarMiniVo();
                                                               if(_loc3_ || Boolean(this))
                                                               {
                                                                  _loc1_.currentTime = this._data.timerVo.currentTime;
                                                                  if(_loc3_ || Boolean(_loc1_))
                                                                  {
                                                                     _loc1_.endTime = this._data.timerVo.targetTime;
                                                                     if(_loc3_)
                                                                     {
                                                                        addr0165:
                                                                        _loc1_.startTime = this._data.timerVo.startTime;
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr0179:
                                                                           §§push(this.miniProgress);
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              §§pop().data = _loc1_;
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr0197:
                                                                                 this.miniProgress.includeInLayout = this.miniProgress.visible = true;
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr01ab:
                                                                                    §§push(this.patrolIcon);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push("gui_main_hud");
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§pop().dynaLibName = §§pop();
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr01e3:
                                                                                             addr01c9:
                                                                                             addr01c5:
                                                                                             §§push(this.patrolIcon);
                                                                                             §§push("patrolIcon_");
                                                                                             if(!(_loc4_ && Boolean(_loc1_)))
                                                                                             {
                                                                                                §§push(§§pop() + this._data.gfxId);
                                                                                             }
                                                                                             §§pop().dynaBmpSourceName = §§pop();
                                                                                          }
                                                                                          §§goto(addr0257);
                                                                                       }
                                                                                       §§goto(addr01e3);
                                                                                    }
                                                                                    §§goto(addr01c9);
                                                                                 }
                                                                                 §§goto(addr01c5);
                                                                              }
                                                                              §§goto(addr0257);
                                                                           }
                                                                           §§goto(addr0197);
                                                                        }
                                                                        §§goto(addr01c5);
                                                                     }
                                                                     §§goto(addr01ab);
                                                                  }
                                                                  §§goto(addr0179);
                                                               }
                                                               §§goto(addr0165);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr023e:
                                                            §§pop().includeInLayout = §§pop();
                                                            if(_loc3_)
                                                            {
                                                               addr0245:
                                                               this.miniProgress.includeInLayout = this.miniProgress.visible = false;
                                                            }
                                                         }
                                                         §§goto(addr0257);
                                                      }
                                                      else
                                                      {
                                                         addr023c:
                                                      }
                                                      §§goto(addr023e);
                                                   }
                                                   else
                                                   {
                                                      addr023b:
                                                      §§push(_loc2_);
                                                   }
                                                   §§goto(addr023c);
                                                }
                                                else
                                                {
                                                   addr0239:
                                                   §§pop().visible = §§pop();
                                                }
                                                §§goto(addr023b);
                                             }
                                             else
                                             {
                                                addr0238:
                                                _loc2_ = §§pop();
                                             }
                                             §§goto(addr0239);
                                          }
                                          else
                                          {
                                             addr0237:
                                             var _temp_17:* = §§pop();
                                             §§push(_temp_17);
                                             §§push(_temp_17);
                                          }
                                          §§goto(addr0238);
                                       }
                                       else
                                       {
                                          addr0236:
                                          §§push(true);
                                       }
                                       §§goto(addr0237);
                                    }
                                    else
                                    {
                                       addr0232:
                                       §§push(this.plusIcon);
                                    }
                                    §§goto(addr0236);
                                 }
                                 §§goto(addr011f);
                              }
                              else
                              {
                                 §§push(this.patrolIcon);
                                 if(!_loc4_)
                                 {
                                    §§push("gui_main_hud");
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().dynaLibName = §§pop();
                                       if(_loc3_)
                                       {
                                          addr0212:
                                          this.patrolIcon.dynaBmpSourceName = "patrolIcon_0";
                                          addr020e:
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             addr0222:
                                             §§goto(addr0232);
                                             §§push(this.plusIcon);
                                          }
                                       }
                                       §§goto(addr0257);
                                    }
                                    §§goto(addr0212);
                                 }
                                 §§goto(addr020e);
                              }
                           }
                           §§goto(addr0257);
                        }
                        §§goto(addr0245);
                     }
                     addr0257:
                     return;
                  }
                  §§goto(addr004c);
               }
               §§goto(addr0093);
            }
            §§goto(addr007a);
         }
         §§goto(addr0222);
      }
      
      private function onClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            dispatchEvent(new Event(CLICK_INFO,true,true));
         }
      }
      
      private function onMouseOver() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.plusIcon);
            if(!_loc2_)
            {
               if(§§pop().includeInLayout)
               {
                  if(!_loc2_)
                  {
                     §§push(this.plusIcon);
                     if(_loc1_ || _loc1_)
                     {
                        addr003a:
                        §§push(this.plusIcon);
                        if(_loc1_ || _loc1_)
                        {
                           §§pop().scaleX = §§pop().scaleX + 0.05;
                           if(!(_loc2_ && _loc1_))
                           {
                              addr007d:
                              this.plusIcon.scaleY += 0.05;
                              addr0079:
                              if(_loc1_ || _loc1_)
                              {
                                 addr0093:
                                 dispatchEvent(new Event(SHOW_INFO,true,true));
                              }
                           }
                           return;
                        }
                        §§goto(addr007d);
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr003a);
         }
         §§goto(addr0093);
      }
      
      private function onMouseOut() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this.plusIcon);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop().includeInLayout)
               {
                  if(!_loc1_)
                  {
                     addr0044:
                     §§push(this.plusIcon);
                     if(!_loc1_)
                     {
                        §§push(1);
                        if(_loc2_ || Boolean(this))
                        {
                           §§pop().scaleX = §§pop();
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr007c:
                              this.plusIcon.scaleY = 1;
                              addr007a:
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr008c:
                                 dispatchEvent(new Event(HIDE_INFO,true,true));
                              }
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr007a);
                  }
                  addr009b:
                  return;
               }
               §§goto(addr008c);
            }
            §§goto(addr007a);
         }
         §§goto(addr0044);
      }
      
      public function set data(param1:PatrolViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || _loc3_)
               {
                  this._data = param1;
                  if(_loc2_)
                  {
                     this._isDirty = true;
                     if(!_loc3_)
                     {
                        addr0060:
                        invalidateProperties();
                     }
                     §§goto(addr0065);
                  }
                  §§goto(addr0060);
               }
            }
            addr0065:
            return;
         }
         §§goto(addr0060);
      }
      
      override public function get measuredHeight() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this.miniProgress.includeInLayout)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  return this.minHeight + this.miniProgress.height - 3;
               }
            }
         }
         return this.minHeight;
      }
      
      override public function get measuredWidth() : Number
      {
         return this.minWidth;
      }
      
      private function _PatrolSideMenu_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.verticalAlign = "top";
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.gap = -3;
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._PatrolSideMenu_Group2_i(),this._PatrolSideMenu_ProgressBarMini1_i()];
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr008d:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
            }
         }
         §§goto(addr008d);
      }
      
      private function _PatrolSideMenu_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.mouseEnabledWhereTransparent = false;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._PatrolSideMenu_BriskImageDynaLib1_c(),this._PatrolSideMenu_BriskImageDynaLib2_i(),this._PatrolSideMenu_BriskImageDynaLib3_i()];
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.addEventListener("click",this.__itemGroup_click);
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.addEventListener("rollOver",this.__itemGroup_rollOver);
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.addEventListener("rollOut",this.__itemGroup_rollOut);
                        if(_loc2_)
                        {
                           _loc1_.id = "itemGroup";
                           if(!_loc3_)
                           {
                              addr00a4:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr00be:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00c7:
                                       this.itemGroup = _loc1_;
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          addr00d9:
                                          BindingManager.executeBindings(this,"itemGroup",this.itemGroup);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00c7);
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr00c7);
            }
            §§goto(addr00d9);
         }
         §§goto(addr00c7);
      }
      
      private function _PatrolSideMenu_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "questmarker_base";
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_ui_questSide";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  addr0052:
                  if(_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               §§goto(addr008b);
            }
            §§goto(addr0052);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _PatrolSideMenu_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "patrolIcon_0";
               if(!_loc3_)
               {
                  _loc1_.bottom = 0;
                  if(!_loc3_)
                  {
                     _loc1_.right = 4;
                     if(_loc2_)
                     {
                        addr0066:
                        _loc1_.id = "patrolIcon";
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0085);
                        }
                        §§goto(addr00a4);
                     }
                     addr0085:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00a4);
                        }
                     }
                     addr009a:
                     this.patrolIcon = _loc1_;
                     if(!_loc3_)
                     {
                        addr00a4:
                        BindingManager.executeBindings(this,"patrolIcon",this.patrolIcon);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0066);
               }
               addr00b1:
               return _loc1_;
            }
            §§goto(addr009a);
         }
         §§goto(addr0066);
      }
      
      private function _PatrolSideMenu_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!_loc2_)
            {
               addr002c:
               _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
               if(_loc3_)
               {
                  _loc1_.top = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.right = 3;
                     if(!_loc2_)
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.visible = false;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.id = "plusIcon";
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0094:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00a8:
                                       _loc1_.document = this;
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§goto(addr00c5);
                                       }
                                       §§goto(addr00d7);
                                    }
                                 }
                                 addr00c5:
                                 this.plusIcon = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00d7:
                                    BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
                                 }
                                 §§goto(addr00e4);
                              }
                           }
                           addr00e4:
                           return _loc1_;
                        }
                        §§goto(addr00a8);
                     }
                  }
               }
               §§goto(addr00c5);
            }
            §§goto(addr0094);
         }
         §§goto(addr002c);
      }
      
      public function __itemGroup_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.onClick();
         }
      }
      
      public function __itemGroup_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onMouseOver();
         }
      }
      
      public function __itemGroup_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.onMouseOut();
         }
      }
      
      private function _PatrolSideMenu_ProgressBarMini1_i() : ProgressBarMini
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ProgressBarMini = new ProgressBarMini();
         if(!_loc3_)
         {
            _loc1_.width = 40;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.revertProgress = true;
               if(!_loc3_)
               {
                  _loc1_.id = "miniProgress";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0076);
                           }
                        }
                        §§goto(addr0088);
                     }
                     addr0076:
                     this.miniProgress = _loc1_;
                     if(_loc2_ || _loc3_)
                     {
                        addr0088:
                        BindingManager.executeBindings(this,"miniProgress",this.miniProgress);
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr006d);
      }
      
      private function _PatrolSideMenu_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.left = -250;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.top = -5;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr005b:
                  _loc1_.id = "menuContainer";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0098:
                              this.menuContainer = _loc1_;
                              if(_loc2_ || _loc2_)
                              {
                                 addr00aa:
                                 BindingManager.executeBindings(this,"menuContainer",this.menuContainer);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr00aa);
               }
               addr00b7:
               return _loc1_;
            }
            §§goto(addr00aa);
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGroup() : Group
      {
         return this._2131590956itemGroup;
      }
      
      public function set itemGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2131590956itemGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._2131590956itemGroup = param1;
                  addr0048:
                  if(_loc4_ || Boolean(this))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0067);
            }
            addr0086:
            return;
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get menuContainer() : Group
      {
         return this._1784090142menuContainer;
      }
      
      public function set menuContainer(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1784090142menuContainer;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1784090142menuContainer = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"menuContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
               }
               §§goto(addr006c);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get miniProgress() : ProgressBarMini
      {
         return this._398457948miniProgress;
      }
      
      public function set miniProgress(param1:ProgressBarMini) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._398457948miniProgress;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._398457948miniProgress = param1;
                  if(!_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"miniProgress",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0054);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get patrolIcon() : BriskImageDynaLib
      {
         return this._1914490085patrolIcon;
      }
      
      public function set patrolIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1914490085patrolIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1914490085patrolIcon = param1;
                  addr003c:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"patrolIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003c);
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1849499341plusIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1849499341plusIcon = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
   }
}

