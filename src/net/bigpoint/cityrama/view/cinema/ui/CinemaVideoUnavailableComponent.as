package net.bigpoint.cityrama.view.cinema.ui
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaLayerVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CinemaVideoUnavailableComponent extends Group
   {
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _110364485timer:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CinemaLayerVo;
      
      private var _isDirty:Boolean;
      
      public function CinemaVideoUnavailableComponent()
      {
         super();
         mx_internal::_document = this;
         this.width = 515;
         this.height = 240;
         this.mxmlContent = [this._CinemaVideoUnavailableComponent_BriskImageDynaLib1_c(),this._CinemaVideoUnavailableComponent_VGroup1_c()];
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
            this.timer.visible = this._data.availabilityTimer != null;
            if(this._data.availabilityTimer)
            {
               this.timer.data = this._data.availabilityTimer;
            }
            this.headerLabel.text = this._data.headerText;
            this.mainText.text = this._data.layerText;
         }
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
      
      private function _CinemaVideoUnavailableComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _CinemaVideoUnavailableComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = null;
         _loc1_ = new VGroup();
         _loc1_.top = 44;
         _loc1_.bottom = 30;
         _loc1_.width = 340;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 1;
         _loc1_.mxmlContent = [this._CinemaVideoUnavailableComponent_Group2_c(),this._CinemaVideoUnavailableComponent_HGroup2_c(),this._CinemaVideoUnavailableComponent_TimerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoUnavailableComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._CinemaVideoUnavailableComponent_BlueBarComponent1_c(),this._CinemaVideoUnavailableComponent_BriskImageDynaLib2_c(),this._CinemaVideoUnavailableComponent_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoUnavailableComponent_BlueBarComponent1_c() : BlueBarComponent
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
      
      private function _CinemaVideoUnavailableComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _CinemaVideoUnavailableComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 70;
         _loc1_.percentHeight = 98;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CinemaVideoUnavailableComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoUnavailableComponent_LocaLabel1_i() : LocaLabel
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
      
      private function _CinemaVideoUnavailableComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 100;
         _loc1_.percentWidth = 85;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CinemaVideoUnavailableComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CinemaVideoUnavailableComponent_LocaLabel2_i() : LocaLabel
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
      
      private function _CinemaVideoUnavailableComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.width = 181;
         _loc1_.showBoostButton = false;
         _loc1_.id = "timer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timer = _loc1_;
         BindingManager.executeBindings(this,"timer",this.timer);
         return _loc1_;
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
      public function get timer() : TimerBarComponent
      {
         return this._110364485timer;
      }
      
      public function set timer(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._110364485timer;
         if(_loc2_ !== param1)
         {
            this._110364485timer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timer",_loc2_,param1));
            }
         }
      }
   }
}

