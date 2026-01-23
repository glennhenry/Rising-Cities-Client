package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui
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
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HScaleThreeComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StandardInventoryList;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.ImprovementInventoryItemRenderer;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.InventoryRadioButton;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.skins.ImprovementInventorySkinClass;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.vo.ImprovementInventoryViewVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
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
   
   public class ImprovementInventoryView extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const ALL_DESELECTED:String = "ALL_DESELECTED";
      
      private var _1332194002background:HScaleThreeComponent;
      
      private var _1310457130flavourTextLabel:LocaLabel;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _1808398663improvementItemList:StandardInventoryList;
      
      private var _678297490minimizeToggle:ToggleButton;
      
      private var _1623077105sortingAllButton:InventoryRadioButton;
      
      private var _1551432119sortingButtonGroup:HGroup;
      
      private var _353794723sortingButtons:RadioButtonGroup;
      
      private var _1821219679sortingCommonButton:InventoryRadioButton;
      
      private var _1371491525sortingEpicButton:InventoryRadioButton;
      
      private var _1591903273sortingLegendaryButton:InventoryRadioButton;
      
      private var _1991244568sortingRareButton:InventoryRadioButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dirty:Boolean;
      
      private var _data:ImprovementInventoryViewVo;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementInventoryView()
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
         bindings = this._ImprovementInventoryView_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_ImprovementInventoryViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ImprovementInventoryView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.height = 150;
         this.top = -4;
         this.mxmlContent = [this._ImprovementInventoryView_HScaleThreeComponent1_i(),this._ImprovementInventoryView_VGroup1_c()];
         this._ImprovementInventoryView_RadioButtonGroup1_i();
         this.addEventListener("creationComplete",this.___ImprovementInventoryView_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      private static function getEmptySlotsCount(param1:IList) : int
      {
         var _loc3_:ImprovementInventoryItemRendererVo = null;
         if(param1 == null)
         {
            return -1;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            if(_loc3_.isEmpty)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private static function getNonEmptySlotsCount(param1:IList) : int
      {
         if(param1 == null)
         {
            return -1;
         }
         var _loc2_:int = int(param1.length);
         return _loc2_ - getEmptySlotsCount(param1);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ImprovementInventoryView._watcherSetupUtil = param1;
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
         this.headerTextLabel.text = ResourceManager.getInstance().getString("rcl.booklayer.hipInventory" + "","rcl.booklayer.hipInventory.title.capital" + "");
         this.flavourTextLabel.text = ResourceManager.getInstance().getString("rcl.booklayer.hipInventory" + "","rcl.booklayer.hipInventory.flavour" + "");
         this.improvementItemList.addEventListener(IndexChangeEvent.CHANGE,this.improvementItemList_changeHandler);
         this.setToolTips();
      }
      
      private function improvementItemList_changeHandler(param1:IndexChangeEvent) : void
      {
         if(param1.newIndex == -1)
         {
            dispatchEvent(new Event(ALL_DESELECTED,false));
         }
      }
      
      private function setToolTips() : void
      {
         this.sortingAllButton.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.hipInventory" + "","rcl.tooltips.hipInventory.category.all" + "");
         this.sortingLegendaryButton.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.hipInventory" + "","rcl.tooltips.hipInventory.category.legendary" + "");
         this.sortingEpicButton.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.hipInventory" + "","rcl.tooltips.hipInventory.category.epic" + "");
         this.sortingCommonButton.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.hipInventory" + "","rcl.tooltips.hipInventory.category.common" + "");
         this.sortingRareButton.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.hipInventory" + "","rcl.tooltips.hipInventory.category.rare" + "");
         this.minimizeToggle.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.hipInventory" + "","rcl.tooltips.hipInventory.minimize" + "");
      }
      
      public function set data(param1:ImprovementInventoryViewVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._dirty = true;
            this._data = param1;
         }
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         if(this._dirty)
         {
            this._dirty = false;
            this.sorting_changeHandler();
            this.sortingAllButton.amountLabelValue = this._data.getAmountByType(this.sortingAllButton.value.toString()).toString();
            this.sortingLegendaryButton.amountLabelValue = this._data.getAmountByType(this.sortingLegendaryButton.value.toString()).toString();
            this.sortingEpicButton.amountLabelValue = this._data.getAmountByType(this.sortingEpicButton.value.toString()).toString();
            this.sortingCommonButton.amountLabelValue = this._data.getAmountByType(this.sortingCommonButton.value.toString()).toString();
            this.sortingRareButton.amountLabelValue = this._data.getAmountByType(this.sortingRareButton.value.toString()).toString();
         }
         this.ManageEmptyItems();
         super.commitProperties();
      }
      
      private function sorting_changeHandler(param1:ItemClickEvent = null) : void
      {
         dispatchEvent(new Event(ALL_DESELECTED,false));
         this.improvementItemList.dataProvider = this._data.getListAsArrayCollectionByType(this.sortingButtons.selectedValue == null ? ImprovementInventoryViewVo.SORT_ALL : this.sortingButtons.selectedValue.toString());
         this.ManageEmptyItems();
      }
      
      private function minimizeToggle_changeHandler(param1:Event) : void
      {
         if(!this.minimizeToggle.selected)
         {
            this.background.top = 0;
            if(this.hasEventListener(MouseEvent.ROLL_OUT))
            {
               this.removeEventListener(MouseEvent.ROLL_OUT,this.mouseOutHandler);
            }
            this.height = 150;
            this.flavourTextLabel.visible = this.flavourTextLabel.includeInLayout = true;
            this.sortingButtonGroup.visible = this.sortingButtonGroup.includeInLayout = true;
            this.improvementItemList.visible = this.improvementItemList.includeInLayout = true;
         }
         else
         {
            this.background.top = -110;
            this.addEventListener(MouseEvent.ROLL_OUT,this.mouseOutHandler);
            if(this.hasEventListener(MouseEvent.ROLL_OVER))
            {
               this.removeEventListener(MouseEvent.ROLL_OVER,this.mouseOverHandler);
            }
            this.height = 40;
            this.flavourTextLabel.visible = this.flavourTextLabel.includeInLayout = false;
            this.sortingButtonGroup.visible = this.sortingButtonGroup.includeInLayout = false;
            this.improvementItemList.visible = this.improvementItemList.includeInLayout = false;
         }
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         if(this.minimizeToggle.selected)
         {
            this.background.top = 0;
            if(this.hasEventListener(MouseEvent.ROLL_OVER))
            {
               this.removeEventListener(MouseEvent.ROLL_OVER,this.mouseOverHandler);
            }
            this.addEventListener(MouseEvent.ROLL_OUT,this.mouseOutHandler);
            var _temp_1:* = this.flavourTextLabel;
            this.flavourTextLabel.includeInLayout = true;
            _temp_1.visible = true;
            var _temp_2:* = this.sortingButtonGroup;
            var _loc2_:Boolean;
            this.sortingButtonGroup.includeInLayout = _loc2_ = true;
            _temp_2.visible = true;
            var _temp_3:* = this.improvementItemList;
            this.improvementItemList.includeInLayout = _loc2_ = true;
            _temp_3.visible = true;
         }
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         this.background.top = -110;
         this.height = 40;
         var _temp_1:* = this.flavourTextLabel;
         this.flavourTextLabel.includeInLayout = false;
         _temp_1.visible = false;
         var _temp_2:* = this.sortingButtonGroup;
         var _loc2_:Boolean;
         this.sortingButtonGroup.includeInLayout = _loc2_ = false;
         _temp_2.visible = false;
         var _temp_3:* = this.improvementItemList;
         this.improvementItemList.includeInLayout = _loc2_ = false;
         _temp_3.visible = false;
         if(this.hasEventListener(MouseEvent.ROLL_OUT))
         {
            this.removeEventListener(MouseEvent.ROLL_OUT,this.mouseOutHandler);
         }
         this.addEventListener(MouseEvent.ROLL_OVER,this.mouseOverHandler);
      }
      
      private function improvementItemList_resizeHandler(param1:ResizeEvent) : void
      {
         this.ManageEmptyItems();
      }
      
      private function ManageEmptyItems() : void
      {
         var _loc9_:int = 0;
         var _loc10_:ImprovementInventoryItemRendererVo = null;
         var _loc11_:int = 0;
         if(this.improvementItemList.dataProvider == null)
         {
            return;
         }
         var _loc1_:int = getEmptySlotsCount(this.improvementItemList.dataProvider);
         var _loc2_:Number = ImprovementInventoryItemRenderer.itemWidth;
         var _loc4_:Number = this.improvementItemList.width - 82;
         var _loc5_:int = Math.floor(_loc4_ / _loc2_);
         var _loc6_:int = this.improvementItemList.dataProvider.length - _loc1_;
         var _loc7_:int = _loc5_ - _loc6_ % _loc5_;
         if(_loc7_ == _loc5_)
         {
            _loc7_ = 0;
         }
         var _loc8_:Number = Number(_loc4_ - _loc5_ * _loc2_) / Number(_loc5_);
         (this.improvementItemList.dataGroup.layout as HorizontalLayout).gap = _loc8_;
         if(_loc7_ > _loc1_)
         {
            _loc9_ = 0;
            while(_loc9_ < _loc7_ - _loc1_)
            {
               _loc10_ = new ImprovementInventoryItemRendererVo(true);
               this.improvementItemList.dataProvider.addItem(_loc10_);
               _loc9_++;
            }
         }
         else if(_loc7_ < _loc1_)
         {
            _loc11_ = 0;
            _loc9_ = this.improvementItemList.dataProvider.length - 1;
            while(_loc9_ >= 0)
            {
               if((this.improvementItemList.dataProvider[_loc9_] as ImprovementInventoryItemRendererVo).isEmpty)
               {
                  this.improvementItemList.dataProvider.removeItemAt(_loc9_);
                  if(++_loc11_ == _loc1_ - _loc7_)
                  {
                     break;
                  }
               }
               _loc9_--;
            }
         }
      }
      
      private function _ImprovementInventoryView_RadioButtonGroup1_i() : RadioButtonGroup
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
         this.sorting_changeHandler(param1);
      }
      
      private function _ImprovementInventoryView_HScaleThreeComponent1_i() : HScaleThreeComponent
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
      
      private function _ImprovementInventoryView_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ImprovementInventoryView_Group2_c(),this._ImprovementInventoryView_LocaLabel2_i(),this._ImprovementInventoryView_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._ImprovementInventoryView_Rect1_c(),this._ImprovementInventoryView_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_Rect1_c() : Rect
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
         _loc1_.fill = this._ImprovementInventoryView_RadialGradient1_c();
         _loc1_.filters = [this._ImprovementInventoryView_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._ImprovementInventoryView_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 18;
         _loc1_.paddingRight = 16;
         _loc1_.mxmlContent = [this._ImprovementInventoryView_BriskImageDynaLib1_c(),this._ImprovementInventoryView_LocaLabel1_i(),this._ImprovementInventoryView_HGroup2_i(),this._ImprovementInventoryView_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 35;
         _loc1_.width = 38;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "header_icon_improvements";
         _loc1_.top = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStylePadding";
         _loc1_.percentWidth = 100;
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
      
      private function _ImprovementInventoryView_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = -4;
         _loc1_.mxmlContent = [this._ImprovementInventoryView_InventoryRadioButton1_i(),this._ImprovementInventoryView_InventoryRadioButton2_i(),this._ImprovementInventoryView_InventoryRadioButton3_i(),this._ImprovementInventoryView_InventoryRadioButton4_i(),this._ImprovementInventoryView_InventoryRadioButton5_i()];
         _loc1_.id = "sortingButtonGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingButtonGroup = _loc1_;
         BindingManager.executeBindings(this,"sortingButtonGroup",this.sortingButtonGroup);
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_InventoryRadioButton1_i() : InventoryRadioButton
      {
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         _loc1_.styleName = "improvementall";
         _loc1_.groupName = "sortingButtons";
         _loc1_.id = "sortingAllButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingAllButton = _loc1_;
         BindingManager.executeBindings(this,"sortingAllButton",this.sortingAllButton);
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_InventoryRadioButton2_i() : InventoryRadioButton
      {
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         _loc1_.styleName = "improvementlegendary";
         _loc1_.groupName = "sortingButtons";
         _loc1_.id = "sortingLegendaryButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingLegendaryButton = _loc1_;
         BindingManager.executeBindings(this,"sortingLegendaryButton",this.sortingLegendaryButton);
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_InventoryRadioButton3_i() : InventoryRadioButton
      {
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         _loc1_.styleName = "improvementepic";
         _loc1_.groupName = "sortingButtons";
         _loc1_.id = "sortingEpicButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingEpicButton = _loc1_;
         BindingManager.executeBindings(this,"sortingEpicButton",this.sortingEpicButton);
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_InventoryRadioButton4_i() : InventoryRadioButton
      {
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         _loc1_.styleName = "improvementrare";
         _loc1_.groupName = "sortingButtons";
         _loc1_.id = "sortingRareButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingRareButton = _loc1_;
         BindingManager.executeBindings(this,"sortingRareButton",this.sortingRareButton);
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_InventoryRadioButton5_i() : InventoryRadioButton
      {
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         _loc1_.styleName = "improvementcommon";
         _loc1_.groupName = "sortingButtons";
         _loc1_.id = "sortingCommonButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortingCommonButton = _loc1_;
         BindingManager.executeBindings(this,"sortingCommonButton",this.sortingCommonButton);
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.paddingTop = 10;
         _loc1_.mxmlContent = [this._ImprovementInventoryView_ToggleButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_ToggleButton1_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.styleName = "inventoryMinimize";
         _loc1_.addEventListener("change",this.__minimizeToggle_change);
         _loc1_.id = "minimizeToggle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.minimizeToggle = _loc1_;
         BindingManager.executeBindings(this,"minimizeToggle",this.minimizeToggle);
         return _loc1_;
      }
      
      public function __minimizeToggle_change(param1:Event) : void
      {
         this.minimizeToggle_changeHandler(param1);
      }
      
      private function _ImprovementInventoryView_LocaLabel2_i() : LocaLabel
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
      
      private function _ImprovementInventoryView_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 9;
         _loc1_.paddingRight = 9;
         _loc1_.paddingTop = -5;
         _loc1_.mxmlContent = [this._ImprovementInventoryView_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ImprovementInventoryView_StandardInventoryList1_i(),this._ImprovementInventoryView_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_StandardInventoryList1_i() : StandardInventoryList
      {
         var _loc1_:StandardInventoryList = new StandardInventoryList();
         _loc1_.itemRenderer = this._ImprovementInventoryView_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.setStyle("skinClass",ImprovementInventorySkinClass);
         _loc1_.addEventListener("resize",this.__improvementItemList_resize);
         _loc1_.id = "improvementItemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementItemList = _loc1_;
         BindingManager.executeBindings(this,"improvementItemList",this.improvementItemList);
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ImprovementInventoryItemRenderer;
         return _loc1_;
      }
      
      public function __improvementItemList_resize(param1:ResizeEvent) : void
      {
         this.improvementItemList_resizeHandler(param1);
      }
      
      private function _ImprovementInventoryView_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
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
      
      public function ___ImprovementInventoryView_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private function _ImprovementInventoryView_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Object
         {
            return ImprovementInventoryViewVo.SORT_ALL;
         },null,"sortingButtons.selectedValue");
         result[1] = new Binding(this,function():Object
         {
            return ImprovementInventoryViewVo.SORT_ALL;
         },null,"sortingAllButton.value");
         result[2] = new Binding(this,function():Object
         {
            return ImprovementInventoryViewVo.SORT_LEGENDARY;
         },null,"sortingLegendaryButton.value");
         result[3] = new Binding(this,function():Object
         {
            return ImprovementInventoryViewVo.SORT_EPIC;
         },null,"sortingEpicButton.value");
         result[4] = new Binding(this,function():Object
         {
            return ImprovementInventoryViewVo.SORT_RARE;
         },null,"sortingRareButton.value");
         result[5] = new Binding(this,function():Object
         {
            return ImprovementInventoryViewVo.SORT_COMMON;
         },null,"sortingCommonButton.value");
         result[6] = new Binding(this,function():uint
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
      public function get improvementItemList() : StandardInventoryList
      {
         return this._1808398663improvementItemList;
      }
      
      public function set improvementItemList(param1:StandardInventoryList) : void
      {
         var _loc2_:Object = this._1808398663improvementItemList;
         if(_loc2_ !== param1)
         {
            this._1808398663improvementItemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementItemList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minimizeToggle() : ToggleButton
      {
         return this._678297490minimizeToggle;
      }
      
      public function set minimizeToggle(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._678297490minimizeToggle;
         if(_loc2_ !== param1)
         {
            this._678297490minimizeToggle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minimizeToggle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingAllButton() : InventoryRadioButton
      {
         return this._1623077105sortingAllButton;
      }
      
      public function set sortingAllButton(param1:InventoryRadioButton) : void
      {
         var _loc2_:Object = this._1623077105sortingAllButton;
         if(_loc2_ !== param1)
         {
            this._1623077105sortingAllButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingAllButton",_loc2_,param1));
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
      public function get sortingCommonButton() : InventoryRadioButton
      {
         return this._1821219679sortingCommonButton;
      }
      
      public function set sortingCommonButton(param1:InventoryRadioButton) : void
      {
         var _loc2_:Object = this._1821219679sortingCommonButton;
         if(_loc2_ !== param1)
         {
            this._1821219679sortingCommonButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingCommonButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingEpicButton() : InventoryRadioButton
      {
         return this._1371491525sortingEpicButton;
      }
      
      public function set sortingEpicButton(param1:InventoryRadioButton) : void
      {
         var _loc2_:Object = this._1371491525sortingEpicButton;
         if(_loc2_ !== param1)
         {
            this._1371491525sortingEpicButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingEpicButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingLegendaryButton() : InventoryRadioButton
      {
         return this._1591903273sortingLegendaryButton;
      }
      
      public function set sortingLegendaryButton(param1:InventoryRadioButton) : void
      {
         var _loc2_:Object = this._1591903273sortingLegendaryButton;
         if(_loc2_ !== param1)
         {
            this._1591903273sortingLegendaryButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingLegendaryButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingRareButton() : InventoryRadioButton
      {
         return this._1991244568sortingRareButton;
      }
      
      public function set sortingRareButton(param1:InventoryRadioButton) : void
      {
         var _loc2_:Object = this._1991244568sortingRareButton;
         if(_loc2_ !== param1)
         {
            this._1991244568sortingRareButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingRareButton",_loc2_,param1));
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

