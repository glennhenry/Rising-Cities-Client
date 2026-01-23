package net.bigpoint.cityrama.view.fieldInfoLayer.ui.skins
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerEnergyMoodComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerProductionComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerResidentialComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerShopComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class FieldInfoLayerConfigPlayfieldItemComponentSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5:BriskImageDynaLib;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _28398297levelFlavourLabel:LocaLabel;
      
      private var _1605842169levelNumberLabel:LocaLabel;
      
      private var _845656926moodEnergyComponent:InfoLayerEnergyMoodComponent;
      
      private var _366670780productionComponent:InfoLayerProductionComponent;
      
      private var _607607385residentialComponent:InfoLayerResidentialComponent;
      
      private var _665626969shopComponent:InfoLayerShopComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoLayerConfigPlayfieldItemComponentSkin()
      {
         var watchers:Array;
         var i:uint;
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._FieldInfoLayerConfigPlayfieldItemComponentSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_fieldInfoLayer_ui_skins_FieldInfoLayerConfigPlayfieldItemComponentSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FieldInfoLayerConfigPlayfieldItemComponentSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._FieldInfoLayerConfigPlayfieldItemComponentSkin_VGroup1_c(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_VGroup2_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___FieldInfoLayerConfigPlayfieldItemComponentSkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"normal",
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
         FieldInfoLayerConfigPlayfieldItemComponentSkin._watcherSetupUtil = param1;
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.levelFlavourLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansionBuilding.level");
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 12;
         _loc1_.width = 228;
         _loc1_.horizontalCenter = 0;
         _loc1_.gap = 6;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingBottom = 27;
         _loc1_.mxmlContent = [this._FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_Group1_c(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_HGroup1_c(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerResidentialComponent1_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerProductionComponent1_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerShopComponent1_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerEnergyMoodComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
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
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 85;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._FieldInfoLayerConfigPlayfieldItemComponentSkin_LocaLabel1_i(),this._FieldInfoLayerConfigPlayfieldItemComponentSkin_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "infoLabel";
         _loc1_.percentWidth = 100;
         _loc1_.maxWidth = 180;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.setStyle("textAlign","left");
         _loc1_.id = "levelFlavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelFlavourLabel = _loc1_;
         BindingManager.executeBindings(this,"levelFlavourLabel",this.levelFlavourLabel);
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "infoLabel";
         _loc1_.width = 50;
         _loc1_.maxWidth = 50;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("textAlign","right");
         _loc1_.id = "levelNumberLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelNumberLabel = _loc1_;
         BindingManager.executeBindings(this,"levelNumberLabel",this.levelNumberLabel);
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.id = "_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4 = _loc1_;
         BindingManager.executeBindings(this,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4",this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4);
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerResidentialComponent1_i() : InfoLayerResidentialComponent
      {
         var _loc1_:InfoLayerResidentialComponent = new InfoLayerResidentialComponent();
         _loc1_.percentWidth = 85;
         _loc1_.id = "residentialComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentialComponent = _loc1_;
         BindingManager.executeBindings(this,"residentialComponent",this.residentialComponent);
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerProductionComponent1_i() : InfoLayerProductionComponent
      {
         var _loc1_:InfoLayerProductionComponent = new InfoLayerProductionComponent();
         _loc1_.percentWidth = 85;
         _loc1_.id = "productionComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.productionComponent = _loc1_;
         BindingManager.executeBindings(this,"productionComponent",this.productionComponent);
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerShopComponent1_i() : InfoLayerShopComponent
      {
         var _loc1_:InfoLayerShopComponent = new InfoLayerShopComponent();
         _loc1_.percentWidth = 85;
         _loc1_.id = "shopComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.shopComponent = _loc1_;
         BindingManager.executeBindings(this,"shopComponent",this.shopComponent);
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.id = "_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5 = _loc1_;
         BindingManager.executeBindings(this,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5",this._FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5);
         return _loc1_;
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_InfoLayerEnergyMoodComponent1_i() : InfoLayerEnergyMoodComponent
      {
         var _loc1_:InfoLayerEnergyMoodComponent = new InfoLayerEnergyMoodComponent();
         _loc1_.id = "moodEnergyComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodEnergyComponent = _loc1_;
         BindingManager.executeBindings(this,"moodEnergyComponent",this.moodEnergyComponent);
         return _loc1_;
      }
      
      public function ___FieldInfoLayerConfigPlayfieldItemComponentSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private function _FieldInfoLayerConfigPlayfieldItemComponentSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return Boolean(residentialComponent.visible) || Boolean(productionComponent.visible) || Boolean(shopComponent.visible);
         },null,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4.visible");
         result[1] = new Binding(this,function():Boolean
         {
            return Boolean(residentialComponent.includeInLayout) || Boolean(productionComponent.includeInLayout) || Boolean(shopComponent.includeInLayout);
         },null,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib4.includeInLayout");
         result[2] = new Binding(this,function():Boolean
         {
            return moodEnergyComponent.visible;
         },null,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5.visible");
         result[3] = new Binding(this,function():Boolean
         {
            return moodEnergyComponent.includeInLayout;
         },null,"_FieldInfoLayerConfigPlayfieldItemComponentSkin_BriskImageDynaLib5.includeInLayout");
         return result;
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
      public function get levelFlavourLabel() : LocaLabel
      {
         return this._28398297levelFlavourLabel;
      }
      
      public function set levelFlavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._28398297levelFlavourLabel;
         if(_loc2_ !== param1)
         {
            this._28398297levelFlavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelFlavourLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelNumberLabel() : LocaLabel
      {
         return this._1605842169levelNumberLabel;
      }
      
      public function set levelNumberLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1605842169levelNumberLabel;
         if(_loc2_ !== param1)
         {
            this._1605842169levelNumberLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelNumberLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moodEnergyComponent() : InfoLayerEnergyMoodComponent
      {
         return this._845656926moodEnergyComponent;
      }
      
      public function set moodEnergyComponent(param1:InfoLayerEnergyMoodComponent) : void
      {
         var _loc2_:Object = this._845656926moodEnergyComponent;
         if(_loc2_ !== param1)
         {
            this._845656926moodEnergyComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodEnergyComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get productionComponent() : InfoLayerProductionComponent
      {
         return this._366670780productionComponent;
      }
      
      public function set productionComponent(param1:InfoLayerProductionComponent) : void
      {
         var _loc2_:Object = this._366670780productionComponent;
         if(_loc2_ !== param1)
         {
            this._366670780productionComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productionComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentialComponent() : InfoLayerResidentialComponent
      {
         return this._607607385residentialComponent;
      }
      
      public function set residentialComponent(param1:InfoLayerResidentialComponent) : void
      {
         var _loc2_:Object = this._607607385residentialComponent;
         if(_loc2_ !== param1)
         {
            this._607607385residentialComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentialComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopComponent() : InfoLayerShopComponent
      {
         return this._665626969shopComponent;
      }
      
      public function set shopComponent(param1:InfoLayerShopComponent) : void
      {
         var _loc2_:Object = this._665626969shopComponent;
         if(_loc2_ !== param1)
         {
            this._665626969shopComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopComponent",_loc2_,param1));
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

