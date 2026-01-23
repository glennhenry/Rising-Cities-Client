package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.skins
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
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.InventoryRadioButton;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class InventoryRadioButtonSkinClass extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _929834834_InventoryRadioButtonSkinClass_BriskImageDynaLib1:BriskImageDynaLib;
      
      public var _InventoryRadioButtonSkinClass_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _929834836_InventoryRadioButtonSkinClass_BriskImageDynaLib3:BriskImageDynaLib;
      
      private var _385748430_InventoryRadioButtonSkinClass_SetProperty1:SetProperty;
      
      private var _385748431_InventoryRadioButtonSkinClass_SetProperty2:SetProperty;
      
      private var _385748432_InventoryRadioButtonSkinClass_SetProperty3:SetProperty;
      
      private var _385748433_InventoryRadioButtonSkinClass_SetProperty4:SetProperty;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:InventoryRadioButton;
      
      public function InventoryRadioButtonSkinClass()
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
         bindings = this._InventoryRadioButtonSkinClass_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_components_skins_InventoryRadioButtonSkinClassWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return InventoryRadioButtonSkinClass[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._InventoryRadioButtonSkinClass_Group1_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[this._InventoryRadioButtonSkinClass_SetProperty4 = SetProperty(new SetProperty().initializeFromObject({
               "isBaseValueDataBound":true,
               "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":undefined
            }))]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"upAndSelected",
            "stateGroups":["selected"],
            "overrides":[this._InventoryRadioButtonSkinClass_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
               "isBaseValueDataBound":true,
               "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib3",
               "name":"visible",
               "value":true
            })]
         }),new State({
            "name":"overAndSelected",
            "stateGroups":["selected"],
            "overrides":[this._InventoryRadioButtonSkinClass_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
               "isBaseValueDataBound":true,
               "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib3",
               "name":"visible",
               "value":true
            })]
         }),new State({
            "name":"downAndSelected",
            "stateGroups":["selected"],
            "overrides":[this._InventoryRadioButtonSkinClass_SetProperty3 = SetProperty(new SetProperty().initializeFromObject({
               "isBaseValueDataBound":true,
               "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"_InventoryRadioButtonSkinClass_BriskImageDynaLib3",
               "name":"visible",
               "value":true
            })]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"disabledAndSelected",
            "overrides":[]
         })];
         BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_SetProperty4",this._InventoryRadioButtonSkinClass_SetProperty4);
         BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_SetProperty1",this._InventoryRadioButtonSkinClass_SetProperty1);
         BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_SetProperty2",this._InventoryRadioButtonSkinClass_SetProperty2);
         BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_SetProperty3",this._InventoryRadioButtonSkinClass_SetProperty3);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         InventoryRadioButtonSkinClass._watcherSetupUtil = param1;
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
      
      private function _InventoryRadioButtonSkinClass_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._InventoryRadioButtonSkinClass_BriskImageDynaLib1_i(),this._InventoryRadioButtonSkinClass_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InventoryRadioButtonSkinClass_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.id = "_InventoryRadioButtonSkinClass_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._InventoryRadioButtonSkinClass_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",this._InventoryRadioButtonSkinClass_BriskImageDynaLib1);
         return _loc1_;
      }
      
      private function _InventoryRadioButtonSkinClass_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = 1;
         _loc1_.right = 12;
         _loc1_.top = -5;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._InventoryRadioButtonSkinClass_Group2_c(),this._InventoryRadioButtonSkinClass_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InventoryRadioButtonSkinClass_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 35;
         _loc1_.height = 32;
         _loc1_.mxmlContent = [this._InventoryRadioButtonSkinClass_BriskImageDynaLib2_i(),this._InventoryRadioButtonSkinClass_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InventoryRadioButtonSkinClass_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "_InventoryRadioButtonSkinClass_BriskImageDynaLib2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._InventoryRadioButtonSkinClass_BriskImageDynaLib2 = _loc1_;
         BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_BriskImageDynaLib2",this._InventoryRadioButtonSkinClass_BriskImageDynaLib2);
         return _loc1_;
      }
      
      private function _InventoryRadioButtonSkinClass_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "postit_marker";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.width = 28;
         _loc1_.height = 26;
         _loc1_.visible = false;
         _loc1_.id = "_InventoryRadioButtonSkinClass_BriskImageDynaLib3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._InventoryRadioButtonSkinClass_BriskImageDynaLib3 = _loc1_;
         BindingManager.executeBindings(this,"_InventoryRadioButtonSkinClass_BriskImageDynaLib3",this._InventoryRadioButtonSkinClass_BriskImageDynaLib3);
         return _loc1_;
      }
      
      private function _InventoryRadioButtonSkinClass_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "invewntoryCategoryLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.percentWidth = 100;
         _loc1_.top = 3;
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      private function _InventoryRadioButtonSkinClass_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("bg_gfx");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_InventoryRadioButtonSkinClass_BriskImageDynaLib1.dynaBmpSourceName");
         result[1] = new Binding(this,function():*
         {
            return hostComponent.getStyle("bg_gfx_over");
         },null,"_InventoryRadioButtonSkinClass_SetProperty1.value");
         result[2] = new Binding(this,function():*
         {
            return hostComponent.getStyle("bg_gfx_over");
         },null,"_InventoryRadioButtonSkinClass_SetProperty2.value");
         result[3] = new Binding(this,function():*
         {
            return hostComponent.getStyle("bg_gfx_over");
         },null,"_InventoryRadioButtonSkinClass_SetProperty3.value");
         result[4] = new Binding(this,function():*
         {
            return hostComponent.getStyle("bg_gfx_over");
         },null,"_InventoryRadioButtonSkinClass_SetProperty4.value");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("iconSource");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_InventoryRadioButtonSkinClass_BriskImageDynaLib2.dynaBmpSourceName");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._929834834_InventoryRadioButtonSkinClass_BriskImageDynaLib1;
      }
      
      public function set _InventoryRadioButtonSkinClass_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._929834834_InventoryRadioButtonSkinClass_BriskImageDynaLib1;
         if(_loc2_ !== param1)
         {
            this._929834834_InventoryRadioButtonSkinClass_BriskImageDynaLib1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_BriskImageDynaLib1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_BriskImageDynaLib3() : BriskImageDynaLib
      {
         return this._929834836_InventoryRadioButtonSkinClass_BriskImageDynaLib3;
      }
      
      public function set _InventoryRadioButtonSkinClass_BriskImageDynaLib3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._929834836_InventoryRadioButtonSkinClass_BriskImageDynaLib3;
         if(_loc2_ !== param1)
         {
            this._929834836_InventoryRadioButtonSkinClass_BriskImageDynaLib3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_BriskImageDynaLib3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_SetProperty1() : SetProperty
      {
         return this._385748430_InventoryRadioButtonSkinClass_SetProperty1;
      }
      
      public function set _InventoryRadioButtonSkinClass_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._385748430_InventoryRadioButtonSkinClass_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._385748430_InventoryRadioButtonSkinClass_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_SetProperty2() : SetProperty
      {
         return this._385748431_InventoryRadioButtonSkinClass_SetProperty2;
      }
      
      public function set _InventoryRadioButtonSkinClass_SetProperty2(param1:SetProperty) : void
      {
         var _loc2_:Object = this._385748431_InventoryRadioButtonSkinClass_SetProperty2;
         if(_loc2_ !== param1)
         {
            this._385748431_InventoryRadioButtonSkinClass_SetProperty2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_SetProperty2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_SetProperty3() : SetProperty
      {
         return this._385748432_InventoryRadioButtonSkinClass_SetProperty3;
      }
      
      public function set _InventoryRadioButtonSkinClass_SetProperty3(param1:SetProperty) : void
      {
         var _loc2_:Object = this._385748432_InventoryRadioButtonSkinClass_SetProperty3;
         if(_loc2_ !== param1)
         {
            this._385748432_InventoryRadioButtonSkinClass_SetProperty3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_SetProperty3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _InventoryRadioButtonSkinClass_SetProperty4() : SetProperty
      {
         return this._385748433_InventoryRadioButtonSkinClass_SetProperty4;
      }
      
      public function set _InventoryRadioButtonSkinClass_SetProperty4(param1:SetProperty) : void
      {
         var _loc2_:Object = this._385748433_InventoryRadioButtonSkinClass_SetProperty4;
         if(_loc2_ !== param1)
         {
            this._385748433_InventoryRadioButtonSkinClass_SetProperty4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_InventoryRadioButtonSkinClass_SetProperty4",_loc2_,param1));
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
      public function get hostComponent() : InventoryRadioButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:InventoryRadioButton) : void
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

