package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.StateChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class MultistateButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _738169824iconLeft:BriskImageDynaLib;
      
      private var _1402767069iconRight:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _263713807overlayGroup:HGroup;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var _2011710186sparkle:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:MultistateButton;
      
      public function MultistateButtonSkin()
      {
         super();
         mx_internal::_document = this;
         this.cacheAsBitmap = true;
         this.mxmlContent = [this._MultistateButtonSkin_HGroup1_c(),this._MultistateButtonSkin_HGroup2_i(),this._MultistateButtonSkin_HGroup3_c(),this._MultistateButtonSkin_BriskImageDynaLib9_i(),this._MultistateButtonSkin_BriskImageDynaLib10_i()];
         this.currentState = "up";
         this.addEventListener("currentStateChange",this.___MultistateButtonSkin_SparkSkin1_currentStateChange);
         this.addEventListener("creationComplete",this.___MultistateButtonSkin_SparkSkin1_creationComplete);
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
      
      private function handleCreationComplete() : void
      {
         TweenMax.to(this.labelDisplay,1,{"dropShadowFilter":{
            "color":0,
            "alpha":1,
            "blurX":3,
            "blurY":3,
            "distance":0
         }});
      }
      
      private function handleCurrentStateChange() : void
      {
         TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":1}});
         TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":1}});
         if(this.hostComponent.showPlus)
         {
            TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDisabled")});
            return;
         }
         switch(currentState)
         {
            case "up":
               TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorUp")});
               break;
            case "over":
               TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorOver")});
               break;
            case "down":
               TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDown")});
               break;
            case "disabled":
               TweenMax.to(this.overlayGroup,0,{"tint":this.hostComponent.getStyle("colorDisabled")});
               TweenMax.to(this.iconLeft,0,{"colorMatrixFilter":{"saturation":0}});
               TweenMax.to(this.iconRight,0,{"colorMatrixFilter":{"saturation":0}});
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.sparkle)
         {
            if(this.hostComponent.showSparkle)
            {
               this.sparkle.includeInLayout = true;
               this.sparkle.visible = true;
            }
            else
            {
               this.sparkle.includeInLayout = false;
               this.sparkle.visible = false;
            }
         }
         this.handleCurrentStateChange();
      }
      
      private function _MultistateButtonSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MultistateButtonSkin_BriskImageDynaLib1_c(),this._MultistateButtonSkin_BriskImageDynaLib2_c(),this._MultistateButtonSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _MultistateButtonSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _MultistateButtonSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _MultistateButtonSkin_HGroup2_i() : HGroup
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
         _loc1_.mxmlContent = [this._MultistateButtonSkin_BriskImageDynaLib4_c(),this._MultistateButtonSkin_BriskImageDynaLib5_c(),this._MultistateButtonSkin_BriskImageDynaLib6_c()];
         _loc1_.id = "overlayGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.overlayGroup = _loc1_;
         BindingManager.executeBindings(this,"overlayGroup",this.overlayGroup);
         return _loc1_;
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
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
      
      private function _MultistateButtonSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
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
      
      private function _MultistateButtonSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
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
      
      private function _MultistateButtonSkin_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.gap = 10;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MultistateButtonSkin_BriskImageDynaLib7_i(),this._MultistateButtonSkin_LocaLabel1_i(),this._MultistateButtonSkin_BriskImageDynaLib8_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "iconLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconLeft = _loc1_;
         BindingManager.executeBindings(this,"iconLeft",this.iconLeft);
         return _loc1_;
      }
      
      private function _MultistateButtonSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "multistate";
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "iconRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconRight = _loc1_;
         BindingManager.executeBindings(this,"iconRight",this.iconRight);
         return _loc1_;
      }
      
      private function _MultistateButtonSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
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
      
      private function _MultistateButtonSkin_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.right = -4;
         _loc1_.top = -4;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "plusIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusIcon = _loc1_;
         BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
         return _loc1_;
      }
      
      public function ___MultistateButtonSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         this.handleCurrentStateChange();
      }
      
      public function ___MultistateButtonSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get iconLeft() : BriskImageDynaLib
      {
         return this._738169824iconLeft;
      }
      
      public function set iconLeft(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._738169824iconLeft;
         if(_loc2_ !== param1)
         {
            this._738169824iconLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconRight() : BriskImageDynaLib
      {
         return this._1402767069iconRight;
      }
      
      public function set iconRight(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1402767069iconRight;
         if(_loc2_ !== param1)
         {
            this._1402767069iconRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconRight",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
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
      public function get hostComponent() : MultistateButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:MultistateButton) : void
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

