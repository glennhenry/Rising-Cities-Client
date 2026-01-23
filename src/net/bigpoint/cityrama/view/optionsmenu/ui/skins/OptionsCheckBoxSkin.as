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
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._OptionsCheckBoxSkin_HGroup1_c()];
         this.currentState = "up";
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
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function _OptionsCheckBoxSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.gap = 6;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._OptionsCheckBoxSkin_Group1_c(),this._OptionsCheckBoxSkin_Group2_c(),this._OptionsCheckBoxSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._OptionsCheckBoxSkin_BriskImageDynaLib1_c(),this._OptionsCheckBoxSkin_BriskImageDynaLib2_i(),this._OptionsCheckBoxSkin_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_optionsPopup";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "options_frame";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_optionsPopup";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "options_bg_on";
         _loc1_.id = "_OptionsCheckBoxSkin_BriskImageDynaLib2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._OptionsCheckBoxSkin_BriskImageDynaLib2 = _loc1_;
         BindingManager.executeBindings(this,"_OptionsCheckBoxSkin_BriskImageDynaLib2",this._OptionsCheckBoxSkin_BriskImageDynaLib2);
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_green";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "_OptionsCheckBoxSkin_BriskImageDynaLib3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._OptionsCheckBoxSkin_BriskImageDynaLib3 = _loc1_;
         BindingManager.executeBindings(this,"_OptionsCheckBoxSkin_BriskImageDynaLib3",this._OptionsCheckBoxSkin_BriskImageDynaLib3);
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._OptionsCheckBoxSkin_BriskImageDynaLib4_c(),this._OptionsCheckBoxSkin_BriskImageDynaLib5_i(),this._OptionsCheckBoxSkin_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_optionsPopup";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "options_frame";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_optionsPopup";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "options_bg_on";
         _loc1_.id = "_OptionsCheckBoxSkin_BriskImageDynaLib5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._OptionsCheckBoxSkin_BriskImageDynaLib5 = _loc1_;
         BindingManager.executeBindings(this,"_OptionsCheckBoxSkin_BriskImageDynaLib5",this._OptionsCheckBoxSkin_BriskImageDynaLib5);
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_green";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "_OptionsCheckBoxSkin_BriskImageDynaLib6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._OptionsCheckBoxSkin_BriskImageDynaLib6 = _loc1_;
         BindingManager.executeBindings(this,"_OptionsCheckBoxSkin_BriskImageDynaLib6",this._OptionsCheckBoxSkin_BriskImageDynaLib6);
         return _loc1_;
      }
      
      private function _OptionsCheckBoxSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "checkBoxLabel";
         _loc1_.percentWidth = 100;
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _OptionsCheckBoxSkin_BriskImageDynaLib2() : BriskImageDynaLib
      {
         return this._371881729_OptionsCheckBoxSkin_BriskImageDynaLib2;
      }
      
      public function set _OptionsCheckBoxSkin_BriskImageDynaLib2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._371881729_OptionsCheckBoxSkin_BriskImageDynaLib2;
         if(_loc2_ !== param1)
         {
            this._371881729_OptionsCheckBoxSkin_BriskImageDynaLib2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_OptionsCheckBoxSkin_BriskImageDynaLib2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _OptionsCheckBoxSkin_BriskImageDynaLib3() : BriskImageDynaLib
      {
         return this._371881728_OptionsCheckBoxSkin_BriskImageDynaLib3;
      }
      
      public function set _OptionsCheckBoxSkin_BriskImageDynaLib3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._371881728_OptionsCheckBoxSkin_BriskImageDynaLib3;
         if(_loc2_ !== param1)
         {
            this._371881728_OptionsCheckBoxSkin_BriskImageDynaLib3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_OptionsCheckBoxSkin_BriskImageDynaLib3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _OptionsCheckBoxSkin_BriskImageDynaLib5() : BriskImageDynaLib
      {
         return this._371881726_OptionsCheckBoxSkin_BriskImageDynaLib5;
      }
      
      public function set _OptionsCheckBoxSkin_BriskImageDynaLib5(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._371881726_OptionsCheckBoxSkin_BriskImageDynaLib5;
         if(_loc2_ !== param1)
         {
            this._371881726_OptionsCheckBoxSkin_BriskImageDynaLib5 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_OptionsCheckBoxSkin_BriskImageDynaLib5",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _OptionsCheckBoxSkin_BriskImageDynaLib6() : BriskImageDynaLib
      {
         return this._371881725_OptionsCheckBoxSkin_BriskImageDynaLib6;
      }
      
      public function set _OptionsCheckBoxSkin_BriskImageDynaLib6(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._371881725_OptionsCheckBoxSkin_BriskImageDynaLib6;
         if(_loc2_ !== param1)
         {
            this._371881725_OptionsCheckBoxSkin_BriskImageDynaLib6 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_OptionsCheckBoxSkin_BriskImageDynaLib6",_loc2_,param1));
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
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : CheckBox
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CheckBox) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

