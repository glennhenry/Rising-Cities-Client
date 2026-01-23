package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import flash.events.Event;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class SlimProgressBarTimer extends Group
   {
      
      private var _1131509414progressBar:SlimProgressBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      private var _data:TimerBarComponentVo;
      
      private var _intervalID:uint;
      
      private var _dataIsDirty:Boolean;
      
      private var _progressBarStyle:String;
      
      public function SlimProgressBarTimer()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SlimProgressBarTimer_HGroup1_c()];
         this.addEventListener("removedFromStage",this.___SlimProgressBarTimer_Group1_removedFromStage);
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
      
      public function set data(param1:TimerBarComponentVo) : void
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
      
      private function handleRemoved() : void
      {
         clearInterval(this._intervalID);
      }
      
      private function handleInterval() : void
      {
         var _loc1_:Number = NaN;
         if(!this._data.waitingForStart && this._data.targetTime && Boolean(this._data.cycleLength))
         {
            this._data.currentTime += 1000;
            _loc1_ = (this._data.currentTime - this._data.startTime) / (this._data.targetTime - this._data.startTime);
            if(this.revertProgress)
            {
               _loc1_ = 1 - _loc1_;
            }
            this.progressBar.progress = _loc1_;
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
         }
      }
      
      public function set progressBarWidth(param1:Number) : void
      {
         this.progressBar.width = param1;
      }
      
      private function endProgress() : void
      {
         clearInterval(this._intervalID);
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function set progressBarTint(param1:uint) : void
      {
         this.progressBar.tint = param1;
      }
      
      private function _SlimProgressBarTimer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SlimProgressBarTimer_SlimProgressBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SlimProgressBarTimer_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      public function ___SlimProgressBarTimer_Group1_removedFromStage(param1:Event) : void
      {
         this.handleRemoved();
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : SlimProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:SlimProgressBarComponent) : void
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

