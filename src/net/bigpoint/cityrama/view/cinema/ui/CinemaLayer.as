package net.bigpoint.cityrama.view.cinema.ui
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class CinemaLayer extends PaperPopupWindow
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
      
      private var _800887486flavourText:LocaLabel;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _2110508920polaroidLabel:LocaLabel;
      
      private var _1893598809stepBar:StepMarkerBarComponent;
      
      private var _435503115videoAvailableContent:CinemaVideoAvailableComponent;
      
      private var _887948804videoUnAvailableContent:CinemaVideoUnavailableComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CinemaLayerVo;
      
      private var _isDirty:Boolean;
      
      public function CinemaLayer()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "cinema";
         this.showBackButton = false;
         this.width = 785;
         this.height = 430;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CinemaLayer_Array1_c);
         this.addEventListener("creationComplete",this.___CinemaLayer_PaperPopupWindow1_creationComplete);
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
         title = LocaUtils.getString("rcl.booklayer.cinema","rcl.booklayer.cinema.title.capital");
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.flavourText.text = this._data.flavourText;
            this.polaroidLabel.text = this._data.polaroidText;
            this.polaroidImage.briskDynaVo = this._data.polaroidGfx;
            this.stepBar.data = this._data.stepMarkerData;
            this.videoAvailableContent.includeInLayout = this.videoAvailableContent.visible = this._data.videoAvailable;
            this.videoUnAvailableContent.includeInLayout = this.videoUnAvailableContent.visible = !this._data.videoAvailable;
            if(this._data.videoAvailable)
            {
               this.videoAvailableContent.data = this._data;
            }
            else
            {
               this.videoUnAvailableContent.data = this._data;
            }
         }
      }
      
      public function set data(param1:CinemaLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function _CinemaLayer_Array1_c() : Array
      {
         return [this._CinemaLayer_Group1_c()];
      }
      
      private function _CinemaLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = 26;
         _loc1_.bottom = 12;
         _loc1_.mxmlContent = [this._CinemaLayer_HGroup1_c(),this._CinemaLayer_HGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 95;
         _loc1_.percentHeight = 100;
         _loc1_.top = 60;
         _loc1_.horizontalCenter = 0;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._CinemaLayer_Group2_c(),this._CinemaLayer_Group3_c(),this._CinemaLayer_Group6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CinemaLayer_Group4_c(),this._CinemaLayer_Group5_c(),this._CinemaLayer_BriskMCDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 78;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 225;
         _loc1_.width = 185;
         _loc1_.mxmlContent = [this._CinemaLayer_StickyNoteComponent1_c(),this._CinemaLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 88;
         _loc1_.bottom = 20;
         _loc1_.top = 25;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CinemaLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "eventRuntime";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "polaroidLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroidLabel = _loc1_;
         BindingManager.executeBindings(this,"polaroidLabel",this.polaroidLabel);
         return _loc1_;
      }
      
      private function _CinemaLayer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 15;
         _loc1_.mxmlContent = [this._CinemaLayer_BriskImageDynaLib1_c(),this._CinemaLayer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _CinemaLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_rewardLayer";
         _loc1_.dynaBmpSourceName = "polaroid_cinema_available";
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
      
      private function _CinemaLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 532;
         _loc1_.mxmlContent = [this._CinemaLayer_CinemaVideoAvailableComponent1_i(),this._CinemaLayer_CinemaVideoUnavailableComponent1_i(),this._CinemaLayer_StickyNoteComponent2_c(),this._CinemaLayer_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_CinemaVideoAvailableComponent1_i() : CinemaVideoAvailableComponent
      {
         var _loc1_:CinemaVideoAvailableComponent = new CinemaVideoAvailableComponent();
         _loc1_.top = 54;
         _loc1_.horizontalCenter = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "videoAvailableContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.videoAvailableContent = _loc1_;
         BindingManager.executeBindings(this,"videoAvailableContent",this.videoAvailableContent);
         return _loc1_;
      }
      
      private function _CinemaLayer_CinemaVideoUnavailableComponent1_i() : CinemaVideoUnavailableComponent
      {
         var _loc1_:CinemaVideoUnavailableComponent = new CinemaVideoUnavailableComponent();
         _loc1_.top = 54;
         _loc1_.horizontalCenter = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "videoUnAvailableContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.videoUnAvailableContent = _loc1_;
         BindingManager.executeBindings(this,"videoUnAvailableContent",this.videoUnAvailableContent);
         return _loc1_;
      }
      
      private function _CinemaLayer_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 90;
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 90;
         _loc1_.height = 54;
         _loc1_.top = 18;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CinemaLayer_StepMarkerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_StepMarkerBarComponent1_i() : StepMarkerBarComponent
      {
         var _loc1_:StepMarkerBarComponent = new StepMarkerBarComponent();
         _loc1_.addMouseListener = false;
         _loc1_.percentWidth = 90;
         _loc1_.id = "stepBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepBar = _loc1_;
         BindingManager.executeBindings(this,"stepBar",this.stepBar);
         return _loc1_;
      }
      
      private function _CinemaLayer_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.height = 103;
         _loc1_.mxmlContent = [this._CinemaLayer_Group7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 740;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CinemaLayer_BriskImageDynaLib3_c(),this._CinemaLayer_HGroup5_c(),this._CinemaLayer_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _CinemaLayer_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 88;
         _loc1_.height = 60;
         _loc1_.top = 8;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CinemaLayer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
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
      
      private function _CinemaLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
         _loc1_.top = -4;
         _loc1_.left = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___CinemaLayer_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
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
      public function get videoAvailableContent() : CinemaVideoAvailableComponent
      {
         return this._435503115videoAvailableContent;
      }
      
      public function set videoAvailableContent(param1:CinemaVideoAvailableComponent) : void
      {
         var _loc2_:Object = this._435503115videoAvailableContent;
         if(_loc2_ !== param1)
         {
            this._435503115videoAvailableContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"videoAvailableContent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get videoUnAvailableContent() : CinemaVideoUnavailableComponent
      {
         return this._887948804videoUnAvailableContent;
      }
      
      public function set videoUnAvailableContent(param1:CinemaVideoUnavailableComponent) : void
      {
         var _loc2_:Object = this._887948804videoUnAvailableContent;
         if(_loc2_ !== param1)
         {
            this._887948804videoUnAvailableContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"videoUnAvailableContent",_loc2_,param1));
            }
         }
      }
   }
}

