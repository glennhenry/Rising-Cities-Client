package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class BoosterpackSublevelDetail extends Group
   {
      
      public static const SCROLL_LEFT:String = "SCROLL_LEFT";
      
      public static const SCROLL_RIGHT:String = "SCROLL_RIGHT";
      
      public static const BUY_BOOSTER_GOOD:String = "BUY_BOOSTER_GOOD";
      
      private var _1893627029backgroundGfx:BriskImageDynaLib;
      
      private var _523126938boosterPackGeneralContent:BriskImageDynaLib;
      
      private var _779621070boosterpackImage:BriskImageDynaLib;
      
      private var _777207093boosterpackLabel:LocaLabel;
      
      private var _1950300443goodBuyButton:MultistateButton;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _1806488446normalContentLabel:LocaLabel;
      
      private var _2121281877pricingBg:BriskImageDynaLib;
      
      private var _66047092scrollLeft:DynamicImageButton;
      
      private var _2053120847scrollRight:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean = false;
      
      private var _data:BoosterpackVo;
      
      public function BoosterpackSublevelDetail()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._BoosterpackSublevelDetail_HGroup1_c()];
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
      
      public function set data(param1:BoosterpackVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty)
         {
            this._isDirty = false;
            this.boosterpackImage.dynaBmpSourceName = "large_" + this._data.gfxId;
            this.backgroundGfx.dynaBmpSourceName = "sublevel_booster_background_big";
            this.goodBuyButton.label = LocaUtils.getThousendSeperatedNumber(this._data.defaultCostAmount);
            if(this._data.defaultCostConfig.goodConfig)
            {
               this.goodBuyButton.libNameRight = "gui_popups_boosterpackBook";
               this.goodBuyButton.imageNameRight = "icon_" + this._data.defaultCostConfig.goodConfig.gfxId + "_small";
            }
            this.checkButtonStates();
            this.setLabels();
         }
      }
      
      public function checkButtonStates() : void
      {
         if(this._data != null)
         {
            this.goodBuyButton.enabled = this._data.userCanAffordGoodPrice;
         }
      }
      
      private function setLabels() : void
      {
         this.headerTextLabel.text = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.locaId + ".capital");
         this.boosterpackLabel.text = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.locaId);
         var _loc1_:String = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.defaultCostConfig.goodConfig.gfxId);
         this.goodBuyButton.toolTip = LocaUtils.getString("rcl.tooltips.boosterpackstore","rcl.tooltips.boosterpackstore.buyButton.amountType",[this.goodBuyButton.label,_loc1_]);
         this.normalContentLabel.text = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.contentLabel." + this._data.locaId);
      }
      
      private function handleBuy(param1:Event) : void
      {
         dispatchEvent(new Event(BUY_BOOSTER_GOOD,true));
      }
      
      private function handleRight() : void
      {
         dispatchEvent(new Event(SCROLL_RIGHT,true));
      }
      
      private function handleLeft() : void
      {
         dispatchEvent(new Event(SCROLL_LEFT,true));
      }
      
      private function _BoosterpackSublevelDetail_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = -20;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_Group2_c(),this._BoosterpackSublevelDetail_Group4_c(),this._BoosterpackSublevelDetail_VGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 290;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_BriskImageDynaLib1_i(),this._BoosterpackSublevelDetail_BriskImageDynaLib2_i(),this._BoosterpackSublevelDetail_BriskImageDynaLib3_i(),this._BoosterpackSublevelDetail_BriskMCDynaLib1_c(),this._BoosterpackSublevelDetail_VGroup1_c(),this._BoosterpackSublevelDetail_VGroup2_c(),this._BoosterpackSublevelDetail_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 200;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_big";
         _loc1_.id = "pricingBg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pricingBg = _loc1_;
         BindingManager.executeBindings(this,"pricingBg",this.pricingBg);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 20;
         _loc1_.id = "backgroundGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.backgroundGfx = _loc1_;
         BindingManager.executeBindings(this,"backgroundGfx",this.backgroundGfx);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 54;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
         _loc1_.id = "boosterpackImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterpackImage = _loc1_;
         BindingManager.executeBindings(this,"boosterpackImage",this.boosterpackImage);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.width = 110;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 13;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.width = 41;
         _loc1_.left = 0;
         _loc1_.paddingTop = 76;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listLeft";
         _loc1_.addEventListener("click",this.__scrollLeft_click);
         _loc1_.id = "scrollLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollLeft = _loc1_;
         BindingManager.executeBindings(this,"scrollLeft",this.scrollLeft);
         return _loc1_;
      }
      
      public function __scrollLeft_click(param1:MouseEvent) : void
      {
         this.handleLeft();
      }
      
      private function _BoosterpackSublevelDetail_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.right = 0;
         _loc1_.width = 41;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 76;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listRight";
         _loc1_.addEventListener("click",this.__scrollRight_click);
         _loc1_.id = "scrollRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollRight = _loc1_;
         BindingManager.executeBindings(this,"scrollRight",this.scrollRight);
         return _loc1_;
      }
      
      public function __scrollRight_click(param1:MouseEvent) : void
      {
         this.handleRight();
      }
      
      private function _BoosterpackSublevelDetail_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = 212;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_HGroup2_c(),this._BoosterpackSublevelDetail_Group3_c(),this._BoosterpackSublevelDetail_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 170;
         _loc1_.height = 38;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.percentWidth = 90;
         _loc1_.styleName = "boosterpackLabel";
         _loc1_.id = "boosterpackLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterpackLabel = _loc1_;
         BindingManager.executeBindings(this,"boosterpackLabel",this.boosterpackLabel);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 0;
         _loc1_.width = 205;
         _loc1_.verticalCenter = 0;
         _loc1_.addEventListener("click",this.__goodBuyButton_click);
         _loc1_.id = "goodBuyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodBuyButton = _loc1_;
         BindingManager.executeBindings(this,"goodBuyButton",this.goodBuyButton);
         return _loc1_;
      }
      
      public function __goodBuyButton_click(param1:MouseEvent) : void
      {
         this.handleBuy(param1);
      }
      
      private function _BoosterpackSublevelDetail_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 10;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "blue_line_long";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 440;
         _loc1_.maxWidth = 440;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_Group5_c(),this._BoosterpackSublevelDetail_Group8_c(),this._BoosterpackSublevelDetail_Group9_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 160;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_VGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_VGroup5_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_Group6_c(),this._BoosterpackSublevelDetail_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 75;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_Rect1_c(),this._BoosterpackSublevelDetail_LocaLabel2_i(),this._BoosterpackSublevelDetail_Group7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 20;
         _loc1_.right = 20;
         _loc1_.top = 30;
         _loc1_.bottomLeftRadiusX = 10;
         _loc1_.bottomLeftRadiusY = 30;
         _loc1_.bottomRightRadiusX = 10;
         _loc1_.bottomRightRadiusY = 30;
         _loc1_.topLeftRadiusX = 10;
         _loc1_.topLeftRadiusY = 30;
         _loc1_.topRightRadiusX = 10;
         _loc1_.topRightRadiusY = 30;
         _loc1_.percentHeight = 100;
         _loc1_.minHeight = 34;
         _loc1_.maxHeight = 34;
         _loc1_.fill = this._BoosterpackSublevelDetail_RadialGradient1_c();
         _loc1_.filters = [this._BoosterpackSublevelDetail_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._BoosterpackSublevelDetail_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStylePadding";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingTop",41);
         _loc1_.id = "headerTextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerTextLabel = _loc1_;
         BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 22;
         _loc1_.left = 25;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "infolayer_icon_info";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.percentWidth = 80;
         _loc1_.styleName = "largeDetailComponentSubtextBig";
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("fontSize",13);
         _loc1_.id = "normalContentLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.normalContentLabel = _loc1_;
         BindingManager.executeBindings(this,"normalContentLabel",this.normalContentLabel);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 5;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "horizontal_line";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_Group9_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 190;
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_BriskImageDynaLib7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.dynaBmpSourceName = "polaroid_right_btm_sublevel";
         _loc1_.id = "boosterPackGeneralContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterPackGeneralContent = _loc1_;
         BindingManager.executeBindings(this,"boosterPackGeneralContent",this.boosterPackGeneralContent);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundGfx() : BriskImageDynaLib
      {
         return this._1893627029backgroundGfx;
      }
      
      public function set backgroundGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1893627029backgroundGfx;
         if(_loc2_ !== param1)
         {
            this._1893627029backgroundGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterPackGeneralContent() : BriskImageDynaLib
      {
         return this._523126938boosterPackGeneralContent;
      }
      
      public function set boosterPackGeneralContent(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._523126938boosterPackGeneralContent;
         if(_loc2_ !== param1)
         {
            this._523126938boosterPackGeneralContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterPackGeneralContent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackImage() : BriskImageDynaLib
      {
         return this._779621070boosterpackImage;
      }
      
      public function set boosterpackImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._779621070boosterpackImage;
         if(_loc2_ !== param1)
         {
            this._779621070boosterpackImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackLabel() : LocaLabel
      {
         return this._777207093boosterpackLabel;
      }
      
      public function set boosterpackLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._777207093boosterpackLabel;
         if(_loc2_ !== param1)
         {
            this._777207093boosterpackLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodBuyButton() : MultistateButton
      {
         return this._1950300443goodBuyButton;
      }
      
      public function set goodBuyButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1950300443goodBuyButton;
         if(_loc2_ !== param1)
         {
            this._1950300443goodBuyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodBuyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerTextLabel() : LocaLabel
      {
         return this._1105049158headerTextLabel;
      }
      
      public function set headerTextLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1105049158headerTextLabel;
         if(_loc2_ !== param1)
         {
            this._1105049158headerTextLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerTextLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get normalContentLabel() : LocaLabel
      {
         return this._1806488446normalContentLabel;
      }
      
      public function set normalContentLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1806488446normalContentLabel;
         if(_loc2_ !== param1)
         {
            this._1806488446normalContentLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"normalContentLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pricingBg() : BriskImageDynaLib
      {
         return this._2121281877pricingBg;
      }
      
      public function set pricingBg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2121281877pricingBg;
         if(_loc2_ !== param1)
         {
            this._2121281877pricingBg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingBg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeft() : DynamicImageButton
      {
         return this._66047092scrollLeft;
      }
      
      public function set scrollLeft(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._66047092scrollLeft;
         if(_loc2_ !== param1)
         {
            this._66047092scrollLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRight() : DynamicImageButton
      {
         return this._2053120847scrollRight;
      }
      
      public function set scrollRight(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._2053120847scrollRight;
         if(_loc2_ !== param1)
         {
            this._2053120847scrollRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRight",_loc2_,param1));
            }
         }
      }
   }
}

