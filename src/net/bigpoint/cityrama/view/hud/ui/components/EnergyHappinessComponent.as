package net.bigpoint.cityrama.view.hud.ui.components
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class EnergyHappinessComponent extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _EnergyHappinessComponent_BriskImageDynaLib10:BriskImageDynaLib;
      
      public var _EnergyHappinessComponent_BriskImageDynaLib11:BriskImageDynaLib;
      
      private var _922590101energyBar:HUDProgressBarComponent;
      
      private var _1376855404happinessBar:HUDProgressBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EnergyHappinessComponent()
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
         bindings = this._EnergyHappinessComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_hud_ui_components_EnergyHappinessComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EnergyHappinessComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.paddingLeft = 4;
         this.height = 44;
         this.mxmlContent = [this._EnergyHappinessComponent_Group1_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         EnergyHappinessComponent._watcherSetupUtil = param1;
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
      
      private function _EnergyHappinessComponent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EnergyHappinessComponent_VGroup2_c(),this._EnergyHappinessComponent_VGroup3_c(),this._EnergyHappinessComponent_BriskImageDynaLib10_i(),this._EnergyHappinessComponent_BriskImageDynaLib11_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.top = 0;
         _loc1_.percentHeight = 100;
         _loc1_.left = 0;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._EnergyHappinessComponent_HGroup1_c(),this._EnergyHappinessComponent_HGroup2_c(),this._EnergyHappinessComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.scaleY = -1;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._EnergyHappinessComponent_BriskImageDynaLib1_c(),this._EnergyHappinessComponent_BriskImageDynaLib2_c(),this._EnergyHappinessComponent_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downleft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_down";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downright";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._EnergyHappinessComponent_BriskImageDynaLib4_c(),this._EnergyHappinessComponent_BriskImageDynaLib5_c(),this._EnergyHappinessComponent_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_left";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_middle";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_right";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._EnergyHappinessComponent_BriskImageDynaLib7_c(),this._EnergyHappinessComponent_BriskImageDynaLib8_c(),this._EnergyHappinessComponent_BriskImageDynaLib9_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downleft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_down";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbarextend_downright";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.paddingTop = 4;
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 90;
         _loc1_.gap = 3;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._EnergyHappinessComponent_HUDProgressBarComponent1_i(),this._EnergyHappinessComponent_HUDProgressBarComponent2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_HUDProgressBarComponent1_i() : HUDProgressBarComponent
      {
         var _loc1_:HUDProgressBarComponent = new HUDProgressBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.dividerCount = 3;
         _loc1_.id = "energyBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyBar = _loc1_;
         BindingManager.executeBindings(this,"energyBar",this.energyBar);
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_HUDProgressBarComponent2_i() : HUDProgressBarComponent
      {
         var _loc1_:HUDProgressBarComponent = new HUDProgressBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.dividerCount = 3;
         _loc1_.id = "happinessBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.happinessBar = _loc1_;
         BindingManager.executeBindings(this,"happinessBar",this.happinessBar);
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "ui_mainbar_energy_icon";
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.top = -3;
         _loc1_.left = -5;
         _loc1_.id = "_EnergyHappinessComponent_BriskImageDynaLib10";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._EnergyHappinessComponent_BriskImageDynaLib10 = _loc1_;
         BindingManager.executeBindings(this,"_EnergyHappinessComponent_BriskImageDynaLib10",this._EnergyHappinessComponent_BriskImageDynaLib10);
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "ui_mainbar_mood_full_icon";
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.left = -5;
         _loc1_.bottom = -2;
         _loc1_.id = "_EnergyHappinessComponent_BriskImageDynaLib11";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._EnergyHappinessComponent_BriskImageDynaLib11 = _loc1_;
         BindingManager.executeBindings(this,"_EnergyHappinessComponent_BriskImageDynaLib11",this._EnergyHappinessComponent_BriskImageDynaLib11);
         return _loc1_;
      }
      
      private function _EnergyHappinessComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Array
         {
            var _loc1_:* = HUDProgressBarComponent.ENERGY_COLOURS;
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
         },null,"energyBar.gradientColours");
         result[1] = new Binding(this,function():Array
         {
            var _loc1_:* = HUDProgressBarComponent.HAPPINESS_COLOURS;
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
         },null,"happinessBar.gradientColours");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = energyBar.toolTip;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_EnergyHappinessComponent_BriskImageDynaLib10.toolTip");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = happinessBar.toolTip;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_EnergyHappinessComponent_BriskImageDynaLib11.toolTip");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get energyBar() : HUDProgressBarComponent
      {
         return this._922590101energyBar;
      }
      
      public function set energyBar(param1:HUDProgressBarComponent) : void
      {
         var _loc2_:Object = this._922590101energyBar;
         if(_loc2_ !== param1)
         {
            this._922590101energyBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get happinessBar() : HUDProgressBarComponent
      {
         return this._1376855404happinessBar;
      }
      
      public function set happinessBar(param1:HUDProgressBarComponent) : void
      {
         var _loc2_:Object = this._1376855404happinessBar;
         if(_loc2_ !== param1)
         {
            this._1376855404happinessBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"happinessBar",_loc2_,param1));
            }
         }
      }
   }
}

