package net.bigpoint.cityrama.view.quest.ui.skin
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BubbleComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestToolTipComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class QuestToolTipSkin extends SparkSkin implements IStateClient2
   {
      
      private var _399321045checkmark:BriskImageDynaLib;
      
      private var _43132014gfxIcon:BriskImageDynaLib;
      
      private var _1977519450headerText:LocaLabel;
      
      private var _410147758taskText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:QuestToolTipComponent;
      
      public function QuestToolTipSkin()
      {
         super();
         mx_internal::_document = this;
         this.minWidth = 270;
         this.minHeight = 90;
         this.mxmlContent = [this._QuestToolTipSkin_Group1_c(),this._QuestToolTipSkin_BriskImageDynaLib7_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___QuestToolTipSkin_SparkSkin1_creationComplete);
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      private function _QuestToolTipSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._QuestToolTipSkin_BubbleComponent1_c(),this._QuestToolTipSkin_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BubbleComponent1_c() : BubbleComponent
      {
         var _loc1_:BubbleComponent = new BubbleComponent();
         _loc1_.top = 4;
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.paddingLeft = 22;
         _loc1_.paddingRight = 13;
         _loc1_.paddingTop = 17;
         _loc1_.paddingBottom = 9;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 3;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._QuestToolTipSkin_Group2_c(),this._QuestToolTipSkin_BriskImageDynaLib4_c(),this._QuestToolTipSkin_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._QuestToolTipSkin_HGroup1_c(),this._QuestToolTipSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._QuestToolTipSkin_BriskImageDynaLib1_c(),this._QuestToolTipSkin_BriskImageDynaLib2_c(),this._QuestToolTipSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "questHeader";
         _loc1_.verticalCenter = 2;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "headerText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerText = _loc1_;
         BindingManager.executeBindings(this,"headerText",this.headerText);
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.dynaBmpSourceName = "head_line_medium";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingLeft = 20;
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._QuestToolTipSkin_BriskImageDynaLib5_i(),this._QuestToolTipSkin_LocaLabel2_i(),this._QuestToolTipSkin_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "task50014";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "gfxIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.gfxIcon = _loc1_;
         BindingManager.executeBindings(this,"gfxIcon",this.gfxIcon);
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "questTaskNormal";
         _loc1_.id = "taskText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.taskText = _loc1_;
         BindingManager.executeBindings(this,"taskText",this.taskText);
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_gray";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "checkmark";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkmark = _loc1_;
         BindingManager.executeBindings(this,"checkmark",this.checkmark);
         return _loc1_;
      }
      
      private function _QuestToolTipSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.top = 0;
         _loc1_.left = 16;
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___QuestToolTipSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get checkmark() : BriskImageDynaLib
      {
         return this._399321045checkmark;
      }
      
      public function set checkmark(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._399321045checkmark;
         if(_loc2_ !== param1)
         {
            this._399321045checkmark = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkmark",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gfxIcon() : BriskImageDynaLib
      {
         return this._43132014gfxIcon;
      }
      
      public function set gfxIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._43132014gfxIcon;
         if(_loc2_ !== param1)
         {
            this._43132014gfxIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gfxIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerText() : LocaLabel
      {
         return this._1977519450headerText;
      }
      
      public function set headerText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1977519450headerText;
         if(_loc2_ !== param1)
         {
            this._1977519450headerText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get taskText() : LocaLabel
      {
         return this._410147758taskText;
      }
      
      public function set taskText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._410147758taskText;
         if(_loc2_ !== param1)
         {
            this._410147758taskText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : QuestToolTipComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:QuestToolTipComponent) : void
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

