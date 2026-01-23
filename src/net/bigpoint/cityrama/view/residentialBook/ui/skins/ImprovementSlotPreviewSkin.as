package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class ImprovementSlotPreviewSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1931666281fullProgressBar:SlimProgressBarComponent;
      
      private var _361121306improBadge:BriskImageDynaLib;
      
      private var _1926122798improBg:BriskImageDynaLib;
      
      private var _1429205699improvementGfx:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _1234516103progressBarGroup:HGroup;
      
      private var _2053116446unlimitedGroup:HGroup;
      
      private var _2057214611unlimitedLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ImprovementSlotComponent;
      
      public function ImprovementSlotPreviewSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._ImprovementSlotPreviewSkin_Group1_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___ImprovementSlotPreviewSkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"highlight",
            "overrides":[]
         }),new State({
            "name":"highlightOver",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"up",
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
      
      private function handleCreationComplete() : void
      {
         this.unlimitedLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.unlimited.capital"));
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         if(currentState == "highlight" && param1 == "over")
         {
            param1 = "highlightOver";
         }
         if((currentState == "highlight" || currentState == "highlightOver") && param1 == "up")
         {
            if(this.hostComponent.highlight)
            {
               param1 = "highlight";
            }
         }
         super.setCurrentState(param1,param2);
      }
      
      private function _ImprovementSlotPreviewSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 138;
         _loc1_.height = 138;
         _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_BriskImageDynaLib1_c(),this._ImprovementSlotPreviewSkin_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "slot_highlight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.paddingTop = 8;
         _loc1_.verticalCenter = -3;
         _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_Group2_c(),this._ImprovementSlotPreviewSkin_HGroup2_i(),this._ImprovementSlotPreviewSkin_HGroup3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.alpha = 0.5;
         _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_BriskImageDynaLib2_i(),this._ImprovementSlotPreviewSkin_HGroup1_c(),this._ImprovementSlotPreviewSkin_BriskImageDynaLib4_i(),this._ImprovementSlotPreviewSkin_BriskImageDynaLib5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "hip_cardboard_small";
         _loc1_.id = "improBg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improBg = _loc1_;
         BindingManager.executeBindings(this,"improBg",this.improBg);
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 118;
         _loc1_.width = 118;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_improvements_small";
         _loc1_.dynaBmpSourceName = "improvement_small_100000";
         _loc1_.id = "improvementGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementGfx = _loc1_;
         BindingManager.executeBindings(this,"improvementGfx",this.improvementGfx);
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.left = 3;
         _loc1_.dynaBmpSourceName = "hip_badge_common_small";
         _loc1_.id = "improBadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improBadge = _loc1_;
         BindingManager.executeBindings(this,"improBadge",this.improBadge);
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "icon_info_over";
         _loc1_.bottom = 9;
         _loc1_.right = 9;
         _loc1_.id = "infoIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoIcon = _loc1_;
         BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 118;
         _loc1_.includeInLayout = true;
         _loc1_.visible = true;
         _loc1_.height = 12;
         _loc1_.alpha = 0.5;
         _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_SlimProgressBarComponent1_i()];
         _loc1_.id = "progressBarGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBarGroup = _loc1_;
         BindingManager.executeBindings(this,"progressBarGroup",this.progressBarGroup);
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         _loc1_.width = 116;
         _loc1_.progress = 1;
         _loc1_.id = "fullProgressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.fullProgressBar = _loc1_;
         BindingManager.executeBindings(this,"fullProgressBar",this.fullProgressBar);
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "bottom";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 12;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.alpha = 0.5;
         _loc1_.mxmlContent = [this._ImprovementSlotPreviewSkin_LocaLabel1_i()];
         _loc1_.id = "unlimitedGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.unlimitedGroup = _loc1_;
         BindingManager.executeBindings(this,"unlimitedGroup",this.unlimitedGroup);
         return _loc1_;
      }
      
      private function _ImprovementSlotPreviewSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "unlimitedLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.text = "dev: UNLIMITED";
         _loc1_.percentWidth = 90;
         _loc1_.id = "unlimitedLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.unlimitedLabel = _loc1_;
         BindingManager.executeBindings(this,"unlimitedLabel",this.unlimitedLabel);
         return _loc1_;
      }
      
      public function ___ImprovementSlotPreviewSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get fullProgressBar() : SlimProgressBarComponent
      {
         return this._1931666281fullProgressBar;
      }
      
      public function set fullProgressBar(param1:SlimProgressBarComponent) : void
      {
         var _loc2_:Object = this._1931666281fullProgressBar;
         if(_loc2_ !== param1)
         {
            this._1931666281fullProgressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fullProgressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improBadge() : BriskImageDynaLib
      {
         return this._361121306improBadge;
      }
      
      public function set improBadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._361121306improBadge;
         if(_loc2_ !== param1)
         {
            this._361121306improBadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improBadge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improBg() : BriskImageDynaLib
      {
         return this._1926122798improBg;
      }
      
      public function set improBg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1926122798improBg;
         if(_loc2_ !== param1)
         {
            this._1926122798improBg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improBg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementGfx() : BriskImageDynaLib
      {
         return this._1429205699improvementGfx;
      }
      
      public function set improvementGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1429205699improvementGfx;
         if(_loc2_ !== param1)
         {
            this._1429205699improvementGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementGfx",_loc2_,param1));
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
      public function get progressBarGroup() : HGroup
      {
         return this._1234516103progressBarGroup;
      }
      
      public function set progressBarGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1234516103progressBarGroup;
         if(_loc2_ !== param1)
         {
            this._1234516103progressBarGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBarGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unlimitedGroup() : HGroup
      {
         return this._2053116446unlimitedGroup;
      }
      
      public function set unlimitedGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._2053116446unlimitedGroup;
         if(_loc2_ !== param1)
         {
            this._2053116446unlimitedGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlimitedGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unlimitedLabel() : LocaLabel
      {
         return this._2057214611unlimitedLabel;
      }
      
      public function set unlimitedLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2057214611unlimitedLabel;
         if(_loc2_ !== param1)
         {
            this._2057214611unlimitedLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlimitedLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ImprovementSlotComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ImprovementSlotComponent) : void
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

