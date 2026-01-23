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
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementBoosterpackVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementStoreListVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.VScaleThreeComponent;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.skins.ImprovementStoreListSkin;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.vo.ImprovementStoreDataGridLayerVo;
   import net.bigpoint.cityrama.view.popup.ui.components.FeatureLockedScreen;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class ImprovementStoreDataGrid extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const BUY_PACK:String = "BUY_PACK";
      
      public static const OPEN_CURRENCY_VIRTUAL:String = "OPEN_CURRENCY_VIRTUAL";
      
      public static const OPEN_CURRENCY_REAL:String = "OPEN_CURRENCY_REAL";
      
      private var _724833207availableItemsHeadlineLabel:LocaLabel;
      
      private var _1271589544buyButton:MultistateButton;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _56713611itemDescriptionLabel:LocaLabel;
      
      private var _1177184812itemIcon:BriskImageDynaLib;
      
      private var _1177280081itemList:List;
      
      private var _777691818itemNameLabel:LocaLabel;
      
      private var _2016210966lockedScreen:FeatureLockedScreen;
      
      private var _872747822specialIcon:BriskImageDynaLib;
      
      private var _843932899storeFlavourText:LocaLabel;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementStoreDataGridLayerVo;
      
      private var _isDirty:Boolean;
      
      private var _selectedIndex:int = 0;
      
      private var _selectedItem:ImprovementBoosterpackVo;
      
      private var _overrideBuyButton:Boolean = true;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementStoreDataGrid()
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
         bindings = this._ImprovementStoreDataGrid_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_improvementStore_ui_components_ImprovementStoreDataGridWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ImprovementStoreDataGrid[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._ImprovementStoreDataGrid_VGroup1_c(),this._ImprovementStoreDataGrid_FeatureLockedScreen1_i()];
         this.addEventListener("creationComplete",this.___ImprovementStoreDataGrid_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ImprovementStoreDataGrid._watcherSetupUtil = param1;
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.storeFlavourText.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.flavour");
         this.availableItemsHeadlineLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.availablePacks.capital");
      }
      
      public function set data(param1:ImprovementStoreDataGridLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ArrayCollection = null;
         var _loc2_:ImprovementStoreListVo = null;
         var _loc3_:ImprovementBoosterpackVo = null;
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            _loc1_ = new ArrayCollection();
            for each(_loc3_ in this._data.improvementPacks)
            {
               _loc2_ = new ImprovementStoreListVo();
               _loc2_.improvementPack = _loc3_;
               _loc2_.currencyType = _loc3_.currencyType;
               _loc2_.price = _loc3_.defaultCostAmount;
               _loc1_.addItem(_loc2_);
            }
            this.itemList.dataProvider = _loc1_;
            this.selectItem(this._selectedIndex);
         }
         super.commitProperties();
      }
      
      public function locked(param1:int) : void
      {
         var _temp_1:* = this;
         this.mouseChildren = false;
         _temp_1.mouseEnabled = false;
         var _temp_2:* = this.lockedScreen;
         var _loc2_:Boolean;
         this.lockedScreen.visible = _loc2_ = true;
         _temp_2.includeInLayout = false;
         this.lockedScreen.textLabel.text = LocaUtils.getString("rcl.booklayer.lockedFeature","rcl.booklayer.lockedFeature.improvementstore",[param1]);
      }
      
      private function handleButtonClicked(param1:MouseEvent) : void
      {
         if(this.itemList.selectedIndex == -1)
         {
            throw new RamaCityError("There is no ImprovementPack to buy!");
         }
         this._selectedItem = this._data.improvementPacks[this.itemList.selectedIndex];
         if(this.buyButton.showPlus)
         {
            if(this._selectedItem.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
            {
               dispatchEvent(new Event(OPEN_CURRENCY_REAL,true,true));
            }
            else if(this._selectedItem.currencyType == ServerResConst.RESOURCE_VIRTUALCURRENCY)
            {
               dispatchEvent(new Event(OPEN_CURRENCY_VIRTUAL,true,true));
            }
         }
         else
         {
            dispatchEvent(new Event(BUY_PACK,true,true));
         }
      }
      
      private function selectItem(param1:int) : void
      {
         if(this._data == null || param1 < 0 || param1 >= this.itemList.dataProvider.length)
         {
            this.buyButton.enabled = false;
            return;
         }
         this.itemList.selectedIndex = param1;
         this._selectedIndex = param1;
         var _loc2_:ImprovementBoosterpackVo = (this.itemList.dataProvider[param1] as ImprovementStoreListVo).improvementPack;
         if(_loc2_.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
         {
            this.itemBackground.dynaBmpSourceName = "improvement_shop_item_background_big_yellow";
            this.specialIcon.visible = this.specialIcon.includeInLayout = true;
         }
         else
         {
            this.itemBackground.dynaBmpSourceName = "improvement_shop_item_background_big_blue";
            this.specialIcon.visible = this.specialIcon.includeInLayout = false;
         }
         this.itemIcon.dynaBmpSourceName = "improvementPack_" + _loc2_.gfxId;
         this.itemNameLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.itemLabel." + _loc2_.locaId);
         this.itemDescriptionLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.itemContentLabel." + _loc2_.locaId);
         this.buyButton.showPlus = !this.getBuyButtonState(_loc2_);
         this.buyButton.label = Math.abs(_loc2_.defaultCostAmount) + "";
         this.buyButton.imageNameRight = _loc2_.currencyType == ServerResConst.RESOURCE_REALCURRENCY ? "layer_rc_icon" : "layer_cc_icon";
         this.buyButton.useConfirmation = _loc2_.currencyType == ServerResConst.RESOURCE_REALCURRENCY;
         this.buyButton.priceToConfirm = Math.abs(_loc2_.defaultCostAmount);
      }
      
      private function itemList_changeHandler(param1:IndexChangeEvent) : void
      {
         this.selectItem(param1.newIndex);
      }
      
      public function get selectedItem() : ImprovementBoosterpackVo
      {
         return this._selectedItem;
      }
      
      public function enableBuyButton(param1:Boolean) : void
      {
         this._overrideBuyButton = param1;
         this.selectItem(this._selectedIndex);
      }
      
      private function getBuyButtonState(param1:ImprovementBoosterpackVo) : Boolean
      {
         return this._overrideBuyButton && (param1.currencyType == ServerResConst.RESOURCE_REALCURRENCY ? this._data.realCurrency : this._data.virtualCurrency) >= Math.abs(param1.defaultCostAmount);
      }
      
      private function _ImprovementStoreDataGrid_VGroup1_c() : VGroup
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
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_VGroup2_c(),this._ImprovementStoreDataGrid_HGroup1_c(),this._ImprovementStoreDataGrid_Group5_c(),this._ImprovementStoreDataGrid_Group6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 35;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
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
      
      private function _ImprovementStoreDataGrid_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 195;
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_Group2_c(),this._ImprovementStoreDataGrid_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 202;
         _loc1_.height = 195;
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_BriskImageDynaLib1_i(),this._ImprovementStoreDataGrid_BriskImageDynaLib2_i(),this._ImprovementStoreDataGrid_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      
      private function _ImprovementStoreDataGrid_BriskImageDynaLib2_i() : BriskImageDynaLib
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
      
      private function _ImprovementStoreDataGrid_BriskImageDynaLib3_i() : BriskImageDynaLib
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
      
      private function _ImprovementStoreDataGrid_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_VScaleThreeComponent1_c(),this._ImprovementStoreDataGrid_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_VScaleThreeComponent1_c() : VScaleThreeComponent
      {
         var _loc1_:VScaleThreeComponent = new VScaleThreeComponent();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.width = 472;
         _loc1_.height = 188;
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
      
      private function _ImprovementStoreDataGrid_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.width = 472;
         _loc1_.height = 188;
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingBottom = 15;
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_Group4_c(),this._ImprovementStoreDataGrid_VGroup4_c(),this._ImprovementStoreDataGrid_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_Rect1_c(),this._ImprovementStoreDataGrid_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_Rect1_c() : Rect
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
         _loc1_.fill = this._ImprovementStoreDataGrid_RadialGradient1_c();
         _loc1_.filters = [this._ImprovementStoreDataGrid_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._ImprovementStoreDataGrid_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 18;
         _loc1_.paddingRight = 18;
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStylePadding";
         _loc1_.percentWidth = 100;
         _loc1_.maxWidth = 450;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("fontSize",13);
         _loc1_.setStyle("paddingTop",24);
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "itemNameLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemNameLabel = _loc1_;
         BindingManager.executeBindings(this,"itemNameLabel",this.itemNameLabel);
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 17;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.maxWidth = 450;
         _loc1_.styleName = "improvementStoreDescription";
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "itemDescriptionLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemDescriptionLabel = _loc1_;
         BindingManager.executeBindings(this,"itemDescriptionLabel",this.itemDescriptionLabel);
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.imageNameRight = "layer_rc_icon";
         _loc1_.libNameRight = "gui_resources_icons";
         _loc1_.width = 180;
         _loc1_.horizontalCenter = 0;
         _loc1_.addEventListener("click",this.__buyButton_click);
         _loc1_.id = "buyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buyButton = _loc1_;
         BindingManager.executeBindings(this,"buyButton",this.buyButton);
         return _loc1_;
      }
      
      public function __buyButton_click(param1:MouseEvent) : void
      {
         this.handleButtonClicked(param1);
      }
      
      private function _ImprovementStoreDataGrid_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.top = 10;
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_Rect2_c(),this._ImprovementStoreDataGrid_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.right = -12;
         _loc1_.left = -10;
         _loc1_.top = -1;
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
         _loc1_.maxHeight = 24;
         _loc1_.fill = this._ImprovementStoreDataGrid_RadialGradient2_c();
         _loc1_.filters = [this._ImprovementStoreDataGrid_DropShadowFilter2_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_RadialGradient2_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._ImprovementStoreDataGrid_GradientEntry2_c()];
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_DropShadowFilter2_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 25;
         _loc1_.top = -4;
         _loc1_.paddingLeft = 18;
         _loc1_.paddingRight = 18;
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStylePadding";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("paddingTop",11);
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "availableItemsHeadlineLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.availableItemsHeadlineLabel = _loc1_;
         BindingManager.executeBindings(this,"availableItemsHeadlineLabel",this.availableItemsHeadlineLabel);
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_List1_i(),this._ImprovementStoreDataGrid_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ImprovementStoreDataGrid_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.height = 95;
         _loc1_.setStyle("skinClass",ImprovementStoreListSkin);
         _loc1_.addEventListener("change",this.__itemList_change);
         _loc1_.id = "itemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemList = _loc1_;
         BindingManager.executeBindings(this,"itemList",this.itemList);
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ImprovementStoreItemRenderer;
         return _loc1_;
      }
      
      public function __itemList_change(param1:IndexChangeEvent) : void
      {
         this.itemList_changeHandler(param1);
      }
      
      private function _ImprovementStoreDataGrid_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.lineId = 3;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_FeatureLockedScreen1_i() : FeatureLockedScreen
      {
         var _loc1_:FeatureLockedScreen = new FeatureLockedScreen();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "lockedScreen";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockedScreen = _loc1_;
         BindingManager.executeBindings(this,"lockedScreen",this.lockedScreen);
         return _loc1_;
      }
      
      public function ___ImprovementStoreDataGrid_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private function _ImprovementStoreDataGrid_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get availableItemsHeadlineLabel() : LocaLabel
      {
         return this._724833207availableItemsHeadlineLabel;
      }
      
      public function set availableItemsHeadlineLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._724833207availableItemsHeadlineLabel;
         if(_loc2_ !== param1)
         {
            this._724833207availableItemsHeadlineLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"availableItemsHeadlineLabel",_loc2_,param1));
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
      public function get itemDescriptionLabel() : LocaLabel
      {
         return this._56713611itemDescriptionLabel;
      }
      
      public function set itemDescriptionLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._56713611itemDescriptionLabel;
         if(_loc2_ !== param1)
         {
            this._56713611itemDescriptionLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDescriptionLabel",_loc2_,param1));
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
      public function get itemNameLabel() : LocaLabel
      {
         return this._777691818itemNameLabel;
      }
      
      public function set itemNameLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._777691818itemNameLabel;
         if(_loc2_ !== param1)
         {
            this._777691818itemNameLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemNameLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedScreen() : FeatureLockedScreen
      {
         return this._2016210966lockedScreen;
      }
      
      public function set lockedScreen(param1:FeatureLockedScreen) : void
      {
         var _loc2_:Object = this._2016210966lockedScreen;
         if(_loc2_ !== param1)
         {
            this._2016210966lockedScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedScreen",_loc2_,param1));
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
   }
}

