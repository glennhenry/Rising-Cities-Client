package net.bigpoint.cityrama.view.hud.ui.components
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.menu.vo.HUDVo;
   import net.bigpoint.cityrama.model.menu.vo.SpecialCurrencyVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.DropDownList;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.core.SpriteVisualElement;
   import spark.events.IndexChangeEvent;
   
   public class HUDBar extends Group
   {
      
      private var _717028414energyHappinessComponent:EnergyHappinessComponent;
      
      private var _1129806925forumButton:DynamicImageButton;
      
      private var _863205922forumGroup:Group;
      
      private var _1846837112humanResources:DropDownListComponent;
      
      private var _2131654161levelBar:LevelBarComponent;
      
      private var _184876379levelGroup:Group;
      
      private var _1695650217levelSparkleSprite:SpriteVisualElement;
      
      private var _1255627100logoutButton:DynamicImageButton;
      
      private var _273241018mainGroup:HGroup;
      
      private var _751905573multiCurrencyResources:DropDownListComponent;
      
      private var _85068827newsButton:DynamicImageButton;
      
      private var _278873964newsGroup:Group;
      
      private var _1848586191realCurrency:CurrencyBar;
      
      private var _729060372realCurrencySparkleSprite:SpriteVisualElement;
      
      private var _590841624residentsSparkleSprite:SpriteVisualElement;
      
      private var _644241750resourcesSparkleSprite:SpriteVisualElement;
      
      private var _947594878simpleCurrencyResources:CurrencyBar;
      
      private var _1463272479supportButton:DynamicImageButton;
      
      private var _290535484virtualCurrency:CurrencyBar;
      
      private var _228246369virtualCurrencySparkleSprite:SpriteVisualElement;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:HUDVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function HUDBar()
      {
         super();
         mx_internal::_document = this;
         this.right = 2;
         this.left = 1;
         this.percentWidth = 100;
         this.mouseEnabled = false;
         this.mxmlContent = [this._HUDBar_HGroup1_i()];
         this.addEventListener("creationComplete",this.___HUDBar_Group1_creationComplete);
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.virtualCurrency.labelDisplay.text = LocaUtils.getThousendSeperatedNumber(this._data.virtualCurrency);
            this.realCurrency.labelDisplay.text = LocaUtils.getThousendSeperatedNumber(this._data.realCurrency);
            this.simpleCurrencyResources.labelDisplay.text = this._data.specialCurrencies[0].amountString;
            this.levelBar.progress = this._data.levelProgress;
            this.levelBar.leveLabel.text = this._data.level.toString();
            this.energyHappinessComponent.happinessBar.progress = this._data.happiness;
            this.energyHappinessComponent.energyBar.progress = this._data.energy;
            this.humanResources.dataProvider = this._data.populationData;
            this.multiCurrencyResources.dataProvider = this._data.specialCurrencyData;
            this.multiCurrencyResources.includeInLayout = this.multiCurrencyResources.visible = this._data.showMultipleCurrencyResources;
            this.simpleCurrencyResources.includeInLayout = this.simpleCurrencyResources.visible = !this._data.showMultipleCurrencyResources;
            this.createToolTips();
         }
      }
      
      private function createToolTips() : void
      {
         this.virtualCurrency.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.vcBar");
         if(this.virtualCurrency.plusButton)
         {
            this.virtualCurrency.plusButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.vcBarAdd");
         }
         this.realCurrency.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.rcBar");
         if(this.realCurrency.plusButton)
         {
            this.realCurrency.plusButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.rcBarAdd");
         }
         this.simpleCurrencyResources.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.ppBar");
         this.supportButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.help");
         this.logoutButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.exit");
         this.forumButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.forum");
         this.newsButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.opennewsscreen");
         this.humanResources.toolTip = this._data.populationTooltip;
         this.levelBar.toolTip = this._data.levelBarTooltip;
         this.energyHappinessComponent.energyBar.toolTip = this._data.energyBarTooltip;
         this.energyHappinessComponent.happinessBar.toolTip = this._data.happinessBarTooltip;
         this.setSpecialCurrencyTooltip();
      }
      
      public function set data(param1:HUDVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      public function changeResourceSelectionTo(param1:String) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.multiCurrencyResources.dataProvider)
         {
            if(_loc2_.type == param1)
            {
               this.multiCurrencyResources.externelSelectedIndex = _loc2_;
               this.setSpecialCurrencyTooltip();
               return;
            }
         }
      }
      
      private function handleCCPlusClick() : void
      {
         dispatchEvent(new Event("addCC"));
      }
      
      private function handleLevelPreviewClick() : void
      {
         dispatchEvent(new Event("openLevelPreview"));
      }
      
      private function handleDDPlusClick() : void
      {
         dispatchEvent(new Event("addDD"));
      }
      
      private function handlePPPlusClick() : void
      {
         dispatchEvent(new Event("addPP"));
      }
      
      private function handleLogout() : void
      {
         dispatchEvent(new Event("logout"));
      }
      
      private function handleSupport() : void
      {
         dispatchEvent(new Event("support"));
      }
      
      private function handleForum() : void
      {
         dispatchEvent(new Event("forum"));
      }
      
      private function setSpecialCurrencyTooltip() : void
      {
         if(this.multiCurrencyResources.userselectedIndex != -1)
         {
            this.multiCurrencyResources.toolTip = SpecialCurrencyVo(this._data.specialCurrencyData.source[this.multiCurrencyResources.userselectedIndex]).tooltip;
         }
         else if(this._data.specialCurrencyData.source.length)
         {
            this.multiCurrencyResources.toolTip = SpecialCurrencyVo(this._data.specialCurrencyData.source[0]).tooltip;
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.humanResources.addEventListener(MouseEvent.ROLL_OVER,this.onListOver);
         this.multiCurrencyResources.addEventListener(MouseEvent.ROLL_OVER,this.onListOver);
      }
      
      private function onListOver(param1:MouseEvent) : void
      {
         var _loc2_:DropDownList = param1.currentTarget as DropDownList;
         _loc2_.addEventListener(MouseEvent.ROLL_OUT,this.onListOut);
         _loc2_.removeEventListener(MouseEvent.ROLL_OVER,this.onListOver);
         _loc2_.openDropDown();
      }
      
      private function onListOut(param1:MouseEvent) : void
      {
         var _loc2_:DropDownList = param1.currentTarget as DropDownList;
         _loc2_.addEventListener(MouseEvent.ROLL_OVER,this.onListOver);
         _loc2_.removeEventListener(MouseEvent.ROLL_OUT,this.onListOut);
         _loc2_.closeDropDown(true);
      }
      
      private function newsButton_clickHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new Event("news"));
      }
      
      public function get vcElement() : DisplayObject
      {
         return this.virtualCurrency;
      }
      
      public function get rcElement() : DisplayObject
      {
         return this.realCurrency;
      }
      
      public function get xpElement() : DisplayObject
      {
         return this.levelBar;
      }
      
      public function get residentElement() : DisplayObject
      {
         return this.humanResources;
      }
      
      public function get resourceElement() : DisplayObject
      {
         if(this._data.showMultipleCurrencyResources)
         {
            return this.multiCurrencyResources;
         }
         return this.simpleCurrencyResources;
      }
      
      private function _HUDBar_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 4;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._HUDBar_Group2_c(),this._HUDBar_Group3_c(),this._HUDBar_Group4_c(),this._HUDBar_Group5_i(),this._HUDBar_Group6_c(),this._HUDBar_Group7_c(),this._HUDBar_EnergyHappinessComponent1_i(),this._HUDBar_Group8_i(),this._HUDBar_Group10_i(),this._HUDBar_Group12_c(),this._HUDBar_Group14_c()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _HUDBar_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 44;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._HUDBar_CurrencyBar1_i(),this._HUDBar_SpriteVisualElement1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_CurrencyBar1_i() : CurrencyBar
      {
         var _loc1_:CurrencyBar = new CurrencyBar();
         _loc1_.width = 134;
         _loc1_.top = -2;
         _loc1_.styleName = "virtualCurrency";
         _loc1_.addEventListener("plusClick",this.__virtualCurrency_plusClick);
         _loc1_.id = "virtualCurrency";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.virtualCurrency = _loc1_;
         BindingManager.executeBindings(this,"virtualCurrency",this.virtualCurrency);
         return _loc1_;
      }
      
      public function __virtualCurrency_plusClick(param1:Event) : void
      {
         this.handleCCPlusClick();
      }
      
      private function _HUDBar_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.initialized(this,"virtualCurrencySparkleSprite");
         this.virtualCurrencySparkleSprite = _loc1_;
         BindingManager.executeBindings(this,"virtualCurrencySparkleSprite",this.virtualCurrencySparkleSprite);
         return _loc1_;
      }
      
      private function _HUDBar_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 44;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._HUDBar_CurrencyBar2_i(),this._HUDBar_SpriteVisualElement2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_CurrencyBar2_i() : CurrencyBar
      {
         var _loc1_:CurrencyBar = new CurrencyBar();
         _loc1_.width = 110;
         _loc1_.top = -1;
         _loc1_.styleName = "realCurrency";
         _loc1_.addEventListener("plusClick",this.__realCurrency_plusClick);
         _loc1_.id = "realCurrency";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.realCurrency = _loc1_;
         BindingManager.executeBindings(this,"realCurrency",this.realCurrency);
         return _loc1_;
      }
      
      public function __realCurrency_plusClick(param1:Event) : void
      {
         this.handleDDPlusClick();
      }
      
      private function _HUDBar_SpriteVisualElement2_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.initialized(this,"realCurrencySparkleSprite");
         this.realCurrencySparkleSprite = _loc1_;
         BindingManager.executeBindings(this,"realCurrencySparkleSprite",this.realCurrencySparkleSprite);
         return _loc1_;
      }
      
      private function _HUDBar_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 44;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._HUDBar_CurrencyBar3_i(),this._HUDBar_DropDownListComponent1_i(),this._HUDBar_SpriteVisualElement3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_CurrencyBar3_i() : CurrencyBar
      {
         var _loc1_:CurrencyBar = new CurrencyBar();
         _loc1_.width = 138;
         _loc1_.top = -2;
         _loc1_.styleName = "production";
         _loc1_.addEventListener("plusClick",this.__simpleCurrencyResources_plusClick);
         _loc1_.id = "simpleCurrencyResources";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.simpleCurrencyResources = _loc1_;
         BindingManager.executeBindings(this,"simpleCurrencyResources",this.simpleCurrencyResources);
         return _loc1_;
      }
      
      public function __simpleCurrencyResources_plusClick(param1:Event) : void
      {
         this.handlePPPlusClick();
      }
      
      private function _HUDBar_DropDownListComponent1_i() : DropDownListComponent
      {
         var _loc1_:DropDownListComponent = new DropDownListComponent();
         _loc1_.styleName = "dropDownResources";
         _loc1_.width = 138;
         _loc1_.top = -3;
         _loc1_.labelField = "amountString";
         _loc1_.itemRenderer = this._HUDBar_ClassFactory1_c();
         _loc1_.prompt = "";
         _loc1_.addEventListener("change",this.__multiCurrencyResources_change);
         _loc1_.id = "multiCurrencyResources";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.multiCurrencyResources = _loc1_;
         BindingManager.executeBindings(this,"multiCurrencyResources",this.multiCurrencyResources);
         return _loc1_;
      }
      
      private function _HUDBar_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ListItemRenderer;
         return _loc1_;
      }
      
      public function __multiCurrencyResources_change(param1:IndexChangeEvent) : void
      {
         this.setSpecialCurrencyTooltip();
      }
      
      private function _HUDBar_SpriteVisualElement3_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.initialized(this,"resourcesSparkleSprite");
         this.resourcesSparkleSprite = _loc1_;
         BindingManager.executeBindings(this,"resourcesSparkleSprite",this.resourcesSparkleSprite);
         return _loc1_;
      }
      
      private function _HUDBar_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 44;
         _loc1_.width = 260;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._HUDBar_LevelBarComponent1_i(),this._HUDBar_SpriteVisualElement4_i()];
         _loc1_.id = "levelGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelGroup = _loc1_;
         BindingManager.executeBindings(this,"levelGroup",this.levelGroup);
         return _loc1_;
      }
      
      private function _HUDBar_LevelBarComponent1_i() : LevelBarComponent
      {
         var _loc1_:LevelBarComponent = new LevelBarComponent();
         _loc1_.width = 260;
         _loc1_.top = -7;
         _loc1_.left = 0;
         _loc1_.addEventListener("click",this.__levelBar_click);
         _loc1_.id = "levelBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelBar = _loc1_;
         BindingManager.executeBindings(this,"levelBar",this.levelBar);
         return _loc1_;
      }
      
      public function __levelBar_click(param1:MouseEvent) : void
      {
         this.handleLevelPreviewClick();
      }
      
      private function _HUDBar_SpriteVisualElement4_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.initialized(this,"levelSparkleSprite");
         this.levelSparkleSprite = _loc1_;
         BindingManager.executeBindings(this,"levelSparkleSprite",this.levelSparkleSprite);
         return _loc1_;
      }
      
      private function _HUDBar_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 44;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._HUDBar_DropDownListComponent2_i(),this._HUDBar_SpriteVisualElement5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_DropDownListComponent2_i() : DropDownListComponent
      {
         var _loc1_:DropDownListComponent = new DropDownListComponent();
         _loc1_.styleName = "dropDownResources";
         _loc1_.width = 100;
         _loc1_.top = -3;
         _loc1_.labelField = "amountString";
         _loc1_.itemRenderer = this._HUDBar_ClassFactory2_c();
         _loc1_.prompt = "";
         _loc1_.id = "humanResources";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.humanResources = _loc1_;
         BindingManager.executeBindings(this,"humanResources",this.humanResources);
         return _loc1_;
      }
      
      private function _HUDBar_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ListItemRenderer;
         return _loc1_;
      }
      
      private function _HUDBar_SpriteVisualElement5_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.initialized(this,"residentsSparkleSprite");
         this.residentsSparkleSprite = _loc1_;
         BindingManager.executeBindings(this,"residentsSparkleSprite",this.residentsSparkleSprite);
         return _loc1_;
      }
      
      private function _HUDBar_EnergyHappinessComponent1_i() : EnergyHappinessComponent
      {
         var _loc1_:EnergyHappinessComponent = new EnergyHappinessComponent();
         _loc1_.width = 106;
         _loc1_.id = "energyHappinessComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyHappinessComponent = _loc1_;
         BindingManager.executeBindings(this,"energyHappinessComponent",this.energyHappinessComponent);
         return _loc1_;
      }
      
      private function _HUDBar_Group8_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 30;
         _loc1_.left = 2;
         _loc1_.height = 44;
         _loc1_.mxmlContent = [this._HUDBar_Group9_c()];
         _loc1_.id = "newsGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newsGroup = _loc1_;
         BindingManager.executeBindings(this,"newsGroup",this.newsGroup);
         return _loc1_;
      }
      
      private function _HUDBar_Group9_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._HUDBar_BriskImageDynaLib1_c(),this._HUDBar_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "ui_main_ressourcebase_round";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 1;
         _loc1_.styleName = "newsButton";
         _loc1_.addEventListener("click",this.__newsButton_click);
         _loc1_.id = "newsButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newsButton = _loc1_;
         BindingManager.executeBindings(this,"newsButton",this.newsButton);
         return _loc1_;
      }
      
      public function __newsButton_click(param1:MouseEvent) : void
      {
         this.newsButton_clickHandler(param1);
      }
      
      private function _HUDBar_Group10_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 40;
         _loc1_.left = 2;
         _loc1_.height = 44;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContent = [this._HUDBar_Group11_c()];
         _loc1_.id = "forumGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.forumGroup = _loc1_;
         BindingManager.executeBindings(this,"forumGroup",this.forumGroup);
         return _loc1_;
      }
      
      private function _HUDBar_Group11_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._HUDBar_BriskImageDynaLib2_c(),this._HUDBar_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "ui_main_ressourcebase_round";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = -1;
         _loc1_.styleName = "forumButton";
         _loc1_.addEventListener("click",this.__forumButton_click);
         _loc1_.id = "forumButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.forumButton = _loc1_;
         BindingManager.executeBindings(this,"forumButton",this.forumButton);
         return _loc1_;
      }
      
      public function __forumButton_click(param1:MouseEvent) : void
      {
         this.handleForum();
      }
      
      private function _HUDBar_Group12_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 30;
         _loc1_.height = 44;
         _loc1_.mxmlContent = [this._HUDBar_Group13_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_Group13_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.mxmlContent = [this._HUDBar_BriskImageDynaLib3_c(),this._HUDBar_DynamicImageButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "ui_main_ressourcebase_round";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_DynamicImageButton3_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "supportButton";
         _loc1_.addEventListener("click",this.__supportButton_click);
         _loc1_.id = "supportButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.supportButton = _loc1_;
         BindingManager.executeBindings(this,"supportButton",this.supportButton);
         return _loc1_;
      }
      
      public function __supportButton_click(param1:MouseEvent) : void
      {
         this.handleSupport();
      }
      
      private function _HUDBar_Group14_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 35;
         _loc1_.height = 44;
         _loc1_.mxmlContent = [this._HUDBar_DynamicImageButton4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDBar_DynamicImageButton4_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.top = -2;
         _loc1_.left = 0;
         _loc1_.styleName = "logoutButton";
         _loc1_.addEventListener("click",this.__logoutButton_click);
         _loc1_.id = "logoutButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.logoutButton = _loc1_;
         BindingManager.executeBindings(this,"logoutButton",this.logoutButton);
         return _loc1_;
      }
      
      public function __logoutButton_click(param1:MouseEvent) : void
      {
         this.handleLogout();
      }
      
      public function ___HUDBar_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyHappinessComponent() : EnergyHappinessComponent
      {
         return this._717028414energyHappinessComponent;
      }
      
      public function set energyHappinessComponent(param1:EnergyHappinessComponent) : void
      {
         var _loc2_:Object = this._717028414energyHappinessComponent;
         if(_loc2_ !== param1)
         {
            this._717028414energyHappinessComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyHappinessComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get forumButton() : DynamicImageButton
      {
         return this._1129806925forumButton;
      }
      
      public function set forumButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1129806925forumButton;
         if(_loc2_ !== param1)
         {
            this._1129806925forumButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forumButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get forumGroup() : Group
      {
         return this._863205922forumGroup;
      }
      
      public function set forumGroup(param1:Group) : void
      {
         var _loc2_:Object = this._863205922forumGroup;
         if(_loc2_ !== param1)
         {
            this._863205922forumGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forumGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get humanResources() : DropDownListComponent
      {
         return this._1846837112humanResources;
      }
      
      public function set humanResources(param1:DropDownListComponent) : void
      {
         var _loc2_:Object = this._1846837112humanResources;
         if(_loc2_ !== param1)
         {
            this._1846837112humanResources = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"humanResources",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBar() : LevelBarComponent
      {
         return this._2131654161levelBar;
      }
      
      public function set levelBar(param1:LevelBarComponent) : void
      {
         var _loc2_:Object = this._2131654161levelBar;
         if(_loc2_ !== param1)
         {
            this._2131654161levelBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelGroup() : Group
      {
         return this._184876379levelGroup;
      }
      
      public function set levelGroup(param1:Group) : void
      {
         var _loc2_:Object = this._184876379levelGroup;
         if(_loc2_ !== param1)
         {
            this._184876379levelGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelSparkleSprite() : SpriteVisualElement
      {
         return this._1695650217levelSparkleSprite;
      }
      
      public function set levelSparkleSprite(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._1695650217levelSparkleSprite;
         if(_loc2_ !== param1)
         {
            this._1695650217levelSparkleSprite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelSparkleSprite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get logoutButton() : DynamicImageButton
      {
         return this._1255627100logoutButton;
      }
      
      public function set logoutButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1255627100logoutButton;
         if(_loc2_ !== param1)
         {
            this._1255627100logoutButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logoutButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : HGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc2_ !== param1)
         {
            this._273241018mainGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get multiCurrencyResources() : DropDownListComponent
      {
         return this._751905573multiCurrencyResources;
      }
      
      public function set multiCurrencyResources(param1:DropDownListComponent) : void
      {
         var _loc2_:Object = this._751905573multiCurrencyResources;
         if(_loc2_ !== param1)
         {
            this._751905573multiCurrencyResources = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"multiCurrencyResources",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newsButton() : DynamicImageButton
      {
         return this._85068827newsButton;
      }
      
      public function set newsButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._85068827newsButton;
         if(_loc2_ !== param1)
         {
            this._85068827newsButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newsButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newsGroup() : Group
      {
         return this._278873964newsGroup;
      }
      
      public function set newsGroup(param1:Group) : void
      {
         var _loc2_:Object = this._278873964newsGroup;
         if(_loc2_ !== param1)
         {
            this._278873964newsGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newsGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get realCurrency() : CurrencyBar
      {
         return this._1848586191realCurrency;
      }
      
      public function set realCurrency(param1:CurrencyBar) : void
      {
         var _loc2_:Object = this._1848586191realCurrency;
         if(_loc2_ !== param1)
         {
            this._1848586191realCurrency = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realCurrency",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get realCurrencySparkleSprite() : SpriteVisualElement
      {
         return this._729060372realCurrencySparkleSprite;
      }
      
      public function set realCurrencySparkleSprite(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._729060372realCurrencySparkleSprite;
         if(_loc2_ !== param1)
         {
            this._729060372realCurrencySparkleSprite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realCurrencySparkleSprite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentsSparkleSprite() : SpriteVisualElement
      {
         return this._590841624residentsSparkleSprite;
      }
      
      public function set residentsSparkleSprite(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._590841624residentsSparkleSprite;
         if(_loc2_ !== param1)
         {
            this._590841624residentsSparkleSprite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentsSparkleSprite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get resourcesSparkleSprite() : SpriteVisualElement
      {
         return this._644241750resourcesSparkleSprite;
      }
      
      public function set resourcesSparkleSprite(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._644241750resourcesSparkleSprite;
         if(_loc2_ !== param1)
         {
            this._644241750resourcesSparkleSprite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resourcesSparkleSprite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get simpleCurrencyResources() : CurrencyBar
      {
         return this._947594878simpleCurrencyResources;
      }
      
      public function set simpleCurrencyResources(param1:CurrencyBar) : void
      {
         var _loc2_:Object = this._947594878simpleCurrencyResources;
         if(_loc2_ !== param1)
         {
            this._947594878simpleCurrencyResources = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simpleCurrencyResources",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get supportButton() : DynamicImageButton
      {
         return this._1463272479supportButton;
      }
      
      public function set supportButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1463272479supportButton;
         if(_loc2_ !== param1)
         {
            this._1463272479supportButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"supportButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get virtualCurrency() : CurrencyBar
      {
         return this._290535484virtualCurrency;
      }
      
      public function set virtualCurrency(param1:CurrencyBar) : void
      {
         var _loc2_:Object = this._290535484virtualCurrency;
         if(_loc2_ !== param1)
         {
            this._290535484virtualCurrency = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"virtualCurrency",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get virtualCurrencySparkleSprite() : SpriteVisualElement
      {
         return this._228246369virtualCurrencySparkleSprite;
      }
      
      public function set virtualCurrencySparkleSprite(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._228246369virtualCurrencySparkleSprite;
         if(_loc2_ !== param1)
         {
            this._228246369virtualCurrencySparkleSprite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"virtualCurrencySparkleSprite",_loc2_,param1));
            }
         }
      }
   }
}

