package net.bigpoint.cityrama.view.constructionLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerMediator;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerStepVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   import spark.primitives.Rect;
   
   public class ConstructionStepDetailComponent extends Group implements IStateClient2
   {
      
      private var _912060846_ConstructionStepDetailComponent_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _912060848_ConstructionStepDetailComponent_BriskImageDynaLib4:BriskImageDynaLib;
      
      private var _976486878_ConstructionStepDetailComponent_GlowFilter2:GlowFilter;
      
      private var _158433474_ConstructionStepDetailComponent_GradientEntry1:GradientEntry;
      
      private var _158433473_ConstructionStepDetailComponent_GradientEntry2:GradientEntry;
      
      private var _677651186_ConstructionStepDetailComponent_HGroup4:HGroup;
      
      private var _677651185_ConstructionStepDetailComponent_HGroup5:HGroup;
      
      private var _499854830_ConstructionStepDetailComponent_SolidColorStroke1:SolidColorStroke;
      
      private var _122527168durationLabel:LocaLabel;
      
      private var _538174524rcPriceLabel:LocaLabel;
      
      private var _384713305resourceIcon:BriskImageDynaLib;
      
      private var _961487750resourceLabel:LocaLabel;
      
      private var _1101940077runningTimerBar:TimerBarComponent;
      
      private var _399615367runningTimerBarLabel:LocaLabel;
      
      private var _1943111220startButton:MultistateButton;
      
      private var _428266566stepInstantFinishButton:MultistateButton;
      
      private var _2083403412stepInstantFinishLabel:LocaLabel;
      
      private var _1326901128stepLabel:LocaLabel;
      
      private var _410477666taskIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConstructionLayerStepVo;
      
      private var _dataDirty:Boolean;
      
      private var _hasInterval:Boolean;
      
      private var _intervalId:uint;
      
      private var _toolTipDirty:Boolean;
      
      private var _toolTipVisible:Boolean;
      
      private var _toolTipEvent:ToolTipEvent;
      
      public function ConstructionStepDetailComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._ConstructionStepDetailComponent_HGroup1_c(),this._ConstructionStepDetailComponent_HGroup2_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___ConstructionStepDetailComponent_Group1_creationComplete);
         this.addEventListener("removedFromStage",this.___ConstructionStepDetailComponent_Group1_removedFromStage);
         states = [new State({
            "name":"normal",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GradientEntry1",
               "name":"color",
               "value":8639213
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GradientEntry2",
               "name":"color",
               "value":5747938
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GlowFilter2",
               "name":"color",
               "value":8648959
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_SolidColorStroke1",
               "name":"color",
               "value":1813193
            }),new SetProperty().initializeFromObject({
               "target":"stepLabel",
               "name":"styleName",
               "value":"blueElevenLeft"
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup4",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup4",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup5",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup5",
               "name":"includeInLayout",
               "value":false
            })]
         }),new State({
            "name":"locked",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GradientEntry1",
               "name":"color",
               "value":15527148
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GradientEntry2",
               "name":"color",
               "value":14013905
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GlowFilter2",
               "name":"color",
               "value":15790319
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_SolidColorStroke1",
               "name":"color",
               "value":13750737
            }),new SetProperty().initializeFromObject({
               "target":"taskIcon",
               "name":"alpha",
               "value":0.4
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_BriskImageDynaLib2",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"stepLabel",
               "name":"styleName",
               "value":"taskLabelActiveNew"
            }),new SetProperty().initializeFromObject({
               "target":"stepLabel",
               "name":"alpha",
               "value":0.4
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup4",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup4",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"resourceIcon",
               "name":"alpha",
               "value":0.4
            }),new SetProperty().initializeFromObject({
               "target":"resourceLabel",
               "name":"styleName",
               "value":"taskLabelActiveNew"
            }),new SetProperty().initializeFromObject({
               "target":"resourceLabel",
               "name":"alpha",
               "value":0.4
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_BriskImageDynaLib4",
               "name":"alpha",
               "value":0.4
            }),new SetProperty().initializeFromObject({
               "target":"durationLabel",
               "name":"alpha",
               "value":0.4
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup5",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup5",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"startButton",
               "name":"enabled",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"startButton",
               "name":"alpha",
               "value":0.2
            }),new SetProperty().initializeFromObject({
               "target":"stepInstantFinishButton",
               "name":"enabled",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"stepInstantFinishButton",
               "name":"alpha",
               "value":0.2
            })]
         }),new State({
            "name":"done",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GradientEntry1",
               "name":"color",
               "value":11197005
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GradientEntry2",
               "name":"color",
               "value":7520562
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GlowFilter2",
               "name":"color",
               "value":14090129
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_SolidColorStroke1",
               "name":"color",
               "value":8044035
            }),new SetProperty().initializeFromObject({
               "target":"stepLabel",
               "name":"styleName",
               "value":"questTaskDone"
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup4",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup4",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"resourceLabel",
               "name":"styleName",
               "value":"questTaskDone"
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_BriskImageDynaLib4",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_BriskImageDynaLib4",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"durationLabel",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"durationLabel",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup5",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup5",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"rcPriceLabel",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"startButton",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"startButton",
               "name":"enabled",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"stepInstantFinishButton",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"stepInstantFinishButton",
               "name":"enabled",
               "value":false
            })]
         }),new State({
            "name":"donePreview",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GradientEntry1",
               "name":"color",
               "value":11197005
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GradientEntry2",
               "name":"color",
               "value":7520562
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GlowFilter2",
               "name":"color",
               "value":14090129
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_SolidColorStroke1",
               "name":"color",
               "value":8044035
            }),new SetProperty().initializeFromObject({
               "target":"stepLabel",
               "name":"styleName",
               "value":"questTaskDone"
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup4",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup4",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"resourceLabel",
               "name":"styleName",
               "value":"questTaskDone"
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_BriskImageDynaLib4",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_BriskImageDynaLib4",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"durationLabel",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"durationLabel",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup5",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup5",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"startButton",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"startButton",
               "name":"enabled",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"startButton",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"stepInstantFinishLabel",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"stepInstantFinishLabel",
               "name":"includeInLayout",
               "value":true
            })]
         }),new State({
            "name":"running",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GradientEntry1",
               "name":"color",
               "value":8639213
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GradientEntry2",
               "name":"color",
               "value":5747938
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_GlowFilter2",
               "name":"color",
               "value":8648959
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_SolidColorStroke1",
               "name":"color",
               "value":1813193
            }),new SetProperty().initializeFromObject({
               "target":"stepLabel",
               "name":"styleName",
               "value":"blueElevenLeft"
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup4",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup4",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup5",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_ConstructionStepDetailComponent_HGroup5",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"startButton",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"startButton",
               "name":"enabled",
               "value":false
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
      
      public function set data(param1:ConstructionLayerStepVo) : void
      {
         this._data = param1;
         this._dataDirty = true;
         this.setState();
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.setIcon();
            this.setResourceIcon();
            this.setStepLabel();
            this.setStepDetailText();
            this.setTimer();
            this.setDurationText();
            this.startButton.label = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.button");
            this.setStepInstantFinishLabel();
            this.setStartButton();
         }
      }
      
      private function setState() : void
      {
         if(this._data)
         {
            switch(this._data.state)
            {
               case ConstructionLayerStepVo.STATE_AVAILABLE:
                  currentState = "normal";
                  break;
               case ConstructionLayerStepVo.STATE_RUNNING:
                  currentState = "running";
                  if(!this._hasInterval)
                  {
                     this._intervalId = setInterval(this.updateCostInterval,1000);
                     this._hasInterval = true;
                  }
                  break;
               case ConstructionLayerStepVo.STATE_DONE:
                  currentState = "done";
                  break;
               case ConstructionLayerStepVo.STATE_UNAVAILABLE:
                  currentState = "locked";
            }
            if(this._data.state != ConstructionLayerStepVo.STATE_RUNNING)
            {
               if(this._hasInterval)
               {
                  clearInterval(this._intervalId);
                  this._hasInterval = false;
               }
            }
         }
      }
      
      private function setIcon() : void
      {
         if(this._data)
         {
            this.taskIcon.dynaBmpSourceName = this._data.icon;
            this.taskIcon.dynaLibName = this._data.iconLibName;
         }
         else
         {
            this.taskIcon.dynaBmpSourceName = "";
            this.taskIcon.dynaLibName = "";
         }
      }
      
      private function setResourceIcon() : void
      {
         if(this._data)
         {
            this.resourceIcon.dynaBmpSourceName = this._data.resourceIcon;
            this.resourceIcon.dynaLibName = this._data.resourceIconLibName;
         }
         else
         {
            this.resourceIcon.dynaBmpSourceName = "";
            this.resourceIcon.dynaLibName = "";
         }
      }
      
      private function stepInstantFinishButton_rollOverHandler(param1:MouseEvent) : void
      {
         currentState = "donePreview";
         this.taskIcon.dynaBmpSourceName = "task_checkmark_grey";
         this.taskIcon.dynaLibName = "gui_popups_questPopup";
         this.setStepDetailText(true);
      }
      
      private function stepInstantFinishButton_rollOutHandler(param1:MouseEvent) : void
      {
         this.setState();
         this.setIcon();
         this.setStepDetailText();
      }
      
      private function setStepLabel() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this._data)
         {
            _loc1_ = this._data.stepIndex;
            _loc2_ = this._data.numIndices;
            if(this._data.isUpgrade)
            {
               if(_loc1_ == 0)
               {
                  this.stepLabel.text = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.step.label.unlock.upgrade.capital");
                  return;
               }
            }
            this.stepLabel.text = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.step.label." + (this._data.isUpgrade ? "upgrade" : "construction") + ".capital",[_loc1_,_loc2_]);
         }
      }
      
      private function setStepDetailText(param1:Boolean = false) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 1;
         if(this._data)
         {
            _loc3_ = this._data.progressTarget;
            _loc2_ = Math.min(this._data.currentProgress,_loc3_);
         }
         if(param1)
         {
            _loc2_ = _loc3_;
         }
         if(_loc2_ == _loc3_ && (this._data && (this._data.state == ConstructionLayerStepVo.STATE_AVAILABLE || this._data.state == ConstructionLayerStepVo.STATE_DONE)))
         {
            this.resourceLabel.styleName = "questTaskDone";
         }
         else
         {
            this.resourceLabel.styleName = "taskLabelActiveNew";
         }
         this.resourceLabel.text = _loc2_ + " / " + _loc3_;
      }
      
      private function setTimer() : void
      {
         if(this._data.state == ConstructionLayerStepVo.STATE_RUNNING)
         {
            this.runningTimerBar.data = this._data.timerBarData;
            this.runningTimerBarLabel.text = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.step.running." + (this._data.isUpgrade ? "upgrade" : "construction"));
         }
      }
      
      private function setDurationText() : void
      {
         if(this._data)
         {
            this.durationLabel.text = LocaUtils.getDuration(this._data.duration / 1000);
         }
      }
      
      private function setStepInstantFinishLabel() : void
      {
         var _loc1_:Number = NaN;
         if(this._data)
         {
            _loc1_ = this._data.instantFinishCost;
            if(this._data.displayInstantButton && _loc1_ != 0)
            {
               this.stepInstantFinishLabel.text = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.step.instantFinish." + (this._data.isUpgrade ? "upgrade" : "construction"),[_loc1_]);
               this.stepInstantFinishButton.toolTip = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.button.tooltip.instantFinishStep." + (this._data.isUpgrade ? "upgrade" : "construction"),[_loc1_]);
               this.stepInstantFinishButton.visible = true;
               this.stepInstantFinishButton.includeInLayout = true;
               this.stepInstantFinishButton.priceToConfirm = _loc1_;
               if(this._data.state != ConstructionLayerStepVo.STATE_UNAVAILABLE)
               {
                  this.stepInstantFinishButton.showPlus = _loc1_ > this._data.rcStock;
                  this.stepInstantFinishButton.showSparkle = !this.stepInstantFinishButton.showPlus;
               }
               else
               {
                  this.stepInstantFinishButton.showPlus = false;
                  this.stepInstantFinishButton.showSparkle = true;
               }
            }
            else
            {
               this.stepInstantFinishButton.visible = false;
               this.stepInstantFinishButton.includeInLayout = false;
            }
         }
      }
      
      private function setStartButton() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 1;
         if(Boolean(this._data) && this._data.state == ConstructionLayerStepVo.STATE_AVAILABLE)
         {
            _loc2_ = this._data.progressTarget;
            _loc1_ = Math.min(this._data.currentProgress,_loc2_);
            this.startButton.enabled = _loc1_ >= _loc2_;
         }
      }
      
      private function startButton_clickHandler(param1:MouseEvent) : void
      {
         this.startButton.enabled = false;
         dispatchEvent(new Event(ConstructionLayerMediator.START_STEP_NORMAL,true,true));
      }
      
      private function stepInstantFinishButton_clickHandler(param1:MouseEvent) : void
      {
         this.stepInstantFinishButton.enabled = false;
         this.startButton.enabled = false;
         dispatchEvent(new Event(ConstructionLayerMediator.INSTANT_FINISH_STEP,true,true));
      }
      
      private function updateCostInterval() : void
      {
         var _loc1_:Number = this._data.instantFinishCost;
         this._data.currentTime += 1000;
         this.setStepInstantFinishLabel();
         if(_loc1_ != this._data.instantFinishCost)
         {
            this._toolTipDirty = true;
            if(this._toolTipVisible)
            {
               this.toolTipShowHandler(this._toolTipEvent);
            }
         }
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         if(this._hasInterval)
         {
            clearInterval(this._intervalId);
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.stepInstantFinishButton.addEventListener(ToolTipEvent.TOOL_TIP_SHOW,this.toolTipShowHandler);
         this.stepInstantFinishButton.addEventListener(ToolTipEvent.TOOL_TIP_HIDE,this.toolTipHideHandler);
      }
      
      protected function toolTipHideHandler(param1:ToolTipEvent) : void
      {
         this._toolTipVisible = false;
      }
      
      private function toolTipShowHandler(param1:ToolTipEvent) : void
      {
         var _loc2_:Number = NaN;
         this._toolTipVisible = true;
         this._toolTipEvent = param1;
         if(this._toolTipDirty)
         {
            _loc2_ = this._data.instantFinishCost;
            param1.toolTip.text = this.stepInstantFinishButton.toolTip = LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.button.tooltip.instantFinishStep." + (this._data.isUpgrade ? "upgrade" : "construction"),[_loc2_]);
         }
      }
      
      private function _ConstructionStepDetailComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.minHeight = 1;
         _loc1_.maxHeight = 268;
         _loc1_.minWidth = 1;
         _loc1_.gap = 0;
         _loc1_.filters = [this._ConstructionStepDetailComponent_GlowFilter1_c(),this._ConstructionStepDetailComponent_DropShadowFilter1_c()];
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_Group2_c(),this._ConstructionStepDetailComponent_Rect3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_GlowFilter1_c() : GlowFilter
      {
         var _loc1_:GlowFilter = new GlowFilter();
         _loc1_.inner = false;
         _loc1_.strength = 1;
         _loc1_.blurX = 1;
         _loc1_.blurY = 1;
         _loc1_.color = 16777215;
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.angle = 90;
         _loc1_.distance = 1;
         _loc1_.strength = 4;
         _loc1_.alpha = 0.4;
         _loc1_.color = 0;
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 60;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_Rect1_c(),this._ConstructionStepDetailComponent_Rect2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Rect1_c() : Rect
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
         _loc1_.fill = this._ConstructionStepDetailComponent_LinearGradient1_c();
         _loc1_.filters = [this._ConstructionStepDetailComponent_GlowFilter2_i()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._ConstructionStepDetailComponent_GradientEntry1_i(),this._ConstructionStepDetailComponent_GradientEntry2_i()];
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         this._ConstructionStepDetailComponent_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_GradientEntry1",this._ConstructionStepDetailComponent_GradientEntry1);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         this._ConstructionStepDetailComponent_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_GradientEntry2",this._ConstructionStepDetailComponent_GradientEntry2);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_GlowFilter2_i() : GlowFilter
      {
         var _loc1_:GlowFilter = new GlowFilter();
         _loc1_.inner = true;
         _loc1_.strength = 1;
         _loc1_.quality = 3;
         _loc1_.blurX = 6;
         _loc1_.blurY = 6;
         this._ConstructionStepDetailComponent_GlowFilter2 = _loc1_;
         BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_GlowFilter2",this._ConstructionStepDetailComponent_GlowFilter2);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Rect2_c() : Rect
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
         _loc1_.stroke = this._ConstructionStepDetailComponent_SolidColorStroke1_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_SolidColorStroke1_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.weight = 1;
         this._ConstructionStepDetailComponent_SolidColorStroke1 = _loc1_;
         BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_SolidColorStroke1",this._ConstructionStepDetailComponent_SolidColorStroke1);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Rect3_c() : Rect
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
         _loc1_.fill = this._ConstructionStepDetailComponent_LinearGradient2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_LinearGradient2_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._ConstructionStepDetailComponent_GradientEntry3_c(),this._ConstructionStepDetailComponent_GradientEntry4_c()];
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_GradientEntry3_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_GradientEntry4_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 15855852;
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_Group3_c(),this._ConstructionStepDetailComponent_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 60;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_BriskImageDynaLib1_i(),this._ConstructionStepDetailComponent_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      
      private function _ConstructionStepDetailComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = -12;
         _loc1_.horizontalCenter = -10;
         _loc1_.visible = false;
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "icon_locked";
         _loc1_.id = "_ConstructionStepDetailComponent_BriskImageDynaLib2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConstructionStepDetailComponent_BriskImageDynaLib2 = _loc1_;
         BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_BriskImageDynaLib2",this._ConstructionStepDetailComponent_BriskImageDynaLib2);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "bottom";
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_VGroup2_c(),this._ConstructionStepDetailComponent_HGroup6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 280;
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 5;
         _loc1_.percentHeight = 100;
         _loc1_.minHeight = 40;
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_LocaLabel1_i(),this._ConstructionStepDetailComponent_HGroup4_i(),this._ConstructionStepDetailComponent_HGroup5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "stepLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepLabel = _loc1_;
         BindingManager.executeBindings(this,"stepLabel",this.stepLabel);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 2;
         _loc1_.verticalAlign = "middle";
         _loc1_.height = 28;
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_BriskImageDynaLib3_i(),this._ConstructionStepDetailComponent_LocaLabel2_i(),this._ConstructionStepDetailComponent_BriskImageDynaLib4_i(),this._ConstructionStepDetailComponent_LocaLabel3_i()];
         _loc1_.id = "_ConstructionStepDetailComponent_HGroup4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConstructionStepDetailComponent_HGroup4 = _loc1_;
         BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_HGroup4",this._ConstructionStepDetailComponent_HGroup4);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.id = "resourceIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.resourceIcon = _loc1_;
         BindingManager.executeBindings(this,"resourceIcon",this.resourceIcon);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.minWidth = 110;
         _loc1_.id = "resourceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.resourceLabel = _loc1_;
         BindingManager.executeBindings(this,"resourceLabel",this.resourceLabel);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
         _loc1_.id = "_ConstructionStepDetailComponent_BriskImageDynaLib4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConstructionStepDetailComponent_BriskImageDynaLib4 = _loc1_;
         BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_BriskImageDynaLib4",this._ConstructionStepDetailComponent_BriskImageDynaLib4);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "taskLabelActiveNew";
         _loc1_.id = "durationLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.durationLabel = _loc1_;
         BindingManager.executeBindings(this,"durationLabel",this.durationLabel);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_HGroup5_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 5;
         _loc1_.verticalAlign = "middle";
         _loc1_.height = 28;
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_TimerBarComponent1_i(),this._ConstructionStepDetailComponent_LocaLabel4_i()];
         _loc1_.id = "_ConstructionStepDetailComponent_HGroup5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConstructionStepDetailComponent_HGroup5 = _loc1_;
         BindingManager.executeBindings(this,"_ConstructionStepDetailComponent_HGroup5",this._ConstructionStepDetailComponent_HGroup5);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.width = 140;
         _loc1_.showBoostButton = false;
         _loc1_.id = "runningTimerBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.runningTimerBar = _loc1_;
         BindingManager.executeBindings(this,"runningTimerBar",this.runningTimerBar);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "taskLabelActiveNew";
         _loc1_.id = "runningTimerBarLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.runningTimerBarLabel = _loc1_;
         BindingManager.executeBindings(this,"runningTimerBarLabel",this.runningTimerBarLabel);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 170;
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_HGroup7_c(),this._ConstructionStepDetailComponent_HGroup8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_LocaLabel5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel5_i() : LocaLabel
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
      
      private function _ConstructionStepDetailComponent_HGroup8_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ConstructionStepDetailComponent_MultistateButton1_i(),this._ConstructionStepDetailComponent_LocaLabel6_i(),this._ConstructionStepDetailComponent_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 124;
         _loc1_.percentHeight = 100;
         _loc1_.addEventListener("click",this.__startButton_click);
         _loc1_.id = "startButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.startButton = _loc1_;
         BindingManager.executeBindings(this,"startButton",this.startButton);
         return _loc1_;
      }
      
      public function __startButton_click(param1:MouseEvent) : void
      {
         this.startButton_clickHandler(param1);
      }
      
      private function _ConstructionStepDetailComponent_LocaLabel6_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.width = 124;
         _loc1_.maxWidth = 124;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.styleName = "blueThirteenCenter";
         _loc1_.id = "stepInstantFinishLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepInstantFinishLabel = _loc1_;
         BindingManager.executeBindings(this,"stepInstantFinishLabel",this.stepInstantFinishLabel);
         return _loc1_;
      }
      
      private function _ConstructionStepDetailComponent_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 40;
         _loc1_.useConfirmation = true;
         _loc1_.imageNameLeft = "dd_button_icon";
         _loc1_.libNameLeft = "gui_resources_icons";
         _loc1_.showSparkle = true;
         _loc1_.addEventListener("rollOver",this.__stepInstantFinishButton_rollOver);
         _loc1_.addEventListener("rollOut",this.__stepInstantFinishButton_rollOut);
         _loc1_.addEventListener("click",this.__stepInstantFinishButton_click);
         _loc1_.id = "stepInstantFinishButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepInstantFinishButton = _loc1_;
         BindingManager.executeBindings(this,"stepInstantFinishButton",this.stepInstantFinishButton);
         return _loc1_;
      }
      
      public function __stepInstantFinishButton_rollOver(param1:MouseEvent) : void
      {
         this.stepInstantFinishButton_rollOverHandler(param1);
      }
      
      public function __stepInstantFinishButton_rollOut(param1:MouseEvent) : void
      {
         this.stepInstantFinishButton_rollOutHandler(param1);
      }
      
      public function __stepInstantFinishButton_click(param1:MouseEvent) : void
      {
         this.stepInstantFinishButton_clickHandler(param1);
      }
      
      public function ___ConstructionStepDetailComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      public function ___ConstructionStepDetailComponent_Group1_removedFromStage(param1:Event) : void
      {
         this.removedFromStageHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_BriskImageDynaLib2() : BriskImageDynaLib
      {
         return this._912060846_ConstructionStepDetailComponent_BriskImageDynaLib2;
      }
      
      public function set _ConstructionStepDetailComponent_BriskImageDynaLib2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._912060846_ConstructionStepDetailComponent_BriskImageDynaLib2;
         if(_loc2_ !== param1)
         {
            this._912060846_ConstructionStepDetailComponent_BriskImageDynaLib2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_BriskImageDynaLib2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_BriskImageDynaLib4() : BriskImageDynaLib
      {
         return this._912060848_ConstructionStepDetailComponent_BriskImageDynaLib4;
      }
      
      public function set _ConstructionStepDetailComponent_BriskImageDynaLib4(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._912060848_ConstructionStepDetailComponent_BriskImageDynaLib4;
         if(_loc2_ !== param1)
         {
            this._912060848_ConstructionStepDetailComponent_BriskImageDynaLib4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_BriskImageDynaLib4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_GlowFilter2() : GlowFilter
      {
         return this._976486878_ConstructionStepDetailComponent_GlowFilter2;
      }
      
      public function set _ConstructionStepDetailComponent_GlowFilter2(param1:GlowFilter) : void
      {
         var _loc2_:Object = this._976486878_ConstructionStepDetailComponent_GlowFilter2;
         if(_loc2_ !== param1)
         {
            this._976486878_ConstructionStepDetailComponent_GlowFilter2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_GlowFilter2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_GradientEntry1() : GradientEntry
      {
         return this._158433474_ConstructionStepDetailComponent_GradientEntry1;
      }
      
      public function set _ConstructionStepDetailComponent_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._158433474_ConstructionStepDetailComponent_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._158433474_ConstructionStepDetailComponent_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_GradientEntry2() : GradientEntry
      {
         return this._158433473_ConstructionStepDetailComponent_GradientEntry2;
      }
      
      public function set _ConstructionStepDetailComponent_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._158433473_ConstructionStepDetailComponent_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._158433473_ConstructionStepDetailComponent_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_HGroup4() : HGroup
      {
         return this._677651186_ConstructionStepDetailComponent_HGroup4;
      }
      
      public function set _ConstructionStepDetailComponent_HGroup4(param1:HGroup) : void
      {
         var _loc2_:Object = this._677651186_ConstructionStepDetailComponent_HGroup4;
         if(_loc2_ !== param1)
         {
            this._677651186_ConstructionStepDetailComponent_HGroup4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_HGroup4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_HGroup5() : HGroup
      {
         return this._677651185_ConstructionStepDetailComponent_HGroup5;
      }
      
      public function set _ConstructionStepDetailComponent_HGroup5(param1:HGroup) : void
      {
         var _loc2_:Object = this._677651185_ConstructionStepDetailComponent_HGroup5;
         if(_loc2_ !== param1)
         {
            this._677651185_ConstructionStepDetailComponent_HGroup5 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_HGroup5",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionStepDetailComponent_SolidColorStroke1() : SolidColorStroke
      {
         return this._499854830_ConstructionStepDetailComponent_SolidColorStroke1;
      }
      
      public function set _ConstructionStepDetailComponent_SolidColorStroke1(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._499854830_ConstructionStepDetailComponent_SolidColorStroke1;
         if(_loc2_ !== param1)
         {
            this._499854830_ConstructionStepDetailComponent_SolidColorStroke1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionStepDetailComponent_SolidColorStroke1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get durationLabel() : LocaLabel
      {
         return this._122527168durationLabel;
      }
      
      public function set durationLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._122527168durationLabel;
         if(_loc2_ !== param1)
         {
            this._122527168durationLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"durationLabel",_loc2_,param1));
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
      public function get resourceIcon() : BriskImageDynaLib
      {
         return this._384713305resourceIcon;
      }
      
      public function set resourceIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._384713305resourceIcon;
         if(_loc2_ !== param1)
         {
            this._384713305resourceIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resourceIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get resourceLabel() : LocaLabel
      {
         return this._961487750resourceLabel;
      }
      
      public function set resourceLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._961487750resourceLabel;
         if(_loc2_ !== param1)
         {
            this._961487750resourceLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resourceLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get runningTimerBar() : TimerBarComponent
      {
         return this._1101940077runningTimerBar;
      }
      
      public function set runningTimerBar(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._1101940077runningTimerBar;
         if(_loc2_ !== param1)
         {
            this._1101940077runningTimerBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runningTimerBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get runningTimerBarLabel() : LocaLabel
      {
         return this._399615367runningTimerBarLabel;
      }
      
      public function set runningTimerBarLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._399615367runningTimerBarLabel;
         if(_loc2_ !== param1)
         {
            this._399615367runningTimerBarLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runningTimerBarLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startButton() : MultistateButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1943111220startButton;
         if(_loc2_ !== param1)
         {
            this._1943111220startButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepInstantFinishButton() : MultistateButton
      {
         return this._428266566stepInstantFinishButton;
      }
      
      public function set stepInstantFinishButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._428266566stepInstantFinishButton;
         if(_loc2_ !== param1)
         {
            this._428266566stepInstantFinishButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepInstantFinishButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepInstantFinishLabel() : LocaLabel
      {
         return this._2083403412stepInstantFinishLabel;
      }
      
      public function set stepInstantFinishLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2083403412stepInstantFinishLabel;
         if(_loc2_ !== param1)
         {
            this._2083403412stepInstantFinishLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepInstantFinishLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepLabel() : LocaLabel
      {
         return this._1326901128stepLabel;
      }
      
      public function set stepLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1326901128stepLabel;
         if(_loc2_ !== param1)
         {
            this._1326901128stepLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepLabel",_loc2_,param1));
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
   }
}

