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
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class PaperPopupBlueSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1906413305backButton:DynamicImageButton;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _644749632iconNormal:BriskImageDynaLib;
      
      private var _1731308137iconOverlay:BriskImageDynaLib;
      
      private var _104976386moveArea:Group;
      
      private var _1952801373overlayBar:HGroup;
      
      private var _216916822sideMenu:Group;
      
      private var _1893287094titleDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:PaperPopupWindow;
      
      public function PaperPopupBlueSkin()
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
         bindings = this._PaperPopupBlueSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_PaperPopupBlueSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PaperPopupBlueSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 785;
         this.height = 430;
         this.mxmlContent = [this._PaperPopupBlueSkin_Group1_i(),this._PaperPopupBlueSkin_Group2_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___PaperPopupBlueSkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"inactive",
            "overrides":[]
         }),new State({
            "name":"disabledWithControlBar",
            "overrides":[]
         }),new State({
            "name":"normalWithControlBar",
            "overrides":[]
         }),new State({
            "name":"inactiveWithControlBar",
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
         PaperPopupBlueSkin._watcherSetupUtil = param1;
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
      
      private function init() : void
      {
         var _loc1_:uint = 0;
         TweenMax.to(this.overlayBar,0.01,{"tint":311002});
         TweenMax.to(this.iconOverlay,0.01,{"tint":6340310});
         TweenMax.to(this.titleDisplay,0.01,{"glowFilter":{
            "color":6340310,
            "alpha":1,
            "blurX":2,
            "blurY":2,
            "strength":10,
            "quality":3
         }});
         if(getStyle("glowColor"))
         {
            _loc1_ = uint(getStyle("glowColor"));
            TweenMax.to(this,1,{"glowFilter":{
               "color":_loc1_,
               "alpha":1,
               "blurX":29,
               "blurY":29,
               "strength":1.8
            }});
         }
         invalidateDisplayList();
      }
      
      private function _PaperPopupBlueSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 765;
         _loc1_.width = 80;
         _loc1_.top = 20;
         _loc1_.bottom = 18;
         _loc1_.id = "sideMenu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sideMenu = _loc1_;
         BindingManager.executeBindings(this,"sideMenu",this.sideMenu);
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._PaperPopupBlueSkin_Group3_c(),this._PaperPopupBlueSkin_Group5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 785;
         _loc1_.height = 427;
         _loc1_.bottom = 0;
         _loc1_.mxmlContent = [this._PaperPopupBlueSkin_BriskImageDynaLib1_c(),this._PaperPopupBlueSkin_Group4_i(),this._PaperPopupBlueSkin_DynamicImageButton1_i(),this._PaperPopupBlueSkin_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_bg";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 25;
         _loc1_.right = 25;
         _loc1_.top = 20;
         _loc1_.bottom = 18;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "back";
         _loc1_.top = 15;
         _loc1_.left = 20;
         _loc1_.visible = false;
         _loc1_.id = "backButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.backButton = _loc1_;
         BindingManager.executeBindings(this,"backButton",this.backButton);
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "close";
         _loc1_.top = 15;
         _loc1_.right = 20;
         _loc1_.id = "closeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.closeButton = _loc1_;
         BindingManager.executeBindings(this,"closeButton",this.closeButton);
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._PaperPopupBlueSkin_HGroup1_c(),this._PaperPopupBlueSkin_HGroup2_i(),this._PaperPopupBlueSkin_HGroup3_c()];
         _loc1_.id = "moveArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moveArea = _loc1_;
         BindingManager.executeBindings(this,"moveArea",this.moveArea);
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._PaperPopupBlueSkin_BriskImageDynaLib2_c(),this._PaperPopupBlueSkin_BriskImageDynaLib3_c(),this._PaperPopupBlueSkin_BriskImageDynaLib4_c(),this._PaperPopupBlueSkin_BriskImageDynaLib5_c(),this._PaperPopupBlueSkin_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_clip_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_clip_tile";
         _loc1_.percentWidth = 100;
         _loc1_.minWidth = 150;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_clip_middle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_clip_tile";
         _loc1_.percentWidth = 100;
         _loc1_.minWidth = 150;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_clip_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.horizontalAlign = "center";
         _loc1_.blendMode = "overlay";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._PaperPopupBlueSkin_BriskImageDynaLib7_c(),this._PaperPopupBlueSkin_BriskImageDynaLib8_c(),this._PaperPopupBlueSkin_BriskImageDynaLib9_c(),this._PaperPopupBlueSkin_BriskImageDynaLib10_c(),this._PaperPopupBlueSkin_BriskImageDynaLib11_c()];
         _loc1_.id = "overlayBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.overlayBar = _loc1_;
         BindingManager.executeBindings(this,"overlayBar",this.overlayBar);
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_clip_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_clip_tile";
         _loc1_.percentWidth = 100;
         _loc1_.minWidth = 150;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_clip_middle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_clip_tile";
         _loc1_.percentWidth = 100;
         _loc1_.minWidth = 150;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_clip_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingBottom = 6;
         _loc1_.paddingLeft = 30;
         _loc1_.paddingRight = 30;
         _loc1_.verticalAlign = "bottom";
         _loc1_.mxmlContent = [this._PaperPopupBlueSkin_Group6_c(),this._PaperPopupBlueSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._PaperPopupBlueSkin_BriskImageDynaLib12_i(),this._PaperPopupBlueSkin_BriskImageDynaLib13_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.id = "iconNormal";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconNormal = _loc1_;
         BindingManager.executeBindings(this,"iconNormal",this.iconNormal);
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_BriskImageDynaLib13_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.blendMode = "overlay";
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.id = "iconOverlay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconOverlay = _loc1_;
         BindingManager.executeBindings(this,"iconOverlay",this.iconOverlay);
         return _loc1_;
      }
      
      private function _PaperPopupBlueSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "";
         _loc1_.minWidth = 150;
         _loc1_.styleName = "paperTitle";
         _loc1_.setStyle("verticalAlign","bottom");
         _loc1_.setStyle("paddingBottom",4);
         _loc1_.id = "titleDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleDisplay = _loc1_;
         BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
         return _loc1_;
      }
      
      public function ___PaperPopupBlueSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.init();
      }
      
      private function _PaperPopupBlueSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("dynaLibName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"iconNormal.dynaLibName");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("icon");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"iconNormal.dynaBmpSourceName");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("dynaLibName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"iconOverlay.dynaLibName");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("icon");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"iconOverlay.dynaBmpSourceName");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get backButton() : DynamicImageButton
      {
         return this._1906413305backButton;
      }
      
      public function set backButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1906413305backButton;
         if(_loc2_ !== param1)
         {
            this._1906413305backButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._312699062closeButton;
         if(_loc2_ !== param1)
         {
            this._312699062closeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconNormal() : BriskImageDynaLib
      {
         return this._644749632iconNormal;
      }
      
      public function set iconNormal(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._644749632iconNormal;
         if(_loc2_ !== param1)
         {
            this._644749632iconNormal = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconNormal",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconOverlay() : BriskImageDynaLib
      {
         return this._1731308137iconOverlay;
      }
      
      public function set iconOverlay(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1731308137iconOverlay;
         if(_loc2_ !== param1)
         {
            this._1731308137iconOverlay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconOverlay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveArea() : Group
      {
         return this._104976386moveArea;
      }
      
      public function set moveArea(param1:Group) : void
      {
         var _loc2_:Object = this._104976386moveArea;
         if(_loc2_ !== param1)
         {
            this._104976386moveArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveArea",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get overlayBar() : HGroup
      {
         return this._1952801373overlayBar;
      }
      
      public function set overlayBar(param1:HGroup) : void
      {
         var _loc2_:Object = this._1952801373overlayBar;
         if(_loc2_ !== param1)
         {
            this._1952801373overlayBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"overlayBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sideMenu() : Group
      {
         return this._216916822sideMenu;
      }
      
      public function set sideMenu(param1:Group) : void
      {
         var _loc2_:Object = this._216916822sideMenu;
         if(_loc2_ !== param1)
         {
            this._216916822sideMenu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideMenu",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleDisplay() : LocaLabel
      {
         return this._1893287094titleDisplay;
      }
      
      public function set titleDisplay(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1893287094titleDisplay;
         if(_loc2_ !== param1)
         {
            this._1893287094titleDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PaperPopupWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PaperPopupWindow) : void
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

