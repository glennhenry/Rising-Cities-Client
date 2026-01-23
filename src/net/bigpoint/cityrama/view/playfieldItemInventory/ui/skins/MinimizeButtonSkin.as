package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Button;
   import spark.skins.SparkSkin;
   
   public class MinimizeButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _910381391_MinimizeButtonSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function MinimizeButtonSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._MinimizeButtonSkin_BriskImageDynaLib1_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"upAndSelected",
            "stateGroups":["selected"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_MinimizeButtonSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"twistie_down"
            })]
         }),new State({
            "name":"overAndSelected",
            "stateGroups":["selected"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_MinimizeButtonSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"twistie_down"
            })]
         }),new State({
            "name":"downAndSelected",
            "stateGroups":["selected"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_MinimizeButtonSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"twistie_down"
            })]
         }),new State({
            "name":"disabled",
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
      
      private function _MinimizeButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "twistie_up";
         _loc1_.id = "_MinimizeButtonSkin_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._MinimizeButtonSkin_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_MinimizeButtonSkin_BriskImageDynaLib1",this._MinimizeButtonSkin_BriskImageDynaLib1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _MinimizeButtonSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._910381391_MinimizeButtonSkin_BriskImageDynaLib1;
      }
      
      public function set _MinimizeButtonSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._910381391_MinimizeButtonSkin_BriskImageDynaLib1;
         if(_loc2_ !== param1)
         {
            this._910381391_MinimizeButtonSkin_BriskImageDynaLib1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_MinimizeButtonSkin_BriskImageDynaLib1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
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

