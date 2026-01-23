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
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.components.DataGrid;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.core.NavigationUnit;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.layouts.TileLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class GridSkinFriendBook4 extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _721040133motionPath:SimpleMotionPath;
      
      private var _599151817scrollAnimation:Animate;
      
      private var _75450170scrollLeftButton:DynamicImageButton;
      
      private var _1993162593scrollRightButton:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DataGrid;
      
      public function GridSkinFriendBook4()
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
         bindings = this._GridSkinFriendBook4_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_GridSkinFriendBook4WatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GridSkinFriendBook4[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.minWidth = 110;
         this.maxWidth = 132;
         this.blendMode = "normal";
         this.mxmlContent = [this._GridSkinFriendBook4_HGroup1_c()];
         this.currentState = "normal";
         this._GridSkinFriendBook4_Animate1_i();
         this.addEventListener("creationComplete",this.___GridSkinFriendBook4_SparkSkin1_creationComplete);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
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
         GridSkinFriendBook4._watcherSetupUtil = param1;
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
      
      public function scrollToPosition(param1:uint) : void
      {
         var _loc2_:Number = Number(this.dataGroup.layout.getHorizontalScrollPositionDelta(param1));
         if(_loc2_ != 0 && !this.scrollAnimation.isPlaying)
         {
            this.motionPath.valueBy = _loc2_;
            this.scrollAnimation.play();
         }
      }
      
      private function scrollAnimation_effectStart() : void
      {
         this.dataGroup.mouseChildren = false;
      }
      
      private function scrollAnimation_effectEnd() : void
      {
         this.dataGroup.mouseChildren = true;
         this.checkScroll();
      }
      
      private function creationComplete() : void
      {
         this.scrollAnimation.target = this.dataGroup.layout;
         this.scrollToPosition(NavigationUnit.HOME);
         this.checkScroll();
      }
      
      private function checkScroll(param1:FlexEvent = null) : void
      {
         var _loc5_:Rectangle = null;
         var _loc6_:Rectangle = null;
         var _loc2_:Vector.<int> = this.dataGroup.getItemIndicesInView();
         var _loc3_:Object = this.dataGroup.getElementAt(0);
         var _loc4_:Object = this.dataGroup.getElementAt(this.dataGroup.numElements - 1);
         if(this.dataGroup.numElements > 10)
         {
            if(_loc3_)
            {
               _loc5_ = this.dataGroup.scrollRect;
               _loc6_ = _loc3_.getBounds(this.dataGroup);
               this.scrollLeftButton.visible = !this.dataGroup.scrollRect.containsRect(_loc3_.getBounds(this.dataGroup));
            }
            if(_loc4_)
            {
               this.scrollRightButton.visible = !this.dataGroup.scrollRect.containsRect(_loc4_.getBounds(this.dataGroup));
            }
            else
            {
               this.scrollRightButton.visible = true;
            }
         }
         else
         {
            var _temp_1:* = this.scrollLeftButton;
            this.scrollRightButton.visible = false;
            _temp_1.visible = false;
         }
      }
      
      private function _GridSkinFriendBook4_Animate1_i() : Animate
      {
         var _loc1_:Animate = new Animate();
         _loc1_.duration = 500;
         _loc1_.motionPaths = new <MotionPath>[this._GridSkinFriendBook4_SimpleMotionPath1_i()];
         _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
         _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
         this.scrollAnimation = _loc1_;
         BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
         return _loc1_;
      }
      
      private function _GridSkinFriendBook4_SimpleMotionPath1_i() : SimpleMotionPath
      {
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         _loc1_.property = "horizontalScrollPosition";
         this.motionPath = _loc1_;
         BindingManager.executeBindings(this,"motionPath",this.motionPath);
         return _loc1_;
      }
      
      public function __scrollAnimation_effectStart(param1:EffectEvent) : void
      {
         this.scrollAnimation_effectStart();
      }
      
      public function __scrollAnimation_effectEnd(param1:EffectEvent) : void
      {
         this.scrollAnimation_effectEnd();
      }
      
      private function _GridSkinFriendBook4_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = -2;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._GridSkinFriendBook4_VGroup1_c(),this._GridSkinFriendBook4_DataGroup1_i(),this._GridSkinFriendBook4_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridSkinFriendBook4_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "right";
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.width = 41;
         _loc1_.left = -5;
         _loc1_.mxmlContent = [this._GridSkinFriendBook4_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridSkinFriendBook4_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listLeft";
         _loc1_.addEventListener("click",this.__scrollLeftButton_click);
         _loc1_.id = "scrollLeftButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollLeftButton = _loc1_;
         BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
         return _loc1_;
      }
      
      public function __scrollLeftButton_click(param1:MouseEvent) : void
      {
         this.scrollToPosition(NavigationUnit.PAGE_LEFT);
      }
      
      private function _GridSkinFriendBook4_DataGroup1_i() : DataGroup
      {
         var _loc1_:DataGroup = new DataGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.focusEnabled = false;
         _loc1_.layout = this._GridSkinFriendBook4_TileLayout1_c();
         _loc1_.addEventListener("updateComplete",this.__dataGroup_updateComplete);
         _loc1_.id = "dataGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dataGroup = _loc1_;
         BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
         return _loc1_;
      }
      
      private function _GridSkinFriendBook4_TileLayout1_c() : TileLayout
      {
         var _loc1_:TileLayout = new TileLayout();
         _loc1_.useVirtualLayout = false;
         _loc1_.verticalGap = 8;
         _loc1_.horizontalGap = 0;
         _loc1_.requestedRowCount = 2;
         _loc1_.requestedColumnCount = 4;
         _loc1_.columnWidth = 132;
         _loc1_.orientation = "columns";
         _loc1_.rowHeight = 160;
         _loc1_.clipAndEnableScrolling = true;
         return _loc1_;
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         this.checkScroll();
      }
      
      private function _GridSkinFriendBook4_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 41;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._GridSkinFriendBook4_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridSkinFriendBook4_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listRight";
         _loc1_.addEventListener("click",this.__scrollRightButton_click);
         _loc1_.id = "scrollRightButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollRightButton = _loc1_;
         BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
         return _loc1_;
      }
      
      public function __scrollRightButton_click(param1:MouseEvent) : void
      {
         this.scrollToPosition(NavigationUnit.PAGE_RIGHT);
      }
      
      public function ___GridSkinFriendBook4_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.creationComplete();
      }
      
      private function _GridSkinFriendBook4_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("tooltipScrollLeft");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"scrollLeftButton.toolTip");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("tooltipScrollRight");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"scrollRightButton.toolTip");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
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
      public function get motionPath() : SimpleMotionPath
      {
         return this._721040133motionPath;
      }
      
      public function set motionPath(param1:SimpleMotionPath) : void
      {
         var _loc2_:Object = this._721040133motionPath;
         if(_loc2_ !== param1)
         {
            this._721040133motionPath = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"motionPath",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollAnimation() : Animate
      {
         return this._599151817scrollAnimation;
      }
      
      public function set scrollAnimation(param1:Animate) : void
      {
         var _loc2_:Object = this._599151817scrollAnimation;
         if(_loc2_ !== param1)
         {
            this._599151817scrollAnimation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeftButton() : DynamicImageButton
      {
         return this._75450170scrollLeftButton;
      }
      
      public function set scrollLeftButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._75450170scrollLeftButton;
         if(_loc2_ !== param1)
         {
            this._75450170scrollLeftButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeftButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRightButton() : DynamicImageButton
      {
         return this._1993162593scrollRightButton;
      }
      
      public function set scrollRightButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1993162593scrollRightButton;
         if(_loc2_ !== param1)
         {
            this._1993162593scrollRightButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRightButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DataGrid
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DataGrid) : void
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

