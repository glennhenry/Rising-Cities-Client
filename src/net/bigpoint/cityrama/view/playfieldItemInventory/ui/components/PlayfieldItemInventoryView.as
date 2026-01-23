package net.bigpoint.cityrama.view.playfieldItemInventory.ui.components
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
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryViewVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HScaleThreeComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StandardInventoryList;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.ImprovementInventoryItemRenderer;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.InventoryRadioButton;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.RadioButtonGroup;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class PlayfieldItemInventoryView extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const EVENT_ALL_DESELECTED:String = "EVENT_ALL_DESELECTED";
      
      public static const EVENT_MINIMIZED_CHANGED:String = "EVENT_MINIMIZED_CHANGED";
      
      private var _1332194002background:HScaleThreeComponent;
      
      private var _1310457130flavourTextLabel:LocaLabel;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _854143319minimiseButton:ToggleButton;
      
      private var _1789086453minimisedLabel:LocaLabel;
      
      private var _1943769783playfieldItemList:StandardInventoryList;
      
      private var _1551432119sortingButtonGroup:HGroup;
      
      private var _353794723sortingButtons:RadioButtonGroup;
      
      private var _62340928sortingCommercialButton:InventoryRadioButton;
      
      private var _930584998sortingDecorationButton:InventoryRadioButton;
      
      private var _752823809sortingEmergencyButton:InventoryRadioButton;
      
      private var _527723058sortingResidentialButton:InventoryRadioButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:PlayfieldItemInventoryViewVo;
      
      private var _isDirty:Boolean;
      
      private var _scrollIndexWaiting:int = -1;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PlayfieldItemInventoryView()
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
         bindings = this._PlayfieldItemInventoryView_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_playfieldItemInventory_ui_components_PlayfieldItemInventoryViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PlayfieldItemInventoryView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.height = 150;
         this.top = -4;
         this.mxmlContent = [this._PlayfieldItemInventoryView_HScaleThreeComponent1_i(),this._PlayfieldItemInventoryView_VGroup1_c()];
         this._PlayfieldItemInventoryView_RadioButtonGroup1_i();
         this.addEventListener("creationComplete",this.___PlayfieldItemInventoryView_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PlayfieldItemInventoryView._watcherSetupUtil = param1;
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
         this.headerTextLabel.text = LocaUtils.getString("rcl.booklayer.inventory","rcl.booklayer.inventory.buildings.title.capital");
         this.minimisedLabel.text = LocaUtils.getString("rcl.booklayer.inventory","rcl.booklayer.inventory.minimised");
         this.flavourTextLabel.text = LocaUtils.getString("rcl.booklayer.inventory","rcl.booklayer.inventory.flavour");
         this.playfieldItemList.addEventListener(IndexChangeEvent.CHANGE,this.handleListIndexChanged);
         this.setTooltips();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.calculateListGap();
            this.handleSortingChanged();
            this.checkPreSelection();
            this.sortingResidentialButton.amountLabelValue = this._data.getCategoryAmountLabel(this.sortingResidentialButton.value.toString());
            this.sortingCommercialButton.amountLabelValue = this._data.getCategoryAmountLabel(this.sortingCommercialButton.value.toString());
            this.sortingDecorationButton.amountLabelValue = this._data.getCategoryAmountLabel(this.sortingDecorationButton.value.toString());
            this.sortingEmergencyButton.amountLabelValue = this._data.getCategoryAmountLabel(this.sortingEmergencyButton.value.toString());
            this.minimize = this._data.minimized;
         }
      }
      
      private function checkPreSelection() : void
      {
         if(this._data.preselectedIndex != -1)
         {
            this.playfieldItemList.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleListUpdate);
         }
      }
      
      private function handleListUpdate(param1:FlexEvent) : void
      {
         this.playfieldItemList.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleListUpdate);
         this.playfieldItemList.selectedIndex = this._data.preselectedIndex;
         this.playfieldItemList.ensureIndexIsVisible(this._data.preselectedIndex);
      }
      
      private function handleSortingChanged(param1:ItemClickEvent = null) : void
      {
         if(param1)
         {
            dispatchEvent(new Event(EVENT_ALL_DESELECTED,false));
         }
         this.playfieldItemList.dataProvider = this._data.getSortedItemList(this.sortingButtons.selectedValue == null ? ServerTagConstants.RESIDENTIAL : this.sortingButtons.selectedValue.toString());
      }
      
      private function set minimize(param1:Boolean) : void
      {
         if(this.minimiseButton)
         {
            this.minimiseButton.selected = param1;
            this.handleMinimiseButton();
         }
      }
      
      private function handleMinimiseButton(param1:Event = null) : void
      {
         if(!this.minimiseButton.selected)
         {
            this.background.top = 0;
            this.height = 150;
            this.minimisedLabel.visible = false;
            this.flavourTextLabel.visible = this.flavourTextLabel.includeInLayout = true;
            this.sortingButtonGroup.visible = this.sortingButtonGroup.includeInLayout = true;
            this.playfieldItemList.visible = this.playfieldItemList.includeInLayout = true;
         }
         else
         {
            this.background.top = -110;
            this.height = 40;
            this.minimisedLabel.visible = true;
            this.flavourTextLabel.visible = this.flavourTextLabel.includeInLayout = false;
            this.sortingButtonGroup.visible = this.sortingButtonGroup.includeInLayout = false;
            this.playfieldItemList.visible = this.playfieldItemList.includeInLayout = false;
         }
         dispatchEvent(new Event(EVENT_MINIMIZED_CHANGED,true));
      }
      
      private function setTooltips() : void
      {
         this.sortingResidentialButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.category.residential");
         this.sortingCommercialButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.category.shops");
         this.sortingDecorationButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.category.decoration");
         this.sortingEmergencyButton.toolTip = LocaUtils.getString("rcl.booklayer.inventory","rcl.booklayer.inventory.category.tooltip.emergencyItems");
         this.minimiseButton.toolTip = LocaUtils.getString("rcl.tooltips.hipInventory","rcl.tooltips.hipInventory.minimize");
      }
      
      private function handleListIndexChanged(param1:IndexChangeEvent) : void
      {
         if(param1.newIndex == -1)
         {
            dispatchEvent(new Event(EVENT_ALL_DESELECTED,false));
         }
      }
      
      public function set data(param1:PlayfieldItemInventoryViewVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      public function set sortCategory(param1:String) : void
      {
         this.sortingButtons.selectedValue = param1;
         this.handleSortingChanged();
      }
      
      public function get inventoryMinimized() : Boolean
      {
         if(this.minimiseButton)
         {
            return this.minimiseButton.selected;
         }
         return false;
      }
      
      public function scrollToIndex(param1:int) : void
      {
         if(param1 != -1)
         {
            if(this.playfieldItemList.currentState == null)
            {
               this._scrollIndexWaiting = param1;
               this.playfieldItemList.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleListReadyToScroll);
               return;
            }
            this.playfieldItemList.ensureIndexIsVisible(param1);
         }
      }
      
      public function resetSelection() : void
      {
         this.playfieldItemList.selectedIndex = -1;
         dispatchEvent(new Event(EVENT_ALL_DESELECTED,false));
      }
      
      private function handleListReadyToScroll(param1:FlexEvent) : void
      {
         this.playfieldItemList.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleListReadyToScroll);
         if(this._scrollIndexWaiting != -1)
         {
            this.playfieldItemList.ensureIndexIsVisible(this._scrollIndexWaiting);
            this._scrollIndexWaiting = -1;
         }
      }
      
      private function calculateListGap() : void
      {
         if(!this.playfieldItemList.dataProvider)
         {
            return;
         }
         var _loc1_:Number = ImprovementInventoryItemRenderer.itemWidth;
         var _loc3_:Number = this.playfieldItemList.width - 82;
         var _loc4_:int = Math.floor(_loc3_ / _loc1_);
         (this.playfieldItemList.dataGroup.layout as HorizontalLayout).gap = (_loc3_ - _loc4_ * _loc1_) / _loc4_;
      }
      
      private function handleMinimisedComponentClick(param1:MouseEvent) : void
      {
         if(Boolean(this._data) && this.inventoryMinimized)
         {
            if(!(param1.target is ToggleButton))
            {
               this.minimize = false;
            }
         }
      }
      
      private function _PlayfieldItemInventoryView_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.addEventListener("itemClick",this.__sortingButtons_itemClick);
         _loc1_.initialized(this,"sortingButtons");
         this.sortingButtons = _loc1_;
         BindingManager.executeBindings(this,"sortingButtons",this.sortingButtons);
         return _loc1_;
      }
      
      public function __sortingButtons_itemClick(param1:ItemClickEvent) : void
      {
         this.handleSortingChanged(param1);
      }
      
      private function _PlayfieldItemInventoryView_HScaleThreeComponent1_i() : HScaleThreeComponent
      {
         var _loc1_:HScaleThreeComponent = new HScaleThreeComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 150;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceNameLeft = "inventory_bg_left";
         _loc1_.dynaBmpSourceNameMiddle = "inventory_bg_middle";
         _loc1_.dynaBmpSourceNameRight = "inventory_bg_right";
         _loc1_.id = "background";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_Group2_c(),this._PlayfieldItemInventoryView_LocaLabel3_i(),this._PlayfieldItemInventoryView_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_Rect1_c(),this._PlayfieldItemInventoryView_HGroup1_c()];
         _loc1_.addEventListener("click",this.___PlayfieldItemInventoryView_Group2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 10;
         _loc1_.right = 10;
         _loc1_.top = 5;
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
         _loc1_.fill = this._PlayfieldItemInventoryView_RadialGradient1_c();
         _loc1_.filters = [this._PlayfieldItemInventoryView_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._PlayfieldItemInventoryView_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 18;
         _loc1_.paddingRight = 16;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_BriskImageDynaLib1_c(),this._PlayfieldItemInventoryView_LocaLabel1_i(),this._PlayfieldItemInventoryView_Group3_c(),this._PlayfieldItemInventoryView_LocaLabel2_i(),this._PlayfieldItemInventoryView_HGroup2_i(),this._PlayfieldItemInventoryView_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 37;
         _loc1_.width = 49;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "icon_puzzle";
         _loc1_.top = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStylePadding";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("paddingTop",11);
         _loc1_.id = "headerTextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerTextLabel = _loc1_;
         BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 18;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "elevenWhiteLeft";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.visible = false;
         _loc1_.setStyle("paddingTop",13);
         _loc1_.id = "minimisedLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.minimisedLabel = _loc1_;
         BindingManager.executeBindings(this,"minimisedLabel",this.minimisedLabel);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = -4;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_InventoryRadioButton1_i(),this._PlayfieldItemInventoryView_InventoryRadioButton2_i(),this._PlayfieldItemInventoryView_InventoryRadioButton3_i(),this._PlayfieldItemInventoryView_InventoryRadioButton4_i()];
         _loc1_.id = "sortingButtonGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingButtonGroup = _loc1_;
         BindingManager.executeBindings(this,"sortingButtonGroup",this.sortingButtonGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_InventoryRadioButton1_i() : InventoryRadioButton
      {
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         _loc1_.styleName = "residentials";
         _loc1_.groupName = "sortingButtons";
         _loc1_.id = "sortingResidentialButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingResidentialButton = _loc1_;
         BindingManager.executeBindings(this,"sortingResidentialButton",this.sortingResidentialButton);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_InventoryRadioButton2_i() : InventoryRadioButton
      {
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         _loc1_.styleName = "commercials";
         _loc1_.groupName = "sortingButtons";
         _loc1_.id = "sortingCommercialButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingCommercialButton = _loc1_;
         BindingManager.executeBindings(this,"sortingCommercialButton",this.sortingCommercialButton);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_InventoryRadioButton3_i() : InventoryRadioButton
      {
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         _loc1_.styleName = "decorations";
         _loc1_.groupName = "sortingButtons";
         _loc1_.id = "sortingDecorationButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingDecorationButton = _loc1_;
         BindingManager.executeBindings(this,"sortingDecorationButton",this.sortingDecorationButton);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_InventoryRadioButton4_i() : InventoryRadioButton
      {
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         _loc1_.styleName = "emergency";
         _loc1_.groupName = "sortingButtons";
         _loc1_.id = "sortingEmergencyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingEmergencyButton = _loc1_;
         BindingManager.executeBindings(this,"sortingEmergencyButton",this.sortingEmergencyButton);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.paddingTop = 10;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_ToggleButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_ToggleButton1_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.styleName = "inventoryMinimize";
         _loc1_.addEventListener("change",this.__minimiseButton_change);
         _loc1_.id = "minimiseButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.minimiseButton = _loc1_;
         BindingManager.executeBindings(this,"minimiseButton",this.minimiseButton);
         return _loc1_;
      }
      
      public function __minimiseButton_change(param1:Event) : void
      {
         this.handleMinimiseButton(param1);
      }
      
      public function ___PlayfieldItemInventoryView_Group2_click(param1:MouseEvent) : void
      {
         this.handleMinimisedComponentClick(param1);
      }
      
      private function _PlayfieldItemInventoryView_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "improvementInventoryFlavour";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("paddingLeft",58);
         _loc1_.setStyle("paddingTop",2);
         _loc1_.id = "flavourTextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourTextLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourTextLabel",this.flavourTextLabel);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 9;
         _loc1_.paddingRight = 9;
         _loc1_.paddingTop = -5;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_StandardInventoryList1_i(),this._PlayfieldItemInventoryView_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_StandardInventoryList1_i() : StandardInventoryList
      {
         var _loc1_:StandardInventoryList = new StandardInventoryList();
         _loc1_.itemRenderer = this._PlayfieldItemInventoryView_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.setStyle("skinClass",PlayfieldItemInventoryListSkin);
         _loc1_.addEventListener("resize",this.__playfieldItemList_resize);
         _loc1_.id = "playfieldItemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.playfieldItemList = _loc1_;
         BindingManager.executeBindings(this,"playfieldItemList",this.playfieldItemList);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = PlayfieldItemInventoryRenderer;
         return _loc1_;
      }
      
      public function __playfieldItemList_resize(param1:ResizeEvent) : void
      {
         this.calculateListGap();
      }
      
      private function _PlayfieldItemInventoryView_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 90;
         _loc1_.top = 90;
         _loc1_.right = 90;
         _loc1_.lineId = 0;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      public function ___PlayfieldItemInventoryView_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private function _PlayfieldItemInventoryView_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return ServerTagConstants.RESIDENTIAL;
         },null,"sortingButtons.selectedValue");
         result[1] = new Binding(this,function():Object
         {
            return ServerTagConstants.RESIDENTIAL;
         },null,"sortingResidentialButton.value");
         result[2] = new Binding(this,function():Object
         {
            return ServerTagConstants.SHOP;
         },null,"sortingCommercialButton.value");
         result[3] = new Binding(this,function():Object
         {
            return ServerTagConstants.DECORATION;
         },null,"sortingDecorationButton.value");
         result[4] = new Binding(this,function():Object
         {
            return PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY;
         },null,"sortingEmergencyButton.value");
         result[5] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : HScaleThreeComponent
      {
         return this._1332194002background;
      }
      
      public function set background(param1:HScaleThreeComponent) : void
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
      public function get flavourTextLabel() : LocaLabel
      {
         return this._1310457130flavourTextLabel;
      }
      
      public function set flavourTextLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1310457130flavourTextLabel;
         if(_loc2_ !== param1)
         {
            this._1310457130flavourTextLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourTextLabel",_loc2_,param1));
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
      public function get minimiseButton() : ToggleButton
      {
         return this._854143319minimiseButton;
      }
      
      public function set minimiseButton(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._854143319minimiseButton;
         if(_loc2_ !== param1)
         {
            this._854143319minimiseButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minimiseButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minimisedLabel() : LocaLabel
      {
         return this._1789086453minimisedLabel;
      }
      
      public function set minimisedLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1789086453minimisedLabel;
         if(_loc2_ !== param1)
         {
            this._1789086453minimisedLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minimisedLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldItemList() : StandardInventoryList
      {
         return this._1943769783playfieldItemList;
      }
      
      public function set playfieldItemList(param1:StandardInventoryList) : void
      {
         var _loc2_:Object = this._1943769783playfieldItemList;
         if(_loc2_ !== param1)
         {
            this._1943769783playfieldItemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldItemList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingButtonGroup() : HGroup
      {
         return this._1551432119sortingButtonGroup;
      }
      
      public function set sortingButtonGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1551432119sortingButtonGroup;
         if(_loc2_ !== param1)
         {
            this._1551432119sortingButtonGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingButtonGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingButtons() : RadioButtonGroup
      {
         return this._353794723sortingButtons;
      }
      
      public function set sortingButtons(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._353794723sortingButtons;
         if(_loc2_ !== param1)
         {
            this._353794723sortingButtons = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingButtons",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingCommercialButton() : InventoryRadioButton
      {
         return this._62340928sortingCommercialButton;
      }
      
      public function set sortingCommercialButton(param1:InventoryRadioButton) : void
      {
         var _loc2_:Object = this._62340928sortingCommercialButton;
         if(_loc2_ !== param1)
         {
            this._62340928sortingCommercialButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingCommercialButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingDecorationButton() : InventoryRadioButton
      {
         return this._930584998sortingDecorationButton;
      }
      
      public function set sortingDecorationButton(param1:InventoryRadioButton) : void
      {
         var _loc2_:Object = this._930584998sortingDecorationButton;
         if(_loc2_ !== param1)
         {
            this._930584998sortingDecorationButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingDecorationButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingEmergencyButton() : InventoryRadioButton
      {
         return this._752823809sortingEmergencyButton;
      }
      
      public function set sortingEmergencyButton(param1:InventoryRadioButton) : void
      {
         var _loc2_:Object = this._752823809sortingEmergencyButton;
         if(_loc2_ !== param1)
         {
            this._752823809sortingEmergencyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingEmergencyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingResidentialButton() : InventoryRadioButton
      {
         return this._527723058sortingResidentialButton;
      }
      
      public function set sortingResidentialButton(param1:InventoryRadioButton) : void
      {
         var _loc2_:Object = this._527723058sortingResidentialButton;
         if(_loc2_ !== param1)
         {
            this._527723058sortingResidentialButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingResidentialButton",_loc2_,param1));
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

