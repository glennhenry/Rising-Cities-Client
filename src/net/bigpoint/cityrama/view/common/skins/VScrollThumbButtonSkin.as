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
   import mx.graphics.SolidColor;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.VScrollThumbButton;
   import spark.components.Group;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class VScrollThumbButtonSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _2122701368_VScrollThumbButtonSkin_SetProperty1:SetProperty;
      
      private var _467939451_VScrollThumbButtonSkin_SolidColor1:SolidColor;
      
      private var _1717541629thumpContainer:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:VScrollThumbButton;
      
      public function VScrollThumbButtonSkin()
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
         bindings = this._VScrollThumbButtonSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_VScrollThumbButtonSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return VScrollThumbButtonSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._VScrollThumbButtonSkin_Group1_c()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[this._VScrollThumbButtonSkin_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
               "isBaseValueDataBound":true,
               "target":"_VScrollThumbButtonSkin_SolidColor1",
               "name":"color",
               "value":undefined
            }))]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
         BindingManager.executeBindings(this,"_VScrollThumbButtonSkin_SetProperty1",this._VScrollThumbButtonSkin_SetProperty1);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         VScrollThumbButtonSkin._watcherSetupUtil = param1;
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
      
      private function _VScrollThumbButtonSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._VScrollThumbButtonSkin_Graphic1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _VScrollThumbButtonSkin_Graphic1_c() : Graphic
      {
         var _loc1_:Graphic = new Graphic();
         _loc1_.x = 0;
         _loc1_.y = 0;
         _loc1_.mxmlContent = [this._VScrollThumbButtonSkin_Rect1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _VScrollThumbButtonSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.height = 20;
         _loc1_.width = 6;
         _loc1_.radiusX = 4;
         _loc1_.radiusY = 4;
         _loc1_.fill = this._VScrollThumbButtonSkin_SolidColor1_i();
         _loc1_.initialized(this,"thumpContainer");
         this.thumpContainer = _loc1_;
         BindingManager.executeBindings(this,"thumpContainer",this.thumpContainer);
         return _loc1_;
      }
      
      private function _VScrollThumbButtonSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         this._VScrollThumbButtonSkin_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_VScrollThumbButtonSkin_SolidColor1",this._VScrollThumbButtonSkin_SolidColor1);
         return _loc1_;
      }
      
      private function _VScrollThumbButtonSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():*
         {
            return getStyle("overColor");
         },null,"_VScrollThumbButtonSkin_SetProperty1.value");
         result[1] = new Binding(this,function():uint
         {
            return getStyle("normalColor");
         },null,"_VScrollThumbButtonSkin_SolidColor1.color");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _VScrollThumbButtonSkin_SetProperty1() : SetProperty
      {
         return this._2122701368_VScrollThumbButtonSkin_SetProperty1;
      }
      
      public function set _VScrollThumbButtonSkin_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._2122701368_VScrollThumbButtonSkin_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._2122701368_VScrollThumbButtonSkin_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_VScrollThumbButtonSkin_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _VScrollThumbButtonSkin_SolidColor1() : SolidColor
      {
         return this._467939451_VScrollThumbButtonSkin_SolidColor1;
      }
      
      public function set _VScrollThumbButtonSkin_SolidColor1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._467939451_VScrollThumbButtonSkin_SolidColor1;
         if(_loc2_ !== param1)
         {
            this._467939451_VScrollThumbButtonSkin_SolidColor1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_VScrollThumbButtonSkin_SolidColor1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get thumpContainer() : Rect
      {
         return this._1717541629thumpContainer;
      }
      
      public function set thumpContainer(param1:Rect) : void
      {
         var _loc2_:Object = this._1717541629thumpContainer;
         if(_loc2_ !== param1)
         {
            this._1717541629thumpContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thumpContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : VScrollThumbButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:VScrollThumbButton) : void
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

