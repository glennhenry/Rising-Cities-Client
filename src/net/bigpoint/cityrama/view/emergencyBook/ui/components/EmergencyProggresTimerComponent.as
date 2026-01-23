package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import flash.events.Event;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyTimerProggressVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class EmergencyProggresTimerComponent extends Group
   {
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      private var _data:EmergencyTimerProggressVo;
      
      private var _intervalID:uint;
      
      private var _dataIsDirty:Boolean;
      
      public function EmergencyProggresTimerComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._EmergencyProggresTimerComponent_HGroup1_c()];
         this.addEventListener("creationComplete",this.___EmergencyProggresTimerComponent_Group1_creationComplete);
         this.addEventListener("removedFromStage",this.___EmergencyProggresTimerComponent_Group1_removedFromStage);
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
      
      public function set data(param1:EmergencyTimerProggressVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._dataIsDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            clearInterval(this._intervalID);
            this._intervalID = setInterval(this.handleInterval,1000);
            this.handleInterval();
         }
      }
      
      private function handleCreationComplete() : void
      {
      }
      
      private function handleRemoved() : void
      {
         clearInterval(this._intervalID);
      }
      
      private function handleInterval() : void
      {
         var _loc1_:Number = NaN;
         if(Boolean(this._data.targetTime) && Boolean(this._data.cycleLength))
         {
            this._data.currentTime += 1000;
            _loc1_ = (this._data.currentTime - this._data.startTime) / (this._data.targetTime - this._data.startTime);
            if(this.revertProgress)
            {
               _loc1_ = 1 - _loc1_;
            }
            this.progressBar.progress = _loc1_;
            this.progressBar.label = LocaUtils.getDuration((this._data.targetTime - this._data.currentTime) / 1000);
            if(this.progressBar.progress >= 1 && !this.revertProgress)
            {
               this.endProgress();
            }
            if(this.progressBar.progress <= 0 && this.revertProgress)
            {
               this.endProgress();
            }
         }
         else
         {
            this.progressBar.progress = 1;
            this.progressBar.label = LocaUtils.getDuration(this._data.cycleLength / 1000);
         }
      }
      
      private function endProgress() : void
      {
         clearInterval(this._intervalID);
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      private function _EmergencyProggresTimerComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencyProggresTimerComponent_BriskImageDynaLib1_c(),this._EmergencyProggresTimerComponent_ProgressBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyProggresTimerComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _EmergencyProggresTimerComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         _loc1_.label = "00:00";
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
      
      public function ___EmergencyProggresTimerComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      public function ___EmergencyProggresTimerComponent_Group1_removedFromStage(param1:Event) : void
      {
         this.handleRemoved();
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

