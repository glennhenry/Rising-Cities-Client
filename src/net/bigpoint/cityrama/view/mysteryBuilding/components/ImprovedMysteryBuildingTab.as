package net.bigpoint.cityrama.view.mysteryBuilding.components
{
   import com.greensock.TweenMax;
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
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedMysteryBuildingVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.mysteryBuilding.skins.MysteryOutcomeSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.SlimProgressBarTimer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ImprovedMysteryBuildingTab extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const BUY_PERMISSION:String = "BUY_PERMISSION";
      
      public static const GET_RC:String = "GET_RC";
      
      public static const BUILD_NOW:String = "BUILD_NOW";
      
      private var _1768148800buildButton:MultistateButton;
      
      private var _813710843contentLabel:LocaLabel;
      
      private var _973878475eventTimer:SlimProgressBarTimer;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _918837699luckLabel:LocaLabel;
      
      private var _1062744848outcomeList:List;
      
      private var _1639640475permissionLabel:LocaLabel;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var _1818074518seasonGfx:BriskImageDynaLib;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FeaturedMysteryBuildingVo;
      
      private var _isDirty:Boolean;
      
      private var _disposing:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovedMysteryBuildingTab()
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
         bindings = this._ImprovedMysteryBuildingTab_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_mysteryBuilding_components_ImprovedMysteryBuildingTabWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ImprovedMysteryBuildingTab[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.top = -18;
         this.mxmlContent = [this._ImprovedMysteryBuildingTab_Group2_c(),this._ImprovedMysteryBuildingTab_Group3_c(),this._ImprovedMysteryBuildingTab_VGroup1_c(),this._ImprovedMysteryBuildingTab_VGroup2_c()];
         this.addEventListener("creationComplete",this.___ImprovedMysteryBuildingTab_Group1_creationComplete);
         this.addEventListener("removedFromStage",this.___ImprovedMysteryBuildingTab_Group1_removedFromStage);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ImprovedMysteryBuildingTab._watcherSetupUtil = param1;
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
         this.headerTextLabel.text = LocaUtils.getString("rcl.booklayer.mysteryBuilding","rcl.booklayer.mysteryBuilding.title.capital");
         this.buildButton.toolTip = LocaUtils.getString("rcl.tooltips.mysteryBuilding","rcl.tooltips.mysteryBuilding.button.place");
         this.contentLabel.text = LocaUtils.getString("rcl.booklayer.mysteryBuilding","rcl.booklayer.mysteryBuilding.text");
         this.luckLabel.text = LocaUtils.getString("rcl.booklayer.mysteryBuilding","rcl.booklayer.mysteryBuilding.preButton.text");
         UIComponent(this.purchaseButton.labelDisplay).setStyle("fontSize",13);
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty)
         {
            this._isDirty = false;
            this.seasonGfx.briskDynaVo = this._data.seasonGfx;
            this.permissionLabel.text = this._data.permissionAmount.toString();
            this.purchaseButton.label = LocaUtils.getThousendSeperatedNumber(this._data.permissionPrice);
            this.purchaseButton.priceToConfirm = this._data.permissionPrice;
            this.buildButton.enabled = this._data.permissionAmount > 0;
            this.purchaseButton.showPlus = this._data.permissionPrice > this._data.rcStock;
            this.outcomeList.dataProvider = this._data.possibleResult;
            if(this.purchaseButton.showPlus)
            {
               this.purchaseButton.toolTip = LocaUtils.getString("rcl.tooltips.mysteryBuilding","rcl.tooltips.mysteryBuilding.button.noCash");
            }
            else
            {
               this.purchaseButton.toolTip = LocaUtils.getString("rcl.tooltips.mysteryBuilding","rcl.tooltips.mysteryBuilding.button.buy");
            }
            this.setTimer();
         }
      }
      
      private function handleBuildNow(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(BUILD_NOW));
      }
      
      private function handleBuyButtonClick(param1:MouseEvent) : void
      {
         if(this.purchaseButton.showPlus)
         {
            dispatchEvent(new Event(GET_RC));
         }
         else
         {
            dispatchEvent(new Event(BUY_PERMISSION));
         }
      }
      
      private function handleRemoved(param1:Event) : void
      {
         TweenMax.killDelayedCallsTo(this.setTimer);
         this._disposing = true;
      }
      
      private function setTimer() : void
      {
         if(this._disposing)
         {
            return;
         }
         if(this._data.availabilityTimer)
         {
            this.eventTimer.data = this._data.availabilityTimer;
            this.eventTimer.toolTip = LocaUtils.getString("rcl.tooltips.mysteryBuilding","rcl.tooltips.mysteryBuilding.timeline",[LocaUtils.getDurationHM((this._data.availabilityTimer.targetTime - this._data.availabilityTimer.currentTime) / 1000)]);
            TweenMax.delayedCall(60,this.setTimer);
         }
      }
      
      public function set data(param1:FeaturedMysteryBuildingVo) : void
      {
         if(RandomUtilities.isUnEqual(this._data,param1))
         {
            this._isDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      private function _ImprovedMysteryBuildingTab_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = -5;
         _loc1_.left = -5;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_BriskImageDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_architect_featured";
         _loc1_.dynaBmpSourceName = "mystery_bg";
         _loc1_.width = 746;
         _loc1_.height = 318;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 5;
         _loc1_.left = 5;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_architect_featured";
         _loc1_.id = "seasonGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.seasonGfx = _loc1_;
         BindingManager.executeBindings(this,"seasonGfx",this.seasonGfx);
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "top";
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_HGroup1_c(),this._ImprovedMysteryBuildingTab_Group5_c(),this._ImprovedMysteryBuildingTab_HGroup2_c(),this._ImprovedMysteryBuildingTab_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_BlueBarComponent1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentHeight = 100;
         _loc1_.width = 574;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 574;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 48;
         _loc1_.width = 43;
         _loc1_.left = 50;
         _loc1_.dynaLibName = "gui_popups_architect_featured";
         _loc1_.dynaBmpSourceName = "mystery_icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 30;
         _loc1_.paddingTop = 2;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStyle";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.maxWidth = 356;
         _loc1_.id = "headerTextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerTextLabel = _loc1_;
         BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 17;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 32;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_BriskImageDynaLib4_c(),this._ImprovedMysteryBuildingTab_SlimProgressBarTimer1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
         _loc1_.width = 18;
         _loc1_.height = 17;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_SlimProgressBarTimer1_i() : SlimProgressBarTimer
      {
         var _loc1_:SlimProgressBarTimer = new SlimProgressBarTimer();
         _loc1_.progressBarTint = 10739019;
         _loc1_.revertProgress = true;
         _loc1_.width = 330;
         _loc1_.id = "eventTimer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventTimer = _loc1_;
         BindingManager.executeBindings(this,"eventTimer",this.eventTimer);
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.bottom = 26;
         _loc1_.height = 274;
         _loc1_.right = 10;
         _loc1_.maxHeight = 274;
         _loc1_.minHeight = 274;
         _loc1_.horizontalAlign = "right";
         _loc1_.width = 446;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_HGroup4_c(),this._ImprovedMysteryBuildingTab_Group6_c(),this._ImprovedMysteryBuildingTab_Group7_c(),this._ImprovedMysteryBuildingTab_HGroup5_c(),this._ImprovedMysteryBuildingTab_HGroup6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "bottom";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "darkBlueElevenCenter";
         _loc1_.maxDisplayedLines = 3;
         _loc1_.percentWidth = 70;
         _loc1_.id = "contentLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentLabel = _loc1_;
         BindingManager.executeBindings(this,"contentLabel",this.contentLabel);
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_List1_i(),this._ImprovedMysteryBuildingTab_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ImprovedMysteryBuildingTab_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("skinClass",MysteryOutcomeSkin);
         _loc1_.id = "outcomeList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.outcomeList = _loc1_;
         BindingManager.executeBindings(this,"outcomeList",this.outcomeList);
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MysteryOutcomeRenderer;
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.top = 20;
         _loc1_.right = 0;
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
      
      private function _ImprovedMysteryBuildingTab_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "darkBlueThirteenCenter";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.percentWidth = 85;
         _loc1_.id = "luckLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.luckLabel = _loc1_;
         BindingManager.executeBindings(this,"luckLabel",this.luckLabel);
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_HGroup7_c(),this._ImprovedMysteryBuildingTab_HGroup8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_Group8_c(),this._ImprovedMysteryBuildingTab_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 76;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.useConfirmation = true;
         _loc1_.width = 185;
         _loc1_.libNameRight = "gui_resources_icons";
         _loc1_.imageNameRight = "dd_button_icon";
         _loc1_.addEventListener("click",this.__purchaseButton_click);
         _loc1_.id = "purchaseButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.purchaseButton = _loc1_;
         BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
         return _loc1_;
      }
      
      public function __purchaseButton_click(param1:MouseEvent) : void
      {
         this.handleBuyButtonClick(param1);
      }
      
      private function _ImprovedMysteryBuildingTab_HGroup8_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._ImprovedMysteryBuildingTab_LocaLabel4_i(),this._ImprovedMysteryBuildingTab_BriskImageDynaLib5_c(),this._ImprovedMysteryBuildingTab_MultistateButton2_i(),this._ImprovedMysteryBuildingTab_Group9_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "blueFifteenRight";
         _loc1_.width = 35;
         _loc1_.id = "permissionLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.permissionLabel = _loc1_;
         BindingManager.executeBindings(this,"permissionLabel",this.permissionLabel);
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_architect_featured";
         _loc1_.dynaBmpSourceName = "permission_icon";
         _loc1_.width = 22;
         _loc1_.height = 22;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovedMysteryBuildingTab_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 40;
         _loc1_.enabled = false;
         _loc1_.imageNameLeft = "button_icon_build";
         _loc1_.libNameLeft = "gui_popups_paperPopup";
         _loc1_.addEventListener("click",this.__buildButton_click);
         _loc1_.id = "buildButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buildButton = _loc1_;
         BindingManager.executeBindings(this,"buildButton",this.buildButton);
         return _loc1_;
      }
      
      public function __buildButton_click(param1:MouseEvent) : void
      {
         this.handleBuildNow(param1);
      }
      
      private function _ImprovedMysteryBuildingTab_Group9_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___ImprovedMysteryBuildingTab_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      public function ___ImprovedMysteryBuildingTab_Group1_removedFromStage(param1:Event) : void
      {
         this.handleRemoved(param1);
      }
      
      private function _ImprovedMysteryBuildingTab_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get buildButton() : MultistateButton
      {
         return this._1768148800buildButton;
      }
      
      public function set buildButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1768148800buildButton;
         if(_loc2_ !== param1)
         {
            this._1768148800buildButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentLabel() : LocaLabel
      {
         return this._813710843contentLabel;
      }
      
      public function set contentLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._813710843contentLabel;
         if(_loc2_ !== param1)
         {
            this._813710843contentLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventTimer() : SlimProgressBarTimer
      {
         return this._973878475eventTimer;
      }
      
      public function set eventTimer(param1:SlimProgressBarTimer) : void
      {
         var _loc2_:Object = this._973878475eventTimer;
         if(_loc2_ !== param1)
         {
            this._973878475eventTimer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventTimer",_loc2_,param1));
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
      public function get luckLabel() : LocaLabel
      {
         return this._918837699luckLabel;
      }
      
      public function set luckLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._918837699luckLabel;
         if(_loc2_ !== param1)
         {
            this._918837699luckLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"luckLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outcomeList() : List
      {
         return this._1062744848outcomeList;
      }
      
      public function set outcomeList(param1:List) : void
      {
         var _loc2_:Object = this._1062744848outcomeList;
         if(_loc2_ !== param1)
         {
            this._1062744848outcomeList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get permissionLabel() : LocaLabel
      {
         return this._1639640475permissionLabel;
      }
      
      public function set permissionLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1639640475permissionLabel;
         if(_loc2_ !== param1)
         {
            this._1639640475permissionLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"permissionLabel",_loc2_,param1));
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
      public function get seasonGfx() : BriskImageDynaLib
      {
         return this._1818074518seasonGfx;
      }
      
      public function set seasonGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1818074518seasonGfx;
         if(_loc2_ !== param1)
         {
            this._1818074518seasonGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seasonGfx",_loc2_,param1));
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

