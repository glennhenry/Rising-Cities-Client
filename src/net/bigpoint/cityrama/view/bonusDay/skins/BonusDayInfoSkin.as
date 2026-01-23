package net.bigpoint.cityrama.view.bonusDay.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.bonusDay.components.BonusDayInfoComponent;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.SlimProgressBarTimer;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class BonusDayInfoSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _311641483progressTimerSlim:SlimProgressBarTimer;
      
      private var _1643334319timerLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:BonusDayInfoComponent;
      
      public function BonusDayInfoSkin()
      {
         super();
         mx_internal::_document = this;
         this.width = 245;
         this.minHeight = 90;
         this.mxmlContent = [this._BonusDayInfoSkin_Group1_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___BonusDayInfoSkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
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
         this.header.text = LocaUtils.getString("rcl.misc.bonusDay","rcl.misc.bonusDay.header.capital");
         this.flavourLabel.text = LocaUtils.getString("rcl.misc.bonusDay","rcl.misc.bonusDay.flavour.normal");
         this.timerLabel.text = LocaUtils.getString("rcl.misc.bonusDay","rcl.misc.bonusDay.timerLabel");
      }
      
      private function _BonusDayInfoSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._BonusDayInfoSkin_RentCollectorBubbleComponent1_i(),this._BonusDayInfoSkin_Group2_c(),this._BonusDayInfoSkin_BriskImageDynaLib1_c(),this._BonusDayInfoSkin_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.id = "bubble";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bubble = _loc1_;
         BindingManager.executeBindings(this,"bubble",this.bubble);
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 8;
         _loc1_.left = 8;
         _loc1_.right = 18;
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._BonusDayInfoSkin_BlueBarComponent1_c(),this._BonusDayInfoSkin_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_BlueBarComponent1_c() : BlueBarComponent
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
      
      private function _BonusDayInfoSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._BonusDayInfoSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "eventName";
         _loc1_.maxWidth = 170;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_icon_bonusDay";
         _loc1_.left = -12;
         _loc1_.top = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 50;
         _loc1_.left = 23;
         _loc1_.right = 35;
         _loc1_.bottom = 10;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._BonusDayInfoSkin_LocaLabel2_i(),this._BonusDayInfoSkin_Group3_c(),this._BonusDayInfoSkin_LocaLabel3_i(),this._BonusDayInfoSkin_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleText";
         _loc1_.maxDisplayedLines = 3;
         _loc1_.maxWidth = 180;
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleText";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.maxWidth = 180;
         _loc1_.text = "DEV: this is a timer";
         _loc1_.id = "timerLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerLabel = _loc1_;
         BindingManager.executeBindings(this,"timerLabel",this.timerLabel);
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 17;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._BonusDayInfoSkin_BriskImageDynaLib2_c(),this._BonusDayInfoSkin_SlimProgressBarTimer1_i(),this._BonusDayInfoSkin_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _BonusDayInfoSkin_SlimProgressBarTimer1_i() : SlimProgressBarTimer
      {
         var _loc1_:SlimProgressBarTimer = new SlimProgressBarTimer();
         _loc1_.progressBarTint = 10739019;
         _loc1_.revertProgress = true;
         _loc1_.percentWidth = 100;
         _loc1_.id = "progressTimerSlim";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressTimerSlim = _loc1_;
         BindingManager.executeBindings(this,"progressTimerSlim",this.progressTimerSlim);
         return _loc1_;
      }
      
      private function _BonusDayInfoSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 18;
         _loc1_.height = 17;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___BonusDayInfoSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bubble() : RentCollectorBubbleComponent
      {
         return this._1378241396bubble;
      }
      
      public function set bubble(param1:RentCollectorBubbleComponent) : void
      {
         var _loc2_:Object = this._1378241396bubble;
         if(_loc2_ !== param1)
         {
            this._1378241396bubble = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc2_ !== param1)
         {
            this._949820541flavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1221270899header;
         if(_loc2_ !== param1)
         {
            this._1221270899header = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressTimerSlim() : SlimProgressBarTimer
      {
         return this._311641483progressTimerSlim;
      }
      
      public function set progressTimerSlim(param1:SlimProgressBarTimer) : void
      {
         var _loc2_:Object = this._311641483progressTimerSlim;
         if(_loc2_ !== param1)
         {
            this._311641483progressTimerSlim = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTimerSlim",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerLabel() : LocaLabel
      {
         return this._1643334319timerLabel;
      }
      
      public function set timerLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1643334319timerLabel;
         if(_loc2_ !== param1)
         {
            this._1643334319timerLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : BonusDayInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:BonusDayInfoComponent) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

