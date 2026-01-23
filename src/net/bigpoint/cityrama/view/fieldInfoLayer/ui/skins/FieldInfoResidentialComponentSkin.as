package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoLayerMasteryComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ImprovementIconComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.OutputItemRendered;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.SecurityStatusComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.OutputListSkin;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FieldInfoResidentialComponentSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1255241910harvestProgress:TimerBarComponent;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _921105436improvementIcons:ImprovementIconComponent;
      
      private var _1830499226masteryComponent:FieldInfoLayerMasteryComponent;
      
      private var _1062744848outcomeList:List;
      
      private var _311765527residentIcon:BriskImageDynaLib;
      
      private var _698432686securityStatus:SecurityStatusComponent;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoResidentialComponentSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._FieldInfoResidentialComponentSkin_VGroup1_c(),this._FieldInfoResidentialComponentSkin_VGroup2_c()];
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
      
      private function _FieldInfoResidentialComponentSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._FieldInfoResidentialComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoResidentialComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoResidentialComponentSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_base_top_icon";
         _loc1_.width = 227;
         _loc1_.height = 62;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _FieldInfoResidentialComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _FieldInfoResidentialComponentSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 5;
         _loc1_.width = 228;
         _loc1_.horizontalCenter = 0;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingBottom = 27;
         _loc1_.mxmlContent = [this._FieldInfoResidentialComponentSkin_Group1_c(),this._FieldInfoResidentialComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoResidentialComponentSkin_Group2_c(),this._FieldInfoResidentialComponentSkin_FieldInfoLayerMasteryComponent1_i(),this._FieldInfoResidentialComponentSkin_ImprovementIconComponent1_i(),this._FieldInfoResidentialComponentSkin_List1_i(),this._FieldInfoResidentialComponentSkin_Group3_c(),this._FieldInfoResidentialComponentSkin_BriskImageDynaLib5_i(),this._FieldInfoResidentialComponentSkin_Group4_c(),this._FieldInfoResidentialComponentSkin_TimerBarComponent1_i(),this._FieldInfoResidentialComponentSkin_SecurityStatusComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 44;
         _loc1_.height = 53;
         _loc1_.mxmlContent = [this._FieldInfoResidentialComponentSkin_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "unknown_residential_class";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "residentIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentIcon = _loc1_;
         BindingManager.executeBindings(this,"residentIcon",this.residentIcon);
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
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
      
      private function _FieldInfoResidentialComponentSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_FieldInfoLayerMasteryComponent1_i() : FieldInfoLayerMasteryComponent
      {
         var _loc1_:FieldInfoLayerMasteryComponent = new FieldInfoLayerMasteryComponent();
         _loc1_.id = "masteryComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryComponent = _loc1_;
         BindingManager.executeBindings(this,"masteryComponent",this.masteryComponent);
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_ImprovementIconComponent1_i() : ImprovementIconComponent
      {
         var _loc1_:ImprovementIconComponent = new ImprovementIconComponent();
         _loc1_.id = "improvementIcons";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementIcons = _loc1_;
         BindingManager.executeBindings(this,"improvementIcons",this.improvementIcons);
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._FieldInfoResidentialComponentSkin_ClassFactory1_c();
         _loc1_.width = 197;
         _loc1_.setStyle("skinClass",OutputListSkin);
         _loc1_.id = "outcomeList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.outcomeList = _loc1_;
         BindingManager.executeBindings(this,"outcomeList",this.outcomeList);
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = OutputItemRendered;
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 2;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
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
      
      private function _FieldInfoResidentialComponentSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.width = 181;
         _loc1_.id = "harvestProgress";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.harvestProgress = _loc1_;
         BindingManager.executeBindings(this,"harvestProgress",this.harvestProgress);
         return _loc1_;
      }
      
      private function _FieldInfoResidentialComponentSkin_SecurityStatusComponent1_i() : SecurityStatusComponent
      {
         var _loc1_:SecurityStatusComponent = new SecurityStatusComponent();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "securityStatus";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.securityStatus = _loc1_;
         BindingManager.executeBindings(this,"securityStatus",this.securityStatus);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestProgress() : TimerBarComponent
      {
         return this._1255241910harvestProgress;
      }
      
      public function set harvestProgress(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._1255241910harvestProgress;
         if(_loc2_ !== param1)
         {
            this._1255241910harvestProgress = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgress",_loc2_,param1));
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
      public function get improvementIcons() : ImprovementIconComponent
      {
         return this._921105436improvementIcons;
      }
      
      public function set improvementIcons(param1:ImprovementIconComponent) : void
      {
         var _loc2_:Object = this._921105436improvementIcons;
         if(_loc2_ !== param1)
         {
            this._921105436improvementIcons = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementIcons",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryComponent() : FieldInfoLayerMasteryComponent
      {
         return this._1830499226masteryComponent;
      }
      
      public function set masteryComponent(param1:FieldInfoLayerMasteryComponent) : void
      {
         var _loc2_:Object = this._1830499226masteryComponent;
         if(_loc2_ !== param1)
         {
            this._1830499226masteryComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outcomeList() : List
      {
         return this._1062744848outcomeList;
      }
      
      public function set outcomeList(param1:List) : void
      {
         var _loc2_:Object = this._1062744848outcomeList;
         if(_loc2_ !== param1)
         {
            this._1062744848outcomeList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentIcon() : BriskImageDynaLib
      {
         return this._311765527residentIcon;
      }
      
      public function set residentIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._311765527residentIcon;
         if(_loc2_ !== param1)
         {
            this._311765527residentIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get securityStatus() : SecurityStatusComponent
      {
         return this._698432686securityStatus;
      }
      
      public function set securityStatus(param1:SecurityStatusComponent) : void
      {
         var _loc2_:Object = this._698432686securityStatus;
         if(_loc2_ !== param1)
         {
            this._698432686securityStatus = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityStatus",_loc2_,param1));
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

