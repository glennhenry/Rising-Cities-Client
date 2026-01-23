package net.bigpoint.cityrama.view.emergencyTV.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.HGroup;
   import spark.components.ToggleButton;
   import spark.skins.SparkSkin;
   
   public class TVDropButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _5414398_TVDropButtonSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ToggleButton;
      
      public function TVDropButtonSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._TVDropButtonSkin_HGroup1_c()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_TVDropButtonSkin_BriskImageDynaLib1",
               "name":"rotation",
               "value":180
            })]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_TVDropButtonSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"mainhud_bar_arrow_mouseover"
            }),new SetProperty().initializeFromObject({
               "target":"_TVDropButtonSkin_BriskImageDynaLib1",
               "name":"rotation",
               "value":180
            })]
         }),new State({
            "name":"down",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_TVDropButtonSkin_BriskImageDynaLib1",
               "name":"rotation",
               "value":180
            })]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"upAndSelected",
            "overrides":[]
         }),new State({
            "name":"overAndSelected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_TVDropButtonSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"mainhud_bar_arrow_mouseover"
            }),new SetProperty().initializeFromObject({
               "target":"_TVDropButtonSkin_BriskImageDynaLib1",
               "name":"rotation",
               "value":0
            })]
         }),new State({
            "name":"downAndSelected",
            "overrides":[]
         }),new State({
            "name":"disabledAndSelected",
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
      
      private function _TVDropButtonSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.width = 23;
         _loc1_.height = 23;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._TVDropButtonSkin_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TVDropButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = -1;
         _loc1_.horizontalCenter = -1;
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_bar_arrow_normal";
         _loc1_.rotation = 0;
         _loc1_.id = "_TVDropButtonSkin_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._TVDropButtonSkin_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_TVDropButtonSkin_BriskImageDynaLib1",this._TVDropButtonSkin_BriskImageDynaLib1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _TVDropButtonSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._5414398_TVDropButtonSkin_BriskImageDynaLib1;
      }
      
      public function set _TVDropButtonSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._5414398_TVDropButtonSkin_BriskImageDynaLib1;
         if(_loc2_ !== param1)
         {
            this._5414398_TVDropButtonSkin_BriskImageDynaLib1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TVDropButtonSkin_BriskImageDynaLib1",_loc2_,param1));
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

