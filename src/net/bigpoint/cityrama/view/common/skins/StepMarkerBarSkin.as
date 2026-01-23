package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
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
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class StepMarkerBarSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _940952062blendBar:HGroup;
      
      private var _2079454161markerHGroup:HGroup;
      
      private var _1131509414progressBar:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:StepMarkerBarComponent;
      
      public function StepMarkerBarSkin()
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
         bindings = this._StepMarkerBarSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_StepMarkerBarSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return StepMarkerBarSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._StepMarkerBarSkin_HGroup1_c(),this._StepMarkerBarSkin_HGroup2_c(),this._StepMarkerBarSkin_HGroup5_i()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___StepMarkerBarSkin_SparkSkin1_creationComplete);
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
         StepMarkerBarSkin._watcherSetupUtil = param1;
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
         var _loc1_:Number = this.hostComponent.getStyle("tint") as uint;
         TweenMax.to(this.blendBar,0,{"tint":_loc1_});
      }
      
      private function _StepMarkerBarSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._StepMarkerBarSkin_BriskImageDynaLib1_c(),this._StepMarkerBarSkin_BriskImageDynaLib2_c(),this._StepMarkerBarSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 3;
         _loc1_.paddingRight = 3;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._StepMarkerBarSkin_Group1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._StepMarkerBarSkin_HGroup3_c(),this._StepMarkerBarSkin_HGroup4_i()];
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._StepMarkerBarSkin_BriskImageDynaLib4_c(),this._StepMarkerBarSkin_BriskImageDynaLib5_c(),this._StepMarkerBarSkin_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._StepMarkerBarSkin_BriskImageDynaLib7_c(),this._StepMarkerBarSkin_BriskImageDynaLib8_c(),this._StepMarkerBarSkin_BriskImageDynaLib9_c()];
         _loc1_.id = "blendBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blendBar = _loc1_;
         BindingManager.executeBindings(this,"blendBar",this.blendBar);
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcelevel_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StepMarkerBarSkin_HGroup5_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalCenter = 0;
         _loc1_.id = "markerHGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.markerHGroup = _loc1_;
         BindingManager.executeBindings(this,"markerHGroup",this.markerHGroup);
         return _loc1_;
      }
      
      public function ___StepMarkerBarSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      private function _StepMarkerBarSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = BlendMode.OVERLAY;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"blendBar.blendMode");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get blendBar() : HGroup
      {
         return this._940952062blendBar;
      }
      
      public function set blendBar(param1:HGroup) : void
      {
         var _loc2_:Object = this._940952062blendBar;
         if(_loc2_ !== param1)
         {
            this._940952062blendBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get markerHGroup() : HGroup
      {
         return this._2079454161markerHGroup;
      }
      
      public function set markerHGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._2079454161markerHGroup;
         if(_loc2_ !== param1)
         {
            this._2079454161markerHGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"markerHGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : Group
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:Group) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : StepMarkerBarComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:StepMarkerBarComponent) : void
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

