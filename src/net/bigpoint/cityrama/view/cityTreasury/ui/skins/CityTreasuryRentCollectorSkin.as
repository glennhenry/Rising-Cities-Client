package net.bigpoint.cityrama.view.cityTreasury.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public class CityTreasuryRentCollectorSkin extends SparkSkin
   {
      
      private var _693351384bigItemBg:BriskImageDynaLib;
      
      private var _1138409996bigItemGroup:Group;
      
      private var _358215371buttonIcon:BriskImageDynaLib;
      
      private var _253311651extraText:LocaLabel;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _807087456packGfx:BriskImageDynaLib;
      
      private var _979153895packIconGfx:BriskImageDynaLib;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _2125985571priceLine:Rect;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var _1341947277purchaseLabel:LocaLabel;
      
      private var _797549435runtimeHeader:LocaLabel;
      
      private var _1917511164runtimeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:CityTreasuryContentComponent;
      
      public function CityTreasuryRentCollectorSkin()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._CityTreasuryRentCollectorSkin_HGroup1_c()];
         this.addEventListener("creationComplete",this.___CityTreasuryRentCollectorSkin_SparkSkin1_creationComplete);
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         this.runtimeHeader.text = LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.rentCollector.runtime");
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_VGroup1_c(),this._CityTreasuryRentCollectorSkin_Group5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "top";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_Group1_i(),this._CityTreasuryRentCollectorSkin_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_BriskImageDynaLib1_i(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib2_c(),this._CityTreasuryRentCollectorSkin_VGroup2_c(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib4_i()];
         _loc1_.id = "bigItemGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bigItemGroup = _loc1_;
         BindingManager.executeBindings(this,"bigItemGroup",this.bigItemGroup);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "ressource_cardboard_big";
         _loc1_.id = "bigItemBg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bigItemBg = _loc1_;
         BindingManager.executeBindings(this,"bigItemBg",this.bigItemBg);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "rentCollector_bg_shine";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_BriskImageDynaLib3_i(),this._CityTreasuryRentCollectorSkin_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.id = "packGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.packGfx = _loc1_;
         BindingManager.executeBindings(this,"packGfx",this.packGfx);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.id = "packIconGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.packIconGfx = _loc1_;
         BindingManager.executeBindings(this,"packIconGfx",this.packIconGfx);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_HGroup2_c(),this._CityTreasuryRentCollectorSkin_HGroup3_c(),this._CityTreasuryRentCollectorSkin_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 20;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "miniLayerFlavourTextXpresso";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "purchaseLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.purchaseLabel = _loc1_;
         BindingManager.executeBindings(this,"purchaseLabel",this.purchaseLabel);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.minWidth = 15;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel2_i(),this._CityTreasuryRentCollectorSkin_Rect1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "priceTreasuryOld";
         _loc1_.percentWidth = 100;
         _loc1_.id = "priceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.priceLabel = _loc1_;
         BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.height = 2;
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 4;
         _loc1_.percentWidth = 100;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.fill = this._CityTreasuryRentCollectorSkin_SolidColor1_c();
         _loc1_.initialized(this,"priceLine");
         this.priceLine = _loc1_;
         BindingManager.executeBindings(this,"priceLine",this.priceLine);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16733995;
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_MultistateButton1_i(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 188;
         _loc1_.id = "purchaseButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.purchaseButton = _loc1_;
         BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "buttonIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buttonIcon = _loc1_;
         BindingManager.executeBindings(this,"buttonIcon",this.buttonIcon);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 310;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_DebossedBackgroundComponent1_c(),this._CityTreasuryRentCollectorSkin_VGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 98;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = 10;
         _loc1_.percentWidth = 95;
         _loc1_.percentHeight = 80;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_Group6_c(),this._CityTreasuryRentCollectorSkin_HGroup5_c(),this._CityTreasuryRentCollectorSkin_Group7_c(),this._CityTreasuryRentCollectorSkin_HGroup7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_BlueBarComponent1_c(),this._CityTreasuryRentCollectorSkin_HGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "InfoBarStyle";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "headerLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerLabel = _loc1_;
         BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 95;
         _loc1_.height = 58;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "miniLayerFlavourTextXpresso";
         _loc1_.maxDisplayedLines = 3;
         _loc1_.id = "mainText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainText = _loc1_;
         BindingManager.executeBindings(this,"mainText",this.mainText);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 88;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_HGroup6_c(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib6_c(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib7_c(),this._CityTreasuryRentCollectorSkin_VGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_Rect2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.bottomLeftRadiusX = 9;
         _loc1_.bottomLeftRadiusY = 9;
         _loc1_.bottomRightRadiusX = 9;
         _loc1_.bottomRightRadiusY = 9;
         _loc1_.topLeftRadiusX = 9;
         _loc1_.topLeftRadiusY = 9;
         _loc1_.topRightRadiusX = 9;
         _loc1_.topRightRadiusY = 9;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.stroke = this._CityTreasuryRentCollectorSkin_SolidColorStroke1_c();
         _loc1_.fill = this._CityTreasuryRentCollectorSkin_LinearGradient1_c();
         _loc1_.filters = [this._CityTreasuryRentCollectorSkin_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 16777215;
         _loc1_.alpha = 1;
         _loc1_.weight = 1;
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._CityTreasuryRentCollectorSkin_GradientEntry1_c(),this._CityTreasuryRentCollectorSkin_GradientEntry2_c()];
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         _loc1_.alpha = 1;
         _loc1_.ratio = 0;
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 15790320;
         _loc1_.alpha = 1;
         _loc1_.ratio = 1;
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 1;
         _loc1_.color = 5789784;
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_icon_info";
         _loc1_.top = -10;
         _loc1_.left = 6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "icon_clock";
         _loc1_.left = 48;
         _loc1_.top = 12;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_VGroup5_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "left";
         _loc1_.verticalAlign = "middle";
         _loc1_.height = 44;
         _loc1_.width = 180;
         _loc1_.right = 28;
         _loc1_.top = 20;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel5_i(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib8_c(),this._CityTreasuryRentCollectorSkin_LocaLabel6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "twelveBrightBlueLeft";
         _loc1_.id = "runtimeHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.runtimeHeader = _loc1_;
         BindingManager.executeBindings(this,"runtimeHeader",this.runtimeHeader);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel6_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "seventeenBrightBlueLeft";
         _loc1_.id = "runtimeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.runtimeLabel = _loc1_;
         BindingManager.executeBindings(this,"runtimeLabel",this.runtimeLabel);
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 95;
         _loc1_.height = 80;
         _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel7_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "miniLayerFlavourTextXpresso";
         _loc1_.maxDisplayedLines = 4;
         _loc1_.id = "extraText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.extraText = _loc1_;
         BindingManager.executeBindings(this,"extraText",this.extraText);
         return _loc1_;
      }
      
      public function ___CityTreasuryRentCollectorSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bigItemBg() : BriskImageDynaLib
      {
         return this._693351384bigItemBg;
      }
      
      public function set bigItemBg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._693351384bigItemBg;
         if(_loc2_ !== param1)
         {
            this._693351384bigItemBg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemBg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bigItemGroup() : Group
      {
         return this._1138409996bigItemGroup;
      }
      
      public function set bigItemGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1138409996bigItemGroup;
         if(_loc2_ !== param1)
         {
            this._1138409996bigItemGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonIcon() : BriskImageDynaLib
      {
         return this._358215371buttonIcon;
      }
      
      public function set buttonIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._358215371buttonIcon;
         if(_loc2_ !== param1)
         {
            this._358215371buttonIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get extraText() : LocaLabel
      {
         return this._253311651extraText;
      }
      
      public function set extraText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._253311651extraText;
         if(_loc2_ !== param1)
         {
            this._253311651extraText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"extraText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1166031975headerLabel;
         if(_loc2_ !== param1)
         {
            this._1166031975headerLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainText() : LocaLabel
      {
         return this._8439162mainText;
      }
      
      public function set mainText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._8439162mainText;
         if(_loc2_ !== param1)
         {
            this._8439162mainText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get packGfx() : BriskImageDynaLib
      {
         return this._807087456packGfx;
      }
      
      public function set packGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._807087456packGfx;
         if(_loc2_ !== param1)
         {
            this._807087456packGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get packIconGfx() : BriskImageDynaLib
      {
         return this._979153895packIconGfx;
      }
      
      public function set packIconGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._979153895packIconGfx;
         if(_loc2_ !== param1)
         {
            this._979153895packIconGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packIconGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLabel() : LocaLabel
      {
         return this._1481293013priceLabel;
      }
      
      public function set priceLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1481293013priceLabel;
         if(_loc2_ !== param1)
         {
            this._1481293013priceLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLine() : Rect
      {
         return this._2125985571priceLine;
      }
      
      public function set priceLine(param1:Rect) : void
      {
         var _loc2_:Object = this._2125985571priceLine;
         if(_loc2_ !== param1)
         {
            this._2125985571priceLine = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLine",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get purchaseButton() : MultistateButton
      {
         return this._1082037139purchaseButton;
      }
      
      public function set purchaseButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1082037139purchaseButton;
         if(_loc2_ !== param1)
         {
            this._1082037139purchaseButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get purchaseLabel() : LocaLabel
      {
         return this._1341947277purchaseLabel;
      }
      
      public function set purchaseLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1341947277purchaseLabel;
         if(_loc2_ !== param1)
         {
            this._1341947277purchaseLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get runtimeHeader() : LocaLabel
      {
         return this._797549435runtimeHeader;
      }
      
      public function set runtimeHeader(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._797549435runtimeHeader;
         if(_loc2_ !== param1)
         {
            this._797549435runtimeHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runtimeHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get runtimeLabel() : LocaLabel
      {
         return this._1917511164runtimeLabel;
      }
      
      public function set runtimeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1917511164runtimeLabel;
         if(_loc2_ !== param1)
         {
            this._1917511164runtimeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runtimeLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : CityTreasuryContentComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CityTreasuryContentComponent) : void
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

