package net.bigpoint.cityrama.view.boosterpackstore.ui.skins
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
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import spark.components.DataGrid;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.core.NavigationUnit;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.layouts.HorizontalLayout;
   import spark.skins.SparkSkin;
   
   public class BoosterpackListSkin extends SparkSkin implements IStateClient2
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var _721040133motionPath:SimpleMotionPath;
      
      private var _599151817scrollAnimation:Animate;
      
      private var _75450170scrollLeftButton:DynamicImageButton;
      
      private var _1993162593scrollRightButton:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _providerChanged:Boolean;
      
      private var _213507019hostComponent:DataGrid;
      
      public function BoosterpackListSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._BoosterpackListSkin_HGroup1_c()];
         this.currentState = "normal";
         this._BoosterpackListSkin_Animate1_i();
         this.addEventListener("creationComplete",this.___BoosterpackListSkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
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
         var _temp_1:* = this.scrollLeftButton;
         this.scrollLeftButton.enabled = false;
         _temp_1.visible = false;
         this.dataGroup.addEventListener("dataProviderChanged",this.onDataChanged);
         this.scrollLeftButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.buffLayer"),String("rcl.tooltips.buffLayer.buff.previous"));
         this.scrollRightButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.buffLayer"),String("rcl.tooltips.buffLayer.buff.next"));
      }
      
      private function onDataChanged(param1:Event) : void
      {
         this._providerChanged = true;
         this.checkScroll();
      }
      
      private function checkScroll(param1:FlexEvent = null) : void
      {
         this.dataGroup.validateNow();
         var _loc2_:Vector.<int> = this.dataGroup.getItemIndicesInView();
         var _loc3_:Object = this.dataGroup.getElementAt(0);
         var _loc4_:Object = this.dataGroup.getElementAt(this.dataGroup.numElements - 1);
         if(this.dataGroup.numElements > 4 && !this._providerChanged)
         {
            if(_loc3_)
            {
               this.scrollLeftButton.visible = this.scrollLeftButton.enabled = false;
            }
            else
            {
               this.scrollLeftButton.visible = this.scrollLeftButton.enabled = true;
            }
            if(_loc4_)
            {
               this.scrollRightButton.visible = this.scrollRightButton.enabled = false;
            }
            else
            {
               this.scrollRightButton.visible = this.scrollRightButton.enabled = true;
            }
         }
         else if(this._providerChanged)
         {
            this._providerChanged = false;
            if(this.dataGroup.numElements > 4)
            {
               this.scrollLeftButton.visible = this.scrollLeftButton.enabled = false;
               this.scrollRightButton.visible = this.scrollRightButton.enabled = true;
            }
            else
            {
               this.scrollLeftButton.visible = this.scrollLeftButton.enabled = this.scrollRightButton.enabled = this.scrollRightButton.visible = false;
            }
         }
         else
         {
            this.scrollLeftButton.visible = this.scrollLeftButton.enabled = this.scrollRightButton.enabled = this.scrollRightButton.visible = false;
         }
      }
      
      private function _BoosterpackListSkin_Animate1_i() : Animate
      {
         var _loc1_:Animate = new Animate();
         _loc1_.duration = 500;
         _loc1_.motionPaths = new <MotionPath>[this._BoosterpackListSkin_SimpleMotionPath1_i()];
         _loc1_.addEventListener("effectStart",this.__scrollAnimation_effectStart);
         _loc1_.addEventListener("effectEnd",this.__scrollAnimation_effectEnd);
         this.scrollAnimation = _loc1_;
         BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
         return _loc1_;
      }
      
      private function _BoosterpackListSkin_SimpleMotionPath1_i() : SimpleMotionPath
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
      
      private function _BoosterpackListSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackListSkin_Group1_c(),this._BoosterpackListSkin_DataGroup1_i(),this._BoosterpackListSkin_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackListSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.width = 40;
         _loc1_.left = 0;
         _loc1_.mxmlContent = [this._BoosterpackListSkin_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackListSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
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
      
      private function _BoosterpackListSkin_DataGroup1_i() : DataGroup
      {
         var _loc1_:DataGroup = new DataGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.focusEnabled = false;
         _loc1_.layout = this._BoosterpackListSkin_HorizontalLayout1_c();
         _loc1_.id = "dataGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dataGroup = _loc1_;
         BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
         return _loc1_;
      }
      
      private function _BoosterpackListSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         _loc1_.clipAndEnableScrolling = true;
         _loc1_.useVirtualLayout = true;
         _loc1_.gap = 8;
         _loc1_.requestedMaxColumnCount = 4;
         _loc1_.requestedColumnCount = 4;
         _loc1_.columnWidth = 120;
         return _loc1_;
      }
      
      private function _BoosterpackListSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 40;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackListSkin_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackListSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
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
      
      public function ___BoosterpackListSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.creationComplete();
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

