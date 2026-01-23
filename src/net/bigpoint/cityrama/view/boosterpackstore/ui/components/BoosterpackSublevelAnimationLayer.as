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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackAnimationLayerVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.skins.BoosterpackRewardListSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.layouts.TileLayout;
   
   use namespace mx_internal;
   
   public class BoosterpackSublevelAnimationLayer extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const SKIP:String = "SKIP";
      
      public static const BUY_BOOSTER_GOOD:String = "BUY_BOOSTER_GOOD";
      
      private var _2130637772animationLayerStars:BriskMCDynaLib;
      
      private var _779621070boosterpackImage:BriskImageDynaLib;
      
      private var _1463972923boosterpackImageOpened:BriskImageDynaLib;
      
      private var _777207093boosterpackLabel:LocaLabel;
      
      private var _1950300443goodBuyButton:MultistateButton;
      
      private var _1177280081itemList:List;
      
      private var _2121281877pricingBg:BriskImageDynaLib;
      
      private var _319513199skipButton:MultistateButton;
      
      private var _2130779630starsAnim:BriskMCDynaLib;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var _878929322uiInfolayerAlignmentLine2:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean = false;
      
      private var _data:BoosterpackAnimationLayerVo;
      
      private var _startAnimation:Boolean = false;
      
      private var _stars:BitmapClip;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BoosterpackSublevelAnimationLayer()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._BoosterpackSublevelAnimationLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackSublevelAnimationLayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return BoosterpackSublevelAnimationLayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._BoosterpackSublevelAnimationLayer_HGroup1_c(),this._BoosterpackSublevelAnimationLayer_BriskMCDynaLib3_i()];
         this.addEventListener("creationComplete",this.___BoosterpackSublevelAnimationLayer_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         BoosterpackSublevelAnimationLayer._watcherSetupUtil = param1;
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
      
      private function onCreationComplete() : void
      {
         if(this.itemList.dataProvider == null)
         {
            this.itemList.dataProvider = new ArrayCollection();
         }
      }
      
      public function set data(param1:BoosterpackAnimationLayerVo) : void
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
         var _loc1_:String = null;
         super.commitProperties();
         if(this._isDirty)
         {
            this._isDirty = false;
            this.boosterpackImage.dynaBmpSourceName = "large_" + this._data.boosterpackVo.gfxId;
            this.boosterpackImageOpened.dynaBmpSourceName = "sublevel_boosterPack_opened";
            this.goodBuyButton.label = LocaUtils.getThousendSeperatedNumber(this._data.boosterpackVo.defaultCostAmount);
            _loc1_ = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.boosterpackVo.defaultCostConfig.goodConfig.gfxId);
            this.goodBuyButton.toolTip = LocaUtils.getString("rcl.tooltips.boosterpackstore","rcl.tooltips.boosterpackstore.buyButton.amountType",[this.goodBuyButton.label,_loc1_]);
            this.boosterpackLabel.text = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._data.boosterpackVo.locaId);
            this.skipButton.label = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.button.skip");
            this.goodBuyButton.enabled = this._data.boosterpackVo.userCanAffordGoodPrice;
            if(this._data.boosterpackVo.defaultCostConfig.goodConfig)
            {
               this.goodBuyButton.libNameRight = "gui_popups_boosterpackBook";
               this.goodBuyButton.imageNameRight = "icon_" + this._data.boosterpackVo.defaultCostConfig.goodConfig.gfxId + "_small";
            }
            var _temp_1:* = this.animationLayerStars;
            this.animationLayerStars.includeInLayout = false;
            _temp_1.visible = false;
            this.animationLayerStars.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAnimationLoaded);
            this.animationLayerStars.dynaMCSourceName = "boosterParticleAnim_Stars";
            this.animationLayerStars.dynaLibName = "gui_popups_boosterpackBook";
         }
      }
      
      private function handleSkip() : void
      {
         dispatchEvent(new Event(SKIP));
      }
      
      private function handleBuy() : void
      {
         this.goodBuyButton.enabled = false;
         dispatchEvent(new Event(BUY_BOOSTER_GOOD));
      }
      
      public function addRewardData(param1:RewardItemComponentVo) : void
      {
         if(this.itemList.dataProvider == null)
         {
            this.itemList.dataProvider = new ArrayCollection();
         }
         param1.showCreationAnimation = true;
         param1.orderId = this.itemList.dataProvider.length;
         this.itemList.dataProvider.addItem(param1);
      }
      
      public function adjustLayoutBasedOnRewardAmount(param1:int) : void
      {
         var _loc2_:TileLayout = null;
         if(param1 > 3)
         {
            _loc2_ = new TileLayout();
            _loc2_.requestedColumnCount = 3;
            _loc2_.requestedRowCount = 2;
            this.itemList.layout = _loc2_;
         }
      }
      
      public function showFinishState() : void
      {
         var _loc3_:RewardItemComponentVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:int = 0;
         this.adjustLayoutBasedOnRewardAmount(this._data.rewards.length);
         for each(_loc3_ in this._data.rewards)
         {
            _loc3_.showCreationAnimation = false;
            _loc3_.orderId = _loc2_;
            _loc1_.addItem(_loc3_);
            _loc2_++;
         }
         this.itemList.useVirtualLayout = false;
         this.itemList.dataProvider = _loc1_;
         this.skipButton.label = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.button.back");
      }
      
      private function onAnimationLoaded(param1:Event) : void
      {
         this.animationLayerStars.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAnimationLoaded);
         this._stars = new BitmapClip(this.animationLayerStars.movieClip.getChildByName("stars") as MovieClip,"stars",24);
         if(this._startAnimation)
         {
            this.playStarsAnimation();
         }
      }
      
      public function playStarsAnimation() : void
      {
         this._startAnimation = true;
         if(this._stars)
         {
            while(this.starsAnim.numChildren > 0)
            {
               this.starsAnim.removeChildAt(0);
            }
            this.starsAnim.addChild(this._stars);
            this._stars.x = -200;
            this._stars.y = -320;
            var _temp_1:* = this.starsAnim;
            this.starsAnim.visible = true;
            _temp_1.includeInLayout = true;
            this._stars.removeAfterPlay = true;
            this._stars.playOnce();
         }
      }
      
      public function switchItemPackImage() : void
      {
         var _temp_1:* = this.boosterpackImage;
         this.boosterpackImage.includeInLayout = false;
         _temp_1.visible = false;
         var _temp_2:* = this.boosterpackImageOpened;
         var _loc1_:Boolean;
         this.boosterpackImageOpened.includeInLayout = _loc1_ = true;
         _temp_2.visible = false;
      }
      
      private function _BoosterpackSublevelAnimationLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = -20;
         _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_Group2_c(),this._BoosterpackSublevelAnimationLayer_HGroup3_c(),this._BoosterpackSublevelAnimationLayer_Group6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 290;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_BriskImageDynaLib1_i(),this._BoosterpackSublevelAnimationLayer_HGroup2_c(),this._BoosterpackSublevelAnimationLayer_BriskImageDynaLib2_c(),this._BoosterpackSublevelAnimationLayer_BriskImageDynaLib3_i(),this._BoosterpackSublevelAnimationLayer_BriskImageDynaLib4_i(),this._BoosterpackSublevelAnimationLayer_BriskMCDynaLib1_c(),this._BoosterpackSublevelAnimationLayer_Group3_c(),this._BoosterpackSublevelAnimationLayer_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      
      private function _BoosterpackSublevelAnimationLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 170;
         _loc1_.height = 38;
         _loc1_.top = 212;
         _loc1_.left = 61;
         _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
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
      
      private function _BoosterpackSublevelAnimationLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 20;
         _loc1_.dynaBmpSourceName = "sublevel_booster_background_big";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 54;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
         _loc1_.visible = true;
         _loc1_.includeInLayout = true;
         _loc1_.id = "boosterpackImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterpackImage = _loc1_;
         BindingManager.executeBindings(this,"boosterpackImage",this.boosterpackImage);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 25;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "boosterpackImageOpened";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterpackImageOpened = _loc1_;
         BindingManager.executeBindings(this,"boosterpackImageOpened",this.boosterpackImageOpened);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
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
      
      private function _BoosterpackSublevelAnimationLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 100;
         _loc1_.left = 145;
         _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_BriskMCDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskMCDynaLib2_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "animationLayerStars";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.animationLayerStars = _loc1_;
         BindingManager.executeBindings(this,"animationLayerStars",this.animationLayerStars);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 290;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_Group4_c(),this._BoosterpackSublevelAnimationLayer_Group5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 10;
         _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 0;
         _loc1_.width = 205;
         _loc1_.horizontalCenter = 0;
         _loc1_.addEventListener("click",this.__skipButton_click);
         _loc1_.id = "skipButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.skipButton = _loc1_;
         BindingManager.executeBindings(this,"skipButton",this.skipButton);
         return _loc1_;
      }
      
      public function __skipButton_click(param1:MouseEvent) : void
      {
         this.handleSkip();
      }
      
      private function _BoosterpackSublevelAnimationLayer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 0;
         _loc1_.width = 205;
         _loc1_.enabled = false;
         _loc1_.horizontalCenter = 0;
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
         this.handleBuy();
      }
      
      private function _BoosterpackSublevelAnimationLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 10;
         _loc1_.width = 45;
         _loc1_.horizontalAlign = "left";
         _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
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
      
      private function _BoosterpackSublevelAnimationLayer_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_Group7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 10;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_List1_i(),this._BoosterpackSublevelAnimationLayer_UiInfolayerAlignmentLine1_i(),this._BoosterpackSublevelAnimationLayer_UiInfolayerAlignmentLine2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._BoosterpackSublevelAnimationLayer_ClassFactory1_c();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.height = 326;
         _loc1_.setStyle("skinClass",BoosterpackRewardListSkin);
         _loc1_.id = "itemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemList = _loc1_;
         BindingManager.executeBindings(this,"itemList",this.itemList);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = BoosterpackRewardItemRenderer;
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.top = 150;
         _loc1_.right = 0;
         _loc1_.lineId = 8;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_UiInfolayerAlignmentLine2_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.bottom = 150;
         _loc1_.right = 0;
         _loc1_.lineId = 9;
         _loc1_.id = "uiInfolayerAlignmentLine2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine2 = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine2",this.uiInfolayerAlignmentLine2);
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskMCDynaLib3_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_boosterpackBook";
         _loc1_.id = "starsAnim";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.starsAnim = _loc1_;
         BindingManager.executeBindings(this,"starsAnim",this.starsAnim);
         return _loc1_;
      }
      
      public function ___BoosterpackSublevelAnimationLayer_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete();
      }
      
      private function _BoosterpackSublevelAnimationLayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine.alignment");
         result[1] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLine2.alignment");
         result[2] = new Binding(this,function():Number
         {
            return animationLayerStars.x;
         },null,"starsAnim.x");
         result[3] = new Binding(this,function():Number
         {
            return animationLayerStars.y;
         },null,"starsAnim.y");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get animationLayerStars() : BriskMCDynaLib
      {
         return this._2130637772animationLayerStars;
      }
      
      public function set animationLayerStars(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._2130637772animationLayerStars;
         if(_loc2_ !== param1)
         {
            this._2130637772animationLayerStars = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"animationLayerStars",_loc2_,param1));
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
      public function get boosterpackImageOpened() : BriskImageDynaLib
      {
         return this._1463972923boosterpackImageOpened;
      }
      
      public function set boosterpackImageOpened(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1463972923boosterpackImageOpened;
         if(_loc2_ !== param1)
         {
            this._1463972923boosterpackImageOpened = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImageOpened",_loc2_,param1));
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
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _loc2_:Object = this._1177280081itemList;
         if(_loc2_ !== param1)
         {
            this._1177280081itemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
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
      public function get skipButton() : MultistateButton
      {
         return this._319513199skipButton;
      }
      
      public function set skipButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._319513199skipButton;
         if(_loc2_ !== param1)
         {
            this._319513199skipButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starsAnim() : BriskMCDynaLib
      {
         return this._2130779630starsAnim;
      }
      
      public function set starsAnim(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._2130779630starsAnim;
         if(_loc2_ !== param1)
         {
            this._2130779630starsAnim = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starsAnim",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc2_ !== param1)
         {
            this._1218573432uiInfolayerAlignmentLine = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine2() : UiInfolayerAlignmentLine
      {
         return this._878929322uiInfolayerAlignmentLine2;
      }
      
      public function set uiInfolayerAlignmentLine2(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._878929322uiInfolayerAlignmentLine2;
         if(_loc2_ !== param1)
         {
            this._878929322uiInfolayerAlignmentLine2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine2",_loc2_,param1));
            }
         }
      }
   }
}

