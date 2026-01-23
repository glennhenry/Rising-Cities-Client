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
   import mx.core.ClassFactory;
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
   import net.bigpoint.cityrama.view.common.components.SeparatorList;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.FieldInfoComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.InfoLayerHeaderComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.ModifierValueComponent;
   import net.bigpoint.cityrama.view.fieldInfoLayer.ui.components.NeedsItemRenderer;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class FieldInfoNeedsComponentSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1449269008headerComponent:InfoLayerHeaderComponent;
      
      private var _235160899modifierValueComponent:ModifierValueComponent;
      
      private var _1093736667needsList:SeparatorList;
      
      private var _1809672396sellsWithRentLabel:LocaLabel;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:FieldInfoComponent;
      
      public function FieldInfoNeedsComponentSkin()
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
         bindings = this._FieldInfoNeedsComponentSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_fieldInfoLayer_ui_skins_FieldInfoNeedsComponentSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FieldInfoNeedsComponentSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._FieldInfoNeedsComponentSkin_VGroup1_c(),this._FieldInfoNeedsComponentSkin_VGroup2_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___FieldInfoNeedsComponentSkin_SparkSkin1_creationComplete);
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
         FieldInfoNeedsComponentSkin._watcherSetupUtil = param1;
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
      
      private function handleCreationComplete() : void
      {
         this.sellsWithRentLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.commercial.sellsWithRent");
      }
      
      private function _FieldInfoNeedsComponentSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._FieldInfoNeedsComponentSkin_BriskImageDynaLib1_c(),this._FieldInfoNeedsComponentSkin_BriskImageDynaLib2_c(),this._FieldInfoNeedsComponentSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoNeedsComponentSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _FieldInfoNeedsComponentSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _FieldInfoNeedsComponentSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _FieldInfoNeedsComponentSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 12;
         _loc1_.width = 226;
         _loc1_.horizontalCenter = 0;
         _loc1_.gap = 8;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.bottom = 27;
         _loc1_.mxmlContent = [this._FieldInfoNeedsComponentSkin_InfoLayerHeaderComponent1_i(),this._FieldInfoNeedsComponentSkin_Group1_c(),this._FieldInfoNeedsComponentSkin_LocaLabel1_i(),this._FieldInfoNeedsComponentSkin_SeparatorList1_i(),this._FieldInfoNeedsComponentSkin_BriskImageDynaLib4_i(),this._FieldInfoNeedsComponentSkin_ModifierValueComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoNeedsComponentSkin_InfoLayerHeaderComponent1_i() : InfoLayerHeaderComponent
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
      
      private function _FieldInfoNeedsComponentSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 2;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoNeedsComponentSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "sellsWithRentLabel";
         _loc1_.percentWidth = 100;
         _loc1_.id = "sellsWithRentLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sellsWithRentLabel = _loc1_;
         BindingManager.executeBindings(this,"sellsWithRentLabel",this.sellsWithRentLabel);
         return _loc1_;
      }
      
      private function _FieldInfoNeedsComponentSkin_SeparatorList1_i() : SeparatorList
      {
         var _loc1_:SeparatorList = new SeparatorList();
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 83;
         _loc1_.minHeight = 1;
         _loc1_.itemRenderer = this._FieldInfoNeedsComponentSkin_ClassFactory1_c();
         _loc1_.setStyle("skinClass",NeedsListSkin);
         _loc1_.id = "needsList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.needsList = _loc1_;
         BindingManager.executeBindings(this,"needsList",this.needsList);
         return _loc1_;
      }
      
      private function _FieldInfoNeedsComponentSkin_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = NeedsItemRenderer;
         return _loc1_;
      }
      
      private function _FieldInfoNeedsComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
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
      
      private function _FieldInfoNeedsComponentSkin_ModifierValueComponent1_i() : ModifierValueComponent
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
      
      public function ___FieldInfoNeedsComponentSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      private function _FieldInfoNeedsComponentSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return needsList.visible;
         },null,"sellsWithRentLabel.visible");
         result[1] = new Binding(this,function():Boolean
         {
            return needsList.includeInLayout;
         },null,"sellsWithRentLabel.includeInLayout");
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
      public function get needsList() : SeparatorList
      {
         return this._1093736667needsList;
      }
      
      public function set needsList(param1:SeparatorList) : void
      {
         var _loc2_:Object = this._1093736667needsList;
         if(_loc2_ !== param1)
         {
            this._1093736667needsList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needsList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sellsWithRentLabel() : LocaLabel
      {
         return this._1809672396sellsWithRentLabel;
      }
      
      public function set sellsWithRentLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1809672396sellsWithRentLabel;
         if(_loc2_ !== param1)
         {
            this._1809672396sellsWithRentLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellsWithRentLabel",_loc2_,param1));
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

