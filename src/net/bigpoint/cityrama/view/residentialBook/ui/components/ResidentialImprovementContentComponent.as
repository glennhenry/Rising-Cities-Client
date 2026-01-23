package net.bigpoint.cityrama.view.residentialBook.ui.components
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
   import mx.collections.IList;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.vo.DropDownAmountListItemVo;
   import net.bigpoint.cityrama.model.improvement.vo.ResidentialImprovementViewVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   import net.bigpoint.cityrama.view.popup.ui.components.FeatureLockedScreen;
   import net.bigpoint.cityrama.view.residentialBook.ResidentialImprovementContentMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public class ResidentialImprovementContentComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const OPEN_IMPROVEMENT_STORE:String = "OPEN_IMPROVEMENT_STORE";
      
      public static const OPEN_FEATURE_SCREEN:String = "OPEN_FEATURE_SCREEN";
      
      public static const SLOT_CLICKED:String = "SLOT_CLICKED";
      
      public static const SORT_FILTER_NONE:String = "SORT_FILTER_NONE";
      
      private var _400476409buildingImage:BriskImageDynaLib;
      
      private var _758761919buildingPolaroidGroup:Group;
      
      private var _1534939953emptyFlavourText:LocaLabel;
      
      private var _1905467180featureScreenButton:DynamicImageButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _2020599460inventory:ImprovementInventoryLayerComponent;
      
      private var _1637006254inventoryEmptyGroup:VGroup;
      
      private var _55351677inventoryGroup:HGroup;
      
      private var _51253512inventoryLabel:LocaLabel;
      
      private var _836813949inventorySortFilterDropDown:DropDownAmountListComponent;
      
      private var _1493824286inventorySortFilterLabel:LocaLabel;
      
      private var _2016210966lockedScreen:FeatureLockedScreen;
      
      private var _1215755049nameLabel:LocaLabel;
      
      private var _539958732polaroid:BriskImageDynaLib;
      
      private var _109532659slot1:ImprovementSlotComponent;
      
      private var _109532660slot2:ImprovementSlotComponent;
      
      private var _109532661slot3:ImprovementSlotComponent;
      
      private var _1980899187storeButton:MultistateButton;
      
      private var _1364472877uiInfolayerAlignmentLineBottom:UiInfolayerAlignmentLine;
      
      private var _1457442643uiInfolayerAlignmentLineTop:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ResidentialImprovementViewVo;
      
      private var _isDirty:Boolean;
      
      private var _inventoryDirty:Boolean;
      
      private var _currentInventorySortFilter:String = "SORT_FILTER_NONE";
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ResidentialImprovementContentComponent()
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
         bindings = this._ResidentialImprovementContentComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_residentialBook_ui_components_ResidentialImprovementContentComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ResidentialImprovementContentComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.maxWidth = 755;
         this.horizontalCenter = 0;
         this.mxmlContent = [this._ResidentialImprovementContentComponent_VGroup1_c(),this._ResidentialImprovementContentComponent_UiInfolayerAlignmentLine1_i(),this._ResidentialImprovementContentComponent_UiInfolayerAlignmentLine2_i(),this._ResidentialImprovementContentComponent_FeatureLockedScreen1_i()];
         this.addEventListener("creationComplete",this.___ResidentialImprovementContentComponent_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      private static function modifyInventoryData(param1:IList) : IList
      {
         var _loc3_:ImprovementInventoryItemRendererVo = null;
         var _loc2_:* = param1.length > 0;
         if(_loc2_)
         {
            _loc2_ = !(param1.getItemAt(0) as ImprovementInventoryItemRendererVo).isGetMore;
            if(_loc2_)
            {
               _loc3_ = new ImprovementInventoryItemRendererVo(false,true);
               param1.addItemAt(_loc3_,0);
            }
         }
         while(param1.length < 8)
         {
            param1.addItem(new ImprovementInventoryItemRendererVo(true));
         }
         return param1;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ResidentialImprovementContentComponent._watcherSetupUtil = param1;
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
         this.flavourText.text = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.flavour");
         this.inventoryLabel.text = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.inventory.capital");
         this.inventorySortFilterLabel.text = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.filter.label");
         this.emptyFlavourText.text = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.inventoryEmpty.flavour");
         this.storeButton.label = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.inventoryEmpty.btn.label.capital");
         this.storeButton.toolTip = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.inventoryEmpty.btn.tooltip");
         this.featureScreenButton.toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.info.btn.feature.tooltip");
         this.addEventListener(DropDownAmountListComponent.DROPDOWN_INDEX_CHANGED,this.handleInventorySortFilterChanged);
         this.addEventListener(ImprovementInventoryLayerComponent.ITEM_SELECTED,this.handleHighlightSlots);
         this.addEventListener(ImprovementInventoryLayerComponent.DESELECT_ALL,this.handleDeHighlightSlots);
      }
      
      private function handleDeHighlightSlots(param1:Event) : void
      {
         this.highlightSlots(false);
      }
      
      private function handleHighlightSlots(param1:Event) : void
      {
         param1.stopPropagation();
         this.highlightSlots();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:IList = null;
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.nameLabel.text = this._data.getBuildingName(true);
            this.polaroid.toolTip = this.buildingImage.toolTip = this._data.getBuildingName();
            this.buildingImage.briskDynaVo = this._data.buildingGfx;
            this.slot1.data = this._data.slotData[0];
            this.slot2.data = this._data.slotData[1];
            this.slot3.data = this._data.slotData[2];
            this.inventorySortFilterDropDown.dataProvider = this._data.sortFilterData;
         }
         if(Boolean(this._data) && this._inventoryDirty)
         {
            this._inventoryDirty = false;
            _loc1_ = this._data.inventoryData.getListAsArrayCollectionByType(this._currentInventorySortFilter);
            this.inventoryGroup.includeInLayout = this.inventoryGroup.visible = _loc1_.length > 0;
            this.inventoryEmptyGroup.includeInLayout = this.inventoryEmptyGroup.visible = !this.inventoryGroup.visible;
            this.inventory.data = modifyInventoryData(_loc1_);
         }
      }
      
      private function handleInventorySortFilterChanged(param1:IndexChangeEvent) : void
      {
         if(Boolean(this._data) && Boolean(param1))
         {
            this.highlightSlots(false);
            this._inventoryDirty = true;
            this._currentInventorySortFilter = (this._data.sortFilterData[param1.newIndex] as DropDownAmountListItemVo).sortType;
            dispatchEvent(new Event(ImprovementInventoryLayerComponent.DESELECT_ALL,true));
            invalidateProperties();
         }
      }
      
      private function handleFeatureClick() : void
      {
         dispatchEvent(new Event(OPEN_FEATURE_SCREEN,true));
      }
      
      private function handleOpenStore() : void
      {
         dispatchEvent(new Event(OPEN_IMPROVEMENT_STORE,true));
      }
      
      public function highlightSlots(param1:Boolean = true) : void
      {
         if(this.slot1.currentSlotState != ImprovementSlotComponent.STATE_SLOT_LOCKED)
         {
            this.slot1.highlight = param1;
         }
         if(this.slot2.currentSlotState != ImprovementSlotComponent.STATE_SLOT_LOCKED)
         {
            this.slot2.highlight = param1;
         }
         if(this.slot3.currentSlotState != ImprovementSlotComponent.STATE_SLOT_LOCKED)
         {
            this.slot3.highlight = param1;
         }
      }
      
      public function set data(param1:ResidentialImprovementViewVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._inventoryDirty = true;
            this._data = param1;
            if(this._currentInventorySortFilter == SORT_FILTER_NONE)
            {
               this._currentInventorySortFilter = (this._data.sortFilterData[0] as DropDownAmountListItemVo).sortType;
            }
            invalidateProperties();
         }
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
         this.lockedScreen.textLabel.text = LocaUtils.getString("rcl.booklayer.lockedFeature","rcl.booklayer.lockedFeature.residentialImprovement",[param1]);
      }
      
      public function get currentInventorySortFilter() : String
      {
         return this._currentInventorySortFilter;
      }
      
      private function _ResidentialImprovementContentComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = -10;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_HGroup1_c(),this._ResidentialImprovementContentComponent_Group4_c(),this._ResidentialImprovementContentComponent_VGroup3_i(),this._ResidentialImprovementContentComponent_HGroup14_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 210;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_Group2_i(),this._ResidentialImprovementContentComponent_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 210;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_BriskImageDynaLib1_i(),this._ResidentialImprovementContentComponent_HGroup2_c(),this._ResidentialImprovementContentComponent_BriskMCDynaLib1_c()];
         _loc1_.id = "buildingPolaroidGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buildingPolaroidGroup = _loc1_;
         BindingManager.executeBindings(this,"buildingPolaroidGroup",this.buildingPolaroidGroup);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "building_bg_polaroid_big";
         _loc1_.top = 15;
         _loc1_.id = "polaroid";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroid = _loc1_;
         BindingManager.executeBindings(this,"polaroid",this.polaroid);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 180;
         _loc1_.height = 164;
         _loc1_.top = 22;
         _loc1_.left = 7;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "buildingImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buildingImage = _loc1_;
         BindingManager.executeBindings(this,"buildingImage",this.buildingImage);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.height = 25;
         _loc1_.horizontalCenter = -1;
         _loc1_.top = 11;
         _loc1_.width = 140;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 488;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_Group3_c(),this._ResidentialImprovementContentComponent_HGroup5_c(),this._ResidentialImprovementContentComponent_HGroup6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_HGroup3_c(),this._ResidentialImprovementContentComponent_HGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.width = 480;
         _loc1_.height = 28;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_BriskImageDynaLib3_c(),this._ResidentialImprovementContentComponent_BriskImageDynaLib4_c(),this._ResidentialImprovementContentComponent_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "headline_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "headline_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "headline_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 480;
         _loc1_.height = 28;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "progressBarLabel";
         _loc1_.id = "nameLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.nameLabel = _loc1_;
         BindingManager.executeBindings(this,"nameLabel",this.nameLabel);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 480;
         _loc1_.height = 40;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "improvementLayerText";
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 16;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_ImprovementSlotComponent1_i(),this._ResidentialImprovementContentComponent_ImprovementSlotComponent2_i(),this._ResidentialImprovementContentComponent_ImprovementSlotComponent3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_ImprovementSlotComponent1_i() : ImprovementSlotComponent
      {
         var _loc1_:ImprovementSlotComponent = new ImprovementSlotComponent();
         _loc1_.id = "slot1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot1 = _loc1_;
         BindingManager.executeBindings(this,"slot1",this.slot1);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_ImprovementSlotComponent2_i() : ImprovementSlotComponent
      {
         var _loc1_:ImprovementSlotComponent = new ImprovementSlotComponent();
         _loc1_.id = "slot2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot2 = _loc1_;
         BindingManager.executeBindings(this,"slot2",this.slot2);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_ImprovementSlotComponent3_i() : ImprovementSlotComponent
      {
         var _loc1_:ImprovementSlotComponent = new ImprovementSlotComponent();
         _loc1_.id = "slot3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slot3 = _loc1_;
         BindingManager.executeBindings(this,"slot3",this.slot3);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_HGroup7_c(),this._ResidentialImprovementContentComponent_HGroup8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.width = 715;
         _loc1_.height = 28;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_BriskImageDynaLib6_c(),this._ResidentialImprovementContentComponent_BriskImageDynaLib7_c(),this._ResidentialImprovementContentComponent_BriskImageDynaLib8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "headline_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "headline_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "headline_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup8_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 715;
         _loc1_.height = 28;
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingLeft = 25;
         _loc1_.paddingRight = 5;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_HGroup9_c(),this._ResidentialImprovementContentComponent_HGroup10_c(),this._ResidentialImprovementContentComponent_DropDownAmountListComponent1_i(),this._ResidentialImprovementContentComponent_Group5_c(),this._ResidentialImprovementContentComponent_HGroup11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup9_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "departmentSecurityLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "inventoryLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inventoryLabel = _loc1_;
         BindingManager.executeBindings(this,"inventoryLabel",this.inventoryLabel);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup10_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "right";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "elevenWhiteRight";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "inventorySortFilterLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inventorySortFilterLabel = _loc1_;
         BindingManager.executeBindings(this,"inventorySortFilterLabel",this.inventorySortFilterLabel);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_DropDownAmountListComponent1_i() : DropDownAmountListComponent
      {
         var _loc1_:DropDownAmountListComponent = new DropDownAmountListComponent();
         _loc1_.width = 200;
         _loc1_.labelField = "categoryLabel";
         _loc1_.itemRenderer = this._ResidentialImprovementContentComponent_ClassFactory1_c();
         _loc1_.prompt = "";
         _loc1_.id = "inventorySortFilterDropDown";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inventorySortFilterDropDown = _loc1_;
         BindingManager.executeBindings(this,"inventorySortFilterDropDown",this.inventorySortFilterDropDown);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DropDownAmountListItemRenderer;
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup11_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 20;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureButtonWhite";
         _loc1_.addEventListener("click",this.__featureScreenButton_click);
         _loc1_.id = "featureScreenButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.featureScreenButton = _loc1_;
         BindingManager.executeBindings(this,"featureScreenButton",this.featureScreenButton);
         return _loc1_;
      }
      
      public function __featureScreenButton_click(param1:MouseEvent) : void
      {
         this.handleFeatureClick();
      }
      
      private function _ResidentialImprovementContentComponent_VGroup3_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 715;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_HGroup12_c(),this._ResidentialImprovementContentComponent_HGroup13_c()];
         _loc1_.id = "inventoryEmptyGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inventoryEmptyGroup = _loc1_;
         BindingManager.executeBindings(this,"inventoryEmptyGroup",this.inventoryEmptyGroup);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup12_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 40;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_LocaLabel5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "improvementLayerText";
         _loc1_.percentWidth = 85;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "emptyFlavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emptyFlavourText = _loc1_;
         BindingManager.executeBindings(this,"emptyFlavourText",this.emptyFlavourText);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup13_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.addEventListener("click",this.__storeButton_click);
         _loc1_.id = "storeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.storeButton = _loc1_;
         BindingManager.executeBindings(this,"storeButton",this.storeButton);
         return _loc1_;
      }
      
      public function __storeButton_click(param1:MouseEvent) : void
      {
         this.handleOpenStore();
      }
      
      private function _ResidentialImprovementContentComponent_HGroup14_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.height = 100;
         _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_ImprovementInventoryLayerComponent1_i()];
         _loc1_.id = "inventoryGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inventoryGroup = _loc1_;
         BindingManager.executeBindings(this,"inventoryGroup",this.inventoryGroup);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_ImprovementInventoryLayerComponent1_i() : ImprovementInventoryLayerComponent
      {
         var _loc1_:ImprovementInventoryLayerComponent = new ImprovementInventoryLayerComponent();
         _loc1_.width = 718;
         _loc1_.percentHeight = 100;
         _loc1_.id = "inventory";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inventory = _loc1_;
         BindingManager.executeBindings(this,"inventory",this.inventory);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 220;
         _loc1_.top = 173;
         _loc1_.right = 60;
         _loc1_.id = "uiInfolayerAlignmentLineTop";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLineTop = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLineTop",this.uiInfolayerAlignmentLineTop);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_UiInfolayerAlignmentLine2_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 50;
         _loc1_.top = 252;
         _loc1_.right = 50;
         _loc1_.id = "uiInfolayerAlignmentLineBottom";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLineBottom = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLineBottom",this.uiInfolayerAlignmentLineBottom);
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_FeatureLockedScreen1_i() : FeatureLockedScreen
      {
         var _loc1_:FeatureLockedScreen = new FeatureLockedScreen();
         _loc1_.top = -10;
         _loc1_.bottom = 0;
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
      
      public function ___ResidentialImprovementContentComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      private function _ResidentialImprovementContentComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLineTop.alignment");
         result[1] = new Binding(this,function():uint
         {
            return ResidentialImprovementContentMediator.LINE_ID_0;
         },null,"uiInfolayerAlignmentLineTop.lineId");
         result[2] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLineBottom.alignment");
         result[3] = new Binding(this,function():uint
         {
            return ResidentialImprovementContentMediator.LINE_ID_1;
         },null,"uiInfolayerAlignmentLineBottom.lineId");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingImage() : BriskImageDynaLib
      {
         return this._400476409buildingImage;
      }
      
      public function set buildingImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._400476409buildingImage;
         if(_loc2_ !== param1)
         {
            this._400476409buildingImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingPolaroidGroup() : Group
      {
         return this._758761919buildingPolaroidGroup;
      }
      
      public function set buildingPolaroidGroup(param1:Group) : void
      {
         var _loc2_:Object = this._758761919buildingPolaroidGroup;
         if(_loc2_ !== param1)
         {
            this._758761919buildingPolaroidGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingPolaroidGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emptyFlavourText() : LocaLabel
      {
         return this._1534939953emptyFlavourText;
      }
      
      public function set emptyFlavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1534939953emptyFlavourText;
         if(_loc2_ !== param1)
         {
            this._1534939953emptyFlavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emptyFlavourText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featureScreenButton() : DynamicImageButton
      {
         return this._1905467180featureScreenButton;
      }
      
      public function set featureScreenButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1905467180featureScreenButton;
         if(_loc2_ !== param1)
         {
            this._1905467180featureScreenButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featureScreenButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._800887486flavourText;
         if(_loc2_ !== param1)
         {
            this._800887486flavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inventory() : ImprovementInventoryLayerComponent
      {
         return this._2020599460inventory;
      }
      
      public function set inventory(param1:ImprovementInventoryLayerComponent) : void
      {
         var _loc2_:Object = this._2020599460inventory;
         if(_loc2_ !== param1)
         {
            this._2020599460inventory = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventory",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inventoryEmptyGroup() : VGroup
      {
         return this._1637006254inventoryEmptyGroup;
      }
      
      public function set inventoryEmptyGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1637006254inventoryEmptyGroup;
         if(_loc2_ !== param1)
         {
            this._1637006254inventoryEmptyGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventoryEmptyGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inventoryGroup() : HGroup
      {
         return this._55351677inventoryGroup;
      }
      
      public function set inventoryGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._55351677inventoryGroup;
         if(_loc2_ !== param1)
         {
            this._55351677inventoryGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventoryGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inventoryLabel() : LocaLabel
      {
         return this._51253512inventoryLabel;
      }
      
      public function set inventoryLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._51253512inventoryLabel;
         if(_loc2_ !== param1)
         {
            this._51253512inventoryLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventoryLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inventorySortFilterDropDown() : DropDownAmountListComponent
      {
         return this._836813949inventorySortFilterDropDown;
      }
      
      public function set inventorySortFilterDropDown(param1:DropDownAmountListComponent) : void
      {
         var _loc2_:Object = this._836813949inventorySortFilterDropDown;
         if(_loc2_ !== param1)
         {
            this._836813949inventorySortFilterDropDown = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventorySortFilterDropDown",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inventorySortFilterLabel() : LocaLabel
      {
         return this._1493824286inventorySortFilterLabel;
      }
      
      public function set inventorySortFilterLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1493824286inventorySortFilterLabel;
         if(_loc2_ !== param1)
         {
            this._1493824286inventorySortFilterLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventorySortFilterLabel",_loc2_,param1));
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
      public function get nameLabel() : LocaLabel
      {
         return this._1215755049nameLabel;
      }
      
      public function set nameLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1215755049nameLabel;
         if(_loc2_ !== param1)
         {
            this._1215755049nameLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroid() : BriskImageDynaLib
      {
         return this._539958732polaroid;
      }
      
      public function set polaroid(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._539958732polaroid;
         if(_loc2_ !== param1)
         {
            this._539958732polaroid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : ImprovementSlotComponent
      {
         return this._109532659slot1;
      }
      
      public function set slot1(param1:ImprovementSlotComponent) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : ImprovementSlotComponent
      {
         return this._109532660slot2;
      }
      
      public function set slot2(param1:ImprovementSlotComponent) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : ImprovementSlotComponent
      {
         return this._109532661slot3;
      }
      
      public function set slot3(param1:ImprovementSlotComponent) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get storeButton() : MultistateButton
      {
         return this._1980899187storeButton;
      }
      
      public function set storeButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1980899187storeButton;
         if(_loc2_ !== param1)
         {
            this._1980899187storeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storeButton",_loc2_,param1));
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
   }
}

