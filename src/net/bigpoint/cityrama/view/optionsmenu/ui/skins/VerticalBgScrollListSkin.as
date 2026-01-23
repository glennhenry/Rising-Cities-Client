package net.bigpoint.cityrama.view.optionsmenu.ui.skins
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
   import mx.graphics.SolidColor;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.NonScrollingDataGroup;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VScrollBar;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class VerticalBgScrollListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:NonScrollingDataGroup;
      
      private var _1102509693listBg:Rect;
      
      private var _273241018mainGroup:Group;
      
      private var _792138043offLabel:LocaLabel;
      
      private var _1343925163onLabel:LocaLabel;
      
      private var _1618627376verticalScrollBar:VScrollBar;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function VerticalBgScrollListSkin()
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
         bindings = this._VerticalBgScrollListSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_optionsmenu_ui_skins_VerticalBgScrollListSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return VerticalBgScrollListSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._VerticalBgScrollListSkin_HGroup1_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___VerticalBgScrollListSkin_SparkSkin1_creationComplete);
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
         VerticalBgScrollListSkin._watcherSetupUtil = param1;
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
         this.onLabel.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.on");
         this.offLabel.text = LocaUtils.getString("rcl.optionslayer.paperPopup","rcl.optionslayer.paperPopup.off");
      }
      
      private function _VerticalBgScrollListSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._VerticalBgScrollListSkin_Group1_i(),this._VerticalBgScrollListSkin_VScrollBar1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._VerticalBgScrollListSkin_Rect1_i(),this._VerticalBgScrollListSkin_HGroup2_c(),this._VerticalBgScrollListSkin_NonScrollingDataGroup1_i()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.radiusX = 5;
         _loc1_.radiusY = 5;
         _loc1_.width = 333;
         _loc1_.fill = this._VerticalBgScrollListSkin_SolidColor1_c();
         _loc1_.initialized(this,"listBg");
         this.listBg = _loc1_;
         BindingManager.executeBindings(this,"listBg",this.listBg);
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16777215;
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 80;
         _loc1_.gap = 6;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.top = 30;
         _loc1_.left = 43;
         _loc1_.mxmlContent = [this._VerticalBgScrollListSkin_LocaLabel1_i(),this._VerticalBgScrollListSkin_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "optionsLabel";
         _loc1_.percentWidth = 50;
         _loc1_.id = "onLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.onLabel = _loc1_;
         BindingManager.executeBindings(this,"onLabel",this.onLabel);
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "optionsLabel";
         _loc1_.percentWidth = 50;
         _loc1_.id = "offLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.offLabel = _loc1_;
         BindingManager.executeBindings(this,"offLabel",this.offLabel);
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_NonScrollingDataGroup1_i() : NonScrollingDataGroup
      {
         var _loc1_:NonScrollingDataGroup = new NonScrollingDataGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.layout = this._VerticalBgScrollListSkin_VerticalLayout1_c();
         _loc1_.id = "dataGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dataGroup = _loc1_;
         BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.gap = 1;
         _loc1_.paddingTop = 50;
         _loc1_.paddingLeft = 40;
         _loc1_.useVirtualLayout = false;
         return _loc1_;
      }
      
      private function _VerticalBgScrollListSkin_VScrollBar1_i() : VScrollBar
      {
         var _loc1_:VScrollBar = new VScrollBar();
         _loc1_.percentHeight = 100;
         _loc1_.styleName = "slimVScrollBar";
         _loc1_.id = "verticalScrollBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.verticalScrollBar = _loc1_;
         BindingManager.executeBindings(this,"verticalScrollBar",this.verticalScrollBar);
         return _loc1_;
      }
      
      public function ___VerticalBgScrollListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      private function _VerticalBgScrollListSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return dataGroup.contentHeight;
         },null,"listBg.height");
         result[1] = new Binding(this,null,null,"verticalScrollBar.viewport","mainGroup");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : NonScrollingDataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:NonScrollingDataGroup) : void
      {
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc2_ !== param1)
         {
            this._385593099dataGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get listBg() : Rect
      {
         return this._1102509693listBg;
      }
      
      public function set listBg(param1:Rect) : void
      {
         var _loc2_:Object = this._1102509693listBg;
         if(_loc2_ !== param1)
         {
            this._1102509693listBg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listBg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : Group
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:Group) : void
      {
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc2_ !== param1)
         {
            this._273241018mainGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get offLabel() : LocaLabel
      {
         return this._792138043offLabel;
      }
      
      public function set offLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._792138043offLabel;
         if(_loc2_ !== param1)
         {
            this._792138043offLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"offLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get onLabel() : LocaLabel
      {
         return this._1343925163onLabel;
      }
      
      public function set onLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1343925163onLabel;
         if(_loc2_ !== param1)
         {
            this._1343925163onLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"onLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get verticalScrollBar() : VScrollBar
      {
         return this._1618627376verticalScrollBar;
      }
      
      public function set verticalScrollBar(param1:VScrollBar) : void
      {
         var _loc2_:Object = this._1618627376verticalScrollBar;
         if(_loc2_ !== param1)
         {
            this._1618627376verticalScrollBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"verticalScrollBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : List
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:List) : void
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

