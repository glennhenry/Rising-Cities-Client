package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class HeaderComponent extends Group
   {
      
      private var _1977189542headerIcon:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _label:String;
      
      private var _labelInvalid:Boolean = false;
      
      private var _iconInvalid:Boolean = false;
      
      private var _iconData:BriskDynaVo;
      
      public function HeaderComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._HeaderComponent_Rect1_c(),this._HeaderComponent_HGroup1_c()];
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
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set maxDisplayedLines(param1:int) : void
      {
         this.labelDisplay.maxDisplayedLines = param1;
      }
      
      public function set labelSidePaddings(param1:int) : void
      {
         this.labelDisplay.setStyle("paddingLeft",param1);
         this.labelDisplay.setStyle("paddingRight",param1);
         this.labelDisplay.invalidateProperties();
      }
      
      public function set label(param1:String) : void
      {
         this._label = param1;
         this._labelInvalid = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._labelInvalid && Boolean(this.labelDisplay))
         {
            this._labelInvalid = false;
            this.labelDisplay.text = this._label;
         }
         if(this._iconInvalid && Boolean(this.headerIcon))
         {
            this._iconInvalid = false;
            var _temp_3:* = this.headerIcon;
            this.headerIcon.visible = true;
            _temp_3.includeInLayout = true;
            this.headerIcon.briskDynaVo = this._iconData;
         }
      }
      
      public function set icon(param1:BriskDynaVo) : void
      {
         this._iconInvalid = true;
         this._iconData = param1;
         invalidateProperties();
      }
      
      private function _HeaderComponent_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 2;
         _loc1_.right = 2;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.bottomLeftRadiusX = 10;
         _loc1_.bottomLeftRadiusY = 30;
         _loc1_.bottomRightRadiusX = 10;
         _loc1_.bottomRightRadiusY = 30;
         _loc1_.topLeftRadiusX = 10;
         _loc1_.topLeftRadiusY = 30;
         _loc1_.topRightRadiusX = 10;
         _loc1_.topRightRadiusY = 30;
         _loc1_.percentHeight = 100;
         _loc1_.minHeight = 24;
         _loc1_.fill = this._HeaderComponent_RadialGradient1_c();
         _loc1_.filters = [this._HeaderComponent_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _HeaderComponent_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._HeaderComponent_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _HeaderComponent_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _HeaderComponent_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _HeaderComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = 3;
         _loc1_.paddingBottom = 3;
         _loc1_.mxmlContent = [this._HeaderComponent_Group2_c(),this._HeaderComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HeaderComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._HeaderComponent_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HeaderComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.top = -8;
         _loc1_.id = "headerIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerIcon = _loc1_;
         BindingManager.executeBindings(this,"headerIcon",this.headerIcon);
         return _loc1_;
      }
      
      private function _HeaderComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.styleName = "StatusBarStyle";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get headerIcon() : BriskImageDynaLib
      {
         return this._1977189542headerIcon;
      }
      
      public function set headerIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1977189542headerIcon;
         if(_loc2_ !== param1)
         {
            this._1977189542headerIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerIcon",_loc2_,param1));
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
   }
}

