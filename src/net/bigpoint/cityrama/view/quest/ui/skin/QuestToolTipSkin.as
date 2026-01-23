package net.bigpoint.cityrama.view.quest.ui.skin
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BubbleComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestToolTipComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class QuestToolTipSkin extends SparkSkin implements IStateClient2
   {
      
      private var _399321045checkmark:BriskImageDynaLib;
      
      private var _43132014gfxIcon:BriskImageDynaLib;
      
      private var _1977519450headerText:LocaLabel;
      
      private var _410147758taskText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:QuestToolTipComponent;
      
      public function QuestToolTipSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!(_loc1_ && _loc1_))
            {
               mx_internal::_document = this;
               if(_loc2_ || Boolean(this))
               {
                  this.minWidth = 270;
                  if(!_loc1_)
                  {
                     this.minHeight = 90;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0071:
                        this.mxmlContent = [this._QuestToolTipSkin_Group1_c(),this._QuestToolTipSkin_BriskImageDynaLib7_c()];
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§goto(addr008f);
                        }
                        §§goto(addr00b6);
                     }
                     addr008f:
                     this.currentState = "normal";
                     if(_loc2_)
                     {
                        this.addEventListener("creationComplete",this.___QuestToolTipSkin_SparkSkin1_creationComplete);
                        if(!_loc1_)
                        {
                           addr00b6:
                           states = [new State({
                              "name":"normal",
                              "overrides":[]
                           }),new State({
                              "name":"disabled",
                              "overrides":[]
                           })];
                        }
                     }
                  }
                  §§goto(addr00de);
               }
               §§goto(addr0071);
            }
            §§goto(addr00b6);
         }
         addr00de:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               addr004a:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || _loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr004a);
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      private function _QuestToolTipSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._QuestToolTipSkin_BubbleComponent1_c(),this._QuestToolTipSkin_VGroup1_c()];
                  if(_loc2_)
                  {
                     §§goto(addr0066);
                  }
               }
               §§goto(addr0072);
            }
            addr0066:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0072:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _QuestToolTipSkin_BubbleComponent1_c() : BubbleComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BubbleComponent = new BubbleComponent();
         if(!_loc2_)
         {
            _loc1_.top = 4;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  addr0044:
                  _loc1_.bottom = 0;
                  if(!_loc2_)
                  {
                     §§goto(addr004f);
                  }
                  §§goto(addr005b);
               }
               addr004f:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr005b:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr005b);
         }
         §§goto(addr0044);
      }
      
      private function _QuestToolTipSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.paddingLeft = 22;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.paddingRight = 13;
               if(!_loc3_)
               {
                  _loc1_.paddingTop = 17;
                  if(!_loc3_)
                  {
                     _loc1_.paddingBottom = 9;
                     if(_loc2_)
                     {
                        _loc1_.percentWidth = 100;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0074:
                           _loc1_.percentHeight = 100;
                           if(!_loc3_)
                           {
                              _loc1_.gap = 3;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0090:
                                 _loc1_.verticalAlign = "top";
                                 if(_loc2_)
                                 {
                                    §§goto(addr009a);
                                 }
                                 §§goto(addr00f0);
                              }
                              addr009a:
                              _loc1_.horizontalAlign = "center";
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc1_.mxmlContent = [this._QuestToolTipSkin_Group2_c(),this._QuestToolTipSkin_BriskImageDynaLib4_c(),this._QuestToolTipSkin_HGroup2_c()];
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00dc:
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr00f0:
                                          _loc1_.document = this;
                                       }
                                    }
                                    §§goto(addr00f4);
                                 }
                                 §§goto(addr00f0);
                              }
                              §§goto(addr00f4);
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr00f0);
                     }
                     §§goto(addr00dc);
                  }
                  addr00f4:
                  return _loc1_;
               }
               §§goto(addr00dc);
            }
            §§goto(addr0090);
         }
         §§goto(addr0074);
      }
      
      private function _QuestToolTipSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._QuestToolTipSkin_HGroup1_c(),this._QuestToolTipSkin_LocaLabel1_i()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr006a:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr006a);
      }
      
      private function _QuestToolTipSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  addr0045:
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._QuestToolTipSkin_BriskImageDynaLib1_c(),this._QuestToolTipSkin_BriskImageDynaLib2_c(),this._QuestToolTipSkin_BriskImageDynaLib3_c()];
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr00a7);
                        }
                     }
                  }
                  §§goto(addr00bb);
               }
               addr00a7:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr00bb:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00bf);
            }
            addr00bf:
            return _loc1_;
         }
         §§goto(addr0045);
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007b:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr007f);
            }
            §§goto(addr007b);
         }
         addr007f:
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(_loc2_)
               {
                  addr0046:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0052:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0046);
         }
         §§goto(addr0052);
      }
      
      private function _QuestToolTipSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.styleName = "questHeader";
            if(!_loc3_)
            {
               _loc1_.verticalCenter = 2;
               if(_loc2_)
               {
                  addr003b:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "headerText";
                     if(!_loc3_)
                     {
                        addr0064:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0078:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0093:
                                 this.headerText = _loc1_;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00a5:
                                    BindingManager.executeBindings(this,"headerText",this.headerText);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0064);
            }
            §§goto(addr00a5);
         }
         §§goto(addr003b);
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "head_line_medium";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006e);
               }
            }
            §§goto(addr006a);
         }
         addr006e:
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0046:
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.paddingLeft = 20;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.gap = 10;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._QuestToolTipSkin_BriskImageDynaLib5_i(),this._QuestToolTipSkin_LocaLabel2_i(),this._QuestToolTipSkin_BriskImageDynaLib6_i()];
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr00b2);
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00c6);
                  }
                  addr00b2:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr00c6:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00ca);
               }
               addr00ca:
               return _loc1_;
            }
         }
         §§goto(addr0046);
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "task50014";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "gfxIcon";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0088:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00b0:
                                    this.gfxIcon = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00ba:
                                       BindingManager.executeBindings(this,"gfxIcon",this.gfxIcon);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr00c7);
                           }
                        }
                     }
                     §§goto(addr00b0);
                  }
               }
               §§goto(addr0088);
            }
            addr00c7:
            return _loc1_;
         }
         §§goto(addr00b0);
      }
      
      private function _QuestToolTipSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.styleName = "questTaskNormal";
               if(_loc3_ || _loc3_)
               {
                  addr0050:
                  _loc1_.id = "taskText";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr006f:
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr008d:
                              this.taskText = _loc1_;
                              if(!(_loc2_ && _loc2_))
                              {
                                 BindingManager.executeBindings(this,"taskText",this.taskText);
                              }
                           }
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr006f);
               }
               addr00ac:
               return _loc1_;
            }
            §§goto(addr008d);
         }
         §§goto(addr0050);
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "checkmark_gray";
               if(_loc3_)
               {
                  addr0047:
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0082);
               }
               addr0065:
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "checkmark";
                  if(_loc3_)
                  {
                     addr0082:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr00a1);
                        }
                     }
                     §§goto(addr00aa);
                  }
                  addr00a1:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr00aa:
                     this.checkmark = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        BindingManager.executeBindings(this,"checkmark",this.checkmark);
                     }
                  }
               }
               §§goto(addr00c9);
            }
            §§goto(addr0047);
         }
         addr00c9:
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(!_loc3_)
            {
               _loc1_.top = 0;
               addr0038:
               if(_loc2_)
               {
                  _loc1_.left = 16;
                  if(_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0070:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0070);
         }
         §§goto(addr0038);
      }
      
      public function ___QuestToolTipSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkmark() : BriskImageDynaLib
      {
         return this._399321045checkmark;
      }
      
      public function set checkmark(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._399321045checkmark;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._399321045checkmark = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkmark",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get gfxIcon() : BriskImageDynaLib
      {
         return this._43132014gfxIcon;
      }
      
      public function set gfxIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._43132014gfxIcon;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0049:
                  this._43132014gfxIcon = param1;
                  if(_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfxIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0054);
            }
            addr0073:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerText() : LocaLabel
      {
         return this._1977519450headerText;
      }
      
      public function set headerText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1977519450headerText;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1977519450headerText = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get taskText() : LocaLabel
      {
         return this._410147758taskText;
      }
      
      public function set taskText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._410147758taskText;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._410147758taskText = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskText",_loc2_,param1));
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
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : QuestToolTipComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:QuestToolTipComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc3_)
                  {
                     addr0041:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0041);
            }
         }
         addr0060:
      }
   }
}

