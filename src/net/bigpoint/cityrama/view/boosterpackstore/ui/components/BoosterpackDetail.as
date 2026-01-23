package net.bigpoint.cityrama.view.boosterpackstore.ui.components
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
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
   
   public class BoosterpackDetail extends Group
   {
      
      public static const SCROLL_LEFT:String = "SCROLL_LEFT";
      
      public static const SCROLL_RIGHT:String = "SCROLL_RIGHT";
      
      public static const BUY_BOOSTER_GOOD:String = "BUY_BOOSTER_GOOD";
      
      public static const BUY_BOOSTER_RC:String = "BUY_BOOSTER_RC";
      
      public static const OPEN_TREASURY:String = "OPEN_TREASURY";
      
      private var _1893627029backgroundGfx:BriskImageDynaLib;
      
      private var _523126938boosterPackGeneralContent:BriskImageDynaLib;
      
      private var _779621070boosterpackImage:BriskImageDynaLib;
      
      private var _777207093boosterpackLabel:LocaLabel;
      
      private var _2116806775boosterpackSpecialContent:BriskImageDynaLib;
      
      private var _1950300443goodBuyButton:MultistateButton;
      
      private var _1806488446normalContentLabel:LocaLabel;
      
      private var _2121281877pricingBg:BriskImageDynaLib;
      
      private var _1756850759rCBuyButton:MultistateButton;
      
      private var _66047092scrollLeft:DynamicImageButton;
      
      private var _2053120847scrollRight:DynamicImageButton;
      
      private var _1151040172specialContentLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean = false;
      
      private var _autoStartAnim:Boolean = false;
      
      private var _data:BoosterpackVo;
      
      public function BoosterpackDetail()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._BoosterpackDetail_HGroup1_c()];
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
            this.backgroundGfx.dynaBmpSourceName = "special_cardboard_big";
            this.boosterpackSpecialContent.dynaBmpSourceName = "polaroid_right_btm_" + this._data.gfxId;
            this.boosterpackLabel.text = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.locaId);
            this.normalContentLabel.text = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.contentLabel." + this._data.locaId);
            this.specialContentLabel.text = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.specialContentLabel." + this._data.locaId);
            this.goodBuyButton.label = LocaUtils.getThousendSeperatedNumber(this._data.defaultCostAmount);
            if(this._data.defaultCostConfig.goodConfig)
            {
               this.goodBuyButton.libNameRight = "gui_popups_boosterpackBook";
               this.goodBuyButton.imageNameRight = "icon_" + this._data.defaultCostConfig.goodConfig.gfxId + "_small";
            }
            this.backgroundGfx.toolTip = this.boosterpackImage.toolTip = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.locaId);
            this.scrollLeft.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowLeft");
            this.scrollRight.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight");
            this.goodBuyButton.enabled = this._data.userCanAffordGoodPrice;
            if(this._data.defaultCostConfig.goodConfig)
            {
               var _loc1_:String = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.defaultCostConfig.goodConfig.gfxId);
               this.goodBuyButton.toolTip = LocaUtils.getString("rcl.tooltips.boosterpackstore","rcl.tooltips.boosterpackstore.buyButton.amountType",[this.goodBuyButton.label,null]);
            }
            this.rCBuyButton.includeInLayout = this.rCBuyButton.visible = this._data.hasRealCurrencyPrice();
            if(this._data.hasRealCurrencyPrice())
            {
               this.rCBuyButton.priceToConfirm = this._data.realCurrencyCostAmount;
               this.rCBuyButton.label = LocaUtils.getThousendSeperatedNumber(this._data.realCurrencyCostAmount);
               this.rCBuyButton.showPlus = !this._data.userCanAffordRCPrice;
               this.rCBuyButton.showSparkle = this._data.userCanAffordRCPrice;
               var _loc2_:String = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.realcurrency");
               this.rCBuyButton.toolTip = LocaUtils.getString("rcl.tooltips.boosterpackstore","rcl.tooltips.boosterpackstore.buyButton.amountType",[this.rCBuyButton.label,null]);
            }
         }
      }
      
      private function handleBuy(param1:Event) : void
      {
         if(param1.currentTarget.id == "goodBuyButton")
         {
            dispatchEvent(new Event(BUY_BOOSTER_GOOD,true,true));
         }
         else if(param1.currentTarget.id == "rCBuyButton")
         {
            if(this.rCBuyButton.showPlus)
            {
               dispatchEvent(new Event(OPEN_TREASURY,true,true));
            }
            else
            {
               dispatchEvent(new Event(BUY_BOOSTER_RC,true,true));
            }
         }
      }
      
      private function handleRight() : void
      {
         dispatchEvent(new Event(SCROLL_RIGHT,true));
      }
      
      private function handleLeft() : void
      {
         dispatchEvent(new Event(SCROLL_LEFT,true));
      }
      
      public function updateData() : void
      {
         this.goodBuyButton.enabled = this._data.userCanAffordGoodPrice;
      }
      
      private function _BoosterpackDetail_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = -20;
         _loc1_.mxmlContent = [this._BoosterpackDetail_Group2_c(),this._BoosterpackDetail_Group4_c(),this._BoosterpackDetail_Group5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 290;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackDetail_BriskImageDynaLib1_i(),this._BoosterpackDetail_BriskImageDynaLib2_i(),this._BoosterpackDetail_BriskImageDynaLib3_i(),this._BoosterpackDetail_BriskMCDynaLib1_c(),this._BoosterpackDetail_BriskImageDynaLib4_c(),this._BoosterpackDetail_VGroup1_c(),this._BoosterpackDetail_VGroup2_c(),this._BoosterpackDetail_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      
      private function _BoosterpackDetail_BriskImageDynaLib2_i() : BriskImageDynaLib
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
      
      private function _BoosterpackDetail_BriskImageDynaLib3_i() : BriskImageDynaLib
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
      
      private function _BoosterpackDetail_BriskMCDynaLib1_c() : BriskMCDynaLib
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
      
      private function _BoosterpackDetail_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 40;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.dynaBmpSourceName = "sparkles_shadow";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.width = 41;
         _loc1_.left = 0;
         _loc1_.paddingTop = 76;
         _loc1_.mxmlContent = [this._BoosterpackDetail_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_DynamicImageButton1_i() : DynamicImageButton
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
      
      private function _BoosterpackDetail_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.right = 0;
         _loc1_.width = 41;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 76;
         _loc1_.mxmlContent = [this._BoosterpackDetail_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_DynamicImageButton2_i() : DynamicImageButton
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
      
      private function _BoosterpackDetail_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = 212;
         _loc1_.mxmlContent = [this._BoosterpackDetail_HGroup2_c(),this._BoosterpackDetail_Group3_c(),this._BoosterpackDetail_MultistateButton1_i(),this._BoosterpackDetail_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 170;
         _loc1_.height = 38;
         _loc1_.mxmlContent = [this._BoosterpackDetail_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_LocaLabel1_i() : LocaLabel
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
      
      private function _BoosterpackDetail_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_MultistateButton1_i() : MultistateButton
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
      
      private function _BoosterpackDetail_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.useConfirmation = true;
         _loc1_.bottom = 0;
         _loc1_.width = 205;
         _loc1_.verticalCenter = 0;
         _loc1_.imageNameRight = "layer_rc_icon";
         _loc1_.libNameRight = "gui_resources_icons";
         _loc1_.addEventListener("click",this.__rCBuyButton_click);
         _loc1_.id = "rCBuyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rCBuyButton = _loc1_;
         BindingManager.executeBindings(this,"rCBuyButton",this.rCBuyButton);
         return _loc1_;
      }
      
      public function __rCBuyButton_click(param1:MouseEvent) : void
      {
         this.handleBuy(param1);
      }
      
      private function _BoosterpackDetail_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 10;
         _loc1_.mxmlContent = [this._BoosterpackDetail_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib5_c() : BriskImageDynaLib
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
      
      private function _BoosterpackDetail_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackDetail_VGroup4_c(),this._BoosterpackDetail_VGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "right";
         _loc1_.mxmlContent = [this._BoosterpackDetail_BriskImageDynaLib6_i(),this._BoosterpackDetail_BriskImageDynaLib7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.dynaBmpSourceName = "polaroid_right_top";
         _loc1_.id = "boosterPackGeneralContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterPackGeneralContent = _loc1_;
         BindingManager.executeBindings(this,"boosterPackGeneralContent",this.boosterPackGeneralContent);
         return _loc1_;
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.id = "boosterpackSpecialContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterpackSpecialContent = _loc1_;
         BindingManager.executeBindings(this,"boosterpackSpecialContent",this.boosterpackSpecialContent);
         return _loc1_;
      }
      
      private function _BoosterpackDetail_VGroup5_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 180;
         _loc1_.left = 16;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackDetail_Group6_c(),this._BoosterpackDetail_LocaLabel2_i(),this._BoosterpackDetail_Group7_c(),this._BoosterpackDetail_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 4;
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "boosterpackInfo";
         _loc1_.id = "normalContentLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.normalContentLabel = _loc1_;
         BindingManager.executeBindings(this,"normalContentLabel",this.normalContentLabel);
         return _loc1_;
      }
      
      private function _BoosterpackDetail_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 140;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 4;
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "boosterpackInfo";
         _loc1_.id = "specialContentLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.specialContentLabel = _loc1_;
         BindingManager.executeBindings(this,"specialContentLabel",this.specialContentLabel);
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
      public function get boosterpackSpecialContent() : BriskImageDynaLib
      {
         return this._2116806775boosterpackSpecialContent;
      }
      
      public function set boosterpackSpecialContent(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2116806775boosterpackSpecialContent;
         if(_loc2_ !== param1)
         {
            this._2116806775boosterpackSpecialContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackSpecialContent",_loc2_,param1));
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
      public function get rCBuyButton() : MultistateButton
      {
         return this._1756850759rCBuyButton;
      }
      
      public function set rCBuyButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1756850759rCBuyButton;
         if(_loc2_ !== param1)
         {
            this._1756850759rCBuyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rCBuyButton",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get specialContentLabel() : LocaLabel
      {
         return this._1151040172specialContentLabel;
      }
      
      public function set specialContentLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1151040172specialContentLabel;
         if(_loc2_ !== param1)
         {
            this._1151040172specialContentLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialContentLabel",_loc2_,param1));
            }
         }
      }
   }
}

