package net.bigpoint.cityrama.view.assistants.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorInfoComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class RentCollectorRunningInfoSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1221270899header:LocaLabel;
      
      private var _177936123infoText:LocaLabel;
      
      private var _770681112progressTimer:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:RentCollectorInfoComponent;
      
      public function RentCollectorRunningInfoSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!_loc1_)
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  addr0038:
                  this.width = 250;
                  if(_loc2_)
                  {
                     this.minHeight = 90;
                     if(!(_loc1_ && _loc1_))
                     {
                        this.mxmlContent = [this._RentCollectorRunningInfoSkin_Group1_c()];
                        if(!_loc1_)
                        {
                           §§goto(addr0070);
                        }
                        §§goto(addr008e);
                     }
                     addr0070:
                     this.currentState = "normal";
                     if(!(_loc1_ && _loc1_))
                     {
                        addr008e:
                        states = [new State({
                           "name":"normal",
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "overrides":[]
                        })];
                     }
                     §§goto(addr00b6);
                  }
               }
               addr00b6:
               return;
            }
            §§goto(addr0070);
         }
         §§goto(addr0038);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               addr0036:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr0036);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.initialize();
         }
      }
      
      private function _RentCollectorRunningInfoSkin_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               §§goto(addr002b);
            }
            §§goto(addr0082);
         }
         addr002b:
         if(_loc3_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._RentCollectorRunningInfoSkin_Group2_c()];
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr006e);
            }
            §§goto(addr0082);
         }
         addr006e:
         if(!_loc1_.document)
         {
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0082:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorRunningInfoSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._RentCollectorRunningInfoSkin_RentCollectorBubbleComponent1_i(),this._RentCollectorRunningInfoSkin_HGroup1_c(),this._RentCollectorRunningInfoSkin_BriskImageDynaLib4_c(),this._RentCollectorRunningInfoSkin_HGroup2_c(),this._RentCollectorRunningInfoSkin_VGroup1_c()];
               addr003d:
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      private function _RentCollectorRunningInfoSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               addr0034:
               _loc1_.bottom = 0;
               if(!(_loc2_ && _loc2_))
               {
                  addr0052:
                  _loc1_.right = 0;
                  if(!_loc2_)
                  {
                     _loc1_.id = "bubble";
                     if(!_loc2_)
                     {
                        addr0067:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr008f:
                                 this.bubble = _loc1_;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00a1:
                                    BindingManager.executeBindings(this,"bubble",this.bubble);
                                 }
                                 §§goto(addr00ae);
                              }
                              §§goto(addr00a1);
                           }
                           addr00ae:
                           return _loc1_;
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr00a1);
            }
            §§goto(addr0052);
         }
         §§goto(addr0034);
      }
      
      private function _RentCollectorRunningInfoSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.gap = 0;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.left = 5;
               if(_loc2_)
               {
                  _loc1_.right = 15;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.verticalAlign = "middle";
                        if(_loc2_)
                        {
                           §§goto(addr0076);
                        }
                        §§goto(addr0080);
                     }
                     addr0076:
                     _loc1_.top = 9;
                     if(_loc2_)
                     {
                        addr0080:
                        _loc1_.height = 30;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._RentCollectorRunningInfoSkin_BriskImageDynaLib1_c(),this._RentCollectorRunningInfoSkin_BriskImageDynaLib2_c(),this._RentCollectorRunningInfoSkin_BriskImageDynaLib3_c()];
                           addr008a:
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00bb:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00cf:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr00bb);
                     }
                     addr00d3:
                     return _loc1_;
                  }
               }
               §§goto(addr00bb);
            }
            §§goto(addr008a);
         }
         §§goto(addr00cf);
      }
      
      private function _RentCollectorRunningInfoSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007c:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0068);
            }
            §§goto(addr007c);
         }
         addr0080:
         return _loc1_;
      }
      
      private function _RentCollectorRunningInfoSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentWidth = 90;
                  if(_loc2_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0066);
               }
               addr005c:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  addr0066:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr0066);
         }
         addr007e:
         return _loc1_;
      }
      
      private function _RentCollectorRunningInfoSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc3_)
            {
               §§goto(addr0036);
            }
            §§goto(addr0041);
         }
         addr0036:
         _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            addr0041:
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0072:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr0072);
         }
         addr0076:
         return _loc1_;
      }
      
      private function _RentCollectorRunningInfoSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_ui_questSide";
            if(_loc2_)
            {
               addr0033:
               _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.left = -10;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.top = -4;
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _RentCollectorRunningInfoSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.left = 5;
            if(_loc3_ || _loc3_)
            {
               _loc1_.top = 11;
               if(!_loc2_)
               {
                  _loc1_.right = 10;
                  if(_loc3_)
                  {
                     _loc1_.height = 30;
                     if(_loc3_ || _loc3_)
                     {
                        addr006e:
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           _loc1_.horizontalAlign = "center";
                           if(_loc3_ || _loc3_)
                           {
                              addr0099:
                              _loc1_.mxmlContent = [this._RentCollectorRunningInfoSkin_LocaLabel1_i()];
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00b1:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       addr00bd:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00b1);
                     }
                     addr00c1:
                     return _loc1_;
                  }
                  §§goto(addr00bd);
               }
            }
            §§goto(addr0099);
         }
         §§goto(addr006e);
      }
      
      private function _RentCollectorRunningInfoSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "eventName";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.maxWidth = 170;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.maxDisplayedLines = 2;
                  addr0046:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "header";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr009a:
                                 this.header = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00ac:
                                    BindingManager.executeBindings(this,"header",this.header);
                                 }
                              }
                              §§goto(addr00b9);
                           }
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr00ac);
                  }
               }
               addr00b9:
               return _loc1_;
            }
            §§goto(addr0046);
         }
         §§goto(addr00ac);
      }
      
      private function _RentCollectorRunningInfoSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.left = 5;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.right = 15;
               if(!_loc3_)
               {
                  §§goto(addr003b);
               }
               §§goto(addr0077);
            }
            §§goto(addr0064);
         }
         addr003b:
         _loc1_.horizontalAlign = "center";
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0064:
               _loc1_.paddingTop = 45;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._RentCollectorRunningInfoSkin_LocaLabel2_i(),this._RentCollectorRunningInfoSkin_TimerBarComponent1_i(),this._RentCollectorRunningInfoSkin_Group3_c()];
                  addr0077:
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr00b4:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00b8);
                  }
               }
            }
            §§goto(addr00b4);
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _RentCollectorRunningInfoSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 60;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.styleName = "residentialCycleText";
               if(_loc3_)
               {
                  _loc1_.id = "infoText";
                  if(_loc3_)
                  {
                     addr005f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr007d);
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0090);
            }
            §§goto(addr005f);
         }
         addr007d:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr0086:
            this.infoText = _loc1_;
            if(_loc3_)
            {
               addr0090:
               BindingManager.executeBindings(this,"infoText",this.infoText);
            }
         }
         return _loc1_;
      }
      
      private function _RentCollectorRunningInfoSkin_TimerBarComponent1_i() : TimerBarComponent
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
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.width = 170;
                  if(!_loc2_)
                  {
                     _loc1_.id = "progressTimer";
                     if(_loc3_ || _loc2_)
                     {
                        addr0073:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr0093);
                           }
                           §§goto(addr00a6);
                        }
                        §§goto(addr009c);
                     }
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0073);
            }
            addr0093:
            _loc1_.document = this;
            if(_loc3_)
            {
               addr009c:
               this.progressTimer = _loc1_;
               if(_loc3_)
               {
                  addr00a6:
                  BindingManager.executeBindings(this,"progressTimer",this.progressTimer);
               }
            }
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _RentCollectorRunningInfoSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 5;
            if(_loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr0041);
         }
         addr0035:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr0041:
               _loc1_.document = this;
            }
         }
         return _loc1_;
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1378241396bubble = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1221270899header = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr005d);
            }
            addr007c:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText() : LocaLabel
      {
         return this._177936123infoText;
      }
      
      public function set infoText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._177936123infoText;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._177936123infoText = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
         }
         addr007c:
      }
      
      [Bindable(event="propertyChange")]
      public function get progressTimer() : TimerBarComponent
      {
         return this._770681112progressTimer;
      }
      
      public function set progressTimer(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._770681112progressTimer;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._770681112progressTimer = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTimer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : RentCollectorInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RentCollectorInfoComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
   }
}

