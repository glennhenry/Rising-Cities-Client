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
   
   public class ToggleButtonOperationCountSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1134594637_ToggleButtonOperationCountSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ToggleButton;
      
      public function ToggleButtonOperationCountSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._ToggleButtonOperationCountSkin_HGroup1_c()];
         this.currentState = "up";
         this.addEventListener("creationComplete",this.___ToggleButtonOperationCountSkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"up",
            "stateGroups":["normalStates"],
            "overrides":[]
         }),new State({
            "name":"over",
            "stateGroups":["normalStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"ui_main_scrollarrow_down_activ"
            })]
         }),new State({
            "name":"down",
            "stateGroups":["normalStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",
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
               "target":"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"ui_main_scrollarrow_up"
            })]
         }),new State({
            "name":"overAndSelected",
            "stateGroups":["selectedStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"ui_main_scrollarrow_up_activ"
            })]
         }),new State({
            "name":"downAndSelected",
            "stateGroups":["selectedStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"ui_main_scrollarrow_up"
            })]
         }),new State({
            "name":"disabledAndSelected",
            "stateGroups":["selectedStates"],
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
      
      private function handleCreationComplete() : void
      {
         this.labelDisplay.text = ResourceManager.getInstance().getString("rcl.emergencybook.layer","rcl.emergencybook.layer.operationCountLeft");
      }
      
      private function _ToggleButtonOperationCountSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingLeft = 10;
         _loc1_.paddingRight = 5;
         _loc1_.mxmlContent = [this._ToggleButtonOperationCountSkin_LocaLabel1_i(),this._ToggleButtonOperationCountSkin_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ToggleButtonOperationCountSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.text = "DEV: Operations left, multiline";
         _loc1_.styleName = "sortLabel";
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      private function _ToggleButtonOperationCountSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "ui_main_scrollarrow_down";
         _loc1_.id = "_ToggleButtonOperationCountSkin_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ToggleButtonOperationCountSkin_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",this._ToggleButtonOperationCountSkin_BriskImageDynaLib1);
         return _loc1_;
      }
      
      public function ___ToggleButtonOperationCountSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get _ToggleButtonOperationCountSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._1134594637_ToggleButtonOperationCountSkin_BriskImageDynaLib1;
      }
      
      public function set _ToggleButtonOperationCountSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1134594637_ToggleButtonOperationCountSkin_BriskImageDynaLib1;
         if(_loc2_ !== param1)
         {
            this._1134594637_ToggleButtonOperationCountSkin_BriskImageDynaLib1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ToggleButtonOperationCountSkin_BriskImageDynaLib1",_loc2_,param1));
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
      public function get hostComponent() : ToggleButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ToggleButton) : void
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

