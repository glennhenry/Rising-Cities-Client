package net.bigpoint.cityrama.view.emergencyBook.ui.skins
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
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class EmergencySkipCheckBoxSkin extends SparkSkin implements IStateClient2
   {
      
      private var _181046420_EmergencySkipCheckBoxSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:CheckBox;
      
      public function EmergencySkipCheckBoxSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.mxmlContent = [this._EmergencySkipCheckBoxSkin_HGroup1_c()];
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr0048:
                     this.currentState = "up";
                     if(!_loc1_)
                     {
                        states = [new State({
                           "name":"up",
                           "overrides":[]
                        }),new State({
                           "name":"over",
                           "stateGroups":["overStates"],
                           "overrides":[]
                        }),new State({
                           "name":"down",
                           "stateGroups":["downStates"],
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "stateGroups":["disabledStates"],
                           "overrides":[]
                        }),new State({
                           "name":"upAndSelected",
                           "stateGroups":["selectedStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_EmergencySkipCheckBoxSkin_BriskImageDynaLib1",
                              "name":"dynaBmpSourceName",
                              "value":"icon_nolayer_active"
                           })]
                        }),new State({
                           "name":"overAndSelected",
                           "stateGroups":["overStates","selectedStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_EmergencySkipCheckBoxSkin_BriskImageDynaLib1",
                              "name":"dynaBmpSourceName",
                              "value":"icon_nolayer_active"
                           })]
                        }),new State({
                           "name":"downAndSelected",
                           "stateGroups":["downStates","selectedStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_EmergencySkipCheckBoxSkin_BriskImageDynaLib1",
                              "name":"dynaBmpSourceName",
                              "value":"icon_nolayer_active"
                           })]
                        }),new State({
                           "name":"disabledAndSelected",
                           "stateGroups":["disabledStates","selectedStates"],
                           "overrides":[new SetProperty().initializeFromObject({
                              "target":"_EmergencySkipCheckBoxSkin_BriskImageDynaLib1",
                              "name":"dynaBmpSourceName",
                              "value":"icon_nolayer_active"
                           })]
                        })];
                        addr0054:
                     }
                  }
               }
               return;
            }
            §§goto(addr0054);
         }
         §§goto(addr0048);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr0049:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr0049);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function _EmergencySkipCheckBoxSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "right";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.gap = 4;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.percentWidth = 100;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._EmergencySkipCheckBoxSkin_LocaLabel1_i(),this._EmergencySkipCheckBoxSkin_BriskImageDynaLib1_i()];
                        addr006e:
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00ab:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00af);
                        }
                     }
                  }
                  §§goto(addr00ab);
               }
               addr00af:
               return _loc1_;
            }
            §§goto(addr00ab);
         }
         §§goto(addr006e);
      }
      
      private function _EmergencySkipCheckBoxSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc3_)
            {
               addr002a:
               _loc1_.styleName = "emergencyCheckBoxLabel";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.id = "labelDisplay";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0068:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr0089:
                                 this.labelDisplay = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr009b:
                                    BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr0068);
               }
               §§goto(addr0089);
            }
            §§goto(addr0068);
         }
         §§goto(addr002a);
      }
      
      private function _EmergencySkipCheckBoxSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_emergencyBook";
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0032:
               _loc1_.verticalCenter = 0;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0044:
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "icon_nolayer";
                     if(!_loc3_)
                     {
                        addr0069:
                        _loc1_.id = "_EmergencySkipCheckBoxSkin_BriskImageDynaLib1";
                        if(_loc2_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr0090:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00ac:
                                    this._EmergencySkipCheckBoxSkin_BriskImageDynaLib1 = _loc1_;
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       BindingManager.executeBindings(this,"_EmergencySkipCheckBoxSkin_BriskImageDynaLib1",this._EmergencySkipCheckBoxSkin_BriskImageDynaLib1);
                                    }
                                 }
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00ac);
                        }
                     }
                     addr00cb:
                     return _loc1_;
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0069);
            }
            §§goto(addr0044);
         }
         §§goto(addr0032);
      }
      
      [Bindable(event="propertyChange")]
      public function get _EmergencySkipCheckBoxSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._181046420_EmergencySkipCheckBoxSkin_BriskImageDynaLib1;
      }
      
      public function set _EmergencySkipCheckBoxSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._181046420_EmergencySkipCheckBoxSkin_BriskImageDynaLib1;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._181046420_EmergencySkipCheckBoxSkin_BriskImageDynaLib1 = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_EmergencySkipCheckBoxSkin_BriskImageDynaLib1",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1184053038labelDisplay = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr005b);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : CheckBox
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CheckBox) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0081:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0081);
            }
         }
         addr0090:
      }
   }
}

