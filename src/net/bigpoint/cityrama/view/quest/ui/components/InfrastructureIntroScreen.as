package net.bigpoint.cityrama.view.quest.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class InfrastructureIntroScreen extends PaperPopupWindow
   {
      
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
      
      private var _97921but:MultistateButton;
      
      private var _1790120620characterName:LocaLabel;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _871500217introText:LocaLabel;
      
      private var _966525464mainflavour:LocaLabel;
      
      private var _683548987mainflavourHeader:LocaLabel;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _creationIsDirty:Boolean = false;
      
      public function InfrastructureIntroScreen()
      {
         super();
         mx_internal::_document = this;
         this.showBackButton = false;
         this.styleName = "infrastructureintro";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._InfrastructureIntroScreen_Array1_c);
         this.addEventListener("creationComplete",this.___InfrastructureIntroScreen_PaperPopupWindow1_creationComplete);
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
         this._creationIsDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._creationIsDirty)
         {
            this._creationIsDirty = false;
            this.title = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.title");
            this.flavourText.text = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.flavour");
            this.mainflavourHeader.text = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.maintextHeader");
            this.mainflavour.text = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.maintext");
            this.but.label = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.button");
            this.but.toolTip = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.button.tooltip");
            this.introText.text = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.sideAdvisorInfo");
            this.characterName.text = LocaUtils.getString("rcl.miniLayer.infrastructureintro","rcl.miniLayer.infrastructureintro.charName");
         }
      }
      
      private function _InfrastructureIntroScreen_Array1_c() : Array
      {
         return [this._InfrastructureIntroScreen_Group1_c(),this._InfrastructureIntroScreen_Group4_c(),this._InfrastructureIntroScreen_Group5_c(),this._InfrastructureIntroScreen_Group7_c(),this._InfrastructureIntroScreen_MultistateButton1_i()];
      }
      
      private function _InfrastructureIntroScreen_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 5;
         _loc1_.width = 520;
         _loc1_.top = 70;
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib1_c(),this._InfrastructureIntroScreen_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _InfrastructureIntroScreen_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 40;
         _loc1_.right = 2;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_VGroup1_c(),this._InfrastructureIntroScreen_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 260;
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_Group2_c(),this._InfrastructureIntroScreen_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 250;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_Rect1_c(),this._InfrastructureIntroScreen_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_Rect1_c() : Rect
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
         _loc1_.fill = this._InfrastructureIntroScreen_RadialGradient1_c();
         _loc1_.filters = [this._InfrastructureIntroScreen_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._InfrastructureIntroScreen_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.verticalCenter = 4;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "infrastructureFeatureScreenHeader";
         _loc1_.text = "dev";
         _loc1_.id = "mainflavourHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainflavourHeader = _loc1_;
         BindingManager.executeBindings(this,"mainflavourHeader",this.mainflavourHeader);
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.verticalCenter = -2;
         _loc1_.percentWidth = 80;
         _loc1_.styleName = "mainflavourIfiScreen";
         _loc1_.text = "dev";
         _loc1_.id = "mainflavour";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainflavour = _loc1_;
         BindingManager.executeBindings(this,"mainflavour",this.mainflavour);
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib2_c(),this._InfrastructureIntroScreen_BriskImageDynaLib3_c(),this._InfrastructureIntroScreen_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
         _loc1_.dynaBmpSourceName = "iquest_firepic";
         _loc1_.right = 17;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib4_c() : BriskImageDynaLib
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
      
      private function _InfrastructureIntroScreen_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 90;
         _loc1_.left = 20;
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib5_i(),this._InfrastructureIntroScreen_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
         _loc1_.dynaBmpSourceName = "iquest_sarika";
         _loc1_.top = 10;
         _loc1_.horizontalCenter = -1;
         _loc1_.id = "polaroidImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroidImage = _loc1_;
         BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 185;
         _loc1_.bottom = 13;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "featureBubbleText";
         _loc1_.text = "dev";
         _loc1_.id = "characterName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.characterName = _loc1_;
         BindingManager.executeBindings(this,"characterName",this.characterName);
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 250;
         _loc1_.left = 205;
         _loc1_.height = 140;
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib6_c(),this._InfrastructureIntroScreen_BriskImageDynaLib7_c(),this._InfrastructureIntroScreen_Group6_c(),this._InfrastructureIntroScreen_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "bubble_small";
         _loc1_.bottom = 0;
         _loc1_.left = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
         _loc1_.top = 0;
         _loc1_.left = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 40;
         _loc1_.right = 16;
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_infrastructurequestscreens";
         _loc1_.dynaBmpSourceName = "iquest_bell";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 30;
         _loc1_.left = 60;
         _loc1_.width = 180;
         _loc1_.height = 94;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "welcomeIntroText";
         _loc1_.percentWidth = 100;
         _loc1_.id = "introText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.introText = _loc1_;
         BindingManager.executeBindings(this,"introText",this.introText);
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 18;
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_BriskImageDynaLib9_c(),this._InfrastructureIntroScreen_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_BriskImageDynaLib9_c() : BriskImageDynaLib
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
      
      private function _InfrastructureIntroScreen_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 700;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 8;
         _loc1_.height = 62;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._InfrastructureIntroScreen_LocaLabel5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfrastructureIntroScreen_LocaLabel5_i() : LocaLabel
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
      
      private function _InfrastructureIntroScreen_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 15;
         _loc1_.right = 5;
         _loc1_.width = 184;
         _loc1_.label = "Button";
         _loc1_.id = "but";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.but = _loc1_;
         BindingManager.executeBindings(this,"but",this.but);
         return _loc1_;
      }
      
      public function ___InfrastructureIntroScreen_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get but() : MultistateButton
      {
         return this._97921but;
      }
      
      public function set but(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._97921but;
         if(_loc2_ !== param1)
         {
            this._97921but = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"but",_loc2_,param1));
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
      public function get introText() : LocaLabel
      {
         return this._871500217introText;
      }
      
      public function set introText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._871500217introText;
         if(_loc2_ !== param1)
         {
            this._871500217introText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainflavour() : LocaLabel
      {
         return this._966525464mainflavour;
      }
      
      public function set mainflavour(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._966525464mainflavour;
         if(_loc2_ !== param1)
         {
            this._966525464mainflavour = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainflavour",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainflavourHeader() : LocaLabel
      {
         return this._683548987mainflavourHeader;
      }
      
      public function set mainflavourHeader(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._683548987mainflavourHeader;
         if(_loc2_ !== param1)
         {
            this._683548987mainflavourHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainflavourHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2112922897polaroidImage;
         if(_loc2_ !== param1)
         {
            this._2112922897polaroidImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
            }
         }
      }
   }
}

