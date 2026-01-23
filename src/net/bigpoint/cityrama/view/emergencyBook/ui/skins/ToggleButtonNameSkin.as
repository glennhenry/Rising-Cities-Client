package net.bigpoint.cityrama.view.emergencyBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.HGroup;
   import spark.components.ToggleButton;
   import spark.skins.SparkSkin;
   
   public class ToggleButtonNameSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1796992368_ToggleButtonNameSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ToggleButton;
      
      public function ToggleButtonNameSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  this.mxmlContent = [this._ToggleButtonNameSkin_HGroup1_c()];
                  if(!(_loc1_ && _loc2_))
                  {
                     addr0048:
                     this.currentState = "up";
                     if(_loc2_ || _loc1_)
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr005c);
               }
               §§goto(addr0048);
            }
            §§goto(addr0075);
         }
         addr005c:
         this.addEventListener("creationComplete",this.___ToggleButtonNameSkin_SparkSkin1_creationComplete);
         if(!(_loc1_ && _loc1_))
         {
            states = [new State({
               "name":"up",
               "stateGroups":["normalStates"],
               "overrides":[]
            }),new State({
               "name":"over",
               "stateGroups":["normalStates"],
               "overrides":[new SetProperty().initializeFromObject({
                  "target":"_ToggleButtonNameSkin_BriskImageDynaLib1",
                  "name":"dynaBmpSourceName",
                  "value":"ui_main_scrollarrow_down_activ"
               })]
            }),new State({
               "name":"down",
               "stateGroups":["normalStates"],
               "overrides":[new SetProperty().initializeFromObject({
                  "target":"_ToggleButtonNameSkin_BriskImageDynaLib1",
                  "name":"dynaBmpSourceName",
                  "value":"ui_main_scrollarrow_down"
               })]
            }),new State({
               "name":"disabled",
               "stateGroups":["normalStates"],
               "overrides":[]
            }),new State({
               "name":"upAndSelected",
               "stateGroups":["selectedStates"],
               "overrides":[new SetProperty().initializeFromObject({
                  "target":"_ToggleButtonNameSkin_BriskImageDynaLib1",
                  "name":"dynaBmpSourceName",
                  "value":"ui_main_scrollarrow_up"
               })]
            }),new State({
               "name":"overAndSelected",
               "stateGroups":["selectedStates"],
               "overrides":[new SetProperty().initializeFromObject({
                  "target":"_ToggleButtonNameSkin_BriskImageDynaLib1",
                  "name":"dynaBmpSourceName",
                  "value":"ui_main_scrollarrow_up_activ"
               })]
            }),new State({
               "name":"downAndSelected",
               "stateGroups":["selectedStates"],
               "overrides":[new SetProperty().initializeFromObject({
                  "target":"_ToggleButtonNameSkin_BriskImageDynaLib1",
                  "name":"dynaBmpSourceName",
                  "value":"ui_main_scrollarrow_up"
               })]
            }),new State({
               "name":"disabledAndSelected",
               "stateGroups":["selectedStates"],
               "overrides":[]
            })];
            addr0075:
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0042);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         addr0042:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.labelDisplay.text = ResourceManager.getInstance().getString("rcl.emergencybook.layer","rcl.emergencybook.layer.name");
         }
      }
      
      private function _ToggleButtonNameSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.paddingLeft = 10;
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.paddingRight = 5;
                           if(_loc3_)
                           {
                              §§goto(addr009f);
                           }
                           §§goto(addr00c1);
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00c1);
               }
            }
            addr009f:
            _loc1_.mxmlContent = [this._ToggleButtonNameSkin_LocaLabel1_i(),this._ToggleButtonNameSkin_BriskImageDynaLib1_i()];
            if(!_loc2_)
            {
               addr00b5:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00c1:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr00c5);
         }
         addr00c5:
         return _loc1_;
      }
      
      private function _ToggleButtonNameSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_)
               {
                  _loc1_.text = "DEV: Name";
                  if(_loc3_ || Boolean(this))
                  {
                     addr0067:
                     _loc1_.styleName = "sortLabel";
                     if(!_loc2_)
                     {
                        _loc1_.id = "labelDisplay";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr009e:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00af:
                                    this.labelDisplay = _loc1_;
                                    if(!_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
                                    }
                                 }
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr0067);
            }
         }
         addr00c6:
         return _loc1_;
      }
      
      private function _ToggleButtonNameSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc2_)
            {
               §§goto(addr0033);
            }
            §§goto(addr0098);
         }
         addr0033:
         _loc1_.dynaBmpSourceName = "ui_main_scrollarrow_down";
         if(!_loc2_)
         {
            _loc1_.id = "_ToggleButtonNameSkin_BriskImageDynaLib1";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0086);
                     }
                     §§goto(addr0098);
                  }
               }
            }
            addr0086:
            this._ToggleButtonNameSkin_BriskImageDynaLib1 = _loc1_;
            if(!(_loc2_ && _loc2_))
            {
               addr0098:
               BindingManager.executeBindings(this,"_ToggleButtonNameSkin_BriskImageDynaLib1",this._ToggleButtonNameSkin_BriskImageDynaLib1);
            }
            §§goto(addr00a5);
         }
         addr00a5:
         return _loc1_;
      }
      
      public function ___ToggleButtonNameSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ToggleButtonNameSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._1796992368_ToggleButtonNameSkin_BriskImageDynaLib1;
      }
      
      public function set _ToggleButtonNameSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1796992368_ToggleButtonNameSkin_BriskImageDynaLib1;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1796992368_ToggleButtonNameSkin_BriskImageDynaLib1 = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ToggleButtonNameSkin_BriskImageDynaLib1",_loc2_,param1));
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1184053038labelDisplay = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0064);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ToggleButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0055:
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0055);
      }
   }
}

