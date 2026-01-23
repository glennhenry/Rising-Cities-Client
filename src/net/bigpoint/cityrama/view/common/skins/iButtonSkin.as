package net.bigpoint.cityrama.view.common.skins
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
   
   public class iButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _788680196_iButtonSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function iButtonSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._iButtonSkin_BriskImageDynaLib1_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_iButtonSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"architect_icon_detailinfo_mouseover"
            })]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"disabled",
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
      
      private function _iButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "_iButtonSkin_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._iButtonSkin_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_iButtonSkin_BriskImageDynaLib1",this._iButtonSkin_BriskImageDynaLib1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _iButtonSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._788680196_iButtonSkin_BriskImageDynaLib1;
      }
      
      public function set _iButtonSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._788680196_iButtonSkin_BriskImageDynaLib1;
         if(_loc2_ !== param1)
         {
            this._788680196_iButtonSkin_BriskImageDynaLib1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_iButtonSkin_BriskImageDynaLib1",_loc2_,param1));
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

