package net.bigpoint.cityrama.view.featureScreens.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import net.bigpoint.cityrama.model.featureScreens.vo.FeatureCharacterScreenVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class FeatureCharacterScreen extends PaperPopupWindow
   {
      
      public static const INTRO_BUTTON_CLICKED:String = "INTRO_BUTTON_CLICKED";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      private var _1443225712characterGfx:BriskImageDynaLib;
      
      private var _1790120620characterName:LocaLabel;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _320321758gfxLeft_storyScreen:BriskImageDynaLib;
      
      private var _794730917gfxRight_storyScreen:BriskImageDynaLib;
      
      private var _990699913introductionScreenComponent:HGroup;
      
      private var _1984686051layerButton:MultistateButton;
      
      private var _407411515mainGfx_introductionScreen:BriskImageDynaLib;
      
      private var _1439580930mainGfx_storyScreen:BriskImageDynaLib;
      
      private var _304398368mainLayerHeader_introductionScreen:LocaLabel;
      
      private var _1891767488mainLayerText_introductionScreen:LocaLabel;
      
      private var _724451559mainLayerText_storyScreen:LocaLabel;
      
      private var _1746842564storyScreenComponent:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FeatureCharacterScreenVo;
      
      private var _isDirty:Boolean = false;
      
      public function FeatureCharacterScreen()
      {
         super();
         mx_internal::_document = this;
         this.showBackButton = false;
         this.styleName = "introduction";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._FeatureCharacterScreen_Array1_c);
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
      
      public function set data(param1:FeatureCharacterScreenVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty && Boolean(this._data))
         {
            this._isDirty = false;
            this.setStyle("styleName",this._data.layerStyleName);
            this.title = this._data.title;
            this.flavourText.text = this._data.flavourText;
            this.layerButton.label = this._data.buttonLabel;
            this.layerButton.toolTip = this._data.buttonTooltip;
            this.characterName.text = this._data.characterName;
            this.characterGfx.briskDynaVo = this._data.characterGfx;
            this.introductionScreenComponent.includeInLayout = this.introductionScreenComponent.visible = !this._data.isStoryScreen;
            this.storyScreenComponent.includeInLayout = this.storyScreenComponent.visible = this._data.isStoryScreen;
            if(this._data.isStoryScreen)
            {
               this.mainLayerText_storyScreen.text = this._data.mainLayerText;
               this.mainGfx_storyScreen.briskDynaVo = this._data.mainGfx;
               this.gfxLeft_storyScreen.briskDynaVo = this._data.smallGfxLeft;
               this.gfxRight_storyScreen.briskDynaVo = this._data.smallGfxRight;
            }
            else
            {
               this.mainLayerHeader_introductionScreen.text = this._data.mainLayerTextHeader;
               this.mainLayerText_introductionScreen.text = this._data.mainLayerText;
               this.mainGfx_introductionScreen.briskDynaVo = this._data.mainGfx;
            }
         }
      }
      
      private function handleButtonClick() : void
      {
         dispatchEvent(new Event(INTRO_BUTTON_CLICKED,true));
         this.layerButton.enabled = false;
      }
      
      private function _FeatureCharacterScreen_Array1_c() : Array
      {
         return [this._FeatureCharacterScreen_Group1_c(),this._FeatureCharacterScreen_Group5_c(),this._FeatureCharacterScreen_Group6_c(),this._FeatureCharacterScreen_MultistateButton1_i()];
      }
      
      private function _FeatureCharacterScreen_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 5;
         _loc1_.width = 520;
         _loc1_.top = 70;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib1_c(),this._FeatureCharacterScreen_HGroup1_i(),this._FeatureCharacterScreen_HGroup3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quadrillepaper_welcomescreen";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 40;
         _loc1_.right = 2;
         _loc1_.gap = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_VGroup1_c(),this._FeatureCharacterScreen_Group3_c()];
         _loc1_.id = "introductionScreenComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.introductionScreenComponent = _loc1_;
         BindingManager.executeBindings(this,"introductionScreenComponent",this.introductionScreenComponent);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 260;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_Group2_c(),this._FeatureCharacterScreen_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 250;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_Rect1_c(),this._FeatureCharacterScreen_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 5;
         _loc1_.right = 5;
         _loc1_.bottomLeftRadiusX = 10;
         _loc1_.bottomLeftRadiusY = 30;
         _loc1_.bottomRightRadiusX = 10;
         _loc1_.bottomRightRadiusY = 30;
         _loc1_.topLeftRadiusX = 10;
         _loc1_.topLeftRadiusY = 30;
         _loc1_.topRightRadiusX = 10;
         _loc1_.topRightRadiusY = 30;
         _loc1_.height = 25;
         _loc1_.maxHeight = 25;
         _loc1_.fill = this._FeatureCharacterScreen_RadialGradient1_c();
         _loc1_.filters = [this._FeatureCharacterScreen_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._FeatureCharacterScreen_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.verticalCenter = 4;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "infrastructureFeatureScreenHeader";
         _loc1_.id = "mainLayerHeader_introductionScreen";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainLayerHeader_introductionScreen = _loc1_;
         BindingManager.executeBindings(this,"mainLayerHeader_introductionScreen",this.mainLayerHeader_introductionScreen);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalCenter = -1;
         _loc1_.percentWidth = 90;
         _loc1_.height = 160;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "mainflavourIfiScreen";
         _loc1_.percentWidth = 100;
         _loc1_.id = "mainLayerText_introductionScreen";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainLayerText_introductionScreen = _loc1_;
         BindingManager.executeBindings(this,"mainLayerText_introductionScreen",this.mainLayerText_introductionScreen);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib2_i(),this._FeatureCharacterScreen_BriskImageDynaLib3_c(),this._FeatureCharacterScreen_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
         _loc1_.dynaBmpSourceName = "iquest_academy";
         _loc1_.right = 17;
         _loc1_.id = "mainGfx_introductionScreen";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGfx_introductionScreen = _loc1_;
         BindingManager.executeBindings(this,"mainGfx_introductionScreen",this.mainGfx_introductionScreen);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "postit_tape_top";
         _loc1_.top = -8;
         _loc1_.width = 130;
         _loc1_.horizontalCenter = -1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "postit_tape_top";
         _loc1_.bottom = -5;
         _loc1_.width = 130;
         _loc1_.horizontalCenter = -1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 40;
         _loc1_.right = 2;
         _loc1_.gap = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_VGroup2_c(),this._FeatureCharacterScreen_Group4_c()];
         _loc1_.id = "storyScreenComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.storyScreenComponent = _loc1_;
         BindingManager.executeBindings(this,"storyScreenComponent",this.storyScreenComponent);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_HGroup4_c(),this._FeatureCharacterScreen_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib5_i(),this._FeatureCharacterScreen_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
         _loc1_.dynaBmpSourceName = "iquest_firedept";
         _loc1_.id = "gfxLeft_storyScreen";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.gfxLeft_storyScreen = _loc1_;
         BindingManager.executeBindings(this,"gfxLeft_storyScreen",this.gfxLeft_storyScreen);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
         _loc1_.dynaBmpSourceName = "iquest_catshot";
         _loc1_.id = "gfxRight_storyScreen";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.gfxRight_storyScreen = _loc1_;
         BindingManager.executeBindings(this,"gfxRight_storyScreen",this.gfxRight_storyScreen);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.verticalCenter = -2;
         _loc1_.width = 240;
         _loc1_.styleName = "infraStoryLayerSmallFlavourText";
         _loc1_.id = "mainLayerText_storyScreen";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainLayerText_storyScreen = _loc1_;
         BindingManager.executeBindings(this,"mainLayerText_storyScreen",this.mainLayerText_storyScreen);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib7_i(),this._FeatureCharacterScreen_BriskImageDynaLib8_c(),this._FeatureCharacterScreen_BriskImageDynaLib9_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
         _loc1_.dynaBmpSourceName = "iquest_gradeshot";
         _loc1_.id = "mainGfx_storyScreen";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGfx_storyScreen = _loc1_;
         BindingManager.executeBindings(this,"mainGfx_storyScreen",this.mainGfx_storyScreen);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "postit_tape_top";
         _loc1_.top = -8;
         _loc1_.width = 130;
         _loc1_.horizontalCenter = -1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "postit_tape_top";
         _loc1_.bottom = -5;
         _loc1_.width = 130;
         _loc1_.horizontalCenter = -1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 90;
         _loc1_.left = 20;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib10_i(),this._FeatureCharacterScreen_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
         _loc1_.dynaBmpSourceName = "iquest_teacher";
         _loc1_.top = 10;
         _loc1_.horizontalCenter = -1;
         _loc1_.id = "characterGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.characterGfx = _loc1_;
         BindingManager.executeBindings(this,"characterGfx",this.characterGfx);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 185;
         _loc1_.bottom = 13;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "featureBubbleText";
         _loc1_.id = "characterName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.characterName = _loc1_;
         BindingManager.executeBindings(this,"characterName",this.characterName);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 18;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_BriskImageDynaLib11_c(),this._FeatureCharacterScreen_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "bubble-top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 700;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 8;
         _loc1_.height = 62;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._FeatureCharacterScreen_LocaLabel5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 4;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.percentWidth = 100;
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _FeatureCharacterScreen_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 15;
         _loc1_.right = 5;
         _loc1_.width = 184;
         _loc1_.addEventListener("click",this.__layerButton_click);
         _loc1_.id = "layerButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.layerButton = _loc1_;
         BindingManager.executeBindings(this,"layerButton",this.layerButton);
         return _loc1_;
      }
      
      public function __layerButton_click(param1:MouseEvent) : void
      {
         this.handleButtonClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get characterGfx() : BriskImageDynaLib
      {
         return this._1443225712characterGfx;
      }
      
      public function set characterGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1443225712characterGfx;
         if(_loc2_ !== param1)
         {
            this._1443225712characterGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get characterName() : LocaLabel
      {
         return this._1790120620characterName;
      }
      
      public function set characterName(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1790120620characterName;
         if(_loc2_ !== param1)
         {
            this._1790120620characterName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterName",_loc2_,param1));
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
      public function get gfxLeft_storyScreen() : BriskImageDynaLib
      {
         return this._320321758gfxLeft_storyScreen;
      }
      
      public function set gfxLeft_storyScreen(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._320321758gfxLeft_storyScreen;
         if(_loc2_ !== param1)
         {
            this._320321758gfxLeft_storyScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfxLeft_storyScreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gfxRight_storyScreen() : BriskImageDynaLib
      {
         return this._794730917gfxRight_storyScreen;
      }
      
      public function set gfxRight_storyScreen(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._794730917gfxRight_storyScreen;
         if(_loc2_ !== param1)
         {
            this._794730917gfxRight_storyScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfxRight_storyScreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get introductionScreenComponent() : HGroup
      {
         return this._990699913introductionScreenComponent;
      }
      
      public function set introductionScreenComponent(param1:HGroup) : void
      {
         var _loc2_:Object = this._990699913introductionScreenComponent;
         if(_loc2_ !== param1)
         {
            this._990699913introductionScreenComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introductionScreenComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get layerButton() : MultistateButton
      {
         return this._1984686051layerButton;
      }
      
      public function set layerButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1984686051layerButton;
         if(_loc2_ !== param1)
         {
            this._1984686051layerButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGfx_introductionScreen() : BriskImageDynaLib
      {
         return this._407411515mainGfx_introductionScreen;
      }
      
      public function set mainGfx_introductionScreen(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._407411515mainGfx_introductionScreen;
         if(_loc2_ !== param1)
         {
            this._407411515mainGfx_introductionScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGfx_introductionScreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGfx_storyScreen() : BriskImageDynaLib
      {
         return this._1439580930mainGfx_storyScreen;
      }
      
      public function set mainGfx_storyScreen(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1439580930mainGfx_storyScreen;
         if(_loc2_ !== param1)
         {
            this._1439580930mainGfx_storyScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGfx_storyScreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainLayerHeader_introductionScreen() : LocaLabel
      {
         return this._304398368mainLayerHeader_introductionScreen;
      }
      
      public function set mainLayerHeader_introductionScreen(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._304398368mainLayerHeader_introductionScreen;
         if(_loc2_ !== param1)
         {
            this._304398368mainLayerHeader_introductionScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainLayerHeader_introductionScreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainLayerText_introductionScreen() : LocaLabel
      {
         return this._1891767488mainLayerText_introductionScreen;
      }
      
      public function set mainLayerText_introductionScreen(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1891767488mainLayerText_introductionScreen;
         if(_loc2_ !== param1)
         {
            this._1891767488mainLayerText_introductionScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainLayerText_introductionScreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainLayerText_storyScreen() : LocaLabel
      {
         return this._724451559mainLayerText_storyScreen;
      }
      
      public function set mainLayerText_storyScreen(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._724451559mainLayerText_storyScreen;
         if(_loc2_ !== param1)
         {
            this._724451559mainLayerText_storyScreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainLayerText_storyScreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get storyScreenComponent() : HGroup
      {
         return this._1746842564storyScreenComponent;
      }
      
      public function set storyScreenComponent(param1:HGroup) : void
      {
         var _loc2_:Object = this._1746842564storyScreenComponent;
         if(_loc2_ !== param1)
         {
            this._1746842564storyScreenComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storyScreenComponent",_loc2_,param1));
            }
         }
      }
   }
}

