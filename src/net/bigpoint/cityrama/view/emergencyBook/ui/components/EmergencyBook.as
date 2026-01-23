package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencySuccessBarVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyTimerProggressVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.skins.EmergencySuccessBarSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class EmergencyBook extends PaperPopupWindow
   {
      
      public static const NEXT:String = "next";
      
      public static const SELECT:String = "select";
      
      public static const START:String = "start";
      
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
      
      private var _163334105bubbleText:LocaLabel;
      
      private var _400476409buildingImage:BriskImageDynaLib;
      
      private var _389389280contentLeft:HGroup;
      
      private var _1038378667emergencyImageTop:BriskImageDynaLib;
      
      private var _1260772300emergencyTimer:EmergencyProggresTimerComponent;
      
      private var _1464992284imageGroup:Group;
      
      private var _1749722107nextButton:MultistateButton;
      
      private var _1555143502selectButton:MultistateButton;
      
      private var _905683178sideContainer:Group;
      
      private var _1943111220startButton:MultistateButton;
      
      private var _159927757successBarComponent:EmergencySuccessBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyZoneLayerVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function EmergencyBook()
      {
         super();
         mx_internal::_document = this;
         this.showBackButton = false;
         this.width = 785;
         this.height = 430;
         this.styleName = "emergency";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyBook_Array1_c);
         this.addEventListener("creationComplete",this.___EmergencyBook_PaperPopupWindow1_creationComplete);
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
         var _loc1_:EmergencyTimerProggressVo = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.bubbleText.text = this._data.flavourText;
            this.buildingImage.dynaBmpSourceName = this._data.buildingImage;
            this.buildingImage.dynaLibName = this._data.buildingLib;
            _loc1_ = new EmergencyTimerProggressVo();
            _loc1_.currentTime = this._data.timerData.currentTime;
            _loc1_.startTime = this._data.timerData.startTime;
            _loc1_.targetTime = this._data.timerData.targetTime;
            _loc1_.cycleLength = this._data.timerData.cycleLength;
            this.emergencyTimer.data = _loc1_;
         }
      }
      
      public function set successProgress(param1:EmergencySuccessBarVo) : void
      {
         this.successBarComponent.data = param1;
      }
      
      public function get successProggress() : EmergencySuccessBarVo
      {
         return this.successBarComponent.data;
      }
      
      public function set data(param1:EmergencyZoneLayerVo) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         backButton.left = 30;
         title = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.title"));
         this.nextButton.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.nextButtonLabel"));
         this.startButton.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.startButtonLabel"));
         this.selectButton.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.selectButtonLabel"));
         this.successBarComponent.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.maxchange"));
      }
      
      private function handleNextClick() : void
      {
         dispatchEvent(new Event(NEXT));
      }
      
      private function handleStartClick() : void
      {
         dispatchEvent(new Event(START));
      }
      
      private function handleSelectClick() : void
      {
         dispatchEvent(new Event(SELECT));
      }
      
      public function startButtonMode() : void
      {
         var _temp_1:* = this.selectButton;
         this.selectButton.includeInLayout = false;
         _temp_1.visible = false;
         var _temp_2:* = this.startButton;
         var _loc1_:Boolean;
         this.startButton.includeInLayout = _loc1_ = true;
         _temp_2.visible = false;
         var _temp_3:* = this.nextButton;
         this.nextButton.includeInLayout = _loc1_ = false;
         _temp_3.visible = false;
      }
      
      public function selectButtonMode() : void
      {
         var _temp_1:* = this.selectButton;
         this.selectButton.includeInLayout = true;
         _temp_1.visible = true;
         var _temp_2:* = this.startButton;
         var _loc1_:Boolean;
         this.startButton.includeInLayout = _loc1_ = false;
         _temp_2.visible = true;
         var _temp_3:* = this.nextButton;
         this.nextButton.includeInLayout = _loc1_ = false;
         _temp_3.visible = true;
      }
      
      public function nextButtonMode() : void
      {
         var _temp_1:* = this.selectButton;
         this.selectButton.includeInLayout = false;
         _temp_1.visible = false;
         var _temp_2:* = this.startButton;
         var _loc1_:Boolean;
         this.startButton.includeInLayout = _loc1_ = false;
         _temp_2.visible = false;
         var _temp_3:* = this.nextButton;
         this.nextButton.includeInLayout = _loc1_ = true;
         _temp_3.visible = false;
      }
      
      public function selectEnabled() : void
      {
         this.selectButton.enabled = true;
      }
      
      public function selectDisabled() : void
      {
         this.selectButton.enabled = false;
      }
      
      public function startEnabled() : void
      {
         this.startButton.enabled = true;
      }
      
      public function startDisabled() : void
      {
         this.startButton.enabled = false;
      }
      
      public function nextEnabled() : void
      {
         this.nextButton.enabled = true;
      }
      
      public function nextDisabled() : void
      {
         this.nextButton.enabled = false;
      }
      
      private function _EmergencyBook_Array1_c() : Array
      {
         return [this._EmergencyBook_BriskImageDynaLib1_c(),this._EmergencyBook_Group1_c()];
      }
      
      private function _EmergencyBook_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_bg_quadrillepaper";
         _loc1_.top = 20;
         _loc1_.width = 522;
         _loc1_.height = 371;
         _loc1_.left = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EmergencyBook_HGroup1_c(),this._EmergencyBook_Group6_i(),this._EmergencyBook_Group7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.percentHeight = 100;
         _loc1_.top = 100;
         _loc1_.mxmlContent = [this._EmergencyBook_Group2_c(),this._EmergencyBook_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 530;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EmergencyBook_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.bottom = 2;
         _loc1_.mxmlContent = [this._EmergencyBook_HGroup2_i(),this._EmergencyBook_EmergencySuccessBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 10;
         _loc1_.paddingRight = 20;
         _loc1_.id = "contentLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentLeft = _loc1_;
         BindingManager.executeBindings(this,"contentLeft",this.contentLeft);
         return _loc1_;
      }
      
      private function _EmergencyBook_EmergencySuccessBarComponent1_i() : EmergencySuccessBarComponent
      {
         var _loc1_:EmergencySuccessBarComponent = new EmergencySuccessBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "emergency";
         _loc1_.setStyle("skinClass",EmergencySuccessBarSkin);
         _loc1_.id = "successBarComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.successBarComponent = _loc1_;
         BindingManager.executeBindings(this,"successBarComponent",this.successBarComponent);
         return _loc1_;
      }
      
      private function _EmergencyBook_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 200;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EmergencyBook_Group4_c(),this._EmergencyBook_Group5_i(),this._EmergencyBook_MultistateButton1_i(),this._EmergencyBook_MultistateButton2_i(),this._EmergencyBook_MultistateButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 0;
         _loc1_.left = 10;
         _loc1_.mxmlContent = [this._EmergencyBook_StickyNoteComponent1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 188;
         _loc1_.bottom = 26;
         _loc1_.height = 60;
         _loc1_.left = -4;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyBook_Array8_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_Array8_c() : Array
      {
         return [this._EmergencyBook_EmergencyProggresTimerComponent1_i()];
      }
      
      private function _EmergencyBook_EmergencyProggresTimerComponent1_i() : EmergencyProggresTimerComponent
      {
         var _loc1_:EmergencyProggresTimerComponent = new EmergencyProggresTimerComponent();
         _loc1_.width = 150;
         _loc1_.top = -12;
         _loc1_.horizontalCenter = 0;
         _loc1_.revertProgress = true;
         _loc1_.id = "emergencyTimer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emergencyTimer = _loc1_;
         BindingManager.executeBindings(this,"emergencyTimer",this.emergencyTimer);
         return _loc1_;
      }
      
      private function _EmergencyBook_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = -74;
         _loc1_.id = "sideContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sideContainer = _loc1_;
         BindingManager.executeBindings(this,"sideContainer",this.sideContainer);
         return _loc1_;
      }
      
      private function _EmergencyBook_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.imageNameLeft = "button_icon_arrow_right";
         _loc1_.libNameLeft = "gui_popups_emergencyBook";
         _loc1_.bottom = 0;
         _loc1_.left = 8;
         _loc1_.width = 185;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.addEventListener("click",this.__nextButton_click);
         _loc1_.id = "nextButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.nextButton = _loc1_;
         BindingManager.executeBindings(this,"nextButton",this.nextButton);
         return _loc1_;
      }
      
      public function __nextButton_click(param1:MouseEvent) : void
      {
         this.handleNextClick();
      }
      
      private function _EmergencyBook_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 0;
         _loc1_.left = 8;
         _loc1_.width = 185;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.addEventListener("click",this.__selectButton_click);
         _loc1_.id = "selectButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.selectButton = _loc1_;
         BindingManager.executeBindings(this,"selectButton",this.selectButton);
         return _loc1_;
      }
      
      public function __selectButton_click(param1:MouseEvent) : void
      {
         this.handleSelectClick();
      }
      
      private function _EmergencyBook_MultistateButton3_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 0;
         _loc1_.left = 8;
         _loc1_.width = 185;
         _loc1_.styleName = "confirm";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.imageNameLeft = "button_icon_emergency";
         _loc1_.libNameLeft = "gui_popups_paperPopup";
         _loc1_.addEventListener("click",this.__startButton_click);
         _loc1_.id = "startButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.startButton = _loc1_;
         BindingManager.executeBindings(this,"startButton",this.startButton);
         return _loc1_;
      }
      
      public function __startButton_click(param1:MouseEvent) : void
      {
         this.handleStartClick();
      }
      
      private function _EmergencyBook_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = -23;
         _loc1_.top = -10;
         _loc1_.mxmlContent = [this._EmergencyBook_BriskImageDynaLib2_i(),this._EmergencyBook_BriskImageDynaLib3_i(),this._EmergencyBook_BriskImageDynaLib4_c()];
         _loc1_.id = "imageGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.imageGroup = _loc1_;
         BindingManager.executeBindings(this,"imageGroup",this.imageGroup);
         return _loc1_;
      }
      
      private function _EmergencyBook_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.scaleX = 1;
         _loc1_.scaleY = 1;
         _loc1_.top = 26;
         _loc1_.left = 10;
         _loc1_.id = "emergencyImageTop";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emergencyImageTop = _loc1_;
         BindingManager.executeBindings(this,"emergencyImageTop",this.emergencyImageTop);
         return _loc1_;
      }
      
      private function _EmergencyBook_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "buildingImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buildingImage = _loc1_;
         BindingManager.executeBindings(this,"buildingImage",this.buildingImage);
         return _loc1_;
      }
      
      private function _EmergencyBook_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.left = 8;
         _loc1_.top = 26;
         _loc1_.dynaBmpSourceName = "paperclip_quest";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = -5;
         _loc1_.top = 16;
         _loc1_.height = 83;
         _loc1_.width = 638;
         _loc1_.mxmlContent = [this._EmergencyBook_BriskImageDynaLib5_c(),this._EmergencyBook_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "bubble_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EmergencyBook_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyBook_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxHeight = 83;
         _loc1_.percentWidth = 85;
         _loc1_.styleName = "flavorText";
         _loc1_.typeWriterEffect = false;
         _loc1_.id = "bubbleText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bubbleText = _loc1_;
         BindingManager.executeBindings(this,"bubbleText",this.bubbleText);
         return _loc1_;
      }
      
      public function ___EmergencyBook_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bubbleText() : LocaLabel
      {
         return this._163334105bubbleText;
      }
      
      public function set bubbleText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._163334105bubbleText;
         if(_loc2_ !== param1)
         {
            this._163334105bubbleText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubbleText",_loc2_,param1));
            }
         }
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
      public function get contentLeft() : HGroup
      {
         return this._389389280contentLeft;
      }
      
      public function set contentLeft(param1:HGroup) : void
      {
         var _loc2_:Object = this._389389280contentLeft;
         if(_loc2_ !== param1)
         {
            this._389389280contentLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyImageTop() : BriskImageDynaLib
      {
         return this._1038378667emergencyImageTop;
      }
      
      public function set emergencyImageTop(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1038378667emergencyImageTop;
         if(_loc2_ !== param1)
         {
            this._1038378667emergencyImageTop = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyImageTop",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyTimer() : EmergencyProggresTimerComponent
      {
         return this._1260772300emergencyTimer;
      }
      
      public function set emergencyTimer(param1:EmergencyProggresTimerComponent) : void
      {
         var _loc2_:Object = this._1260772300emergencyTimer;
         if(_loc2_ !== param1)
         {
            this._1260772300emergencyTimer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyTimer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imageGroup() : Group
      {
         return this._1464992284imageGroup;
      }
      
      public function set imageGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1464992284imageGroup;
         if(_loc2_ !== param1)
         {
            this._1464992284imageGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imageGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextButton() : MultistateButton
      {
         return this._1749722107nextButton;
      }
      
      public function set nextButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1749722107nextButton;
         if(_loc2_ !== param1)
         {
            this._1749722107nextButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectButton() : MultistateButton
      {
         return this._1555143502selectButton;
      }
      
      public function set selectButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1555143502selectButton;
         if(_loc2_ !== param1)
         {
            this._1555143502selectButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sideContainer() : Group
      {
         return this._905683178sideContainer;
      }
      
      public function set sideContainer(param1:Group) : void
      {
         var _loc2_:Object = this._905683178sideContainer;
         if(_loc2_ !== param1)
         {
            this._905683178sideContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startButton() : MultistateButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1943111220startButton;
         if(_loc2_ !== param1)
         {
            this._1943111220startButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get successBarComponent() : EmergencySuccessBarComponent
      {
         return this._159927757successBarComponent;
      }
      
      public function set successBarComponent(param1:EmergencySuccessBarComponent) : void
      {
         var _loc2_:Object = this._159927757successBarComponent;
         if(_loc2_ !== param1)
         {
            this._159927757successBarComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"successBarComponent",_loc2_,param1));
            }
         }
      }
   }
}

