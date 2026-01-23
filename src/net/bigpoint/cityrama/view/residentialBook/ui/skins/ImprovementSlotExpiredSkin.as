package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class ImprovementSlotExpiredSkin extends SparkSkin implements IStateClient2
   {
      
      private var _123224208_ImprovementSlotExpiredSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _404288315_ImprovementSlotExpiredSkin_Group2:Group;
      
      private var _1051917889expiredProgressBar:SlimProgressBarComponent;
      
      private var _361121306improBadge:BriskImageDynaLib;
      
      private var _1926122798improBg:BriskImageDynaLib;
      
      private var _1429205699improvementGfx:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _1234516103progressBarGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ImprovementSlotComponent;
      
      public function ImprovementSlotExpiredSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._ImprovementSlotExpiredSkin_Group1_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"highlight",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"slot_highlight"
            }),new SetProperty().initializeFromObject({
               "target":"_ImprovementSlotExpiredSkin_Group2",
               "name":"alpha",
               "value":1
            }),new SetProperty().initializeFromObject({
               "target":"progressBarGroup",
               "name":"alpha",
               "value":1
            })]
         }),new State({
            "name":"highlightOver",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"slot_highlight"
            }),new SetProperty().initializeFromObject({
               "target":"_ImprovementSlotExpiredSkin_Group2",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"progressBarGroup",
               "name":"alpha",
               "value":0.5
            })]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"slot_highlight"
            }),new SetProperty().initializeFromObject({
               "target":"infoIcon",
               "name":"dynaBmpSourceName",
               "value":"icon_info_over"
            })]
         }),new State({
            "name":"up",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"slot_red"
            }),new SetProperty().initializeFromObject({
               "target":"_ImprovementSlotExpiredSkin_Group2",
               "name":"alpha",
               "value":1
            }),new SetProperty().initializeFromObject({
               "target":"progressBarGroup",
               "name":"alpha",
               "value":1
            })]
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
      
      private function handleGfxCreationComplete() : void
      {
         if(this.improvementGfx)
         {
            this.improvementGfx.alpha = 0.7;
            TweenMax.to(this.improvementGfx,0,{"colorMatrixFilter":{
               "amount":1,
               "saturation":0
            }});
         }
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
      
      private function _ImprovementSlotExpiredSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 138;
         _loc1_.height = 138;
         _loc1_.mxmlContent = [this._ImprovementSlotExpiredSkin_BriskImageDynaLib1_i(),this._ImprovementSlotExpiredSkin_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "slot_red";
         _loc1_.id = "_ImprovementSlotExpiredSkin_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ImprovementSlotExpiredSkin_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",this._ImprovementSlotExpiredSkin_BriskImageDynaLib1);
         return _loc1_;
      }
      
      private function _ImprovementSlotExpiredSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.paddingTop = 8;
         _loc1_.verticalCenter = -3;
         _loc1_.mxmlContent = [this._ImprovementSlotExpiredSkin_Group2_i(),this._ImprovementSlotExpiredSkin_HGroup2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotExpiredSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ImprovementSlotExpiredSkin_BriskImageDynaLib2_i(),this._ImprovementSlotExpiredSkin_HGroup1_c(),this._ImprovementSlotExpiredSkin_BriskImageDynaLib4_i(),this._ImprovementSlotExpiredSkin_BriskImageDynaLib5_i(),this._ImprovementSlotExpiredSkin_BriskImageDynaLib6_c()];
         _loc1_.id = "_ImprovementSlotExpiredSkin_Group2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ImprovementSlotExpiredSkin_Group2 = _loc1_;
         BindingManager.executeBindings(this,"_ImprovementSlotExpiredSkin_Group2",this._ImprovementSlotExpiredSkin_Group2);
         return _loc1_;
      }
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
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
      
      private function _ImprovementSlotExpiredSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 118;
         _loc1_.width = 118;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovementSlotExpiredSkin_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_improvements_small";
         _loc1_.dynaBmpSourceName = "improvement_small_100000";
         _loc1_.addEventListener("creationComplete",this.__improvementGfx_creationComplete);
         _loc1_.id = "improvementGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementGfx = _loc1_;
         BindingManager.executeBindings(this,"improvementGfx",this.improvementGfx);
         return _loc1_;
      }
      
      public function __improvementGfx_creationComplete(param1:FlexEvent) : void
      {
         this.handleGfxCreationComplete();
      }
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
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
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "icon_info";
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
      
      private function _ImprovementSlotExpiredSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "delete_indicator";
         _loc1_.right = -9;
         _loc1_.top = -4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotExpiredSkin_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 118;
         _loc1_.includeInLayout = true;
         _loc1_.visible = true;
         _loc1_.height = 12;
         _loc1_.mxmlContent = [this._ImprovementSlotExpiredSkin_SlimProgressBarComponent1_i()];
         _loc1_.id = "progressBarGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBarGroup = _loc1_;
         BindingManager.executeBindings(this,"progressBarGroup",this.progressBarGroup);
         return _loc1_;
      }
      
      private function _ImprovementSlotExpiredSkin_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         _loc1_.width = 116;
         _loc1_.tint = 16479295;
         _loc1_.progress = 0.1;
         _loc1_.id = "expiredProgressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.expiredProgressBar = _loc1_;
         BindingManager.executeBindings(this,"expiredProgressBar",this.expiredProgressBar);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementSlotExpiredSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._123224208_ImprovementSlotExpiredSkin_BriskImageDynaLib1;
      }
      
      public function set _ImprovementSlotExpiredSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._123224208_ImprovementSlotExpiredSkin_BriskImageDynaLib1;
         if(_loc2_ !== param1)
         {
            this._123224208_ImprovementSlotExpiredSkin_BriskImageDynaLib1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementSlotExpiredSkin_BriskImageDynaLib1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementSlotExpiredSkin_Group2() : Group
      {
         return this._404288315_ImprovementSlotExpiredSkin_Group2;
      }
      
      public function set _ImprovementSlotExpiredSkin_Group2(param1:Group) : void
      {
         var _loc2_:Object = this._404288315_ImprovementSlotExpiredSkin_Group2;
         if(_loc2_ !== param1)
         {
            this._404288315_ImprovementSlotExpiredSkin_Group2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementSlotExpiredSkin_Group2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get expiredProgressBar() : SlimProgressBarComponent
      {
         return this._1051917889expiredProgressBar;
      }
      
      public function set expiredProgressBar(param1:SlimProgressBarComponent) : void
      {
         var _loc2_:Object = this._1051917889expiredProgressBar;
         if(_loc2_ !== param1)
         {
            this._1051917889expiredProgressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expiredProgressBar",_loc2_,param1));
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

