package net.bigpoint.cityrama.view.newsscreen.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public class NewLayerSkin extends SparkSkin implements IStateClient2
   {
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _216916822sideMenu:Group;
      
      private var _1893287094titleDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PaperPopupWindow;
      
      public function NewLayerSkin()
      {
         super();
         mx_internal::_document = this;
         this.width = 840;
         this.height = 440;
         this.mxmlContent = [this._NewLayerSkin_HGroup1_c(),this._NewLayerSkin_Group5_i()];
         this.currentState = "normal";
         this.addEventListener("initialize",this.___NewLayerSkin_SparkSkin1_initialize);
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
      
      private function initializeHandler(param1:FlexEvent) : void
      {
      }
      
      private function _NewLayerSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._NewLayerSkin_Group1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 724;
         _loc1_.height = 403;
         _loc1_.mxmlContent = [this._NewLayerSkin_Rect1_c(),this._NewLayerSkin_Rect2_c(),this._NewLayerSkin_Line1_c(),this._NewLayerSkin_Line2_c(),this._NewLayerSkin_Line3_c(),this._NewLayerSkin_Group2_i(),this._NewLayerSkin_HGroup2_c(),this._NewLayerSkin_DynamicImageButton1_i(),this._NewLayerSkin_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.radiusX = 5;
         _loc1_.radiusY = 5;
         _loc1_.fill = this._NewLayerSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewLayerSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16513263;
         return _loc1_;
      }
      
      private function _NewLayerSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.height = 42;
         _loc1_.topLeftRadiusX = 5;
         _loc1_.topLeftRadiusY = 5;
         _loc1_.topRightRadiusX = 5;
         _loc1_.topRightRadiusY = 5;
         _loc1_.fill = this._NewLayerSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewLayerSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._NewLayerSkin_GradientEntry1_c(),this._NewLayerSkin_GradientEntry2_c()];
         return _loc1_;
      }
      
      private function _NewLayerSkin_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 1687262;
         return _loc1_;
      }
      
      private function _NewLayerSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 1022926;
         return _loc1_;
      }
      
      private function _NewLayerSkin_Line1_c() : Line
      {
         var _loc1_:Line = new Line();
         _loc1_.xFrom = 3;
         _loc1_.yFrom = 1;
         _loc1_.xTo = 721;
         _loc1_.yTo = 1;
         _loc1_.stroke = this._NewLayerSkin_SolidColorStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewLayerSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 2224895;
         return _loc1_;
      }
      
      private function _NewLayerSkin_Line2_c() : Line
      {
         var _loc1_:Line = new Line();
         _loc1_.xFrom = 0;
         _loc1_.yFrom = 40;
         _loc1_.xTo = 724;
         _loc1_.yTo = 40;
         _loc1_.stroke = this._NewLayerSkin_SolidColorStroke2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewLayerSkin_SolidColorStroke2_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 1424122;
         return _loc1_;
      }
      
      private function _NewLayerSkin_Line3_c() : Line
      {
         var _loc1_:Line = new Line();
         _loc1_.xFrom = 0;
         _loc1_.yFrom = 41;
         _loc1_.xTo = 724;
         _loc1_.yTo = 41;
         _loc1_.stroke = this._NewLayerSkin_SolidColorStroke3_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _NewLayerSkin_SolidColorStroke3_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 9886198;
         return _loc1_;
      }
      
      private function _NewLayerSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 42;
         _loc1_.bottom = 6;
         _loc1_.maxWidth = 724;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private function _NewLayerSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 42;
         _loc1_.top = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._NewLayerSkin_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.filters = [this._NewLayerSkin_DropShadowFilter1_c()];
         _loc1_.mxmlContent = [this._NewLayerSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 1;
         _loc1_.angle = 240;
         _loc1_.blurX = 1;
         _loc1_.blurY = 1;
         _loc1_.color = 526344;
         return _loc1_;
      }
      
      private function _NewLayerSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.minWidth = 150;
         _loc1_.maxWidth = 600;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "paperTitle";
         _loc1_.top = 5;
         _loc1_.id = "titleDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleDisplay = _loc1_;
         BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
         return _loc1_;
      }
      
      private function _NewLayerSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "close";
         _loc1_.top = 8;
         _loc1_.right = 4;
         _loc1_.id = "closeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.closeButton = _loc1_;
         BindingManager.executeBindings(this,"closeButton",this.closeButton);
         return _loc1_;
      }
      
      private function _NewLayerSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = -15;
         _loc1_.left = -60;
         _loc1_.width = 180;
         _loc1_.height = 420;
         _loc1_.mxmlContent = [this._NewLayerSkin_BriskImageDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_newsScreenPopup";
         _loc1_.dynaBmpSourceName = "character";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewLayerSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 710;
         _loc1_.width = 80;
         _loc1_.top = 40;
         _loc1_.bottom = 18;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "sideMenu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sideMenu = _loc1_;
         BindingManager.executeBindings(this,"sideMenu",this.sideMenu);
         return _loc1_;
      }
      
      public function ___NewLayerSkin_SparkSkin1_initialize(param1:FlexEvent) : void
      {
         this.initializeHandler(param1);
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

