package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ExpansionComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoExpansionComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _501307134expansionComponent:ExpansionComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoExpansionComponentSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._FieldInfoExpansionComponentSkin_VGroup1_c(),this._FieldInfoExpansionComponentSkin_VGroup2_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
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
      
      private function _FieldInfoExpansionComponentSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._FieldInfoExpansionComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoExpansionComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoExpansionComponentSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoExpansionComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_base_top";
         _loc1_.width = 227;
         _loc1_.height = 12;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoExpansionComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_base_middle";
         _loc1_.width = 227;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoExpansionComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_base_bottom";
         _loc1_.width = 227;
         _loc1_.height = 27;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoExpansionComponentSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 12;
         _loc1_.width = 226;
         _loc1_.horizontalCenter = 0;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.bottom = 27;
         _loc1_.mxmlContent = [this._FieldInfoExpansionComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoExpansionComponentSkin_ExpansionComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoExpansionComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
      {
         var _loc1_:InfoLayerHeaderComponent = new InfoLayerHeaderComponent();
         _loc1_.id = "headerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerComponent = _loc1_;
         BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
         return _loc1_;
      }
      
      private function _FieldInfoExpansionComponentSkin_ExpansionComponent1_i() : ExpansionComponent
      {
         var _loc1_:ExpansionComponent = new ExpansionComponent();
         _loc1_.percentWidth = 100;
         _loc1_.id = "expansionComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.expansionComponent = _loc1_;
         BindingManager.executeBindings(this,"expansionComponent",this.expansionComponent);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get expansionComponent() : ExpansionComponent
      {
         return this._501307134expansionComponent;
      }
      
      public function set expansionComponent(param1:ExpansionComponent) : void
      {
         var _loc2_:Object = this._501307134expansionComponent;
         if(_loc2_ !== param1)
         {
            this._501307134expansionComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expansionComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerComponent() : InfoLayerHeaderComponent
      {
         return this._1449269008headerComponent;
      }
      
      public function set headerComponent(param1:InfoLayerHeaderComponent) : void
      {
         var _loc2_:Object = this._1449269008headerComponent;
         if(_loc2_ !== param1)
         {
            this._1449269008headerComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FieldInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FieldInfoComponent) : void
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

