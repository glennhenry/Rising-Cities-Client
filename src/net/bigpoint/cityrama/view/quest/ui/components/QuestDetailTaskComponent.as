package net.bigpoint.cityrama.view.quest.ui.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestTaskVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LinkedText;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   import spark.primitives.Rect;
   
   public class QuestDetailTaskComponent extends Group implements IStateClient2
   {
      
      public static const EVENT_SKIP_TASK:String = "EVENT_SKIP_CLICKED";
      
      public static const EVENT_GET_RC:String = "EVENT_GET_RC";
      
      public static const EVENT_DEPOSIT:String = "EVENT_DEPOSIT";
      
      private var _1381421030_QuestDetailTaskComponent_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _1381374734_QuestDetailTaskComponent_GlowFilter2:GlowFilter;
      
      private var _976409514_QuestDetailTaskComponent_GradientEntry1:GradientEntry;
      
      private var _976409515_QuestDetailTaskComponent_GradientEntry2:GradientEntry;
      
      private var _1920013862_QuestDetailTaskComponent_SolidColorStroke1:SolidColorStroke;
      
      private var _371311760depositButton:MultistateButton;
      
      private var _1347528408depositProgressBar:SlimProgressBarComponent;
      
      private var _2110448212depositProgressGroup:HGroup;
      
      private var _2114546377depositProgressLabel:LocaLabel;
      
      private var _538174524rcPriceLabel:LocaLabel;
      
      private var _319513199skipButton:DynamicPlusButton;
      
      private var _410477666taskIcon:BriskImageDynaLib;
      
      private var _162792559taskLabel:LinkedText;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dirty:Boolean;
      
      private var _data:QuestTaskVo;
      
      private var _currentState:String;
      
      public function QuestDetailTaskComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentHeight = 100;
         this.minHeight = 1;
         this.mxmlContent = [this._QuestDetailTaskComponent_HGroup1_c(),this._QuestDetailTaskComponent_HGroup2_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GradientEntry1",
               "name":"color",
               "value":8639213
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GradientEntry2",
               "name":"color",
               "value":5747938
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GlowFilter2",
               "name":"color",
               "value":8648959
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_SolidColorStroke1",
               "name":"color",
               "value":1813193
            }),new SetProperty().initializeFromObject({
               "target":"taskLabel",
               "name":"styleName",
               "value":"taskActive"
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressLabel",
               "name":"styleName",
               "value":"taskLabelActiveNew"
            })]
         }),new State({
            "name":"locked",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GradientEntry1",
               "name":"color",
               "value":15527148
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GradientEntry2",
               "name":"color",
               "value":14013905
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GlowFilter2",
               "name":"color",
               "value":15790319
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_SolidColorStroke1",
               "name":"color",
               "value":13750737
            }),new SetProperty().initializeFromObject({
               "target":"taskIcon",
               "name":"alpha",
               "value":0.4
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_BriskImageDynaLib2",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"taskLabel",
               "name":"styleName",
               "value":"taskLocked"
            }),new SetProperty().initializeFromObject({
               "target":"taskLabel",
               "name":"alpha",
               "value":0.4
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressBar",
               "name":"progress",
               "value":0
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressBar",
               "name":"alpha",
               "value":0.4
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressBar",
               "name":"enabled",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressLabel",
               "name":"styleName",
               "value":"taskLabelActiveNew"
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressLabel",
               "name":"alpha",
               "value":0.4
            }),new SetProperty().initializeFromObject({
               "target":"depositButton",
               "name":"enabled",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"depositButton",
               "name":"alpha",
               "value":0.3
            }),new SetProperty().initializeFromObject({
               "target":"skipButton",
               "name":"enabled",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"skipButton",
               "name":"alpha",
               "value":0.3
            })]
         }),new State({
            "name":"done",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GradientEntry1",
               "name":"color",
               "value":11197005
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GradientEntry2",
               "name":"color",
               "value":7520562
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GlowFilter2",
               "name":"color",
               "value":14090129
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_SolidColorStroke1",
               "name":"color",
               "value":8044035
            }),new SetProperty().initializeFromObject({
               "target":"taskLabel",
               "name":"styleName",
               "value":"taskDone"
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressBar",
               "name":"progress",
               "value":1
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressLabel",
               "name":"styleName",
               "value":"questTaskDone"
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressLabel",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"rcPriceLabel",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"depositButton",
               "name":"enabled",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"depositButton",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"skipButton",
               "name":"enabled",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"skipButton",
               "name":"visible",
               "value":false
            })]
         }),new State({
            "name":"donePreview",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GradientEntry1",
               "name":"color",
               "value":11197005
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GradientEntry2",
               "name":"color",
               "value":7520562
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_GlowFilter2",
               "name":"color",
               "value":14090129
            }),new SetProperty().initializeFromObject({
               "target":"_QuestDetailTaskComponent_SolidColorStroke1",
               "name":"color",
               "value":8044035
            }),new SetProperty().initializeFromObject({
               "target":"taskIcon",
               "name":"dynaBmpSourceName",
               "value":"task_checkmark_grey"
            }),new SetProperty().initializeFromObject({
               "target":"taskIcon",
               "name":"dynaLibName",
               "value":"gui_popups_questPopup"
            }),new SetProperty().initializeFromObject({
               "target":"taskLabel",
               "name":"styleName",
               "value":"taskDone"
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressBar",
               "name":"progress",
               "value":1
            }),new SetProperty().initializeFromObject({
               "target":"depositProgressLabel",
               "name":"styleName",
               "value":"questTaskDone"
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._dirty)
         {
            this._dirty = false;
            this.taskIcon.briskDynaVo = this._data.getTaskIconVo();
            this.taskLabel.linksEnabled = true;
            this.taskLabel.text = this._data.taskText;
            this.taskLabel.linkParameter = this._data.linkParameter;
            this.skipButton.visible = this._data.isSkippable && !this._data.isCompleted;
            this.depositProgressGroup.visible = this.depositProgressGroup.includeInLayout = this.depositButton.visible = this._data.isDepositTask && !this._data.isCompleted;
            if(this._data.isDepositTask)
            {
               this.depositProgressBar.progress = this._data.depositedItemAmount / this._data.neededItemDepositAmount;
               this.depositProgressBar.toolTip = this._data.depositBarTooltip;
               this.depositButton.label = this._data.depositButtonLabel;
               this.depositProgressLabel.text = this._data.depositedItemAmount + " / " + this._data.neededItemDepositAmount;
               this.depositButton.enabled = this._data.currentDepositStock > 0 && !this._data.isCompleted;
               this.depositButton.toolTip = this._data.depositButtonTooltip;
            }
            if(this._data.isSkippable)
            {
               this.skipButton.showPlus = this._data.currentRealCurrency < this._data.instantFinishCosts;
               this.skipButton.priceToConfirm = this._data.instantFinishCosts;
               this.rcPriceLabel.text = this._data.skipText;
            }
            if(this._data.isCompleted)
            {
               this.taskLabel.linksEnabled = false;
            }
            if(this._data.isLocked)
            {
               TweenMax.to(this.taskIcon,0,{"colorMatrixFilter":{
                  "amount":1,
                  "saturation":0
               }});
               TweenMax.to(this.skipButton,0,{"colorMatrixFilter":{
                  "amount":1,
                  "saturation":0
               }});
               TweenMax.to(this.depositButton,0,{"colorMatrixFilter":{
                  "amount":1,
                  "saturation":0
               }});
               TweenMax.to(this.depositProgressBar,0,{"colorMatrixFilter":{
                  "amount":1,
                  "saturation":0
               }});
               this.taskLabel.linksEnabled = false;
            }
            else
            {
               this.taskIcon.filters = [];
               this.skipButton.filters = [];
               this.depositButton.filters = [];
               this.depositProgressBar.filters = [];
            }
         }
      }
      
      private function handleDepositClick() : void
      {
         this.depositButton.enabled = false;
         dispatchEvent(new Event(EVENT_DEPOSIT,true,true));
      }
      
      private function skipButtonClick() : void
      {
         if(this.skipButton.showPlus)
         {
            dispatchEvent(new Event(EVENT_GET_RC,true,true));
         }
         else
         {
            this.skipButton.enabled = false;
            dispatchEvent(new Event(EVENT_SKIP_TASK,true,true));
         }
      }
      
      private function skipButtonRollOver() : void
      {
         this.depositButton.visible = false;
         this.rcPriceLabel.visible = true;
         this.setPreview();
      }
      
      private function setPreview() : void
      {
         this.currentState = "donePreview";
         this.taskLabel.text = this._data.finishedTaskText;
         if(this._data.isDepositTask)
         {
            this.depositProgressLabel.text = this._data.neededItemDepositAmount + " / " + this._data.neededItemDepositAmount;
         }
      }
      
      private function skipButtonRollOut() : void
      {
         this.depositButton.visible = true;
         this.rcPriceLabel.visible = false;
         this.setToPreviousState();
      }
      
      private function setToPreviousState() : void
      {
         this.setState();
         this._dirty = true;
         invalidateProperties();
      }
      
      public function set data(param1:QuestTaskVo) : void
      {
         if(param1 != null)
         {
            this._data = param1;
            this._dirty = true;
            this.setState();
            invalidateProperties();
         }
      }
      
      public function get data() : QuestTaskVo
      {
         return this._data;
      }
      
      private function setState() : void
      {
         if(this._data.isCompleted)
         {
            this.currentState = "done";
         }
         else if(this._data.isLocked)
         {
            this.currentState = "locked";
         }
         else
         {
            this.currentState = "normal";
         }
      }
      
      private function _QuestDetailTaskComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.minHeight = 1;
         _loc1_.maxHeight = 268;
         _loc1_.minWidth = 1;
         _loc1_.gap = 0;
         _loc1_.filters = [this._QuestDetailTaskComponent_GlowFilter1_c(),this._QuestDetailTaskComponent_DropShadowFilter1_c()];
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_Group2_c(),this._QuestDetailTaskComponent_Rect3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_GlowFilter1_c() : GlowFilter
      {
         var _loc1_:GlowFilter = new GlowFilter();
         _loc1_.inner = false;
         _loc1_.strength = 1;
         _loc1_.blurX = 1;
         _loc1_.blurY = 1;
         _loc1_.color = 16777215;
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.angle = 90;
         _loc1_.distance = 1;
         _loc1_.strength = 4;
         _loc1_.alpha = 0.4;
         _loc1_.color = 0;
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 60;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_Rect1_c(),this._QuestDetailTaskComponent_Rect2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 3;
         _loc1_.right = 1;
         _loc1_.top = 1;
         _loc1_.bottom = 1;
         _loc1_.bottomLeftRadiusX = 10;
         _loc1_.bottomLeftRadiusY = 10;
         _loc1_.topLeftRadiusX = 10;
         _loc1_.topLeftRadiusY = 10;
         _loc1_.percentHeight = 100;
         _loc1_.width = 60;
         _loc1_.minHeight = 1;
         _loc1_.maxHeight = 268;
         _loc1_.fill = this._QuestDetailTaskComponent_LinearGradient1_c();
         _loc1_.filters = [this._QuestDetailTaskComponent_GlowFilter2_i()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._QuestDetailTaskComponent_GradientEntry1_i(),this._QuestDetailTaskComponent_GradientEntry2_i()];
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         this._QuestDetailTaskComponent_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_QuestDetailTaskComponent_GradientEntry1",this._QuestDetailTaskComponent_GradientEntry1);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         this._QuestDetailTaskComponent_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_QuestDetailTaskComponent_GradientEntry2",this._QuestDetailTaskComponent_GradientEntry2);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_GlowFilter2_i() : GlowFilter
      {
         var _loc1_:GlowFilter = new GlowFilter();
         _loc1_.inner = true;
         _loc1_.strength = 1;
         _loc1_.quality = 3;
         _loc1_.blurX = 6;
         _loc1_.blurY = 6;
         this._QuestDetailTaskComponent_GlowFilter2 = _loc1_;
         BindingManager.executeBindings(this,"_QuestDetailTaskComponent_GlowFilter2",this._QuestDetailTaskComponent_GlowFilter2);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 2;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.bottomLeftRadiusX = 10;
         _loc1_.bottomLeftRadiusY = 10;
         _loc1_.topLeftRadiusX = 10;
         _loc1_.topLeftRadiusY = 10;
         _loc1_.percentHeight = 100;
         _loc1_.width = 60;
         _loc1_.minHeight = 1;
         _loc1_.maxHeight = 268;
         _loc1_.stroke = this._QuestDetailTaskComponent_SolidColorStroke1_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_SolidColorStroke1_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.weight = 1;
         this._QuestDetailTaskComponent_SolidColorStroke1 = _loc1_;
         BindingManager.executeBindings(this,"_QuestDetailTaskComponent_SolidColorStroke1",this._QuestDetailTaskComponent_SolidColorStroke1);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 3;
         _loc1_.right = 1;
         _loc1_.top = 1;
         _loc1_.bottom = 1;
         _loc1_.bottomRightRadiusX = 10;
         _loc1_.bottomRightRadiusY = 10;
         _loc1_.topRightRadiusX = 10;
         _loc1_.topRightRadiusY = 10;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.minHeight = 1;
         _loc1_.maxHeight = 268;
         _loc1_.fill = this._QuestDetailTaskComponent_LinearGradient2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_LinearGradient2_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._QuestDetailTaskComponent_GradientEntry3_c(),this._QuestDetailTaskComponent_GradientEntry4_c()];
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_GradientEntry3_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_GradientEntry4_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 15855852;
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_Group3_c(),this._QuestDetailTaskComponent_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 60;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_BriskImageDynaLib1_i(),this._QuestDetailTaskComponent_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "taskIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.taskIcon = _loc1_;
         BindingManager.executeBindings(this,"taskIcon",this.taskIcon);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = -12;
         _loc1_.horizontalCenter = -10;
         _loc1_.visible = false;
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "icon_locked";
         _loc1_.id = "_QuestDetailTaskComponent_BriskImageDynaLib2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QuestDetailTaskComponent_BriskImageDynaLib2 = _loc1_;
         BindingManager.executeBindings(this,"_QuestDetailTaskComponent_BriskImageDynaLib2",this._QuestDetailTaskComponent_BriskImageDynaLib2);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "bottom";
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_VGroup2_c(),this._QuestDetailTaskComponent_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 280;
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 0;
         _loc1_.percentHeight = 100;
         _loc1_.minHeight = 40;
         _loc1_.maxWidth = 280;
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_LinkedText1_i(),this._QuestDetailTaskComponent_HGroup4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_LinkedText1_i() : LinkedText
      {
         var _loc1_:LinkedText = new LinkedText();
         _loc1_.verticalCenter = 0;
         _loc1_.width = 278;
         _loc1_.maxHeight = 40;
         _loc1_.setStyle("paddingLeft",2);
         _loc1_.id = "taskLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.taskLabel = _loc1_;
         BindingManager.executeBindings(this,"taskLabel",this.taskLabel);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 2;
         _loc1_.verticalAlign = "middle";
         _loc1_.width = 280;
         _loc1_.maxWidth = 280;
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_Group4_c(),this._QuestDetailTaskComponent_SlimProgressBarComponent1_i(),this._QuestDetailTaskComponent_Group5_c(),this._QuestDetailTaskComponent_LocaLabel1_i()];
         _loc1_.id = "depositProgressGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.depositProgressGroup = _loc1_;
         BindingManager.executeBindings(this,"depositProgressGroup",this.depositProgressGroup);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         _loc1_.tint = 10739019;
         _loc1_.width = 170;
         _loc1_.showTrophy = true;
         _loc1_.id = "depositProgressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.depositProgressBar = _loc1_;
         BindingManager.executeBindings(this,"depositProgressBar",this.depositProgressBar);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.percentWidth = 100;
         _loc1_.id = "depositProgressLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.depositProgressLabel = _loc1_;
         BindingManager.executeBindings(this,"depositProgressLabel",this.depositProgressLabel);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_Group6_c(),this._QuestDetailTaskComponent_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 125;
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_HGroup6_c(),this._QuestDetailTaskComponent_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._QuestDetailTaskComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.visible = false;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "rcTextnew";
         _loc1_.maxWidth = 116;
         _loc1_.maxHeight = 36;
         _loc1_.minWidth = 1;
         _loc1_.minHeight = 1;
         _loc1_.id = "rcPriceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rcPriceLabel = _loc1_;
         BindingManager.executeBindings(this,"rcPriceLabel",this.rcPriceLabel);
         return _loc1_;
      }
      
      private function _QuestDetailTaskComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.addEventListener("click",this.__depositButton_click);
         _loc1_.id = "depositButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.depositButton = _loc1_;
         BindingManager.executeBindings(this,"depositButton",this.depositButton);
         return _loc1_;
      }
      
      public function __depositButton_click(param1:MouseEvent) : void
      {
         this.handleDepositClick();
      }
      
      private function _QuestDetailTaskComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.height = 40;
         _loc1_.useConfirmation = true;
         _loc1_.iconImageName = "dd_button_icon";
         _loc1_.iconLibName = "gui_resources_icons";
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("rollOver",this.__skipButton_rollOver);
         _loc1_.addEventListener("rollOut",this.__skipButton_rollOut);
         _loc1_.addEventListener("click",this.__skipButton_click);
         _loc1_.id = "skipButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.skipButton = _loc1_;
         BindingManager.executeBindings(this,"skipButton",this.skipButton);
         return _loc1_;
      }
      
      public function __skipButton_rollOver(param1:MouseEvent) : void
      {
         this.skipButtonRollOver();
      }
      
      public function __skipButton_rollOut(param1:MouseEvent) : void
      {
         this.skipButtonRollOut();
      }
      
      public function __skipButton_click(param1:MouseEvent) : void
      {
         this.skipButtonClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuestDetailTaskComponent_BriskImageDynaLib2() : BriskImageDynaLib
      {
         return this._1381421030_QuestDetailTaskComponent_BriskImageDynaLib2;
      }
      
      public function set _QuestDetailTaskComponent_BriskImageDynaLib2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1381421030_QuestDetailTaskComponent_BriskImageDynaLib2;
         if(_loc2_ !== param1)
         {
            this._1381421030_QuestDetailTaskComponent_BriskImageDynaLib2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuestDetailTaskComponent_BriskImageDynaLib2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuestDetailTaskComponent_GlowFilter2() : GlowFilter
      {
         return this._1381374734_QuestDetailTaskComponent_GlowFilter2;
      }
      
      public function set _QuestDetailTaskComponent_GlowFilter2(param1:GlowFilter) : void
      {
         var _loc2_:Object = this._1381374734_QuestDetailTaskComponent_GlowFilter2;
         if(_loc2_ !== param1)
         {
            this._1381374734_QuestDetailTaskComponent_GlowFilter2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuestDetailTaskComponent_GlowFilter2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuestDetailTaskComponent_GradientEntry1() : GradientEntry
      {
         return this._976409514_QuestDetailTaskComponent_GradientEntry1;
      }
      
      public function set _QuestDetailTaskComponent_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._976409514_QuestDetailTaskComponent_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._976409514_QuestDetailTaskComponent_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuestDetailTaskComponent_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuestDetailTaskComponent_GradientEntry2() : GradientEntry
      {
         return this._976409515_QuestDetailTaskComponent_GradientEntry2;
      }
      
      public function set _QuestDetailTaskComponent_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._976409515_QuestDetailTaskComponent_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._976409515_QuestDetailTaskComponent_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuestDetailTaskComponent_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuestDetailTaskComponent_SolidColorStroke1() : SolidColorStroke
      {
         return this._1920013862_QuestDetailTaskComponent_SolidColorStroke1;
      }
      
      public function set _QuestDetailTaskComponent_SolidColorStroke1(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._1920013862_QuestDetailTaskComponent_SolidColorStroke1;
         if(_loc2_ !== param1)
         {
            this._1920013862_QuestDetailTaskComponent_SolidColorStroke1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuestDetailTaskComponent_SolidColorStroke1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get depositButton() : MultistateButton
      {
         return this._371311760depositButton;
      }
      
      public function set depositButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._371311760depositButton;
         if(_loc2_ !== param1)
         {
            this._371311760depositButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get depositProgressBar() : SlimProgressBarComponent
      {
         return this._1347528408depositProgressBar;
      }
      
      public function set depositProgressBar(param1:SlimProgressBarComponent) : void
      {
         var _loc2_:Object = this._1347528408depositProgressBar;
         if(_loc2_ !== param1)
         {
            this._1347528408depositProgressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositProgressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get depositProgressGroup() : HGroup
      {
         return this._2110448212depositProgressGroup;
      }
      
      public function set depositProgressGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._2110448212depositProgressGroup;
         if(_loc2_ !== param1)
         {
            this._2110448212depositProgressGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositProgressGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get depositProgressLabel() : LocaLabel
      {
         return this._2114546377depositProgressLabel;
      }
      
      public function set depositProgressLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2114546377depositProgressLabel;
         if(_loc2_ !== param1)
         {
            this._2114546377depositProgressLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositProgressLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rcPriceLabel() : LocaLabel
      {
         return this._538174524rcPriceLabel;
      }
      
      public function set rcPriceLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._538174524rcPriceLabel;
         if(_loc2_ !== param1)
         {
            this._538174524rcPriceLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcPriceLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skipButton() : DynamicPlusButton
      {
         return this._319513199skipButton;
      }
      
      public function set skipButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._319513199skipButton;
         if(_loc2_ !== param1)
         {
            this._319513199skipButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get taskIcon() : BriskImageDynaLib
      {
         return this._410477666taskIcon;
      }
      
      public function set taskIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._410477666taskIcon;
         if(_loc2_ !== param1)
         {
            this._410477666taskIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get taskLabel() : LinkedText
      {
         return this._162792559taskLabel;
      }
      
      public function set taskLabel(param1:LinkedText) : void
      {
         var _loc2_:Object = this._162792559taskLabel;
         if(_loc2_ !== param1)
         {
            this._162792559taskLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskLabel",_loc2_,param1));
            }
         }
      }
   }
}

