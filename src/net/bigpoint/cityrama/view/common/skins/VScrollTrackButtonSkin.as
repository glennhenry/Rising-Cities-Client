package net.bigpoint.cityrama.view.common.skins
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
   import net.bigpoint.cityrama.view.common.components.VScrollTrackButton;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class VScrollTrackButtonSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _282843249bottomImageContainer:BriskImageDynaLib;
      
      private var _1174468891centerImageContainer:BriskImageDynaLib;
      
      private var _863972891topImageContainer:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:VScrollTrackButton;
      
      public function VScrollTrackButtonSkin()
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
         bindings = this._VScrollTrackButtonSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_VScrollTrackButtonSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return VScrollTrackButtonSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._VScrollTrackButtonSkin_VGroup1_c()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
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
         VScrollTrackButtonSkin._watcherSetupUtil = param1;
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
      
      private function _VScrollTrackButtonSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._VScrollTrackButtonSkin_BriskImageDynaLib1_i(),this._VScrollTrackButtonSkin_BriskImageDynaLib2_i(),this._VScrollTrackButtonSkin_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _VScrollTrackButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "topImageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topImageContainer = _loc1_;
         BindingManager.executeBindings(this,"topImageContainer",this.topImageContainer);
         return _loc1_;
      }
      
      private function _VScrollTrackButtonSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.percentHeight = 100;
         _loc1_.id = "centerImageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.centerImageContainer = _loc1_;
         BindingManager.executeBindings(this,"centerImageContainer",this.centerImageContainer);
         return _loc1_;
      }
      
      private function _VScrollTrackButtonSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "bottomImageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomImageContainer = _loc1_;
         BindingManager.executeBindings(this,"bottomImageContainer",this.bottomImageContainer);
         return _loc1_;
      }
      
      private function _VScrollTrackButtonSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("dynaLibName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"topImageContainer.dynaLibName");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("topImage");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"topImageContainer.dynaBmpSourceName");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("dynaLibName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"centerImageContainer.dynaLibName");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("centerImage");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"centerImageContainer.dynaBmpSourceName");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("dynaLibName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"bottomImageContainer.dynaLibName");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("bottomImage");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"bottomImageContainer.dynaBmpSourceName");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomImageContainer() : BriskImageDynaLib
      {
         return this._282843249bottomImageContainer;
      }
      
      public function set bottomImageContainer(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._282843249bottomImageContainer;
         if(_loc2_ !== param1)
         {
            this._282843249bottomImageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomImageContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get centerImageContainer() : BriskImageDynaLib
      {
         return this._1174468891centerImageContainer;
      }
      
      public function set centerImageContainer(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1174468891centerImageContainer;
         if(_loc2_ !== param1)
         {
            this._1174468891centerImageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerImageContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topImageContainer() : BriskImageDynaLib
      {
         return this._863972891topImageContainer;
      }
      
      public function set topImageContainer(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._863972891topImageContainer;
         if(_loc2_ !== param1)
         {
            this._863972891topImageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topImageContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : VScrollTrackButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:VScrollTrackButton) : void
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

