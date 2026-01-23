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
   import mx.events.PropertyChangeEvent;
   import mx.events.StateChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class DynamicPlusButtonSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1418157577iconAsset:BriskImageDynaLib;
      
      private var _263713807overlayGroup:HGroup;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var _2011710186sparkle:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DynamicPlusButton;
      
      public function DynamicPlusButtonSkin()
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
         bindings = this._DynamicPlusButtonSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_DynamicPlusButtonSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DynamicPlusButtonSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 40;
         this.height = 40;
         this.cacheAsBitmap = true;
         this.mxmlContent = [this._DynamicPlusButtonSkin_HGroup1_c(),this._DynamicPlusButtonSkin_HGroup2_i(),this._DynamicPlusButtonSkin_HGroup3_c(),this._DynamicPlusButtonSkin_BriskImageDynaLib8_i(),this._DynamicPlusButtonSkin_BriskImageDynaLib9_i()];
         this.currentState = "up";
         this.addEventListener("currentStateChange",this.___DynamicPlusButtonSkin_SparkSkin1_currentStateChange);
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"plusIcon",
               "name":"dynaBmpSourceName",
               "value":"ui_mainbar_icon_add_mouseover"
            })]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"inactive",
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
         DynamicPlusButtonSkin._watcherSetupUtil = param1;
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
      
      private function handleCurrentStateChange() : void
      {
         TweenMax.to(this.iconAsset,0,{"colorMatrixFilter":{"saturation":1}});
         switch(currentState)
         {
            case "up":
               TweenMax.to(this.overlayGroup,0,{"tint":16751616});
               break;
            case "over":
               TweenMax.to(this.overlayGroup,0,{"tint":178896});
               break;
            case "down":
               TweenMax.to(this.overlayGroup,0,{"tint":16751616});
               break;
            case "disabled":
            case "inactive":
               TweenMax.to(this.overlayGroup,0,{"tint":12038312});
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         if(Boolean(this.hostComponent) && this.hostComponent.inactive)
         {
            param1 = "inactive";
         }
         super.setCurrentState(param1,param2);
      }
      
      private function _DynamicPlusButtonSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._DynamicPlusButtonSkin_BriskImageDynaLib1_c(),this._DynamicPlusButtonSkin_BriskImageDynaLib2_c(),this._DynamicPlusButtonSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "button_40px_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.percentWidth = 100;
         _loc1_.dynaBmpSourceName = "button_40px_middle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "button_40px_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.blendMode = "overlay";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._DynamicPlusButtonSkin_BriskImageDynaLib4_c(),this._DynamicPlusButtonSkin_BriskImageDynaLib5_c(),this._DynamicPlusButtonSkin_BriskImageDynaLib6_c()];
         _loc1_.id = "overlayGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.overlayGroup = _loc1_;
         BindingManager.executeBindings(this,"overlayGroup",this.overlayGroup);
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "button_40px_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.percentWidth = 100;
         _loc1_.dynaBmpSourceName = "button_40px_middle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "button_40px_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._DynamicPlusButtonSkin_BriskImageDynaLib7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "iconAsset";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconAsset = _loc1_;
         BindingManager.executeBindings(this,"iconAsset",this.iconAsset);
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.verticalCenter = 10;
         _loc1_.horizontalCenter = 10;
         _loc1_.id = "plusIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusIcon = _loc1_;
         BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
         return _loc1_;
      }
      
      private function _DynamicPlusButtonSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "sparkle";
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.visible = false;
         _loc1_.top = -7;
         _loc1_.left = -5;
         _loc1_.includeInLayout = false;
         _loc1_.id = "sparkle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sparkle = _loc1_;
         BindingManager.executeBindings(this,"sparkle",this.sparkle);
         return _loc1_;
      }
      
      public function ___DynamicPlusButtonSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         this.handleCurrentStateChange();
      }
      
      private function _DynamicPlusButtonSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.iconLibName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"iconAsset.dynaLibName");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.iconImageName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"iconAsset.dynaBmpSourceName");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconAsset() : BriskImageDynaLib
      {
         return this._1418157577iconAsset;
      }
      
      public function set iconAsset(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1418157577iconAsset;
         if(_loc2_ !== param1)
         {
            this._1418157577iconAsset = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconAsset",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get overlayGroup() : HGroup
      {
         return this._263713807overlayGroup;
      }
      
      public function set overlayGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._263713807overlayGroup;
         if(_loc2_ !== param1)
         {
            this._263713807overlayGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1849499341plusIcon;
         if(_loc2_ !== param1)
         {
            this._1849499341plusIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sparkle() : BriskImageDynaLib
      {
         return this._2011710186sparkle;
      }
      
      public function set sparkle(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2011710186sparkle;
         if(_loc2_ !== param1)
         {
            this._2011710186sparkle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DynamicPlusButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DynamicPlusButton) : void
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

