package net.bigpoint.cityrama.view.application.ui.components
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
   import flex.util.ui.throbber.SimpleThrobber;
   import mx.binding.*;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.filters.*;
   import mx.graphics.SolidColor;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.application.ui.skins.RoundedBorderContainerSkin;
   import net.bigpoint.cityrama.view.assistants.ui.components.PatrolSideMenu;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorSideMenu;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDaySideMenu;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareSideMenu;
   import net.bigpoint.cityrama.view.emergencyTV.components.EmergencyTV;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventSideMenu;
   import net.bigpoint.cityrama.view.hud.ui.components.HUDBar;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.MainMenuComponent;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestSideMenu;
   import net.bigpoint.cityrama.view.settingsbar.ui.components.SettingsBarView;
   import net.bigpoint.cityrama.view.settingsbar.ui.dev.QMConsole;
   import spark.components.Group;
   import spark.components.SkinnableContainer;
   import spark.components.VGroup;
   import spark.core.SpriteVisualElement;
   import spark.layouts.BasicLayout;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class MainView extends SkinnableContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {"contentGroup":false};
      
      private var _1435677619animationlayer:SpriteVisualElement;
      
      private var _1295031491backgroundLayer:SpriteVisualElement;
      
      private var _363462003bonusDaySideMenu:BonusDaySideMenu;
      
      private var _1829289506citySquareSideMenu:CitySquareSideMenu;
      
      private var _1252512586confirmationGroup:Group;
      
      private var _95458899debug:SpriteVisualElement;
      
      private var _1060074073dropIconsAnimation:SpriteVisualElement;
      
      private var _2113777619emergencyTV:EmergencyTV;
      
      private var _822511234featuredEventSideMenu:FeaturedEventSideMenu;
      
      private var _588300439fieldlayer:SpriteVisualElement;
      
      private var _1206437988hudBar:HUDBar;
      
      private var _15981585infoandIconLayer:Group;
      
      private var _1590589631inventoryTopBarView:Group;
      
      private var _1127858469mainMenuComponent:MainMenuComponent;
      
      private var _1470952182modalCover:Group;
      
      private var _414951403modalCoverTop:Group;
      
      private var _1625777113mouseAttachLayer:MouseAttachLayerView;
      
      private var _2071765566patrolSideMenu:PatrolSideMenu;
      
      private var _450167499popupContainer:Group;
      
      private var _2051980320popupContainerTop:Group;
      
      private var _779330213popupStackContainer:Group;
      
      private var _1566742416popupStackContainerTop:Group;
      
      private var _1605401341preloader_ui:UIComponent;
      
      private var _1225037723qmConsole:QMConsole;
      
      private var _985870572questSideInfoView:QuestSideMenu;
      
      private var _457243152rentCollectorSideView:RentCollectorSideMenu;
      
      private var _3959901settingBar:SettingsBarView;
      
      private var _155134962statsLayer:SpriteVisualElement;
      
      private var _491527052uiInfolayerView:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private const simpleThrobber:SimpleThrobber;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function MainView()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.simpleThrobber = new SimpleThrobber(50,50,5);
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._MainView_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_application_ui_components_MainViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return MainView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.layout = this._MainView_BasicLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MainView_Array1_c);
         this.addEventListener("creationComplete",this.___MainView_SkinnableContainer1_creationComplete);
         this.addEventListener("resize",this.___MainView_SkinnableContainer1_resize);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         MainView._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.skinClass = RoundedBorderContainerSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function detachThrobber() : void
      {
         if(this.preloader_ui.numChildren >= 1)
         {
            this.preloader_ui.removeChild(this.simpleThrobber);
         }
      }
      
      public function attachThrobber() : void
      {
         this.preloader_ui.addChild(this.simpleThrobber);
         this.simpleThrobber.start();
      }
      
      private function syncStage(param1:Event) : void
      {
      }
      
      private function creationCompleteHandler() : void
      {
      }
      
      private function init() : void
      {
      }
      
      private function _MainView_BasicLayout1_c() : BasicLayout
      {
         return new BasicLayout();
      }
      
      private function _MainView_Array1_c() : Array
      {
         return [this._MainView_Rect1_c(),this._MainView_Group1_c(),this._MainView_EmergencyTV1_i(),this._MainView_SpriteVisualElement5_i(),this._MainView_UIComponent1_i(),this._MainView_SpriteVisualElement6_i(),this._MainView_Group13_i(),this._MainView_Group14_i(),this._MainView_MouseAttachLayerView1_i(),this._MainView_QMConsole1_i()];
      }
      
      private function _MainView_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.fill = this._MainView_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _MainView_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 7706950;
         return _loc1_;
      }
      
      private function _MainView_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.mxmlContent = [this._MainView_Group2_c(),this._MainView_SpriteVisualElement2_i(),this._MainView_Group3_i(),this._MainView_Group4_i(),this._MainView_VGroup1_c(),this._MainView_Group5_c(),this._MainView_SpriteVisualElement3_i(),this._MainView_SettingsBarView1_i(),this._MainView_SpriteVisualElement4_i(),this._MainView_HUDBar1_i(),this._MainView_QuestSideMenu1_i(),this._MainView_Group12_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MainView_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.mxmlContent = [this._MainView_SpriteVisualElement1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MainView_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.initialized(this,"backgroundLayer");
         this.backgroundLayer = _loc1_;
         BindingManager.executeBindings(this,"backgroundLayer",this.backgroundLayer);
         return _loc1_;
      }
      
      private function _MainView_SpriteVisualElement2_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.initialized(this,"fieldlayer");
         this.fieldlayer = _loc1_;
         BindingManager.executeBindings(this,"fieldlayer",this.fieldlayer);
         return _loc1_;
      }
      
      private function _MainView_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseEnabledWhereTransparent = false;
         _loc1_.id = "infoandIconLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoandIconLayer = _loc1_;
         BindingManager.executeBindings(this,"infoandIconLayer",this.infoandIconLayer);
         return _loc1_;
      }
      
      private function _MainView_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 5;
         _loc1_.horizontalCenter = 0;
         _loc1_.left = 72;
         _loc1_.right = 72;
         _loc1_.percentWidth = 100;
         _loc1_.id = "inventoryTopBarView";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inventoryTopBarView = _loc1_;
         BindingManager.executeBindings(this,"inventoryTopBarView",this.inventoryTopBarView);
         return _loc1_;
      }
      
      private function _MainView_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 65;
         _loc1_.right = 9;
         _loc1_.gap = 9;
         _loc1_.mxmlContent = [this._MainView_FeaturedEventSideMenu1_i(),this._MainView_BonusDaySideMenu1_i(),this._MainView_CitySquareSideMenu1_i(),this._MainView_RentCollectorSideMenu1_i(),this._MainView_PatrolSideMenu1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MainView_FeaturedEventSideMenu1_i() : FeaturedEventSideMenu
      {
         var _loc1_:FeaturedEventSideMenu = new FeaturedEventSideMenu();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "featuredEventSideMenu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.featuredEventSideMenu = _loc1_;
         BindingManager.executeBindings(this,"featuredEventSideMenu",this.featuredEventSideMenu);
         return _loc1_;
      }
      
      private function _MainView_BonusDaySideMenu1_i() : BonusDaySideMenu
      {
         var _loc1_:BonusDaySideMenu = new BonusDaySideMenu();
         _loc1_.includeInLayout = true;
         _loc1_.visible = true;
         _loc1_.id = "bonusDaySideMenu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bonusDaySideMenu = _loc1_;
         BindingManager.executeBindings(this,"bonusDaySideMenu",this.bonusDaySideMenu);
         return _loc1_;
      }
      
      private function _MainView_CitySquareSideMenu1_i() : CitySquareSideMenu
      {
         var _loc1_:CitySquareSideMenu = new CitySquareSideMenu();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "citySquareSideMenu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.citySquareSideMenu = _loc1_;
         BindingManager.executeBindings(this,"citySquareSideMenu",this.citySquareSideMenu);
         return _loc1_;
      }
      
      private function _MainView_RentCollectorSideMenu1_i() : RentCollectorSideMenu
      {
         var _loc1_:RentCollectorSideMenu = new RentCollectorSideMenu();
         _loc1_.id = "rentCollectorSideView";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rentCollectorSideView = _loc1_;
         BindingManager.executeBindings(this,"rentCollectorSideView",this.rentCollectorSideView);
         return _loc1_;
      }
      
      private function _MainView_PatrolSideMenu1_i() : PatrolSideMenu
      {
         var _loc1_:PatrolSideMenu = new PatrolSideMenu();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "patrolSideMenu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.patrolSideMenu = _loc1_;
         BindingManager.executeBindings(this,"patrolSideMenu",this.patrolSideMenu);
         return _loc1_;
      }
      
      private function _MainView_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.mxmlContent = [this._MainView_Group6_i(),this._MainView_Group7_i(),this._MainView_Group8_i(),this._MainView_Group9_i(),this._MainView_Group10_i(),this._MainView_Group11_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MainView_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._MainView_Rect2_c()];
         _loc1_.id = "modalCover";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.modalCover = _loc1_;
         BindingManager.executeBindings(this,"modalCover",this.modalCover);
         return _loc1_;
      }
      
      private function _MainView_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.fill = this._MainView_SolidColor2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _MainView_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.6;
         return _loc1_;
      }
      
      private function _MainView_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.visible = false;
         _loc1_.id = "popupContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.popupContainer = _loc1_;
         BindingManager.executeBindings(this,"popupContainer",this.popupContainer);
         return _loc1_;
      }
      
      private function _MainView_Group8_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.visible = false;
         _loc1_.id = "popupStackContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.popupStackContainer = _loc1_;
         BindingManager.executeBindings(this,"popupStackContainer",this.popupStackContainer);
         return _loc1_;
      }
      
      private function _MainView_Group9_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._MainView_Rect3_c()];
         _loc1_.id = "modalCoverTop";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.modalCoverTop = _loc1_;
         BindingManager.executeBindings(this,"modalCoverTop",this.modalCoverTop);
         return _loc1_;
      }
      
      private function _MainView_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.fill = this._MainView_SolidColor3_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _MainView_SolidColor3_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.6;
         return _loc1_;
      }
      
      private function _MainView_Group10_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.visible = false;
         _loc1_.id = "popupContainerTop";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.popupContainerTop = _loc1_;
         BindingManager.executeBindings(this,"popupContainerTop",this.popupContainerTop);
         return _loc1_;
      }
      
      private function _MainView_Group11_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.visible = false;
         _loc1_.id = "popupStackContainerTop";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.popupStackContainerTop = _loc1_;
         BindingManager.executeBindings(this,"popupStackContainerTop",this.popupStackContainerTop);
         return _loc1_;
      }
      
      private function _MainView_SpriteVisualElement3_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.initialized(this,"dropIconsAnimation");
         this.dropIconsAnimation = _loc1_;
         BindingManager.executeBindings(this,"dropIconsAnimation",this.dropIconsAnimation);
         return _loc1_;
      }
      
      private function _MainView_SettingsBarView1_i() : SettingsBarView
      {
         var _loc1_:SettingsBarView = new SettingsBarView();
         _loc1_.bottom = 100;
         _loc1_.right = 0;
         _loc1_.visible = false;
         _loc1_.id = "settingBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.settingBar = _loc1_;
         BindingManager.executeBindings(this,"settingBar",this.settingBar);
         return _loc1_;
      }
      
      private function _MainView_SpriteVisualElement4_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.width = 70;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.height = 100;
         _loc1_.initialized(this,"statsLayer");
         this.statsLayer = _loc1_;
         BindingManager.executeBindings(this,"statsLayer",this.statsLayer);
         return _loc1_;
      }
      
      private function _MainView_HUDBar1_i() : HUDBar
      {
         var _loc1_:HUDBar = new HUDBar();
         _loc1_.top = 10;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "hudBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.hudBar = _loc1_;
         BindingManager.executeBindings(this,"hudBar",this.hudBar);
         return _loc1_;
      }
      
      private function _MainView_QuestSideMenu1_i() : QuestSideMenu
      {
         var _loc1_:QuestSideMenu = new QuestSideMenu();
         _loc1_.percentHeight = 100;
         _loc1_.top = 50;
         _loc1_.left = 0;
         _loc1_.id = "questSideInfoView";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.questSideInfoView = _loc1_;
         BindingManager.executeBindings(this,"questSideInfoView",this.questSideInfoView);
         return _loc1_;
      }
      
      private function _MainView_Group12_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = -1;
         _loc1_.mxmlContent = [this._MainView_MainMenuComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MainView_MainMenuComponent1_i() : MainMenuComponent
      {
         var _loc1_:MainMenuComponent = new MainMenuComponent();
         _loc1_.visible = false;
         _loc1_.id = "mainMenuComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainMenuComponent = _loc1_;
         BindingManager.executeBindings(this,"mainMenuComponent",this.mainMenuComponent);
         return _loc1_;
      }
      
      private function _MainView_EmergencyTV1_i() : EmergencyTV
      {
         var _loc1_:EmergencyTV = new EmergencyTV();
         _loc1_.bottom = -4;
         _loc1_.left = 5;
         _loc1_.id = "emergencyTV";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emergencyTV = _loc1_;
         BindingManager.executeBindings(this,"emergencyTV",this.emergencyTV);
         return _loc1_;
      }
      
      private function _MainView_SpriteVisualElement5_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.initialized(this,"animationlayer");
         this.animationlayer = _loc1_;
         BindingManager.executeBindings(this,"animationlayer",this.animationlayer);
         return _loc1_;
      }
      
      private function _MainView_UIComponent1_i() : UIComponent
      {
         var _loc1_:UIComponent = new UIComponent();
         _loc1_.height = 50;
         _loc1_.width = 50;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.addEventListener("initialize",this.__preloader_ui_initialize);
         _loc1_.id = "preloader_ui";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.preloader_ui = _loc1_;
         BindingManager.executeBindings(this,"preloader_ui",this.preloader_ui);
         return _loc1_;
      }
      
      public function __preloader_ui_initialize(param1:FlexEvent) : void
      {
      }
      
      private function _MainView_SpriteVisualElement6_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.initialized(this,"debug");
         this.debug = _loc1_;
         BindingManager.executeBindings(this,"debug",this.debug);
         return _loc1_;
      }
      
      private function _MainView_Group13_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mouseEnabled = true;
         _loc1_.mouseChildren = true;
         _loc1_.id = "confirmationGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.confirmationGroup = _loc1_;
         BindingManager.executeBindings(this,"confirmationGroup",this.confirmationGroup);
         return _loc1_;
      }
      
      private function _MainView_Group14_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.id = "uiInfolayerView";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerView = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerView",this.uiInfolayerView);
         return _loc1_;
      }
      
      private function _MainView_MouseAttachLayerView1_i() : MouseAttachLayerView
      {
         var _loc1_:MouseAttachLayerView = new MouseAttachLayerView();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.id = "mouseAttachLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mouseAttachLayer = _loc1_;
         BindingManager.executeBindings(this,"mouseAttachLayer",this.mouseAttachLayer);
         return _loc1_;
      }
      
      private function _MainView_QMConsole1_i() : QMConsole
      {
         var _loc1_:QMConsole = new QMConsole();
         _loc1_.left = 5;
         _loc1_.right = 5;
         _loc1_.top = 5;
         _loc1_.maxHeight = 530;
         _loc1_.percentHeight = 20;
         _loc1_.visible = false;
         _loc1_.id = "qmConsole";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.qmConsole = _loc1_;
         BindingManager.executeBindings(this,"qmConsole",this.qmConsole);
         return _loc1_;
      }
      
      public function ___MainView_SkinnableContainer1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler();
      }
      
      public function ___MainView_SkinnableContainer1_resize(param1:ResizeEvent) : void
      {
         this.syncStage(param1);
      }
      
      private function _MainView_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return fieldlayer.width;
         },null,"infoandIconLayer.width");
         result[1] = new Binding(this,function():Number
         {
            return fieldlayer.height;
         },null,"infoandIconLayer.height");
         result[2] = new Binding(this,function():Number
         {
            return fieldlayer.width;
         },null,"confirmationGroup.width");
         result[3] = new Binding(this,function():Number
         {
            return fieldlayer.height;
         },null,"confirmationGroup.height");
         result[4] = new Binding(this,function():Number
         {
            return fieldlayer.width;
         },null,"uiInfolayerView.width");
         result[5] = new Binding(this,function():Number
         {
            return fieldlayer.height;
         },null,"uiInfolayerView.height");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get animationlayer() : SpriteVisualElement
      {
         return this._1435677619animationlayer;
      }
      
      public function set animationlayer(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._1435677619animationlayer;
         if(_loc2_ !== param1)
         {
            this._1435677619animationlayer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"animationlayer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundLayer() : SpriteVisualElement
      {
         return this._1295031491backgroundLayer;
      }
      
      public function set backgroundLayer(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._1295031491backgroundLayer;
         if(_loc2_ !== param1)
         {
            this._1295031491backgroundLayer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundLayer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bonusDaySideMenu() : BonusDaySideMenu
      {
         return this._363462003bonusDaySideMenu;
      }
      
      public function set bonusDaySideMenu(param1:BonusDaySideMenu) : void
      {
         var _loc2_:Object = this._363462003bonusDaySideMenu;
         if(_loc2_ !== param1)
         {
            this._363462003bonusDaySideMenu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bonusDaySideMenu",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get citySquareSideMenu() : CitySquareSideMenu
      {
         return this._1829289506citySquareSideMenu;
      }
      
      public function set citySquareSideMenu(param1:CitySquareSideMenu) : void
      {
         var _loc2_:Object = this._1829289506citySquareSideMenu;
         if(_loc2_ !== param1)
         {
            this._1829289506citySquareSideMenu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"citySquareSideMenu",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmationGroup() : Group
      {
         return this._1252512586confirmationGroup;
      }
      
      public function set confirmationGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1252512586confirmationGroup;
         if(_loc2_ !== param1)
         {
            this._1252512586confirmationGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmationGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get debug() : SpriteVisualElement
      {
         return this._95458899debug;
      }
      
      public function set debug(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._95458899debug;
         if(_loc2_ !== param1)
         {
            this._95458899debug = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"debug",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dropIconsAnimation() : SpriteVisualElement
      {
         return this._1060074073dropIconsAnimation;
      }
      
      public function set dropIconsAnimation(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._1060074073dropIconsAnimation;
         if(_loc2_ !== param1)
         {
            this._1060074073dropIconsAnimation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropIconsAnimation",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyTV() : EmergencyTV
      {
         return this._2113777619emergencyTV;
      }
      
      public function set emergencyTV(param1:EmergencyTV) : void
      {
         var _loc2_:Object = this._2113777619emergencyTV;
         if(_loc2_ !== param1)
         {
            this._2113777619emergencyTV = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyTV",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featuredEventSideMenu() : FeaturedEventSideMenu
      {
         return this._822511234featuredEventSideMenu;
      }
      
      public function set featuredEventSideMenu(param1:FeaturedEventSideMenu) : void
      {
         var _loc2_:Object = this._822511234featuredEventSideMenu;
         if(_loc2_ !== param1)
         {
            this._822511234featuredEventSideMenu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featuredEventSideMenu",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fieldlayer() : SpriteVisualElement
      {
         return this._588300439fieldlayer;
      }
      
      public function set fieldlayer(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._588300439fieldlayer;
         if(_loc2_ !== param1)
         {
            this._588300439fieldlayer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fieldlayer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hudBar() : HUDBar
      {
         return this._1206437988hudBar;
      }
      
      public function set hudBar(param1:HUDBar) : void
      {
         var _loc2_:Object = this._1206437988hudBar;
         if(_loc2_ !== param1)
         {
            this._1206437988hudBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hudBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoandIconLayer() : Group
      {
         return this._15981585infoandIconLayer;
      }
      
      public function set infoandIconLayer(param1:Group) : void
      {
         var _loc2_:Object = this._15981585infoandIconLayer;
         if(_loc2_ !== param1)
         {
            this._15981585infoandIconLayer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoandIconLayer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inventoryTopBarView() : Group
      {
         return this._1590589631inventoryTopBarView;
      }
      
      public function set inventoryTopBarView(param1:Group) : void
      {
         var _loc2_:Object = this._1590589631inventoryTopBarView;
         if(_loc2_ !== param1)
         {
            this._1590589631inventoryTopBarView = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventoryTopBarView",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainMenuComponent() : MainMenuComponent
      {
         return this._1127858469mainMenuComponent;
      }
      
      public function set mainMenuComponent(param1:MainMenuComponent) : void
      {
         var _loc2_:Object = this._1127858469mainMenuComponent;
         if(_loc2_ !== param1)
         {
            this._1127858469mainMenuComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainMenuComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get modalCover() : Group
      {
         return this._1470952182modalCover;
      }
      
      public function set modalCover(param1:Group) : void
      {
         var _loc2_:Object = this._1470952182modalCover;
         if(_loc2_ !== param1)
         {
            this._1470952182modalCover = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modalCover",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get modalCoverTop() : Group
      {
         return this._414951403modalCoverTop;
      }
      
      public function set modalCoverTop(param1:Group) : void
      {
         var _loc2_:Object = this._414951403modalCoverTop;
         if(_loc2_ !== param1)
         {
            this._414951403modalCoverTop = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modalCoverTop",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mouseAttachLayer() : MouseAttachLayerView
      {
         return this._1625777113mouseAttachLayer;
      }
      
      public function set mouseAttachLayer(param1:MouseAttachLayerView) : void
      {
         var _loc2_:Object = this._1625777113mouseAttachLayer;
         if(_loc2_ !== param1)
         {
            this._1625777113mouseAttachLayer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mouseAttachLayer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get patrolSideMenu() : PatrolSideMenu
      {
         return this._2071765566patrolSideMenu;
      }
      
      public function set patrolSideMenu(param1:PatrolSideMenu) : void
      {
         var _loc2_:Object = this._2071765566patrolSideMenu;
         if(_loc2_ !== param1)
         {
            this._2071765566patrolSideMenu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"patrolSideMenu",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get popupContainer() : Group
      {
         return this._450167499popupContainer;
      }
      
      public function set popupContainer(param1:Group) : void
      {
         var _loc2_:Object = this._450167499popupContainer;
         if(_loc2_ !== param1)
         {
            this._450167499popupContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popupContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get popupContainerTop() : Group
      {
         return this._2051980320popupContainerTop;
      }
      
      public function set popupContainerTop(param1:Group) : void
      {
         var _loc2_:Object = this._2051980320popupContainerTop;
         if(_loc2_ !== param1)
         {
            this._2051980320popupContainerTop = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popupContainerTop",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get popupStackContainer() : Group
      {
         return this._779330213popupStackContainer;
      }
      
      public function set popupStackContainer(param1:Group) : void
      {
         var _loc2_:Object = this._779330213popupStackContainer;
         if(_loc2_ !== param1)
         {
            this._779330213popupStackContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popupStackContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get popupStackContainerTop() : Group
      {
         return this._1566742416popupStackContainerTop;
      }
      
      public function set popupStackContainerTop(param1:Group) : void
      {
         var _loc2_:Object = this._1566742416popupStackContainerTop;
         if(_loc2_ !== param1)
         {
            this._1566742416popupStackContainerTop = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popupStackContainerTop",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get preloader_ui() : UIComponent
      {
         return this._1605401341preloader_ui;
      }
      
      public function set preloader_ui(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1605401341preloader_ui;
         if(_loc2_ !== param1)
         {
            this._1605401341preloader_ui = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"preloader_ui",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get qmConsole() : QMConsole
      {
         return this._1225037723qmConsole;
      }
      
      public function set qmConsole(param1:QMConsole) : void
      {
         var _loc2_:Object = this._1225037723qmConsole;
         if(_loc2_ !== param1)
         {
            this._1225037723qmConsole = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qmConsole",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get questSideInfoView() : QuestSideMenu
      {
         return this._985870572questSideInfoView;
      }
      
      public function set questSideInfoView(param1:QuestSideMenu) : void
      {
         var _loc2_:Object = this._985870572questSideInfoView;
         if(_loc2_ !== param1)
         {
            this._985870572questSideInfoView = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questSideInfoView",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rentCollectorSideView() : RentCollectorSideMenu
      {
         return this._457243152rentCollectorSideView;
      }
      
      public function set rentCollectorSideView(param1:RentCollectorSideMenu) : void
      {
         var _loc2_:Object = this._457243152rentCollectorSideView;
         if(_loc2_ !== param1)
         {
            this._457243152rentCollectorSideView = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rentCollectorSideView",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get settingBar() : SettingsBarView
      {
         return this._3959901settingBar;
      }
      
      public function set settingBar(param1:SettingsBarView) : void
      {
         var _loc2_:Object = this._3959901settingBar;
         if(_loc2_ !== param1)
         {
            this._3959901settingBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"settingBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statsLayer() : SpriteVisualElement
      {
         return this._155134962statsLayer;
      }
      
      public function set statsLayer(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._155134962statsLayer;
         if(_loc2_ !== param1)
         {
            this._155134962statsLayer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statsLayer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerView() : Group
      {
         return this._491527052uiInfolayerView;
      }
      
      public function set uiInfolayerView(param1:Group) : void
      {
         var _loc2_:Object = this._491527052uiInfolayerView;
         if(_loc2_ !== param1)
         {
            this._491527052uiInfolayerView = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerView",_loc2_,param1));
            }
         }
      }
   }
}

