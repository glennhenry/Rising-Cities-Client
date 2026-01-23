package net.bigpoint.cityrama.view.residentSelection.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.residentSelection.ui.components.ResidentChoiceDetailComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class ResidentChoiceUnknownSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1022398728actionButton:MultistateButton;
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _838788151currencyAmount:LocaLabel;
      
      private var _177936123infoText:LocaLabel;
      
      private var _1259807996levelAmount:LocaLabel;
      
      private var _1656559075levelIcon:BriskImageDynaLib;
      
      private var _865336879needIcon:BriskImageDynaLib;
      
      private var _311416662residentType:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ResidentChoiceDetailComponent;
      
      public function ResidentChoiceUnknownSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._ResidentChoiceUnknownSkin_VGroup1_c()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
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
      
      private function _ResidentChoiceUnknownSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = -5;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_Group1_c(),this._ResidentChoiceUnknownSkin_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 286;
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_BriskImageDynaLib1_i(),this._ResidentChoiceUnknownSkin_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "playcard_inactive";
         _loc1_.dynaLibName = "gui_popups_resSelectionPopup";
         _loc1_.id = "background";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 155;
         _loc1_.top = 130;
         _loc1_.left = 28;
         _loc1_.gap = 0;
         _loc1_.bottom = 26;
         _loc1_.right = 28;
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_Group2_c(),this._ResidentChoiceUnknownSkin_Group3_c(),this._ResidentChoiceUnknownSkin_HGroup1_c(),this._ResidentChoiceUnknownSkin_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 29;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentName";
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 2;
         _loc1_.id = "residentType";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentType = _loc1_;
         BindingManager.executeBindings(this,"residentType",this.residentType);
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 38;
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentInfo";
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 24;
         _loc1_.verticalCenter = 1;
         _loc1_.id = "infoText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoText = _loc1_;
         BindingManager.executeBindings(this,"infoText",this.infoText);
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 40;
         _loc1_.width = 155;
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_HGroup2_c(),this._ResidentChoiceUnknownSkin_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "layer_needs_icon";
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.id = "needIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.needIcon = _loc1_;
         BindingManager.executeBindings(this,"needIcon",this.needIcon);
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "right";
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentNumbers";
         _loc1_.text = " --";
         _loc1_.id = "currencyAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.currencyAmount = _loc1_;
         BindingManager.executeBindings(this,"currencyAmount",this.currencyAmount);
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 34;
         _loc1_.width = 155;
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_HGroup4_c(),this._ResidentChoiceUnknownSkin_VGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_resSelectionPopup";
         _loc1_.dynaBmpSourceName = "icon_buildinglevel";
         _loc1_.id = "levelIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelIcon = _loc1_;
         BindingManager.executeBindings(this,"levelIcon",this.levelIcon);
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "right";
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentNumbers";
         _loc1_.text = " --";
         _loc1_.id = "levelAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelAmount = _loc1_;
         BindingManager.executeBindings(this,"levelAmount",this.levelAmount);
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ResidentChoiceUnknownSkin_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceUnknownSkin_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 205;
         _loc1_.enabled = false;
         _loc1_.id = "actionButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.actionButton = _loc1_;
         BindingManager.executeBindings(this,"actionButton",this.actionButton);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton() : MultistateButton
      {
         return this._1022398728actionButton;
      }
      
      public function set actionButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1022398728actionButton;
         if(_loc2_ !== param1)
         {
            this._1022398728actionButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyAmount() : LocaLabel
      {
         return this._838788151currencyAmount;
      }
      
      public function set currencyAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._838788151currencyAmount;
         if(_loc2_ !== param1)
         {
            this._838788151currencyAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText() : LocaLabel
      {
         return this._177936123infoText;
      }
      
      public function set infoText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._177936123infoText;
         if(_loc2_ !== param1)
         {
            this._177936123infoText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelAmount() : LocaLabel
      {
         return this._1259807996levelAmount;
      }
      
      public function set levelAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1259807996levelAmount;
         if(_loc2_ !== param1)
         {
            this._1259807996levelAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelIcon() : BriskImageDynaLib
      {
         return this._1656559075levelIcon;
      }
      
      public function set levelIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1656559075levelIcon;
         if(_loc2_ !== param1)
         {
            this._1656559075levelIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needIcon() : BriskImageDynaLib
      {
         return this._865336879needIcon;
      }
      
      public function set needIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._865336879needIcon;
         if(_loc2_ !== param1)
         {
            this._865336879needIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentType() : LocaLabel
      {
         return this._311416662residentType;
      }
      
      public function set residentType(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._311416662residentType;
         if(_loc2_ !== param1)
         {
            this._311416662residentType = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentType",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ResidentChoiceDetailComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ResidentChoiceDetailComponent) : void
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

