package net.bigpoint.cityrama.view.common.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.debug.SMockProvider;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class TimerBarComponent extends Group
   {
      
      public static const EVENT_TIMER_UP:String = "EVENT_TIMER_UP";
      
      private static const TICK_INTERVAL:int = 1000;
      
      private var _1322365109boostButton:DynamicPlusButton;
      
      private var _1340618197prefixIcon:BriskImageDynaLib;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _activeTimer:Boolean = true;
      
      private var _showBoostButton:Boolean;
      
      private var _showTimeInDays:Boolean;
      
      private var _data:TimerBarComponentVo;
      
      private var _intervalID:uint;
      
      private var _dirty:Boolean;
      
      public function TimerBarComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.mxmlContent = [this._TimerBarComponent_HGroup1_c()];
         this.addEventListener("creationComplete",this.___TimerBarComponent_Group1_creationComplete);
         this.addEventListener("removedFromStage",this.___TimerBarComponent_Group1_removedFromStage);
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
      }
      
      public function set data(param1:TimerBarComponentVo) : void
      {
         if(RandomUtilities.isUnEqual(this._data,param1))
         {
            this._data = param1;
            this._dirty = true;
            this.checkForRanUpTimer();
            this.checkforIntervall();
            invalidateProperties();
            this.updateBarProgress();
         }
      }
      
      private function checkForRanUpTimer() : void
      {
         if(this._data.timerRanOut)
         {
            this.boostButton.enabled = false;
            dispatchEvent(new Event(EVENT_TIMER_UP,true));
         }
      }
      
      override protected function commitProperties() : void
      {
         if(this._dirty)
         {
            this._dirty = false;
            this.boostButton.visible = this.boostButton.includeInLayout = this._showBoostButton;
            this.boostButton.showPlus = false;
            this.boostButton.enabled = this._data.userMayStart && !this._data.timerRanOut;
            if(!this._activeTimer)
            {
               this.progressBar.progress = 1;
               this.setProgressLabel();
            }
         }
      }
      
      private function setProgressLabel() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:Number = NaN;
         if(this._data)
         {
            if(this._showTimeInDays)
            {
               if(!this._activeTimer || this._data.waitingForStart)
               {
                  _loc1_ = LocaUtils.getDaysFromSeconds(this._data.cycleLength / 1000);
                  if(_loc1_ >= 2)
                  {
                     _loc2_ = LocaUtils.getExactDaysFromSecond(this._data.cycleLength / 1000);
                     if(_loc1_ - _loc2_ < 0)
                     {
                        this.progressBar.label = LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[">" + _loc1_]);
                     }
                     else
                     {
                        this.progressBar.label = LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[_loc1_]);
                     }
                  }
                  else
                  {
                     this.progressBar.label = LocaUtils.getDuration(Math.max(0,this._data.cycleLength / 1000));
                  }
               }
               else
               {
                  _loc1_ = LocaUtils.getDaysFromSeconds((this._data.targetTime - this._data.currentTime) / 1000);
                  if(_loc1_ >= 2)
                  {
                     _loc2_ = LocaUtils.getExactDaysFromSecond((this._data.targetTime - this._data.currentTime) / 1000);
                     if(_loc1_ - _loc2_ < 0)
                     {
                        this.progressBar.label = LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[">" + _loc1_]);
                     }
                     else
                     {
                        this.progressBar.label = LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[_loc1_]);
                     }
                  }
                  else
                  {
                     this.progressBar.label = LocaUtils.getDuration(Math.max(0,(this._data.targetTime - this._data.currentTime) / 1000));
                  }
               }
            }
            else if(!this._activeTimer || this._data.waitingForStart)
            {
               this.progressBar.label = LocaUtils.getDuration(Math.max(0,this._data.cycleLength / 1000));
            }
            else
            {
               this.progressBar.label = LocaUtils.getDuration(Math.max(0,(this._data.targetTime - this._data.currentTime) / 1000));
            }
         }
      }
      
      private function checkforIntervall() : void
      {
         clearInterval(this._intervalID);
         if(this._data != null && (this._activeTimer && !this._data.waitingForStart) && !this._data.timerRanOut)
         {
            this._intervalID = setInterval(this.handleTick,TICK_INTERVAL);
            this.handleTick();
         }
      }
      
      private function handleTick() : void
      {
         this._data.currentTime += 1000;
         this._dirty = true;
         if(this._data.timerRanOut)
         {
            invalidateProperties();
            this.checkForRanUpTimer();
         }
         else
         {
            this.updateBarProgress();
         }
      }
      
      private function updateBarProgress() : void
      {
         this.setProgressLabel();
         if(this._data.waitingForStart)
         {
            this.progressBar.progress = 0;
         }
         else
         {
            this.progressBar.progress = (this._data.currentTime - this._data.startTime) / (this._data.targetTime - this._data.startTime);
         }
      }
      
      public function set activeTimer(param1:Boolean) : void
      {
         this._activeTimer = param1;
         this.checkforIntervall();
      }
      
      public function set showTimeInDays(param1:Boolean) : void
      {
         this._showTimeInDays = param1;
      }
      
      public function set showBoostButton(param1:Boolean) : void
      {
         this._showBoostButton = param1;
         this.boostButton.visible = this.boostButton.includeInLayout = param1;
      }
      
      public function set revertFlow(param1:Boolean) : void
      {
         this.progressBar.revertProgress = param1;
      }
      
      public function set iconBriskDynaVo(param1:BriskDynaVo) : void
      {
         this.prefixIcon.briskDynaVo = param1;
      }
      
      private function boostButton_clickHandler(param1:MouseEvent) : void
      {
         if(SMockProvider.mockBoolean(true))
         {
         }
      }
      
      public function get data() : TimerBarComponentVo
      {
         return this._data;
      }
      
      public function setDirty() : void
      {
         this._dirty = true;
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         clearInterval(this._intervalID);
      }
      
      private function _TimerBarComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._TimerBarComponent_BriskImageDynaLib1_i(),this._TimerBarComponent_ProgressBarComponent1_i(),this._TimerBarComponent_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _TimerBarComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "timer_clock";
         _loc1_.width = 25;
         _loc1_.height = 25;
         _loc1_.id = "prefixIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.prefixIcon = _loc1_;
         BindingManager.executeBindings(this,"prefixIcon",this.prefixIcon);
         return _loc1_;
      }
      
      private function _TimerBarComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _TimerBarComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.iconImageName = "dd_button_icon";
         _loc1_.iconLibName = "gui_resources_icons";
         _loc1_.enabled = false;
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("click",this.__boostButton_click);
         _loc1_.id = "boostButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boostButton = _loc1_;
         BindingManager.executeBindings(this,"boostButton",this.boostButton);
         return _loc1_;
      }
      
      public function __boostButton_click(param1:MouseEvent) : void
      {
         this.boostButton_clickHandler(param1);
      }
      
      public function ___TimerBarComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      public function ___TimerBarComponent_Group1_removedFromStage(param1:Event) : void
      {
         this.removedFromStageHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get boostButton() : DynamicPlusButton
      {
         return this._1322365109boostButton;
      }
      
      public function set boostButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._1322365109boostButton;
         if(_loc2_ !== param1)
         {
            this._1322365109boostButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boostButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prefixIcon() : BriskImageDynaLib
      {
         return this._1340618197prefixIcon;
      }
      
      public function set prefixIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1340618197prefixIcon;
         if(_loc2_ !== param1)
         {
            this._1340618197prefixIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prefixIcon",_loc2_,param1));
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

