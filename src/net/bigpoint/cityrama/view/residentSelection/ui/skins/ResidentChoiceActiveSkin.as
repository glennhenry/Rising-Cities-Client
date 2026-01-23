package net.bigpoint.cityrama.view.residentSelection.ui.skins
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.residentSelection.ui.components.ResidentChoiceDetailComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class ResidentChoiceActiveSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1022398728actionButton:MultistateButton;
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _1004941354currencyIcon:BriskImageDynaLib;
      
      private var _177936123infoText:LocaLabel;
      
      private var _1259807996levelAmount:LocaLabel;
      
      private var _795895972levelFeatureButton:DynamicImageButton;
      
      private var _184876379levelGroup:HGroup;
      
      private var _1656559075levelIcon:BriskImageDynaLib;
      
      private var _239061202needFeatureButton:DynamicImageButton;
      
      private var _865336879needIcon:BriskImageDynaLib;
      
      private var _311416662residentType:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:ResidentChoiceDetailComponent;
      
      public function ResidentChoiceActiveSkin()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._ResidentChoiceActiveSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_residentSelection_ui_skins_ResidentChoiceActiveSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ResidentChoiceActiveSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._ResidentChoiceActiveSkin_VGroup1_c()];
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
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ResidentChoiceActiveSkin._watcherSetupUtil = param1;
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
      
      private function _ResidentChoiceActiveSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = -5;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_Group1_c(),this._ResidentChoiceActiveSkin_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 286;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_BriskImageDynaLib1_i(),this._ResidentChoiceActiveSkin_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "playcard_active";
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
      
      private function _ResidentChoiceActiveSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 155;
         _loc1_.top = 130;
         _loc1_.left = 28;
         _loc1_.gap = 0;
         _loc1_.bottom = 26;
         _loc1_.right = 26;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_Group2_c(),this._ResidentChoiceActiveSkin_Group3_c(),this._ResidentChoiceActiveSkin_HGroup1_c(),this._ResidentChoiceActiveSkin_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 29;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_LocaLabel1_i() : LocaLabel
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
      
      private function _ResidentChoiceActiveSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 38;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_LocaLabel2_i() : LocaLabel
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
      
      private function _ResidentChoiceActiveSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 40;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_HGroup2_c(),this._ResidentChoiceActiveSkin_HGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_BriskImageDynaLib2_i(),this._ResidentChoiceActiveSkin_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
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
      
      private function _ResidentChoiceActiveSkin_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 40;
         _loc1_.paddingTop = 2;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.id = "needFeatureButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.needFeatureButton = _loc1_;
         BindingManager.executeBindings(this,"needFeatureButton",this.needFeatureButton);
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "right";
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_LocaLabel3_c(),this._ResidentChoiceActiveSkin_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_LocaLabel3_c() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentNumbers";
         _loc1_.text = "+";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "currencyIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.currencyIcon = _loc1_;
         BindingManager.executeBindings(this,"currencyIcon",this.currencyIcon);
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 36;
         _loc1_.percentWidth = 95;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_HGroup6_c(),this._ResidentChoiceActiveSkin_HGroup8_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_BriskImageDynaLib4_i(),this._ResidentChoiceActiveSkin_HGroup7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
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
      
      private function _ResidentChoiceActiveSkin_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 40;
         _loc1_.paddingTop = 2;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.verticalCenter = 25;
         _loc1_.visible = false;
         _loc1_.enabled = false;
         _loc1_.id = "levelFeatureButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelFeatureButton = _loc1_;
         BindingManager.executeBindings(this,"levelFeatureButton",this.levelFeatureButton);
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_HGroup8_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "right";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_LocaLabel4_i()];
         _loc1_.id = "levelGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelGroup = _loc1_;
         BindingManager.executeBindings(this,"levelGroup",this.levelGroup);
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentNumbers";
         _loc1_.id = "levelAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelAmount = _loc1_;
         BindingManager.executeBindings(this,"levelAmount",this.levelAmount);
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ResidentChoiceActiveSkin_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 205;
         _loc1_.enabled = true;
         _loc1_.id = "actionButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.actionButton = _loc1_;
         BindingManager.executeBindings(this,"actionButton",this.actionButton);
         return _loc1_;
      }
      
      private function _ResidentChoiceActiveSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("infoTooltip");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"levelFeatureButton.toolTip");
         return result;
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
      public function get currencyIcon() : BriskImageDynaLib
      {
         return this._1004941354currencyIcon;
      }
      
      public function set currencyIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1004941354currencyIcon;
         if(_loc2_ !== param1)
         {
            this._1004941354currencyIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyIcon",_loc2_,param1));
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
      public function get levelFeatureButton() : DynamicImageButton
      {
         return this._795895972levelFeatureButton;
      }
      
      public function set levelFeatureButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._795895972levelFeatureButton;
         if(_loc2_ !== param1)
         {
            this._795895972levelFeatureButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelFeatureButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelGroup() : HGroup
      {
         return this._184876379levelGroup;
      }
      
      public function set levelGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._184876379levelGroup;
         if(_loc2_ !== param1)
         {
            this._184876379levelGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelGroup",_loc2_,param1));
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
      public function get needFeatureButton() : DynamicImageButton
      {
         return this._239061202needFeatureButton;
      }
      
      public function set needFeatureButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._239061202needFeatureButton;
         if(_loc2_ !== param1)
         {
            this._239061202needFeatureButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needFeatureButton",_loc2_,param1));
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

