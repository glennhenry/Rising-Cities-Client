package net.bigpoint.cityrama.view.assistants.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.assistants.ui.components.PatrolInfoComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class PatrolRunningInfoSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1221270899header:LocaLabel;
      
      private var _177936123infoText:LocaLabel;
      
      private var _770681112progressTimer:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PatrolInfoComponent;
      
      public function PatrolRunningInfoSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.width = 250;
                  if(!_loc1_)
                  {
                     addr004d:
                     this.minHeight = 90;
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this.mxmlContent = [this._PatrolRunningInfoSkin_Group1_c()];
                        if(!_loc1_)
                        {
                           addr007a:
                           this.currentState = "normal";
                           if(!_loc1_)
                           {
                              addr0086:
                              states = [new State({
                                 "name":"normal",
                                 "overrides":[]
                              }),new State({
                                 "name":"disabled",
                                 "overrides":[]
                              })];
                           }
                           §§goto(addr00ae);
                        }
                     }
                     §§goto(addr0086);
                  }
                  addr00ae:
                  return;
               }
               §§goto(addr004d);
            }
         }
         §§goto(addr007a);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               §§goto(addr003c);
            }
            §§goto(addr0058);
         }
         addr003c:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_ || _loc3_)
            {
               return;
            }
         }
         else
         {
            addr0058:
            this.__moduleFactoryInitialized = true;
         }
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
      
      private function _PatrolRunningInfoSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               addr0046:
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._PatrolRunningInfoSkin_Group2_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0090:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0094);
                  }
               }
               §§goto(addr0090);
            }
            addr0094:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _PatrolRunningInfoSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._PatrolRunningInfoSkin_RentCollectorBubbleComponent1_i(),this._PatrolRunningInfoSkin_HGroup1_c(),this._PatrolRunningInfoSkin_BriskImageDynaLib4_c(),this._PatrolRunningInfoSkin_HGroup2_c(),this._PatrolRunningInfoSkin_VGroup1_c()];
               addr002b:
               if(!(_loc2_ && _loc3_))
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
            return _loc1_;
         }
         §§goto(addr002b);
      }
      
      private function _PatrolRunningInfoSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.bottom = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.right = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "bubble";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0082:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr0093:
                                 this.bubble = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr009d:
                                    BindingManager.executeBindings(this,"bubble",this.bubble);
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr009d);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr009d);
            }
            addr00aa:
            return _loc1_;
         }
         §§goto(addr009d);
      }
      
      private function _PatrolRunningInfoSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.left = 5;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.right = 15;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        addr006e:
                        _loc1_.verticalAlign = "middle";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0081:
                           _loc1_.top = 9;
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr0093);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr00e1);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr0081);
            }
            addr0093:
            _loc1_.height = 30;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._PatrolRunningInfoSkin_BriskImageDynaLib1_c(),this._PatrolRunningInfoSkin_BriskImageDynaLib2_c(),this._PatrolRunningInfoSkin_BriskImageDynaLib3_c()];
               addr009d:
               if(!(_loc2_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00e1:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr00e5);
               }
               §§goto(addr00e1);
            }
            addr00e5:
            return _loc1_;
         }
         §§goto(addr009d);
      }
      
      private function _PatrolRunningInfoSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr007c:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr007c);
            }
            addr0080:
            return _loc1_;
         }
         §§goto(addr0068);
      }
      
      private function _PatrolRunningInfoSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 90;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0069:
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        addr0073:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr0087);
                  }
                  addr008b:
                  return _loc1_;
               }
            }
            §§goto(addr0069);
         }
         §§goto(addr0073);
      }
      
      private function _PatrolRunningInfoSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0077:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0077);
               }
               addr007b:
               return _loc1_;
            }
            §§goto(addr0077);
         }
         §§goto(addr0063);
      }
      
      private function _PatrolRunningInfoSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
               if(!_loc3_)
               {
                  _loc1_.left = -10;
                  if(!_loc3_)
                  {
                     addr005f:
                     _loc1_.top = -4;
                     if(!_loc3_)
                     {
                        addr0069:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr005f);
            }
         }
         §§goto(addr0069);
      }
      
      private function _PatrolRunningInfoSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.left = 5;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.top = 11;
               if(_loc3_)
               {
                  _loc1_.right = 10;
                  if(!_loc2_)
                  {
                     addr0051:
                     _loc1_.height = 30;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(!(_loc2_ && _loc3_))
                           {
                              addr008b:
                              _loc1_.mxmlContent = [this._PatrolRunningInfoSkin_LocaLabel1_i()];
                              if(_loc3_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr00af:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr008b);
                  }
                  addr00b3:
                  return _loc1_;
               }
               §§goto(addr00af);
            }
            §§goto(addr0051);
         }
         §§goto(addr00af);
      }
      
      private function _PatrolRunningInfoSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "eventName";
            if(_loc3_)
            {
               _loc1_.maxWidth = 170;
               if(!_loc2_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "header";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0081:
                                 this.header = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr0093:
                                    BindingManager.executeBindings(this,"header",this.header);
                                 }
                              }
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0081);
               }
               addr00a0:
               return _loc1_;
            }
         }
         §§goto(addr0093);
      }
      
      private function _PatrolRunningInfoSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.left = 5;
            if(!_loc3_)
            {
               _loc1_.right = 15;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0059:
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.paddingTop = 45;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.mxmlContent = [this._PatrolRunningInfoSkin_LocaLabel2_i(),this._PatrolRunningInfoSkin_TimerBarComponent1_i(),this._PatrolRunningInfoSkin_Group3_c()];
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr00b2);
                           }
                        }
                        §§goto(addr00c6);
                     }
                  }
                  addr00b2:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
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
         §§goto(addr0059);
      }
      
      private function _PatrolRunningInfoSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 60;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.styleName = "residentialCycleText";
               if(!_loc2_)
               {
                  _loc1_.id = "infoText";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0088:
                              this.infoText = _loc1_;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr009a:
                                 BindingManager.executeBindings(this,"infoText",this.infoText);
                              }
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr009a);
                     }
                  }
                  §§goto(addr0088);
               }
               addr00a7:
               return _loc1_;
            }
         }
         §§goto(addr0088);
      }
      
      private function _PatrolRunningInfoSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(_loc3_)
         {
            _loc1_.showBoostButton = false;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.revertFlow = true;
               if(!_loc2_)
               {
                  addr003f:
                  _loc1_.width = 170;
                  if(!_loc2_)
                  {
                     addr0057:
                     _loc1_.id = "progressTimer";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr006a:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0094:
                                 this.progressTimer = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    BindingManager.executeBindings(this,"progressTimer",this.progressTimer);
                                 }
                              }
                              §§goto(addr00b3);
                           }
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr006a);
               }
               addr00b3:
               return _loc1_;
            }
            §§goto(addr003f);
         }
         §§goto(addr0057);
      }
      
      private function _PatrolRunningInfoSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 5;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0042:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get bubble() : RentCollectorBubbleComponent
      {
         return this._1378241396bubble;
      }
      
      public function set bubble(param1:RentCollectorBubbleComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1378241396bubble;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1378241396bubble = param1;
                  if(_loc4_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr004e);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1221270899header;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1221270899header = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0065);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText() : LocaLabel
      {
         return this._177936123infoText;
      }
      
      public function set infoText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._177936123infoText;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0040:
                  this._177936123infoText = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressTimer() : TimerBarComponent
      {
         return this._770681112progressTimer;
      }
      
      public function set progressTimer(param1:TimerBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._770681112progressTimer;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr004f:
                  this._770681112progressTimer = param1;
                  if(_loc4_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTimer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr005a);
            }
            addr0078:
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PatrolInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PatrolInfoComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
   }
}

