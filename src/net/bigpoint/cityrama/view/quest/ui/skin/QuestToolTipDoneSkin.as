package net.bigpoint.cityrama.view.quest.ui.skin
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BubbleComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestToolTipComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class QuestToolTipDoneSkin extends SparkSkin implements IStateClient2
   {
      
      private var _399321045checkmark:BriskImageDynaLib;
      
      private var _1161120719doneText:LocaLabel;
      
      private var _1977519450headerText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:QuestToolTipComponent;
      
      public function QuestToolTipDoneSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.minWidth = 270;
                  if(!(_loc2_ && _loc2_))
                  {
                     this.minHeight = 90;
                     if(!_loc2_)
                     {
                        §§goto(addr0060);
                     }
                  }
                  §§goto(addr00b5);
               }
               §§goto(addr007e);
            }
            addr0060:
            this.mxmlContent = [this._QuestToolTipDoneSkin_Group1_c(),this._QuestToolTipDoneSkin_BriskImageDynaLib6_c()];
            if(_loc1_ || _loc1_)
            {
               addr007e:
               this.currentState = "normal";
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0092);
               }
               §§goto(addr00b5);
            }
            addr0092:
            this.addEventListener("creationComplete",this.___QuestToolTipDoneSkin_SparkSkin1_creationComplete);
            if(!(_loc2_ && _loc2_))
            {
               addr00b5:
               states = [new State({
                  "name":"normal",
                  "overrides":[]
               }),new State({
                  "name":"disabled",
                  "overrides":[]
               })];
            }
            return;
         }
         §§goto(addr007e);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.doneText.text = ResourceManager.getInstance().getString(String("rcl.questbook.layer"),String("rcl.questbook.layer.collectReward"));
         }
      }
      
      private function _QuestToolTipDoneSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._QuestToolTipDoneSkin_BubbleComponent1_c(),this._QuestToolTipDoneSkin_VGroup1_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr007f:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr007f);
               }
            }
         }
         addr0083:
         return _loc1_;
      }
      
      private function _QuestToolTipDoneSkin_BubbleComponent1_c() : BubbleComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BubbleComponent = new BubbleComponent();
         if(_loc3_)
         {
            _loc1_.top = 4;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.bottom = 0;
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0076:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr007a);
            }
            §§goto(addr0076);
         }
         addr007a:
         return _loc1_;
      }
      
      private function _QuestToolTipDoneSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.paddingLeft = 22;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.paddingRight = 13;
               if(_loc2_)
               {
                  _loc1_.paddingTop = 17;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.paddingBottom = 9;
                     if(_loc2_ || _loc2_)
                     {
                        addr0078:
                        _loc1_.percentWidth = 100;
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.percentHeight = 100;
                           if(!_loc3_)
                           {
                              _loc1_.gap = 3;
                              if(_loc2_ || _loc2_)
                              {
                                 _loc1_.verticalAlign = "top";
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.horizontalAlign = "center";
                                    if(!_loc3_)
                                    {
                                       addr00cf:
                                       _loc1_.mxmlContent = [this._QuestToolTipDoneSkin_Group2_c(),this._QuestToolTipDoneSkin_BriskImageDynaLib4_c(),this._QuestToolTipDoneSkin_HGroup2_c()];
                                       if(_loc2_)
                                       {
                                          §§goto(addr00eb);
                                       }
                                       §§goto(addr00f7);
                                    }
                                 }
                              }
                              §§goto(addr00eb);
                           }
                           §§goto(addr00f7);
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr00eb);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr00eb);
            }
            §§goto(addr00f7);
         }
         addr00eb:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr00f7:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _QuestToolTipDoneSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._QuestToolTipDoneSkin_HGroup1_c(),this._QuestToolTipDoneSkin_LocaLabel1_i()];
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _QuestToolTipDoneSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  addr0033:
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._QuestToolTipDoneSkin_BriskImageDynaLib1_c(),this._QuestToolTipDoneSkin_BriskImageDynaLib2_c(),this._QuestToolTipDoneSkin_BriskImageDynaLib3_c()];
                        addr0066:
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0096:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0066);
            }
            §§goto(addr0033);
         }
         §§goto(addr0096);
      }
      
      private function _QuestToolTipDoneSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && Boolean(this)))
            {
               addr004a:
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr005d);
               }
               §§goto(addr0069);
            }
            addr005d:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0069:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004a);
      }
      
      private function _QuestToolTipDoneSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               §§goto(addr003c);
            }
            §§goto(addr007a);
         }
         addr003c:
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr006e);
            }
            §§goto(addr007a);
         }
         addr006e:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr007a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _QuestToolTipDoneSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(_loc3_)
               {
                  §§goto(addr005b);
               }
            }
            §§goto(addr006f);
         }
         addr005b:
         if(!_loc1_.document)
         {
            if(!(_loc2_ && Boolean(this)))
            {
               addr006f:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _QuestToolTipDoneSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.styleName = "questHeader";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.verticalCenter = 2;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(this))
                     {
                        addr006f:
                        _loc1_.id = "headerText";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0082:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00b3:
                                    this.headerText = _loc1_;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00c5:
                                       BindingManager.executeBindings(this,"headerText",this.headerText);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr006f);
            }
            §§goto(addr00b3);
         }
         §§goto(addr006f);
      }
      
      private function _QuestToolTipDoneSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "head_line_medium";
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0058:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0058);
      }
      
      private function _QuestToolTipDoneSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  §§goto(addr0045);
               }
               §§goto(addr008c);
            }
            addr0045:
            if(!_loc2_)
            {
               _loc1_.paddingLeft = 27;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.gap = 10;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr008c:
                     _loc1_.mxmlContent = [this._QuestToolTipDoneSkin_LocaLabel2_i(),this._QuestToolTipDoneSkin_BriskImageDynaLib5_i()];
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr00aa);
                     }
                  }
                  §§goto(addr00b6);
               }
               addr00aa:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00b6:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00ba);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr00b6);
      }
      
      private function _QuestToolTipDoneSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.styleName = "questTaskNormal";
               if(_loc2_)
               {
                  _loc1_.id = "doneText";
                  if(!_loc3_)
                  {
                     addr0052:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0073:
                              this.doneText = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 BindingManager.executeBindings(this,"doneText",this.doneText);
                              }
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0073);
                  }
               }
               addr0092:
               return _loc1_;
            }
            §§goto(addr0052);
         }
         §§goto(addr0073);
      }
      
      private function _QuestToolTipDoneSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!_loc2_)
                  {
                     addr0055:
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "checkmark";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr008d:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr009e:
                                    this.checkmark = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00a8:
                                       BindingManager.executeBindings(this,"checkmark",this.checkmark);
                                    }
                                    §§goto(addr00b5);
                                 }
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00b5);
                           }
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00a8);
                  }
                  addr00b5:
                  return _loc1_;
               }
            }
            §§goto(addr008d);
         }
         §§goto(addr0055);
      }
      
      private function _QuestToolTipDoneSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.top = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.left = 16;
                  if(_loc2_ || _loc3_)
                  {
                     addr0073:
                     _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0086:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0086);
         }
         §§goto(addr0073);
      }
      
      public function ___QuestToolTipDoneSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._399321045checkmark = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkmark",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get doneText() : LocaLabel
      {
         return this._1161120719doneText;
      }
      
      public function set doneText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1161120719doneText;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1161120719doneText = param1;
                  addr0047:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr0074);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"doneText",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr0047);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1977519450headerText = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0035:
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr0035);
      }
   }
}

