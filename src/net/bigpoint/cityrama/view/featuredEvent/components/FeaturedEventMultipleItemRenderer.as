package net.bigpoint.cityrama.view.featuredEvent.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedRunningEventVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.SlimProgressBarTimer;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class FeaturedEventMultipleItemRenderer extends ItemRenderer
   {
      
      private var _1425079635dividerLine:BriskImageDynaLib;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1222780865progressBarTimer:SlimProgressBarTimer;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FeaturedRunningEventVo;
      
      private var _isDirty:Boolean;
      
      public function FeaturedEventMultipleItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._FeaturedEventMultipleItemRenderer_VGroup1_c()];
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
            this.infoLabel.text = this._data.infoText;
            this.progressBarTimer.data = this._data.timerVo;
            this.dividerLine.visible = this.dividerLine.includeInLayout = this._data.showDivider;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as FeaturedRunningEventVo;
            this._isDirty = true;
         }
      }
      
      private function _FeaturedEventMultipleItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FeaturedEventMultipleItemRenderer_VGroup2_c(),this._FeaturedEventMultipleItemRenderer_HGroup1_c(),this._FeaturedEventMultipleItemRenderer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleItemRenderer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 80;
         _loc1_.mxmlContent = [this._FeaturedEventMultipleItemRenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleText";
         _loc1_.percentWidth = 100;
         _loc1_.id = "infoLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoLabel = _loc1_;
         BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 4;
         _loc1_.percentWidth = 80;
         _loc1_.mxmlContent = [this._FeaturedEventMultipleItemRenderer_BriskImageDynaLib1_c(),this._FeaturedEventMultipleItemRenderer_SlimProgressBarTimer1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
         _loc1_.width = 18;
         _loc1_.height = 17;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleItemRenderer_SlimProgressBarTimer1_i() : SlimProgressBarTimer
      {
         var _loc1_:SlimProgressBarTimer = new SlimProgressBarTimer();
         _loc1_.percentWidth = 100;
         _loc1_.revertProgress = true;
         _loc1_.id = "progressBarTimer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBarTimer = _loc1_;
         BindingManager.executeBindings(this,"progressBarTimer",this.progressBarTimer);
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "dividerLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dividerLine = _loc1_;
         BindingManager.executeBindings(this,"dividerLine",this.dividerLine);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get dividerLine() : BriskImageDynaLib
      {
         return this._1425079635dividerLine;
      }
      
      public function set dividerLine(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1425079635dividerLine;
         if(_loc2_ !== param1)
         {
            this._1425079635dividerLine = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dividerLine",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc2_ !== param1)
         {
            this._1213523686infoLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBarTimer() : SlimProgressBarTimer
      {
         return this._1222780865progressBarTimer;
      }
      
      public function set progressBarTimer(param1:SlimProgressBarTimer) : void
      {
         var _loc2_:Object = this._1222780865progressBarTimer;
         if(_loc2_ !== param1)
         {
            this._1222780865progressBarTimer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBarTimer",_loc2_,param1));
            }
         }
      }
   }
}

