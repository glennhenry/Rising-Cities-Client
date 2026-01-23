package net.bigpoint.cityrama.view.cinema.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaLayerVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CinemaVideoAvailableComponent extends Group
   {
      
      public static const EVENT_PLAY_CLICKED:String = "EVENT_PLAY_CLICKED";
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _1097557894playButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CinemaLayerVo;
      
      private var _isDirty:Boolean;
      
      public function CinemaVideoAvailableComponent()
      {
         super();
         mx_internal::_document = this;
         this.width = 515;
         this.height = 240;
         this.mxmlContent = [this._CinemaVideoAvailableComponent_BriskImageDynaLib1_c(),this._CinemaVideoAvailableComponent_HGroup1_c()];
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
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.headerLabel.text = this._data.headerText;
            this.mainText.text = this._data.layerText;
            this.playButton.label = this._data.buttonLabel;
            this.playButton.toolTip = this._data.buttonTooltip;
            this.playButton.enabled = true;
         }
      }
      
      private function handlePlayClicked(param1:MouseEvent) : void
      {
         this.playButton.enabled = false;
         dispatchEvent(new Event(EVENT_PLAY_CLICKED,true,true));
      }
      
      public function set data(param1:CinemaLayerVo) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function _CinemaVideoAvailableComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluepost_upselling";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 24;
         _loc1_.bottom = 10;
         _loc1_.percentWidth = 94;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_Group2_c(),this._CinemaVideoAvailableComponent_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 50;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_Group3_c(),this._CinemaVideoAvailableComponent_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.width = 195;
         _loc1_.height = 195;
         _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_BriskImageDynaLib2_c(),this._CinemaVideoAvailableComponent_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "special_cardboard_big";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
         _loc1_.dynaBmpSourceName = "ressource_rc_big";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.top = -2;
         _loc1_.left = 18;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 50;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.width = 240;
         _loc1_.height = 195;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 1;
         _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_Group5_c(),this._CinemaVideoAvailableComponent_HGroup3_c(),this._CinemaVideoAvailableComponent_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_BlueBarComponent1_c(),this._CinemaVideoAvailableComponent_BriskImageDynaLib5_c(),this._CinemaVideoAvailableComponent_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_BlueBarComponent1_c() : BlueBarComponent
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
      
      private function _CinemaVideoAvailableComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_rewardLayer";
         _loc1_.dynaBmpSourceName = "icon_cinema";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 70;
         _loc1_.percentHeight = 98;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "fieldInfoHeader";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "headerLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerLabel = _loc1_;
         BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CinemaVideoAvailableComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "eventRuntime";
         _loc1_.percentWidth = 100;
         _loc1_.id = "mainText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainText = _loc1_;
         BindingManager.executeBindings(this,"mainText",this.mainText);
         return _loc1_;
      }
      
      private function _CinemaVideoAvailableComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 200;
         _loc1_.horizontalCenter = 0;
         _loc1_.addEventListener("click",this.__playButton_click);
         _loc1_.id = "playButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.playButton = _loc1_;
         BindingManager.executeBindings(this,"playButton",this.playButton);
         return _loc1_;
      }
      
      public function __playButton_click(param1:MouseEvent) : void
      {
         this.handlePlayClicked(param1);
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
      public function get playButton() : MultistateButton
      {
         return this._1097557894playButton;
      }
      
      public function set playButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1097557894playButton;
         if(_loc2_ !== param1)
         {
            this._1097557894playButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playButton",_loc2_,param1));
            }
         }
      }
   }
}

