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
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._EmergencySkipCheckBoxSkin_HGroup1_c()];
         this.currentState = "up";
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
      
      private function _EmergencySkipCheckBoxSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "right";
         _loc1_.gap = 4;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencySkipCheckBoxSkin_LocaLabel1_i(),this._EmergencySkipCheckBoxSkin_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySkipCheckBoxSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "emergencyCheckBoxLabel";
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
      
      private function _EmergencySkipCheckBoxSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "icon_nolayer";
         _loc1_.id = "_EmergencySkipCheckBoxSkin_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._EmergencySkipCheckBoxSkin_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_EmergencySkipCheckBoxSkin_BriskImageDynaLib1",this._EmergencySkipCheckBoxSkin_BriskImageDynaLib1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _EmergencySkipCheckBoxSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._181046420_EmergencySkipCheckBoxSkin_BriskImageDynaLib1;
      }
      
      public function set _EmergencySkipCheckBoxSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._181046420_EmergencySkipCheckBoxSkin_BriskImageDynaLib1;
         if(_loc2_ !== param1)
         {
            this._181046420_EmergencySkipCheckBoxSkin_BriskImageDynaLib1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_EmergencySkipCheckBoxSkin_BriskImageDynaLib1",_loc2_,param1));
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

