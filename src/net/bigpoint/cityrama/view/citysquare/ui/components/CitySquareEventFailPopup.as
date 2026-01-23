package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.CitySquareEventFailVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CitySquareEventFailPopup extends PaperPopupWindow
   {
      
      public static const BUY_REWARD:String = "BUY_REWARD";
      
      public static const CANCEL_BUY_REWARD:String = "CANCEL_BUY_REWARD";
      
      public static const OPEN_TREASURY:String = "OPEN_TREASURY";
      
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
      
      private var _1577357232challengeProgress:StepMarkerBarComponent;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _856513103noSaleContent:EventFailNoSaleContentComponent;
      
      private var _1007961934noSaleContentGroup:Group;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _2110508920polaroidLabel:LocaLabel;
      
      private var _1903419639progressBarComponent:TimerBarComponent;
      
      private var _1758101966saleContent:EventFailSaleContentComponent;
      
      private var _33974419saleContentGroup:Group;
      
      private var _2127489781saleCountdownGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareEventFailVo;
      
      private var _isDirty:Boolean;
      
      public function CitySquareEventFailPopup()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "citysquare";
         this.showBackButton = false;
         this.width = 785;
         this.height = 430;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareEventFailPopup_Array1_c);
         this.addEventListener("creationComplete",this.___CitySquareEventFailPopup_PaperPopupWindow1_creationComplete);
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
            this.polaroidImage.dynaSWFFileName = this._data.polaroidData.dynaSwfName;
            this.polaroidImage.dynaLibName = this._data.polaroidData.dynaLibName;
            this.polaroidImage.dynaBmpSourceName = this._data.polaroidData.dynaBmpName;
            if(this._data.state == CitySquareEventFailVo.STATE_SALE)
            {
               this.noSaleContentGroup.includeInLayout = this.noSaleContentGroup.visible = false;
               this.saleContentGroup.includeInLayout = this.saleContentGroup.visible = true;
               this.saleContent.setData(this._data.rewardData,this._data.price,this._data.affordable);
               this.flavourText.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.flavour.sale");
               this.polaroidLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.polaroidText.sale");
               this.saleCountdownGroup.includeInLayout = this.saleCountdownGroup.visible = true;
               this.progressBarComponent.data = this._data.timerData;
            }
            else if(this._data.state == CitySquareEventFailVo.STATE_NOSALE)
            {
               this.flavourText.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.flavour.noSale");
               this.polaroidLabel.text = LocaUtils.getString("rcl.citysquare.popup.fail","rcl.citysquare.popup.fail.polaroidText.noSale");
               this.saleContentGroup.includeInLayout = this.saleContentGroup.visible = false;
               this.noSaleContentGroup.includeInLayout = this.noSaleContentGroup.visible = true;
               this.noSaleContent.data = this._data.rewardData;
               this.saleCountdownGroup.includeInLayout = this.saleCountdownGroup.visible = false;
            }
            this.challengeProgress.data = this._data.eventProgress;
         }
      }
      
      private function handleCreationComplete() : void
      {
         title = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.popupheader");
      }
      
      public function set data(param1:CitySquareEventFailVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function _CitySquareEventFailPopup_Array1_c() : Array
      {
         return [this._CitySquareEventFailPopup_Group1_c()];
      }
      
      private function _CitySquareEventFailPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 24;
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_HGroup1_c(),this._CitySquareEventFailPopup_Group8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 45;
         _loc1_.percentWidth = 98;
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.gap = 1;
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_Group2_c(),this._CitySquareEventFailPopup_Group5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_StickyNoteComponent1_c(),this._CitySquareEventFailPopup_Group3_c(),this._CitySquareEventFailPopup_BriskMCDynaLib1_c(),this._CitySquareEventFailPopup_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 85;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 243;
         _loc1_.width = 185;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 30;
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_BriskImageDynaLib1_c(),this._CitySquareEventFailPopup_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_polaroidframe";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_events";
         _loc1_.horizontalCenter = -1;
         _loc1_.verticalCenter = -1;
         _loc1_.id = "polaroidImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroidImage = _loc1_;
         BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 25;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 60;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 255;
         _loc1_.width = 180;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingLeft = 5;
         _loc1_.paddingRight = 5;
         _loc1_.paddingTop = 5;
         _loc1_.paddingBottom = 5;
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_LocaLabel1_i(),this._CitySquareEventFailPopup_Group4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 85;
         _loc1_.styleName = "avatarText";
         _loc1_.id = "polaroidLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroidLabel = _loc1_;
         BindingManager.executeBindings(this,"polaroidLabel",this.polaroidLabel);
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_TimerBarComponent1_i()];
         _loc1_.id = "saleCountdownGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleCountdownGroup = _loc1_;
         BindingManager.executeBindings(this,"saleCountdownGroup",this.saleCountdownGroup);
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.revertFlow = true;
         _loc1_.width = 158;
         _loc1_.showTimeInDays = true;
         _loc1_.id = "progressBarComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBarComponent = _loc1_;
         BindingManager.executeBindings(this,"progressBarComponent",this.progressBarComponent);
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_Group6_i(),this._CitySquareEventFailPopup_Group7_i(),this._CitySquareEventFailPopup_StickyNoteComponent2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = -36;
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_BriskImageDynaLib3_c(),this._CitySquareEventFailPopup_EventFailNoSaleContentComponent1_i(),this._CitySquareEventFailPopup_BriskMCDynaLib2_c(),this._CitySquareEventFailPopup_BriskMCDynaLib3_c()];
         _loc1_.id = "noSaleContentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.noSaleContentGroup = _loc1_;
         BindingManager.executeBindings(this,"noSaleContentGroup",this.noSaleContentGroup);
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quadrillepaper_welcomescreen";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.top = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_EventFailNoSaleContentComponent1_i() : EventFailNoSaleContentComponent
      {
         var _loc1_:EventFailNoSaleContentComponent = new EventFailNoSaleContentComponent();
         _loc1_.height = 230;
         _loc1_.width = 470;
         _loc1_.top = 120;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 60;
         _loc1_.id = "noSaleContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.noSaleContent = _loc1_;
         BindingManager.executeBindings(this,"noSaleContent",this.noSaleContent);
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_left";
         _loc1_.left = -2;
         _loc1_.height = 130;
         _loc1_.width = 22;
         _loc1_.verticalCenter = 36;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_right";
         _loc1_.verticalCenter = 36;
         _loc1_.right = -2;
         _loc1_.height = 130;
         _loc1_.width = 22;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 80;
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_BriskImageDynaLib4_c(),this._CitySquareEventFailPopup_EventFailSaleContentComponent1_i(),this._CitySquareEventFailPopup_BriskMCDynaLib4_c(),this._CitySquareEventFailPopup_BriskMCDynaLib5_c()];
         _loc1_.id = "saleContentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleContentGroup = _loc1_;
         BindingManager.executeBindings(this,"saleContentGroup",this.saleContentGroup);
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib4_c() : BriskImageDynaLib
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
      
      private function _CitySquareEventFailPopup_EventFailSaleContentComponent1_i() : EventFailSaleContentComponent
      {
         var _loc1_:EventFailSaleContentComponent = new EventFailSaleContentComponent();
         _loc1_.height = 230;
         _loc1_.width = 470;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "saleContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleContent = _loc1_;
         BindingManager.executeBindings(this,"saleContent",this.saleContent);
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskMCDynaLib4_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_left";
         _loc1_.left = -2;
         _loc1_.height = 130;
         _loc1_.width = 22;
         _loc1_.verticalCenter = 1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskMCDynaLib5_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_right";
         _loc1_.verticalCenter = 0;
         _loc1_.right = -2;
         _loc1_.height = 130;
         _loc1_.width = 22;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareEventFailPopup_Array11_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_Array11_c() : Array
      {
         return [this._CitySquareEventFailPopup_StepMarkerBarComponent1_i()];
      }
      
      private function _CitySquareEventFailPopup_StepMarkerBarComponent1_i() : StepMarkerBarComponent
      {
         var _loc1_:StepMarkerBarComponent = new StepMarkerBarComponent();
         _loc1_.percentWidth = 88;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.addMouseListener = false;
         _loc1_.id = "challengeProgress";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.challengeProgress = _loc1_;
         BindingManager.executeBindings(this,"challengeProgress",this.challengeProgress);
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_BriskImageDynaLib5_c(),this._CitySquareEventFailPopup_HGroup2_c(),this._CitySquareEventFailPopup_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bubble_large";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 720;
         _loc1_.height = 65;
         _loc1_.paddingTop = 8;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CitySquareEventFailPopup_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "avatarText";
         _loc1_.percentWidth = 90;
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _CitySquareEventFailPopup_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.top = -10;
         _loc1_.id = "infoIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoIcon = _loc1_;
         BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
         return _loc1_;
      }
      
      public function ___CitySquareEventFailPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeProgress() : StepMarkerBarComponent
      {
         return this._1577357232challengeProgress;
      }
      
      public function set challengeProgress(param1:StepMarkerBarComponent) : void
      {
         var _loc2_:Object = this._1577357232challengeProgress;
         if(_loc2_ !== param1)
         {
            this._1577357232challengeProgress = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeProgress",_loc2_,param1));
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
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._177606215infoIcon;
         if(_loc2_ !== param1)
         {
            this._177606215infoIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get noSaleContent() : EventFailNoSaleContentComponent
      {
         return this._856513103noSaleContent;
      }
      
      public function set noSaleContent(param1:EventFailNoSaleContentComponent) : void
      {
         var _loc2_:Object = this._856513103noSaleContent;
         if(_loc2_ !== param1)
         {
            this._856513103noSaleContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noSaleContent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get noSaleContentGroup() : Group
      {
         return this._1007961934noSaleContentGroup;
      }
      
      public function set noSaleContentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1007961934noSaleContentGroup;
         if(_loc2_ !== param1)
         {
            this._1007961934noSaleContentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noSaleContentGroup",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get polaroidLabel() : LocaLabel
      {
         return this._2110508920polaroidLabel;
      }
      
      public function set polaroidLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2110508920polaroidLabel;
         if(_loc2_ !== param1)
         {
            this._2110508920polaroidLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBarComponent() : TimerBarComponent
      {
         return this._1903419639progressBarComponent;
      }
      
      public function set progressBarComponent(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._1903419639progressBarComponent;
         if(_loc2_ !== param1)
         {
            this._1903419639progressBarComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBarComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleContent() : EventFailSaleContentComponent
      {
         return this._1758101966saleContent;
      }
      
      public function set saleContent(param1:EventFailSaleContentComponent) : void
      {
         var _loc2_:Object = this._1758101966saleContent;
         if(_loc2_ !== param1)
         {
            this._1758101966saleContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleContent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleContentGroup() : Group
      {
         return this._33974419saleContentGroup;
      }
      
      public function set saleContentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._33974419saleContentGroup;
         if(_loc2_ !== param1)
         {
            this._33974419saleContentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleContentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleCountdownGroup() : Group
      {
         return this._2127489781saleCountdownGroup;
      }
      
      public function set saleCountdownGroup(param1:Group) : void
      {
         var _loc2_:Object = this._2127489781saleCountdownGroup;
         if(_loc2_ !== param1)
         {
            this._2127489781saleCountdownGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleCountdownGroup",_loc2_,param1));
            }
         }
      }
   }
}

