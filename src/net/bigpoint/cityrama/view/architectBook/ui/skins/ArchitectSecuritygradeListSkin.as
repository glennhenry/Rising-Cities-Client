package net.bigpoint.cityrama.view.architectBook.ui.skins
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
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.List;
   import spark.core.NavigationUnit;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class ArchitectSecuritygradeListSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _1632457241leftButton:DynamicImageButton;
      
      private var _273241018mainGroup:Group;
      
      private var _721040133motionPath:SimpleMotionPath;
      
      private var _896282514rightButton:DynamicImageButton;
      
      private var _599151817scrollAnimation:Animate;
      
      private var _929968389theLayout:HorizontalLayout;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:List;
      
      public function ArchitectSecuritygradeListSkin()
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
         bindings = this._ArchitectSecuritygradeListSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_architectBook_ui_skins_ArchitectSecuritygradeListSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ArchitectSecuritygradeListSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.blendMode = "normal";
         this.mxmlContent = [this._ArchitectSecuritygradeListSkin_Group1_c()];
         this.currentState = "normal";
         this._ArchitectSecuritygradeListSkin_Animate1_i();
         this.addEventListener("creationComplete",this.___ArchitectSecuritygradeListSkin_SparkSkin1_creationComplete);
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
         ArchitectSecuritygradeListSkin._watcherSetupUtil = param1;
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
         var _loc2_:Object = this.dataGroup.getElementAt(0);
         var _loc3_:Object = this.dataGroup.getElementAt(this.dataGroup.numElements - 1);
         if(this.dataGroup.numElements > 1)
         {
            if(_loc2_)
            {
               this.leftButton.visible = this.leftButton.enabled = !this.dataGroup.scrollRect.containsRect(_loc2_.getBounds(this.dataGroup));
            }
            if(_loc3_)
            {
               this.rightButton.visible = this.rightButton.enabled = !this.dataGroup.scrollRect.containsRect(_loc3_.getBounds(this.dataGroup));
            }
            else
            {
               this.rightButton.visible = this.rightButton.enabled = true;
            }
         }
         else
         {
            this.leftButton.visible = this.leftButton.enabled = this.rightButton.enabled = this.rightButton.visible = false;
         }
      }
      
      private function _ArchitectSecuritygradeListSkin_Animate1_i() : Animate
      {
         var _loc1_:Animate = new Animate();
         _loc1_.duration = 500;
         _loc1_.motionPaths = new <MotionPath>[this._ArchitectSecuritygradeListSkin_SimpleMotionPath1_i()];
         _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
         _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
         this.scrollAnimation = _loc1_;
         BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeListSkin_SimpleMotionPath1_i() : SimpleMotionPath
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
      
      private function _ArchitectSecuritygradeListSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ArchitectSecuritygradeListSkin_Group2_c(),this._ArchitectSecuritygradeListSkin_Group3_i(),this._ArchitectSecuritygradeListSkin_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeListSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 16;
         _loc1_.top = 8;
         _loc1_.left = 60;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ArchitectSecuritygradeListSkin_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeListSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.visible = false;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "architectNeedsButtonLeft";
         _loc1_.addEventListener("click",this.__leftButton_click);
         _loc1_.id = "leftButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.leftButton = _loc1_;
         BindingManager.executeBindings(this,"leftButton",this.leftButton);
         return _loc1_;
      }
      
      public function __leftButton_click(param1:MouseEvent) : void
      {
         this.scrollToPosition(NavigationUnit.PAGE_LEFT);
      }
      
      private function _ArchitectSecuritygradeListSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ArchitectSecuritygradeListSkin_DataGroup1_i()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeListSkin_DataGroup1_i() : DataGroup
      {
         var _loc1_:DataGroup = new DataGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.focusEnabled = false;
         _loc1_.layout = this._ArchitectSecuritygradeListSkin_HorizontalLayout1_i();
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
      
      private function _ArchitectSecuritygradeListSkin_HorizontalLayout1_i() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         _loc1_.useVirtualLayout = true;
         _loc1_.clipAndEnableScrolling = true;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.requestedColumnCount = 1;
         this.theLayout = _loc1_;
         BindingManager.executeBindings(this,"theLayout",this.theLayout);
         return _loc1_;
      }
      
      public function __dataGroup_updateComplete(param1:FlexEvent) : void
      {
         this.checkScroll();
      }
      
      private function _ArchitectSecuritygradeListSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 8;
         _loc1_.right = 60;
         _loc1_.width = 16;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ArchitectSecuritygradeListSkin_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeListSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.visible = false;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "architectNeedsButtonRight";
         _loc1_.addEventListener("click",this.__rightButton_click);
         _loc1_.id = "rightButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rightButton = _loc1_;
         BindingManager.executeBindings(this,"rightButton",this.rightButton);
         return _loc1_;
      }
      
      public function __rightButton_click(param1:MouseEvent) : void
      {
         this.scrollToPosition(NavigationUnit.PAGE_RIGHT);
      }
      
      public function ___ArchitectSecuritygradeListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.creationComplete();
      }
      
      private function _ArchitectSecuritygradeListSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("tooltipLeft");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"leftButton.toolTip");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("tooltipRight");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"rightButton.toolTip");
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
      public function get leftButton() : DynamicImageButton
      {
         return this._1632457241leftButton;
      }
      
      public function set leftButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1632457241leftButton;
         if(_loc2_ !== param1)
         {
            this._1632457241leftButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftButton",_loc2_,param1));
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
      public function get rightButton() : DynamicImageButton
      {
         return this._896282514rightButton;
      }
      
      public function set rightButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._896282514rightButton;
         if(_loc2_ !== param1)
         {
            this._896282514rightButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightButton",_loc2_,param1));
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
      public function get theLayout() : HorizontalLayout
      {
         return this._929968389theLayout;
      }
      
      public function set theLayout(param1:HorizontalLayout) : void
      {
         var _loc2_:Object = this._929968389theLayout;
         if(_loc2_ !== param1)
         {
            this._929968389theLayout = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"theLayout",_loc2_,param1));
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

