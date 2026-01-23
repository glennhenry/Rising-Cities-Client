package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MediumLayerWindow;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class MediumLayerSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _336564146characterImage:BriskImageDynaLib;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _2061493789sparkles:Group;
      
      private var _1893287094titleDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:MediumLayerWindow;
      
      public function MediumLayerSkin()
      {
         super();
         mx_internal::_document = this;
         this.width = 456;
         this.height = 415;
         this.mxmlContent = [this._MediumLayerSkin_Group1_c()];
         this.currentState = "normal";
         this.addEventListener("initialize",this.___MediumLayerSkin_SparkSkin1_initialize);
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
         var _loc2_:uint = 0;
         if(getStyle("glowColor"))
         {
            _loc2_ = uint(getStyle("glowColor"));
            TweenMax.to(this.background,1,{"glowFilter":{
               "color":_loc2_,
               "alpha":1,
               "blurX":20,
               "blurY":20,
               "strength":1.8
            }});
         }
         invalidateDisplayList();
      }
      
      private function _MediumLayerSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._MediumLayerSkin_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MediumLayerSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 456;
         _loc1_.height = 412;
         _loc1_.bottom = 0;
         _loc1_.mxmlContent = [this._MediumLayerSkin_BriskImageDynaLib1_i(),this._MediumLayerSkin_Group3_i(),this._MediumLayerSkin_BlueBarComponent1_c(),this._MediumLayerSkin_DynamicImageButton1_i(),this._MediumLayerSkin_HGroup1_c(),this._MediumLayerSkin_Group4_c(),this._MediumLayerSkin_Group5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MediumLayerSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_medium_bg";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "background";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private function _MediumLayerSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 25;
         _loc1_.right = 25;
         _loc1_.top = 62;
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
      
      private function _MediumLayerSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 38;
         _loc1_.top = 24;
         _loc1_.left = 40;
         _loc1_.right = 40;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MediumLayerSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "close";
         _loc1_.top = 10;
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
      
      private function _MediumLayerSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.height = 38;
         _loc1_.top = 24;
         _loc1_.left = 40;
         _loc1_.right = 40;
         _loc1_.mxmlContent = [this._MediumLayerSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MediumLayerSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "test";
         _loc1_.minWidth = 150;
         _loc1_.maxWidth = 370;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "headlineMediumLayer";
         _loc1_.setStyle("verticalAlign","bottom");
         _loc1_.id = "titleDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleDisplay = _loc1_;
         BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
         return _loc1_;
      }
      
      private function _MediumLayerSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = -15;
         _loc1_.left = -50;
         _loc1_.width = 180;
         _loc1_.height = 420;
         _loc1_.mxmlContent = [this._MediumLayerSkin_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MediumLayerSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "characterImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.characterImage = _loc1_;
         BindingManager.executeBindings(this,"characterImage",this.characterImage);
         return _loc1_;
      }
      
      private function _MediumLayerSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.mxmlContent = [this._MediumLayerSkin_BriskImageDynaLib3_c(),this._MediumLayerSkin_BriskImageDynaLib4_c(),this._MediumLayerSkin_BriskImageDynaLib5_c()];
         _loc1_.id = "sparkles";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sparkles = _loc1_;
         BindingManager.executeBindings(this,"sparkles",this.sparkles);
         return _loc1_;
      }
      
      private function _MediumLayerSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_medium_sparkle";
         _loc1_.top = -12;
         _loc1_.left = 60;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MediumLayerSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "sparkle_single_small";
         _loc1_.bottom = -5;
         _loc1_.left = 40;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MediumLayerSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layer_medium_sparkle";
         _loc1_.rotation = 180;
         _loc1_.bottom = -8;
         _loc1_.right = -10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___MediumLayerSkin_SparkSkin1_initialize(param1:FlexEvent) : void
      {
         this.init();
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get characterImage() : BriskImageDynaLib
      {
         return this._336564146characterImage;
      }
      
      public function set characterImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._336564146characterImage;
         if(_loc2_ !== param1)
         {
            this._336564146characterImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterImage",_loc2_,param1));
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
      public function get sparkles() : Group
      {
         return this._2061493789sparkles;
      }
      
      public function set sparkles(param1:Group) : void
      {
         var _loc2_:Object = this._2061493789sparkles;
         if(_loc2_ !== param1)
         {
            this._2061493789sparkles = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkles",_loc2_,param1));
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
      public function get hostComponent() : MediumLayerWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:MediumLayerWindow) : void
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

