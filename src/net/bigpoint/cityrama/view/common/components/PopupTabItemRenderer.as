package net.bigpoint.cityrama.view.common.components
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
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.friends.vo.TabsVo;
   import net.bigpoint.cityrama.view.common.components.interfaces.IInactiveItemrendererVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   import spark.filters.GlowFilter;
   
   use namespace mx_internal;
   
   public class PopupTabItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _PopupTabItemRenderer_GlowFilter1:GlowFilter;
      
      private var _2096551116_PopupTabItemRenderer_Group2:Group;
      
      private var _1678082975badgeImageLeft:BriskImageDynaLib;
      
      private var _486625668badgeImageRight:BriskImageDynaLib;
      
      private var _30353322blendBG:BriskImageDynaLib;
      
      private var _751105858blendIndicator:BriskImageDynaLib;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:TabsVo;
      
      private var _dataIsDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PopupTabItemRenderer()
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
         bindings = this._PopupTabItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_PopupTabItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PopupTabItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.autoDrawBackground = false;
         this.mxmlContent = [this._PopupTabItemRenderer_VGroup1_c(),this._PopupTabItemRenderer_HGroup1_c(),this._PopupTabItemRenderer_BriskImageDynaLib7_i(),this._PopupTabItemRenderer_BriskImageDynaLib8_i()];
         this.currentState = "normal";
         this.addEventListener("click",this.___PopupTabItemRenderer_ItemRenderer1_click);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"selected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_PopupTabItemRenderer_Group2",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_PopupTabItemRenderer_Group2",
               "name":"visible",
               "value":true
            })]
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
         PopupTabItemRenderer._watcherSetupUtil = param1;
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
      
      override public function set data(param1:Object) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._dataIsDirty = true;
            this._data = param1 as TabsVo;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         if(this._dataIsDirty)
         {
            toolTip = this._data.tooltip;
            labelDisplay.text = this._data.tabLabel;
            styleName = this._data.styleName;
            if(this._data is IInactiveItemrendererVo)
            {
               if((this._data as IInactiveItemrendererVo).isLocked)
               {
                  styleName = "disabled";
               }
            }
            this.showBadge = this._data.hasNews;
            if(this._data.icon)
            {
               this.badgeImageLeft.dynaBmpSourceName = this._data.icon;
               this.showUpsellBadge = true;
            }
            else
            {
               this.showUpsellBadge = false;
            }
            this._dataIsDirty = false;
         }
         super.commitProperties();
         TweenMax.to(this.blendBG,0,{"tint":getStyle("blendColor")});
         TweenMax.to(this.blendIndicator,0,{"tint":getStyle("blendColor")});
         TweenMax.to(this.icon,0,{"colorMatrixFilter":{"saturation":getStyle("iconSaturation")}});
      }
      
      override public function styleChanged(param1:String) : void
      {
         super.styleChanged(param1);
         TweenMax.to(this.blendBG,0,{"tint":getStyle("blendColor")});
         TweenMax.to(this.blendIndicator,0,{"tint":getStyle("blendColor")});
         TweenMax.to(this.icon,0,{"colorMatrixFilter":{"saturation":getStyle("iconSaturation")}});
      }
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         super.stateChanged(param1,param2,param3);
         TweenMax.to(this.blendBG,0,{"tint":getStyle("blendColor")});
         TweenMax.to(this.blendIndicator,0,{"tint":getStyle("blendColor")});
         TweenMax.to(this.icon,0,{"colorMatrixFilter":{"saturation":getStyle("iconSaturation")}});
      }
      
      override protected function getCurrentRendererState() : String
      {
         if(!enabled || this._data is IInactiveItemrendererVo && (this._data as IInactiveItemrendererVo).isLocked)
         {
            return "disabled";
         }
         return super.getCurrentRendererState();
      }
      
      public function set showBadge(param1:Boolean) : void
      {
         this.badgeImageRight.includeInLayout = this.badgeImageRight.visible = param1;
      }
      
      public function get showBadge() : Boolean
      {
         return this.badgeImageRight.includeInLayout;
      }
      
      public function set showUpsellBadge(param1:Boolean) : void
      {
         this.badgeImageLeft.includeInLayout = this.badgeImageLeft.visible = param1;
      }
      
      public function get showUpsellBadge() : Boolean
      {
         return this.badgeImageLeft.includeInLayout;
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         if(this._data is IInactiveItemrendererVo)
         {
            if((this._data as IInactiveItemrendererVo).isLocked)
            {
               param1.stopImmediatePropagation();
               param1.stopPropagation();
            }
         }
      }
      
      private function _PopupTabItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "top";
         _loc1_.mxmlContent = [this._PopupTabItemRenderer_Group1_c(),this._PopupTabItemRenderer_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._PopupTabItemRenderer_BriskImageDynaLib1_c(),this._PopupTabItemRenderer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "tab_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.blendMode = "overlay";
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "tab_top";
         _loc1_.id = "blendBG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blendBG = _loc1_;
         BindingManager.executeBindings(this,"blendBG",this.blendBG);
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._PopupTabItemRenderer_BriskImageDynaLib3_c(),this._PopupTabItemRenderer_Group3_c()];
         _loc1_.id = "_PopupTabItemRenderer_Group2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PopupTabItemRenderer_Group2 = _loc1_;
         BindingManager.executeBindings(this,"_PopupTabItemRenderer_Group2",this._PopupTabItemRenderer_Group2);
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 0;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "tab_bottom";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.mxmlContent = [this._PopupTabItemRenderer_BriskImageDynaLib4_c(),this._PopupTabItemRenderer_BriskImageDynaLib5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "tab_indicator";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.blendMode = "overlay";
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "tab_indicator";
         _loc1_.id = "blendIndicator";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blendIndicator = _loc1_;
         BindingManager.executeBindings(this,"blendIndicator",this.blendIndicator);
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 174;
         _loc1_.maxWidth = 174;
         _loc1_.paddingLeft = 4;
         _loc1_.paddingRight = 4;
         _loc1_.height = 33;
         _loc1_.paddingTop = 5;
         _loc1_.paddingBottom = 2;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.filters = [this._PopupTabItemRenderer_GlowFilter1_i()];
         _loc1_.mxmlContent = [this._PopupTabItemRenderer_BriskImageDynaLib6_i(),this._PopupTabItemRenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_GlowFilter1_i() : GlowFilter
      {
         var _loc1_:GlowFilter = new GlowFilter();
         _loc1_.blurX = 5;
         _loc1_.blurY = 5;
         _loc1_.strength = 7;
         this._PopupTabItemRenderer_GlowFilter1 = _loc1_;
         BindingManager.executeBindings(this,"_PopupTabItemRenderer_GlowFilter1",this._PopupTabItemRenderer_GlowFilter1);
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "tabLabel";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.percentWidth = 95;
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",labelDisplay);
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = -5;
         _loc1_.right = -5;
         _loc1_.dynaBmpSourceName = "symbol_new_small";
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "badgeImageRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.badgeImageRight = _loc1_;
         BindingManager.executeBindings(this,"badgeImageRight",this.badgeImageRight);
         return _loc1_;
      }
      
      private function _PopupTabItemRenderer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = -5;
         _loc1_.left = -5;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "badgeImageLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.badgeImageLeft = _loc1_;
         BindingManager.executeBindings(this,"badgeImageLeft",this.badgeImageLeft);
         return _loc1_;
      }
      
      public function ___PopupTabItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.clickHandler(param1);
      }
      
      private function _PopupTabItemRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return getStyle("glowHighlight");
         },null,"_PopupTabItemRenderer_GlowFilter1.color");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("iconLibName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"icon.dynaLibName");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("iconImageName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"icon.dynaBmpSourceName");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _PopupTabItemRenderer_Group2() : Group
      {
         return this._2096551116_PopupTabItemRenderer_Group2;
      }
      
      public function set _PopupTabItemRenderer_Group2(param1:Group) : void
      {
         var _loc2_:Object = this._2096551116_PopupTabItemRenderer_Group2;
         if(_loc2_ !== param1)
         {
            this._2096551116_PopupTabItemRenderer_Group2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PopupTabItemRenderer_Group2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImageLeft() : BriskImageDynaLib
      {
         return this._1678082975badgeImageLeft;
      }
      
      public function set badgeImageLeft(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1678082975badgeImageLeft;
         if(_loc2_ !== param1)
         {
            this._1678082975badgeImageLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImageLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImageRight() : BriskImageDynaLib
      {
         return this._486625668badgeImageRight;
      }
      
      public function set badgeImageRight(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._486625668badgeImageRight;
         if(_loc2_ !== param1)
         {
            this._486625668badgeImageRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImageRight",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blendBG() : BriskImageDynaLib
      {
         return this._30353322blendBG;
      }
      
      public function set blendBG(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._30353322blendBG;
         if(_loc2_ !== param1)
         {
            this._30353322blendBG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendBG",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blendIndicator() : BriskImageDynaLib
      {
         return this._751105858blendIndicator;
      }
      
      public function set blendIndicator(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._751105858blendIndicator;
         if(_loc2_ !== param1)
         {
            this._751105858blendIndicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendIndicator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3226745icon;
         if(_loc2_ !== param1)
         {
            this._3226745icon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
            }
         }
      }
   }
}

