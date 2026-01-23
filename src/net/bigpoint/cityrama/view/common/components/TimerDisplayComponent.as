package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.view.common.components.vo.TimerDisplayComponentVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class TimerDisplayComponent extends Group
   {
      
      private var _1596012341infiniteGroup:VGroup;
      
      private var _1591914176infiniteLabel:LocaLabel;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:TimerDisplayComponentVo;
      
      private var _isDirty:Boolean;
      
      public function TimerDisplayComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._TimerDisplayComponent_HGroup1_c()];
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
            this.progressBar.includeInLayout = this.progressBar.visible = !this._data.isInfinite;
            this.infiniteGroup.includeInLayout = this.infiniteGroup.visible = this._data.isInfinite;
            this.infiniteLabel.text = ResourceManager.getInstance().getString(String("rcl.miniLayer.hip"),String("rcl.miniLayer.hip.equip.infinite"));
            if(!this._data.isInfinite)
            {
               this.progressBar.barColours = this._data.barColours;
               this.progressBar.label = this._data.label;
               this.progressBar.progress = this._data.progress;
            }
         }
      }
      
      public function setData(param1:TimerDisplayComponentVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function _TimerDisplayComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 160;
         _loc1_.mxmlContent = [this._TimerDisplayComponent_BriskImageDynaLib1_c(),this._TimerDisplayComponent_ProgressBarComponent1_i(),this._TimerDisplayComponent_VGroup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TimerDisplayComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "timer_clock";
         _loc1_.width = 25;
         _loc1_.height = 25;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TimerDisplayComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         _loc1_.progress = 0.5;
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _TimerDisplayComponent_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "left";
         _loc1_.verticalAlign = "middle";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._TimerDisplayComponent_Group2_c(),this._TimerDisplayComponent_LocaLabel1_i()];
         _loc1_.id = "infiniteGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infiniteGroup = _loc1_;
         BindingManager.executeBindings(this,"infiniteGroup",this.infiniteGroup);
         return _loc1_;
      }
      
      private function _TimerDisplayComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 3;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TimerDisplayComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "blueHighlight";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "infiniteLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infiniteLabel = _loc1_;
         BindingManager.executeBindings(this,"infiniteLabel",this.infiniteLabel);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get infiniteGroup() : VGroup
      {
         return this._1596012341infiniteGroup;
      }
      
      public function set infiniteGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1596012341infiniteGroup;
         if(_loc2_ !== param1)
         {
            this._1596012341infiniteGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infiniteGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infiniteLabel() : LocaLabel
      {
         return this._1591914176infiniteLabel;
      }
      
      public function set infiniteLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1591914176infiniteLabel;
         if(_loc2_ !== param1)
         {
            this._1591914176infiniteLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infiniteLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
            }
         }
      }
   }
}

