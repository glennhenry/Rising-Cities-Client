package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.DepartmentListItemRenderer;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ModifierValueComponent;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoLayerInfrastructureDecorationComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _262377712departmentList:List;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _235160899modifierValueComponent:ModifierValueComponent;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerInfrastructureDecorationComponentSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup1_c(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup2_c()];
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
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 12;
         _loc1_.width = 226;
         _loc1_.horizontalCenter = 0;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.bottom = 27;
         _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureDecorationComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
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
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 226;
         _loc1_.gap = 7;
         _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureDecorationComponentSkin_HGroup1_c(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_ModifierValueComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 90;
         _loc1_.gap = 5;
         _loc1_.mxmlContent = [this._FieldInfoLayerInfrastructureDecorationComponentSkin_LocaLabel1_i(),this._FieldInfoLayerInfrastructureDecorationComponentSkin_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 110;
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "infoLabelRight";
         _loc1_.id = "infoLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoLabel = _loc1_;
         BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.width = 94;
         _loc1_.minHeight = 36;
         _loc1_.itemRenderer = this._FieldInfoLayerInfrastructureDecorationComponentSkin_ClassFactory1_c();
         _loc1_.visible = true;
         _loc1_.setStyle("skinClass",DepartmentListSkin);
         _loc1_.id = "departmentList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.departmentList = _loc1_;
         BindingManager.executeBindings(this,"departmentList",this.departmentList);
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DepartmentListItemRenderer;
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.id = "splitter";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.splitter = _loc1_;
         BindingManager.executeBindings(this,"splitter",this.splitter);
         return _loc1_;
      }
      
      private function _FieldInfoLayerInfrastructureDecorationComponentSkin_ModifierValueComponent1_i() : ModifierValueComponent
      {
         var _loc1_:ModifierValueComponent = new ModifierValueComponent();
         _loc1_.percentWidth = 100;
         _loc1_.id = "modifierValueComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.modifierValueComponent = _loc1_;
         BindingManager.executeBindings(this,"modifierValueComponent",this.modifierValueComponent);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentList() : List
      {
         return this._262377712departmentList;
      }
      
      public function set departmentList(param1:List) : void
      {
         var _loc2_:Object = this._262377712departmentList;
         if(_loc2_ !== param1)
         {
            this._262377712departmentList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentList",_loc2_,param1));
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
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc2_ !== param1)
         {
            this._1213523686infoLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get modifierValueComponent() : ModifierValueComponent
      {
         return this._235160899modifierValueComponent;
      }
      
      public function set modifierValueComponent(param1:ModifierValueComponent) : void
      {
         var _loc2_:Object = this._235160899modifierValueComponent;
         if(_loc2_ !== param1)
         {
            this._235160899modifierValueComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modifierValueComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get splitter() : BriskImageDynaLib
      {
         return this._1926588729splitter;
      }
      
      public function set splitter(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1926588729splitter;
         if(_loc2_ !== param1)
         {
            this._1926588729splitter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
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

