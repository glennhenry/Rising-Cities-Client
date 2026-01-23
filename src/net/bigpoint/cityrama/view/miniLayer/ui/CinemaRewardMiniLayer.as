package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaRewardMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.RewardItemComponent;
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CinemaRewardMiniLayer extends MiniLayerWindow
   {
      
      public static const EVENT_WATCH_MORE:String = "EVENT_WATCH_MORE";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _1641788370okButton:MultistateButton;
      
      private var _1101149125rewardItemComponent:RewardItemComponent;
      
      private var _1893598809stepBar:StepMarkerBarComponent;
      
      private var _1076356374watchMoreButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CinemaRewardMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function CinemaRewardMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showSparkle = false;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CinemaRewardMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___CinemaRewardMiniLayer_MiniLayerWindow1_creationComplete);
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
         title = LocaUtils.getString("rcl.miniLayer.cinemaReward","rcl.miniLayer.cinemaReward.title.capital");
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.flavourText.text = this._data.flavourText;
            this.okButton.label = this._data.okButtonLabel;
            this.okButton.toolTip = closeButton.toolTip;
            this.watchMoreButton.label = this._data.watchMoreButtonLabel;
            this.watchMoreButton.toolTip = this._data.watchMoreButtonTooltip;
            this.watchMoreButton.includeInLayout = this.watchMoreButton.visible = this._data.watchMoreButtonIncludeInLayout;
            this.headerLabel.text = this._data.headerText;
            this.mainText.text = this._data.layerText;
            this.rewardItemComponent.data = this._data.rewardData;
            this.stepBar.data = this._data.stepBarData;
         }
      }
      
      public function set data(param1:CinemaRewardMiniLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function handleOKClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.CLOSE,true,true));
         this.okButton.enabled = false;
      }
      
      private function handleWatchMore(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(EVENT_WATCH_MORE,true,true));
         this.watchMoreButton.enabled = false;
      }
      
      private function _CinemaRewardMiniLayer_Array1_c() : Array
      {
         return [this._CinemaRewardMiniLayer_VGroup1_c(),this._CinemaRewardMiniLayer_BriskImageDynaLib2_c()];
      }
      
      private function _CinemaRewardMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.paddingBottom = 25;
         _loc1_.gap = -10;
         _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_HGroup1_c(),this._CinemaRewardMiniLayer_Group1_c(),this._CinemaRewardMiniLayer_HGroup2_c(),this._CinemaRewardMiniLayer_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 40;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 80;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "right";
         _loc1_.gap = 20;
         _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_RewardItemComponent1_i(),this._CinemaRewardMiniLayer_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_RewardItemComponent1_i() : RewardItemComponent
      {
         var _loc1_:RewardItemComponent = new RewardItemComponent();
         _loc1_.id = "rewardItemComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardItemComponent = _loc1_;
         BindingManager.executeBindings(this,"rewardItemComponent",this.rewardItemComponent);
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 140;
         _loc1_.width = 257;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_BriskImageDynaLib1_c(),this._CinemaRewardMiniLayer_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "quadrillepaper_small";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 10;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_Group3_c(),this._CinemaRewardMiniLayer_Group4_c(),this._CinemaRewardMiniLayer_LocaLabel3_i(),this._CinemaRewardMiniLayer_Group5_c(),this._CinemaRewardMiniLayer_HGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 90;
         _loc1_.height = 34;
         _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_BlueBarComponent1_c(),this._CinemaRewardMiniLayer_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 90;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "fieldInfoHeader";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.percentWidth = 100;
         _loc1_.id = "headerLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerLabel = _loc1_;
         BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 2;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.percentWidth = 90;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "mainText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainText = _loc1_;
         BindingManager.executeBindings(this,"mainText",this.mainText);
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_StepMarkerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_StepMarkerBarComponent1_i() : StepMarkerBarComponent
      {
         var _loc1_:StepMarkerBarComponent = new StepMarkerBarComponent();
         _loc1_.addMouseListener = false;
         _loc1_.percentWidth = 90;
         _loc1_.scaleX = 0.5;
         _loc1_.scaleY = 0.5;
         _loc1_.id = "stepBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepBar = _loc1_;
         BindingManager.executeBindings(this,"stepBar",this.stepBar);
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._CinemaRewardMiniLayer_MultistateButton1_i(),this._CinemaRewardMiniLayer_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaRewardMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "confirm";
         _loc1_.width = 204;
         _loc1_.addEventListener("click",this.__okButton_click);
         _loc1_.id = "okButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.okButton = _loc1_;
         BindingManager.executeBindings(this,"okButton",this.okButton);
         return _loc1_;
      }
      
      public function __okButton_click(param1:MouseEvent) : void
      {
         this.handleOKClick(param1);
      }
      
      private function _CinemaRewardMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.addEventListener("click",this.__watchMoreButton_click);
         _loc1_.id = "watchMoreButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.watchMoreButton = _loc1_;
         BindingManager.executeBindings(this,"watchMoreButton",this.watchMoreButton);
         return _loc1_;
      }
      
      public function __watchMoreButton_click(param1:MouseEvent) : void
      {
         this.handleWatchMore(param1);
      }
      
      private function _CinemaRewardMiniLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.left = 9;
         _loc1_.top = -66;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___CinemaRewardMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
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
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1166031975headerLabel;
         if(_loc2_ !== param1)
         {
            this._1166031975headerLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainText() : LocaLabel
      {
         return this._8439162mainText;
      }
      
      public function set mainText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._8439162mainText;
         if(_loc2_ !== param1)
         {
            this._8439162mainText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get okButton() : MultistateButton
      {
         return this._1641788370okButton;
      }
      
      public function set okButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1641788370okButton;
         if(_loc2_ !== param1)
         {
            this._1641788370okButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardItemComponent() : RewardItemComponent
      {
         return this._1101149125rewardItemComponent;
      }
      
      public function set rewardItemComponent(param1:RewardItemComponent) : void
      {
         var _loc2_:Object = this._1101149125rewardItemComponent;
         if(_loc2_ !== param1)
         {
            this._1101149125rewardItemComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardItemComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepBar() : StepMarkerBarComponent
      {
         return this._1893598809stepBar;
      }
      
      public function set stepBar(param1:StepMarkerBarComponent) : void
      {
         var _loc2_:Object = this._1893598809stepBar;
         if(_loc2_ !== param1)
         {
            this._1893598809stepBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get watchMoreButton() : MultistateButton
      {
         return this._1076356374watchMoreButton;
      }
      
      public function set watchMoreButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1076356374watchMoreButton;
         if(_loc2_ !== param1)
         {
            this._1076356374watchMoreButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"watchMoreButton",_loc2_,param1));
            }
         }
      }
   }
}

