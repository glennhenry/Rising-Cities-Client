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
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class DynamicImageButtonSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1897129873_DynamicImageButtonSkin_SetProperty1:SetProperty;
      
      private var _1897129872_DynamicImageButtonSkin_SetProperty2:SetProperty;
      
      private var _1897129871_DynamicImageButtonSkin_SetProperty3:SetProperty;
      
      private var _1897129870_DynamicImageButtonSkin_SetProperty4:SetProperty;
      
      private var _117840734runtimeImageContainer:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DynamicImageButton;
      
      public function DynamicImageButtonSkin()
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
         bindings = this._DynamicImageButtonSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_DynamicImageButtonSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DynamicImageButtonSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._DynamicImageButtonSkin_BriskImageDynaLib1_i()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[this._DynamicImageButtonSkin_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
               "target":"runtimeImageContainer",
               "name":"dynaBmpSourceName",
               "value":undefined
            }))]
         }),new State({
            "name":"over",
            "overrides":[this._DynamicImageButtonSkin_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
               "target":"runtimeImageContainer",
               "name":"dynaBmpSourceName",
               "value":undefined
            }))]
         }),new State({
            "name":"down",
            "overrides":[this._DynamicImageButtonSkin_SetProperty3 = SetProperty(new SetProperty().initializeFromObject({
               "target":"runtimeImageContainer",
               "name":"dynaBmpSourceName",
               "value":undefined
            }))]
         }),new State({
            "name":"disabled",
            "overrides":[this._DynamicImageButtonSkin_SetProperty4 = SetProperty(new SetProperty().initializeFromObject({
               "target":"runtimeImageContainer",
               "name":"dynaBmpSourceName",
               "value":undefined
            }))]
         })];
         BindingManager.executeBindings(this,"_DynamicImageButtonSkin_SetProperty1",this._DynamicImageButtonSkin_SetProperty1);
         BindingManager.executeBindings(this,"_DynamicImageButtonSkin_SetProperty2",this._DynamicImageButtonSkin_SetProperty2);
         BindingManager.executeBindings(this,"_DynamicImageButtonSkin_SetProperty3",this._DynamicImageButtonSkin_SetProperty3);
         BindingManager.executeBindings(this,"_DynamicImageButtonSkin_SetProperty4",this._DynamicImageButtonSkin_SetProperty4);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         DynamicImageButtonSkin._watcherSetupUtil = param1;
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
      
      private function _DynamicImageButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "runtimeImageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.runtimeImageContainer = _loc1_;
         BindingManager.executeBindings(this,"runtimeImageContainer",this.runtimeImageContainer);
         return _loc1_;
      }
      
      private function _DynamicImageButtonSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("dynaLibName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"runtimeImageContainer.dynaLibName");
         result[1] = new Binding(this,function():*
         {
            return getStyle("upImage");
         },null,"_DynamicImageButtonSkin_SetProperty1.value");
         result[2] = new Binding(this,function():*
         {
            return getStyle("overImage");
         },null,"_DynamicImageButtonSkin_SetProperty2.value");
         result[3] = new Binding(this,function():*
         {
            return getStyle("downImage");
         },null,"_DynamicImageButtonSkin_SetProperty3.value");
         result[4] = new Binding(this,function():*
         {
            return getStyle("disabledImage");
         },null,"_DynamicImageButtonSkin_SetProperty4.value");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _DynamicImageButtonSkin_SetProperty1() : SetProperty
      {
         return this._1897129873_DynamicImageButtonSkin_SetProperty1;
      }
      
      public function set _DynamicImageButtonSkin_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1897129873_DynamicImageButtonSkin_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._1897129873_DynamicImageButtonSkin_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DynamicImageButtonSkin_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DynamicImageButtonSkin_SetProperty2() : SetProperty
      {
         return this._1897129872_DynamicImageButtonSkin_SetProperty2;
      }
      
      public function set _DynamicImageButtonSkin_SetProperty2(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1897129872_DynamicImageButtonSkin_SetProperty2;
         if(_loc2_ !== param1)
         {
            this._1897129872_DynamicImageButtonSkin_SetProperty2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DynamicImageButtonSkin_SetProperty2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DynamicImageButtonSkin_SetProperty3() : SetProperty
      {
         return this._1897129871_DynamicImageButtonSkin_SetProperty3;
      }
      
      public function set _DynamicImageButtonSkin_SetProperty3(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1897129871_DynamicImageButtonSkin_SetProperty3;
         if(_loc2_ !== param1)
         {
            this._1897129871_DynamicImageButtonSkin_SetProperty3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DynamicImageButtonSkin_SetProperty3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _DynamicImageButtonSkin_SetProperty4() : SetProperty
      {
         return this._1897129870_DynamicImageButtonSkin_SetProperty4;
      }
      
      public function set _DynamicImageButtonSkin_SetProperty4(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1897129870_DynamicImageButtonSkin_SetProperty4;
         if(_loc2_ !== param1)
         {
            this._1897129870_DynamicImageButtonSkin_SetProperty4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DynamicImageButtonSkin_SetProperty4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get runtimeImageContainer() : BriskImageDynaLib
      {
         return this._117840734runtimeImageContainer;
      }
      
      public function set runtimeImageContainer(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._117840734runtimeImageContainer;
         if(_loc2_ !== param1)
         {
            this._117840734runtimeImageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runtimeImageContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DynamicImageButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DynamicImageButton) : void
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

