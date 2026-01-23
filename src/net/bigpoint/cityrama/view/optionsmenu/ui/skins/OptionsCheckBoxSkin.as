package net.bigpoint.cityrama.view.optionsmenu.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.CheckBox;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class OptionsCheckBoxSkin extends SparkSkin implements IStateClient2
   {
      
      private var _371881729_OptionsCheckBoxSkin_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _371881728_OptionsCheckBoxSkin_BriskImageDynaLib3:BriskImageDynaLib;
      
      private var _371881726_OptionsCheckBoxSkin_BriskImageDynaLib5:BriskImageDynaLib;
      
      private var _371881725_OptionsCheckBoxSkin_BriskImageDynaLib6:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:CheckBox;
      
      public function OptionsCheckBoxSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && Boolean(this)))
            {
               addr0026:
               mx_internal::_document = this;
               if(_loc2_ || _loc1_)
               {
                  this.mxmlContent = [this._OptionsCheckBoxSkin_HGroup1_c()];
                  if(!_loc1_)
                  {
                     this.currentState = "up";
                     if(!(_loc1_ && _loc2_))
                     {
                        states = [new State({
                           "name":"up",
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib2",
                              "name":"dynaBmpSourceName",
                              "value":"options_bg_off"
                           }),new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib3",
                              "name":"dynaBmpSourceName",
                              "value":"checkmark_gray"
                           })]
                        }),new State({
                           "name":"over",
                           "stateGroups":["overStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib2",
                              "name":"dynaBmpSourceName",
                              "value":"options_bg_off"
                           }),new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib3",
                              "name":"dynaBmpSourceName",
                              "value":"checkmark_gray"
                           })]
                        }),new State({
                           "name":"down",
                           "stateGroups":["downStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib2",
                              "name":"dynaBmpSourceName",
                              "value":"options_bg_off"
                           }),new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib3",
                              "name":"dynaBmpSourceName",
                              "value":"checkmark_gray"
                           })]
                        }),new State({
                           "name":"disabled",
                           "stateGroups":["disabledStates"],
                           "overrides":[]
                        }),new State({
                           "name":"upAndSelected",
                           "stateGroups":["selectedStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib5",
                              "name":"dynaBmpSourceName",
                              "value":"options_bg_off"
                           }),new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib6",
                              "name":"dynaBmpSourceName",
                              "value":"checkmark_gray"
                           })]
                        }),new State({
                           "name":"overAndSelected",
                           "stateGroups":["overStates","selectedStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib5",
                              "name":"dynaBmpSourceName",
                              "value":"options_bg_off"
                           }),new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib6",
                              "name":"dynaBmpSourceName",
                              "value":"checkmark_gray"
                           })]
                        }),new State({
                           "name":"downAndSelected",
                           "stateGroups":["downStates","selectedStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib5",
                              "name":"dynaBmpSourceName",
                              "value":"options_bg_off"
                           }),new SetProperty().initializeFromObject({
                              "target":"_OptionsCheckBoxSkin_BriskImageDynaLib6",
                              "name":"dynaBmpSourceName",
                              "value":"checkmark_gray"
                           })]
                        }),new State({
                           "name":"disabledAndSelected",
                           "stateGroups":["disabledStates","selectedStates"],
                           "overrides":[]
                        })];
                        addr0064:
                     }
                     §§goto(addr0273);
                  }
                  §§goto(addr0064);
               }
            }
            addr0273:
            return;
         }
         §§goto(addr0026);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr002e:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr002e);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      private function _OptionsCheckBoxSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc3_)
            {
               _loc1_.horizontalAlign = "left";
               if(_loc2_ || _loc3_)
               {
                  _loc1_.gap = 6;
                  if(!_loc3_)
                  {
                     _loc1_.percentWidth = 100;
                     §§goto(addr005a);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr008c);
            }
            §§goto(addr0070);
         }
         addr005a:
         if(!_loc3_)
         {
            addr0070:
            _loc1_.mxmlContent = [this._OptionsCheckBoxSkin_Group1_c(),this._OptionsCheckBoxSkin_Group2_c(),this._OptionsCheckBoxSkin_LocaLabel1_i()];
            if(!_loc3_)
            {
               addr008c:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0098:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._OptionsCheckBoxSkin_BriskImageDynaLib1_c(),this._OptionsCheckBoxSkin_BriskImageDynaLib2_i(),this._OptionsCheckBoxSkin_BriskImageDynaLib3_i()];
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr005b:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  addr0040:
                  if(_loc3_ || _loc2_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0068);
               }
               addr005d:
               _loc1_.dynaBmpSourceName = "options_frame";
               if(!_loc2_)
               {
                  addr0068:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0078);
            }
            addr0078:
            return _loc1_;
         }
         §§goto(addr0040);
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0039:
               _loc1_.verticalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     §§goto(addr0057);
                  }
               }
               §§goto(addr00a7);
            }
            addr0057:
            _loc1_.dynaBmpSourceName = "options_bg_on";
            if(_loc2_)
            {
               _loc1_.id = "_OptionsCheckBoxSkin_BriskImageDynaLib2";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0095:
                           this._OptionsCheckBoxSkin_BriskImageDynaLib2 = _loc1_;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr00a7:
                              BindingManager.executeBindings(this,"_OptionsCheckBoxSkin_BriskImageDynaLib2",this._OptionsCheckBoxSkin_BriskImageDynaLib2);
                           }
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00a7);
                  }
               }
               §§goto(addr0095);
            }
            addr00b4:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(!_loc3_)
               {
                  addr0046:
                  _loc1_.verticalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "_OptionsCheckBoxSkin_BriskImageDynaLib3";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0095:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr00b2);
                                 }
                                 §§goto(addr00c4);
                              }
                           }
                           addr00b2:
                           this._OptionsCheckBoxSkin_BriskImageDynaLib3 = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr00c4:
                              BindingManager.executeBindings(this,"_OptionsCheckBoxSkin_BriskImageDynaLib3",this._OptionsCheckBoxSkin_BriskImageDynaLib3);
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00c4);
                     }
                     addr00d1:
                     return _loc1_;
                  }
               }
               §§goto(addr0095);
            }
            §§goto(addr0046);
         }
         §§goto(addr0095);
      }
      
      private function _OptionsCheckBoxSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._OptionsCheckBoxSkin_BriskImageDynaLib4_c(),this._OptionsCheckBoxSkin_BriskImageDynaLib5_i(),this._OptionsCheckBoxSkin_BriskImageDynaLib6_i()];
            if(!(_loc2_ && _loc2_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(!_loc3_)
            {
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc3_)
                  {
                     addr006f:
                     _loc1_.dynaBmpSourceName = "options_frame";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0086:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008a);
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr006f);
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr006f);
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_optionsPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     addr005a:
                     _loc1_.dynaBmpSourceName = "options_bg_on";
                     if(_loc3_)
                     {
                        _loc1_.id = "_OptionsCheckBoxSkin_BriskImageDynaLib5";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0084:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr0090);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005a);
            }
            addr0090:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr0099:
               this._OptionsCheckBoxSkin_BriskImageDynaLib5 = _loc1_;
               if(_loc3_)
               {
                  addr00a3:
                  BindingManager.executeBindings(this,"_OptionsCheckBoxSkin_BriskImageDynaLib5",this._OptionsCheckBoxSkin_BriskImageDynaLib5);
               }
            }
            return _loc1_;
         }
         §§goto(addr0099);
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "checkmark_green";
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_)
                     {
                        addr0062:
                        _loc1_.id = "_OptionsCheckBoxSkin_BriskImageDynaLib6";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr008d:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr0096);
                                 }
                                 §§goto(addr00a0);
                              }
                           }
                        }
                     }
                     addr0096:
                     this._OptionsCheckBoxSkin_BriskImageDynaLib6 = _loc1_;
                     if(_loc3_)
                     {
                        addr00a0:
                        BindingManager.executeBindings(this,"_OptionsCheckBoxSkin_BriskImageDynaLib6",this._OptionsCheckBoxSkin_BriskImageDynaLib6);
                     }
                     return _loc1_;
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr008d);
            }
            §§goto(addr00a0);
         }
         §§goto(addr0062);
      }
      
      private function _OptionsCheckBoxSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "checkBoxLabel";
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.id = "labelDisplay";
                  if(_loc2_)
                  {
                     addr0066:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0087:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0098:
                              this.labelDisplay = _loc1_;
                              if(!_loc3_)
                              {
                                 addr00a2:
                                 BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr00a2);
                        }
                        addr00af:
                        return _loc1_;
                     }
                     §§goto(addr0098);
                  }
               }
               §§goto(addr0087);
            }
            §§goto(addr0066);
         }
         §§goto(addr0087);
      }
      
      [Bindable(event="propertyChange")]
      public function get _OptionsCheckBoxSkin_BriskImageDynaLib2() : BriskImageDynaLib
      {
         return this._371881729_OptionsCheckBoxSkin_BriskImageDynaLib2;
      }
      
      public function set _OptionsCheckBoxSkin_BriskImageDynaLib2(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._371881729_OptionsCheckBoxSkin_BriskImageDynaLib2;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._371881729_OptionsCheckBoxSkin_BriskImageDynaLib2 = param1;
                  addr0043:
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_OptionsCheckBoxSkin_BriskImageDynaLib2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get _OptionsCheckBoxSkin_BriskImageDynaLib3() : BriskImageDynaLib
      {
         return this._371881728_OptionsCheckBoxSkin_BriskImageDynaLib3;
      }
      
      public function set _OptionsCheckBoxSkin_BriskImageDynaLib3(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._371881728_OptionsCheckBoxSkin_BriskImageDynaLib3;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._371881728_OptionsCheckBoxSkin_BriskImageDynaLib3 = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_OptionsCheckBoxSkin_BriskImageDynaLib3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0071);
            }
            addr0080:
            return;
         }
         §§goto(addr0071);
      }
      
      [Bindable(event="propertyChange")]
      public function get _OptionsCheckBoxSkin_BriskImageDynaLib5() : BriskImageDynaLib
      {
         return this._371881726_OptionsCheckBoxSkin_BriskImageDynaLib5;
      }
      
      public function set _OptionsCheckBoxSkin_BriskImageDynaLib5(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._371881726_OptionsCheckBoxSkin_BriskImageDynaLib5;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._371881726_OptionsCheckBoxSkin_BriskImageDynaLib5 = param1;
                  if(!_loc3_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_OptionsCheckBoxSkin_BriskImageDynaLib5",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get _OptionsCheckBoxSkin_BriskImageDynaLib6() : BriskImageDynaLib
      {
         return this._371881725_OptionsCheckBoxSkin_BriskImageDynaLib6;
      }
      
      public function set _OptionsCheckBoxSkin_BriskImageDynaLib6(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._371881725_OptionsCheckBoxSkin_BriskImageDynaLib6;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._371881725_OptionsCheckBoxSkin_BriskImageDynaLib6 = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_OptionsCheckBoxSkin_BriskImageDynaLib6",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0065);
            }
         }
         addr008b:
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1184053038labelDisplay = param1;
                  if(!_loc3_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : CheckBox
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CheckBox) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc4_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr004f);
      }
   }
}

