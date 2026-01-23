package net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components
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
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import mx.styles.*;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.common.vo.RewardImprovementItemComponentVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementStoreAnimationLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.ExternalScrollableList;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.VScaleThreeComponent;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.skins.ImprovementStoreRewardSkinClass;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class ImprovementStoreAnimationGrid extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const SKIP_ANIMATION:String = "SKIP_ANIMATION";
      
      private var _1351490918buyAgainLabel:LocaLabel;
      
      private var _1271589544buyButton:MultistateButton;
      
      private var _874936911itemAnimation:BriskMCDynaLib;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _1177184812itemIcon:BriskImageDynaLib;
      
      private var _1177280081itemList:ExternalScrollableList;
      
      private var _865758629pageLabel:LocaLabel;
      
      private var _872747822specialIcon:BriskImageDynaLib;
      
      private var _843932899storeFlavourText:LocaLabel;
      
      private var _1364472877uiInfolayerAlignmentLineBottom:UiInfolayerAlignmentLine;
      
      private var _1457442643uiInfolayerAlignmentLineTop:UiInfolayerAlignmentLine;
      
      private var _1429398013yourRewardsLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementStoreAnimationLayerVo;
      
      private var _isDirty:Boolean;
      
      private var _hasEnoughResources:Boolean;
      
      private var _itemAnimationClip:BitmapClip;
      
      private var _autoStartItemAnimation:Boolean;
      
      private var _currentPage:int;
      
      private var _showingBuyButton:Boolean;
      
      private var _resourcesChanged:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementStoreAnimationGrid()
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
         bindings = this._ImprovementStoreAnimationGrid_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_improvementStore_ui_components_ImprovementStoreAnimationGridWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ImprovementStoreAnimationGrid[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._ImprovementStoreAnimationGrid_VGroup1_c()];
         this.addEventListener("creationComplete",this.___ImprovementStoreAnimationGrid_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ImprovementStoreAnimationGrid._watcherSetupUtil = param1;
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
      
      public function set data(param1:ImprovementStoreAnimationLayerVo) : void
      {
         var _loc2_:RewardImprovementItemComponentVo = null;
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            this.itemList.dataProvider = new ArrayCollection();
            for each(_loc2_ in this._data.rewards)
            {
               this.itemList.dataProvider.addItem(_loc2_);
            }
            this.itemIcon.dynaBmpSourceName = "improvementPack_" + this._data.boosterpackVo.gfxId;
            if(this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
            {
               this.itemBackground.dynaBmpSourceName = "improvement_shop_item_background_big_yellow";
               this.specialIcon.visible = this.specialIcon.includeInLayout = true;
            }
            else
            {
               this.itemBackground.dynaBmpSourceName = "improvement_shop_item_background_big_blue";
               this.specialIcon.visible = this.specialIcon.includeInLayout = false;
            }
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            var _temp_2:* = this.itemAnimation;
            this.itemAnimation.includeInLayout = false;
            _temp_2.visible = false;
            this._autoStartItemAnimation = false;
            this.itemAnimation.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onItemAnimationLoaded);
            this.itemAnimation.dynaMCSourceName = "improvementStore_pack_" + this._data.boosterpackVo.gfxId;
            this.ShowBuyButton();
         }
         if(Boolean(this._data) && this._resourcesChanged)
         {
            this._resourcesChanged = false;
            if(this._showingBuyButton)
            {
               this.ShowBuyButton();
            }
         }
      }
      
      private function handleBuy(param1:MouseEvent) : void
      {
         if(this.buyButton.showPlus)
         {
            if(this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
            {
               dispatchEvent(new Event(ImprovementStoreDataGrid.OPEN_CURRENCY_REAL,true,true));
            }
            else if(this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_VIRTUALCURRENCY)
            {
               dispatchEvent(new Event(ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL,true,true));
            }
         }
         else
         {
            dispatchEvent(new Event(ImprovementStoreDataGrid.BUY_PACK,true,true));
         }
      }
      
      private function handleSkip(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(SKIP_ANIMATION,true));
      }
      
      public function ShowBuyButton() : void
      {
         if(this.buyButton.hasEventListener(MouseEvent.CLICK))
         {
            this.buyButton.removeEventListener(MouseEvent.CLICK,this.handleSkip);
         }
         this._showingBuyButton = true;
         this.buyAgainLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.buyAgain");
         this.buyButton.showPlus = !this._hasEnoughResources;
         this.buyButton.useConfirmation = this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_REALCURRENCY;
         this.buyButton.priceToConfirm = Math.abs(this._data.boosterpackVo.defaultCostAmount);
         this.buyButton.imageNameRight = this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_REALCURRENCY ? "layer_rc_icon" : "layer_cc_icon";
         var _temp_1:* = this.buyButton.iconRight;
         this.buyButton.iconRight.includeInLayout = true;
         _temp_1.visible = true;
         this.buyButton.label = Math.abs(this._data.boosterpackVo.defaultCostAmount) + "";
         this.buyButton.addEventListener(MouseEvent.CLICK,this.handleBuy);
      }
      
      public function hasEnoughResources(param1:Boolean) : void
      {
         this._resourcesChanged = true;
         this._hasEnoughResources = param1;
         this.commitProperties();
      }
      
      public function enableScrolling(param1:Boolean) : void
      {
         this.itemList.enabled = param1;
      }
      
      public function scrollToNextPage() : void
      {
         this._currentPage = this.itemList.pageIndex;
         ++this._currentPage;
         this.pageLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.page",[this._currentPage + 1,this.itemList.numPages + 1]);
         this.itemList.scrollToPage(this._currentPage);
      }
      
      public function get hasNextPage() : Boolean
      {
         return this._currentPage < this.itemList.numPages;
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this._currentPage = -1;
         this.itemList.hscrollerBar.addEventListener(FlexEvent.UPDATE_COMPLETE,this.scrollChangeHandler);
         this.storeFlavourText.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.flavour");
         this.yourRewardsLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.rewards.capital");
      }
      
      private function scrollChangeHandler(param1:Event) : void
      {
         if(this._currentPage != this.itemList.pageIndex)
         {
            this._currentPage = this.itemList.pageIndex;
            this.pageLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.page",[this._currentPage + 1,this.itemList.numPages + 1]);
         }
      }
      
      private function onItemAnimationLoaded(param1:Event) : void
      {
         this.itemAnimation.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onItemAnimationLoaded);
         this._itemAnimationClip = new BitmapClip(this.itemAnimation.movieClip as MovieClip,"improvementStore_pack_" + this._data.boosterpackVo.gfxId,12);
         if(this._autoStartItemAnimation)
         {
            this.startItemAnimation();
         }
      }
      
      public function startItemAnimation() : void
      {
         this._autoStartItemAnimation = true;
         if(this._itemAnimationClip)
         {
            this.itemIcon.visible = false;
            this.itemAnimation.removeChildren();
            this.itemAnimation.addChild(this._itemAnimationClip);
            var _temp_1:* = this.itemAnimation;
            this.itemAnimation.includeInLayout = true;
            _temp_1.visible = true;
            this._itemAnimationClip.removeAfterPlay = true;
            this._itemAnimationClip.addEventListener(Event.REMOVED,this.RemoveItemAnimation);
            this._itemAnimationClip.playOnce();
         }
      }
      
      public function RemoveItemAnimation(param1:Event) : void
      {
         this.itemIcon.visible = true;
         this.itemIcon.dynaBmpSourceName = "improvementPackUnwrapped_" + this._data.boosterpackVo.gfxId;
         var _temp_1:* = this.itemAnimation;
         this.itemAnimation.includeInLayout = false;
         _temp_1.visible = false;
      }
      
      private function _ImprovementStoreAnimationGrid_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 675;
         _loc1_.top = -11;
         _loc1_.paddingLeft = 14;
         _loc1_.paddingRight = 6;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_VGroup2_c(),this._ImprovementStoreAnimationGrid_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 35;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "DEV: Some explanation text here";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "flavorText";
         _loc1_.maxWidth = 675;
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "storeFlavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.storeFlavourText = _loc1_;
         BindingManager.executeBindings(this,"storeFlavourText",this.storeFlavourText);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_VGroup3_c(),this._ImprovementStoreAnimationGrid_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_Group2_c(),this._ImprovementStoreAnimationGrid_VGroup4_c(),this._ImprovementStoreAnimationGrid_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 202;
         _loc1_.height = 195;
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_BriskImageDynaLib1_i(),this._ImprovementStoreAnimationGrid_BriskImageDynaLib2_i(),this._ImprovementStoreAnimationGrid_BriskMCDynaLib1_i(),this._ImprovementStoreAnimationGrid_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.width = 202;
         _loc1_.height = 188;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.id = "itemBackground";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemBackground = _loc1_;
         BindingManager.executeBindings(this,"itemBackground",this.itemBackground);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvementStore";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = -4;
         _loc1_.id = "itemIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemIcon = _loc1_;
         BindingManager.executeBindings(this,"itemIcon",this.itemIcon);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.left = 101;
         _loc1_.top = 10;
         _loc1_.dynaLibName = "gui_popups_improvementStore";
         _loc1_.id = "itemAnimation";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemAnimation = _loc1_;
         BindingManager.executeBindings(this,"itemAnimation",this.itemAnimation);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = -18;
         _loc1_.left = -11;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "improvement_shop_sparkle_big";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "specialIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.specialIcon = _loc1_;
         BindingManager.executeBindings(this,"specialIcon",this.specialIcon);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 55;
         _loc1_.paddingTop = 10;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "";
         _loc1_.maxWidth = 180;
         _loc1_.width = 180;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "improvementStoreDescription";
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "buyAgainLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buyAgainLabel = _loc1_;
         BindingManager.executeBindings(this,"buyAgainLabel",this.buyAgainLabel);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.libNameRight = "gui_resources_icons";
         _loc1_.label = "";
         _loc1_.width = 180;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "buyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buyButton = _loc1_;
         BindingManager.executeBindings(this,"buyButton",this.buyButton);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_VScaleThreeComponent1_c(),this._ImprovementStoreAnimationGrid_VGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_VScaleThreeComponent1_c() : VScaleThreeComponent
      {
         var _loc1_:VScaleThreeComponent = new VScaleThreeComponent();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.width = 472;
         _loc1_.height = 315;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceNameTop = "improvement_shop_item_description_background_top";
         _loc1_.dynaBmpSourceNameMiddle = "improvement_shop_item_description_background_middle";
         _loc1_.dynaBmpSourceNameBottom = "improvement_shop_item_description_background_bottom";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_VGroup5_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.width = 472;
         _loc1_.height = 315;
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingBottom = 15;
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_Group4_c(),this._ImprovementStoreAnimationGrid_Group5_c(),this._ImprovementStoreAnimationGrid_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 45;
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_Rect1_c(),this._ImprovementStoreAnimationGrid_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 10;
         _loc1_.right = 10;
         _loc1_.top = 10;
         _loc1_.bottomLeftRadiusX = 10;
         _loc1_.bottomLeftRadiusY = 30;
         _loc1_.bottomRightRadiusX = 10;
         _loc1_.bottomRightRadiusY = 30;
         _loc1_.topLeftRadiusX = 10;
         _loc1_.topLeftRadiusY = 30;
         _loc1_.topRightRadiusX = 10;
         _loc1_.topRightRadiusY = 30;
         _loc1_.percentHeight = 100;
         _loc1_.minHeight = 35;
         _loc1_.maxHeight = 35;
         _loc1_.fill = this._ImprovementStoreAnimationGrid_RadialGradient1_c();
         _loc1_.filters = [this._ImprovementStoreAnimationGrid_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._ImprovementStoreAnimationGrid_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 18;
         _loc1_.paddingRight = 18;
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStylePadding";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.text = "";
         _loc1_.setStyle("fontSize",13);
         _loc1_.setStyle("paddingTop",24);
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "yourRewardsLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.yourRewardsLabel = _loc1_;
         BindingManager.executeBindings(this,"yourRewardsLabel",this.yourRewardsLabel);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_ExternalScrollableList1_i(),this._ImprovementStoreAnimationGrid_UiInfolayerAlignmentLine1_i(),this._ImprovementStoreAnimationGrid_UiInfolayerAlignmentLine2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_ExternalScrollableList1_i() : ExternalScrollableList
      {
         var _loc1_:ExternalScrollableList = new ExternalScrollableList();
         _loc1_.itemRenderer = this._ImprovementStoreAnimationGrid_ClassFactory1_c();
         _loc1_.width = 448;
         _loc1_.height = 240;
         _loc1_.setStyle("skinClass",ImprovementStoreRewardSkinClass);
         _loc1_.id = "itemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemList = _loc1_;
         BindingManager.executeBindings(this,"itemList",this.itemList);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ImprovementStoreRewardItemRenderer;
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 90;
         _loc1_.top = 70;
         _loc1_.right = 90;
         _loc1_.lineId = 0;
         _loc1_.id = "uiInfolayerAlignmentLineTop";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLineTop = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLineTop",this.uiInfolayerAlignmentLineTop);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_UiInfolayerAlignmentLine2_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 90;
         _loc1_.top = 190;
         _loc1_.right = 90;
         _loc1_.lineId = 1;
         _loc1_.id = "uiInfolayerAlignmentLineBottom";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLineBottom = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLineBottom",this.uiInfolayerAlignmentLineBottom);
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "improvementStorePage";
         _loc1_.id = "pageLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pageLabel = _loc1_;
         BindingManager.executeBindings(this,"pageLabel",this.pageLabel);
         return _loc1_;
      }
      
      public function ___ImprovementStoreAnimationGrid_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private function _ImprovementStoreAnimationGrid_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLineTop.alignment");
         result[1] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLineBottom.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get buyAgainLabel() : LocaLabel
      {
         return this._1351490918buyAgainLabel;
      }
      
      public function set buyAgainLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1351490918buyAgainLabel;
         if(_loc2_ !== param1)
         {
            this._1351490918buyAgainLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyAgainLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : MultistateButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1271589544buyButton;
         if(_loc2_ !== param1)
         {
            this._1271589544buyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAnimation() : BriskMCDynaLib
      {
         return this._874936911itemAnimation;
      }
      
      public function set itemAnimation(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._874936911itemAnimation;
         if(_loc2_ !== param1)
         {
            this._874936911itemAnimation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAnimation",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBackground() : BriskImageDynaLib
      {
         return this._1295462561itemBackground;
      }
      
      public function set itemBackground(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1295462561itemBackground;
         if(_loc2_ !== param1)
         {
            this._1295462561itemBackground = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBackground",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemIcon() : BriskImageDynaLib
      {
         return this._1177184812itemIcon;
      }
      
      public function set itemIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1177184812itemIcon;
         if(_loc2_ !== param1)
         {
            this._1177184812itemIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : ExternalScrollableList
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:ExternalScrollableList) : void
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
      public function get pageLabel() : LocaLabel
      {
         return this._865758629pageLabel;
      }
      
      public function set pageLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._865758629pageLabel;
         if(_loc2_ !== param1)
         {
            this._865758629pageLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get specialIcon() : BriskImageDynaLib
      {
         return this._872747822specialIcon;
      }
      
      public function set specialIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._872747822specialIcon;
         if(_loc2_ !== param1)
         {
            this._872747822specialIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get storeFlavourText() : LocaLabel
      {
         return this._843932899storeFlavourText;
      }
      
      public function set storeFlavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._843932899storeFlavourText;
         if(_loc2_ !== param1)
         {
            this._843932899storeFlavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storeFlavourText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLineBottom() : UiInfolayerAlignmentLine
      {
         return this._1364472877uiInfolayerAlignmentLineBottom;
      }
      
      public function set uiInfolayerAlignmentLineBottom(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._1364472877uiInfolayerAlignmentLineBottom;
         if(_loc2_ !== param1)
         {
            this._1364472877uiInfolayerAlignmentLineBottom = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLineBottom",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLineTop() : UiInfolayerAlignmentLine
      {
         return this._1457442643uiInfolayerAlignmentLineTop;
      }
      
      public function set uiInfolayerAlignmentLineTop(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._1457442643uiInfolayerAlignmentLineTop;
         if(_loc2_ !== param1)
         {
            this._1457442643uiInfolayerAlignmentLineTop = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLineTop",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get yourRewardsLabel() : LocaLabel
      {
         return this._1429398013yourRewardsLabel;
      }
      
      public function set yourRewardsLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1429398013yourRewardsLabel;
         if(_loc2_ !== param1)
         {
            this._1429398013yourRewardsLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yourRewardsLabel",_loc2_,param1));
            }
         }
      }
   }
}

