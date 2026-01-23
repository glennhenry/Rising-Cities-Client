package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.common.vo.StepMarkerVo;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeStepDetailViewVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.events.CitysquareRewardPreviewButtonPressedEvent;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.ChallengeBarVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class CitySquareEventPopup extends PaperPopupWindow
   {
      
      public static const OPEN_REWARD_PREVIEW:String = "OPEN_REWARD_PREVIEW";
      
      public static const OPEN_DEPOSIT_MINILAYER:String = "OPEN_DEPOSIT_MINILAYER";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
      private var _1396253357barOne:ChallengeBarComponent;
      
      private var _1396248263barTwo:ChallengeBarComponent;
      
      private var _756762963bubbleGroup:Group;
      
      private var _812351090challengeName:LocaLabel;
      
      private var _1577357232challengeProgress:StepMarkerBarComponent;
      
      private var _378557844eventButton:MultistateButton;
      
      private var _1917266112eventMainText:LocaLabel;
      
      private var _1835748386eventRuntime:LocaLabel;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _2076478802timerbar:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _time:Number = 0;
      
      private var _timer:Timer;
      
      private var _timerIsDirty:Boolean;
      
      private var _globalTime:Number = 0;
      
      public function CitySquareEventPopup()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "citysquare";
         this.showBackButton = true;
         this.width = 785;
         this.height = 430;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareEventPopup_Array1_c);
         this.addEventListener("creationComplete",this.___CitySquareEventPopup_PaperPopupWindow1_creationComplete);
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
         title = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.popupheader");
         this.eventButton.libNameLeft = "gui_popups_miniLayer";
         this.eventButton.imageNameLeft = "button_icon_goto";
         this.eventButton.skin.setCurrentState("down");
         this.eventButton.skin.setCurrentState("up");
         this._timer = new Timer(1000);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTick);
         this._timer.start();
         this.challengeProgress.addEventListener(StepMarkerBarComponent.MARKER_CLICKED,this.handleMarkerClicked);
         this.eventButton.addEventListener(MouseEvent.CLICK,this.handleEventButtonClick);
         this.setTooltips();
      }
      
      private function handleMarkerClicked(param1:Event) : void
      {
         var _loc2_:CitysquareRewardPreviewButtonPressedEvent = new CitysquareRewardPreviewButtonPressedEvent(OPEN_REWARD_PREVIEW);
         _loc2_.challengeNumber = this.challengeProgress.clickedMarkerIndex + 1;
         dispatchEvent(_loc2_);
      }
      
      private function setTooltips() : void
      {
         this.eventButton.toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.depositbutton");
         this.timerbar.toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.eventruntime");
      }
      
      private function onTick(param1:TimerEvent) : void
      {
         ++this._time;
         this._timerIsDirty = true;
         invalidateProperties();
      }
      
      private function handleEventButtonClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(OPEN_DEPOSIT_MINILAYER));
      }
      
      public function set data(param1:CitySquareDetailViewVo) : void
      {
         this._data = param1;
         this._dataIsDirty = true;
         this._timerIsDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Vector.<ChallengeBarComponent> = null;
         var _loc2_:int = 0;
         var _loc3_:EventChallengeStepDetailViewVo = null;
         var _loc4_:EventChallengeDetailViewVo = null;
         var _loc5_:ChallengeBarVo = null;
         var _loc6_:StepMarkerVo = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:ChallengeBarComponent = null;
         super.commitProperties();
         if(this._dataIsDirty && Boolean(this._data))
         {
            this._dataIsDirty = false;
            this._globalTime = this._data.time;
            _loc1_ = new <ChallengeBarComponent>[this.barOne,this.barTwo];
            _loc2_ = 0;
            for each(_loc4_ in this._data.eventList[0].listOfChallenges)
            {
               if(_loc4_.state == QuestSystemStateConst.VALID || _loc4_.state == QuestSystemStateConst.DONE)
               {
                  for each(_loc3_ in _loc4_.listOfSteps)
                  {
                     _loc10_ = _loc1_[_loc2_];
                     _loc5_ = new ChallengeBarVo();
                     _loc5_.isEventGood = _loc3_.targetGoodIsEventGood;
                     _loc5_.maxValue = _loc3_.eventStockTarget;
                     _loc5_.currentValue = _loc4_.state == QuestSystemStateConst.DONE ? _loc3_.eventStockTarget : _loc3_.eventStock;
                     _loc5_.goodGFXId = _loc3_.gfxId;
                     _loc5_.goodLocaleId = _loc3_.localeId;
                     _loc5_.eventGFXId = this._data.eventList[0].gfxId;
                     _loc5_.eventLocalId = this._data.eventList[0].localeId;
                     _loc5_.elementId = _loc3_.questElementId;
                     _loc5_.questId = _loc3_.questId;
                     _loc5_.questType = _loc3_.questType;
                     _loc5_.upsellingPrice = _loc3_.instantFinishPrice;
                     _loc5_.upsellingAffordable = _loc3_.upsellingAffordable;
                     _loc10_.data = _loc5_;
                     var _temp_11:* = _loc10_;
                     _loc10_.includeInLayout = true;
                     _temp_11.visible = true;
                     _loc2_++;
                  }
                  break;
               }
            }
            _loc6_ = new StepMarkerVo();
            _loc7_ = 0;
            _loc8_ = 0;
            _loc9_ = 0;
            for each(_loc4_ in this._data.eventList[0].listOfChallenges)
            {
               if(_loc9_ == this._data.eventList[0].listOfChallenges.length - 1)
               {
                  _loc6_.stepInactiveStyles.push("challengeInactivelast");
                  _loc6_.stepActiveStyles.push("lastActive");
               }
               else
               {
                  _loc6_.stepInactiveStyles.push("challengeInactive");
                  _loc6_.stepActiveStyles.push("active");
               }
               _loc6_.hasLastInterval = false;
               for each(_loc3_ in _loc4_.listOfSteps)
               {
                  _loc8_ += _loc3_.eventStockTarget;
                  if(_loc4_.state == QuestSystemStateConst.DONE || _loc4_.state == QuestSystemStateConst.SUBMITTED)
                  {
                     _loc7_ += _loc3_.eventStockTarget;
                  }
                  else
                  {
                     _loc7_ += _loc3_.eventStock;
                  }
               }
               _loc6_.progressSteps.push(_loc8_);
               _loc9_++;
            }
            _loc6_.currentProgress = _loc7_;
            this.challengeProgress.data = _loc6_;
            this.eventRuntime.text = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.eventlifetime");
            this.eventButton.label = LocaUtils.getString("rcl.citysquare.popup.runningevent","rcl.citysquare.popup.runningevent.button.deposit");
            this.checkEventAssets();
         }
         if(this._timerIsDirty)
         {
            this._timerIsDirty = false;
            this.setTimer();
         }
      }
      
      private function setTimer() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:uint = LocaUtils.getDaysFromSeconds((this._data.eventList[0].listOfChallenges[0].fullRuntime - (this._time + this._globalTime) * 1000) / 1000);
         if(_loc1_ >= 2)
         {
            _loc2_ = LocaUtils.getExactDaysFromSecond((this._data.eventList[0].listOfChallenges[0].fullRuntime - (this._time + this._globalTime) * 1000) / 1000);
            if(_loc1_ - _loc2_ < 0)
            {
               this.timerbar.progressBar.label = LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[">" + _loc1_]);
            }
            else
            {
               this.timerbar.progressBar.label = LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[_loc1_]);
            }
         }
         else
         {
            this.timerbar.progressBar.label = LocaUtils.getDuration((this._data.eventList[0].listOfChallenges[0].fullRuntime - (this._time + this._globalTime) * 1000) / 1000);
         }
         this.timerbar.progressBar.progress = 1 - (this._data.eventList[0].listOfChallenges[0].fullRuntime - (this._time + this._globalTime) * 1000) / this._data.eventList[0].listOfChallenges[0].fullRuntime;
      }
      
      private function checkEventAssets() : void
      {
         var _loc2_:EventChallengeDetailViewVo = null;
         this.polaroidImage.dynaSWFFileName = this._data.eventList[0].gfxId.toString();
         this.polaroidImage.dynaLibName = this._data.eventList[0].gfxId.toString() + "_gui_popup_events";
         var _loc1_:int = 0;
         for each(_loc2_ in this._data.eventList[0].listOfChallenges)
         {
            _loc1_++;
            if(_loc2_.state == QuestSystemStateConst.VALID)
            {
               this.eventMainText.text = LocaUtils.getString("rcl.citysquarequests." + this._data.eventList[0].localeId,"rcl.citysquarequests." + this._data.eventList[0].localeId + ".layer.running.flavour.challenge." + _loc1_);
               this.polaroidImage.dynaBmpSourceName = "running_" + _loc1_;
            }
         }
         this.challengeName.text = LocaUtils.getString("rcl.citysquare.popup.events","rcl.citysquare.popup.events.challenge.header");
      }
      
      private function handleClose(param1:Event) : void
      {
         this._timer.stop();
         this._timer.removeEventListener(TimerEvent.TIMER,this.onTick);
         this._timer = null;
         dispatchEvent(param1);
      }
      
      public function get data() : CitySquareDetailViewVo
      {
         return this._data;
      }
      
      private function _CitySquareEventPopup_Array1_c() : Array
      {
         return [this._CitySquareEventPopup_Group1_c()];
      }
      
      private function _CitySquareEventPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 340;
         _loc1_.top = 20;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_Group2_c(),this._CitySquareEventPopup_Group8_c(),this._CitySquareEventPopup_Group11_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 10;
         _loc1_.top = 60;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_Group3_c(),this._CitySquareEventPopup_BriskImageDynaLib3_c(),this._CitySquareEventPopup_Group4_c(),this._CitySquareEventPopup_Group5_c(),this._CitySquareEventPopup_VGroup1_c(),this._CitySquareEventPopup_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = -50;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskImageDynaLib1_c(),this._CitySquareEventPopup_StepMarkerBarComponent1_i(),this._CitySquareEventPopup_BriskImageDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "challengeProgress_bg";
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_StepMarkerBarComponent1_i() : StepMarkerBarComponent
      {
         var _loc1_:StepMarkerBarComponent = new StepMarkerBarComponent();
         _loc1_.percentWidth = 88;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "challengeProgress";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.challengeProgress = _loc1_;
         BindingManager.executeBindings(this,"challengeProgress",this.challengeProgress);
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "sparkle";
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.left = 5;
         _loc1_.top = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quadrillepaper_quer";
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 70;
         _loc1_.bottom = 45;
         _loc1_.left = -3;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskMCDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_left";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 70;
         _loc1_.bottom = 45;
         _loc1_.right = -3;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskMCDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_right";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = 20;
         _loc1_.top = 22;
         _loc1_.percentWidth = 100;
         _loc1_.gap = 1;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_Group6_c(),this._CitySquareEventPopup_Group7_c(),this._CitySquareEventPopup_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_HGroup1_c(),this._CitySquareEventPopup_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.width = 470;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 28;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskImageDynaLib4_c(),this._CitySquareEventPopup_BriskImageDynaLib5_c(),this._CitySquareEventPopup_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib4_c() : BriskImageDynaLib
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
      
      private function _CitySquareEventPopup_BriskImageDynaLib5_c() : BriskImageDynaLib
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
      
      private function _CitySquareEventPopup_BriskImageDynaLib6_c() : BriskImageDynaLib
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
      
      private function _CitySquareEventPopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.horizontalCenter = 0;
         _loc1_.maxHeight = 85;
         _loc1_.maxWidth = 440;
         _loc1_.styleName = "eventName";
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.id = "challengeName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.challengeName = _loc1_;
         BindingManager.executeBindings(this,"challengeName",this.challengeName);
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.gap = 10;
         _loc1_.width = 470;
         _loc1_.paddingRight = 10;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_ChallengeBarComponent1_i(),this._CitySquareEventPopup_ChallengeBarComponent2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_ChallengeBarComponent1_i() : ChallengeBarComponent
      {
         var _loc1_:ChallengeBarComponent = new ChallengeBarComponent();
         _loc1_.width = 430;
         _loc1_.visible = true;
         _loc1_.includeInLayout = true;
         _loc1_.id = "barOne";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.barOne = _loc1_;
         BindingManager.executeBindings(this,"barOne",this.barOne);
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_ChallengeBarComponent2_i() : ChallengeBarComponent
      {
         var _loc1_:ChallengeBarComponent = new ChallengeBarComponent();
         _loc1_.width = 430;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "barTwo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.barTwo = _loc1_;
         BindingManager.executeBindings(this,"barTwo",this.barTwo);
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 10;
         _loc1_.width = 207;
         _loc1_.horizontalCenter = 0;
         _loc1_.focusEnabled = false;
         _loc1_.tabFocusEnabled = false;
         _loc1_.id = "eventButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventButton = _loc1_;
         BindingManager.executeBindings(this,"eventButton",this.eventButton);
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.top = 38;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_StickyNoteComponent1_c(),this._CitySquareEventPopup_Group9_c(),this._CitySquareEventPopup_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 85;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 243;
         _loc1_.width = 185;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group9_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 30;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskImageDynaLib7_c(),this._CitySquareEventPopup_BriskImageDynaLib8_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_polaroidframe";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_events";
         _loc1_.horizontalCenter = -1;
         _loc1_.verticalCenter = -1;
         _loc1_.id = "polaroidImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroidImage = _loc1_;
         BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 268;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_LocaLabel2_i(),this._CitySquareEventPopup_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.horizontalCenter = 0;
         _loc1_.maxHeight = 85;
         _loc1_.styleName = "eventRuntime";
         _loc1_.verticalCenter = -2;
         _loc1_.width = 190;
         _loc1_.id = "eventRuntime";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventRuntime = _loc1_;
         BindingManager.executeBindings(this,"eventRuntime",this.eventRuntime);
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.width = 167;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_Group10_c(),this._CitySquareEventPopup_TimerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group10_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 17;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.percentWidth = 85;
         _loc1_.revertFlow = true;
         _loc1_.id = "timerbar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerbar = _loc1_;
         BindingManager.executeBindings(this,"timerbar",this.timerbar);
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_Group11_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CitySquareEventPopup_BriskImageDynaLib9_c(),this._CitySquareEventPopup_HGroup3_c(),this._CitySquareEventPopup_BriskImageDynaLib10_i()];
         _loc1_.id = "bubbleGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bubbleGroup = _loc1_;
         BindingManager.executeBindings(this,"bubbleGroup",this.bubbleGroup);
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "bubble_large";
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 57;
         _loc1_.width = 650;
         _loc1_.top = 12;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CitySquareEventPopup_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "avatarText";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 4;
         _loc1_.id = "eventMainText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventMainText = _loc1_;
         BindingManager.executeBindings(this,"eventMainText",this.eventMainText);
         return _loc1_;
      }
      
      private function _CitySquareEventPopup_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.left = 10;
         _loc1_.top = -15;
         _loc1_.id = "infoIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoIcon = _loc1_;
         BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
         return _loc1_;
      }
      
      public function ___CitySquareEventPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get barOne() : ChallengeBarComponent
      {
         return this._1396253357barOne;
      }
      
      public function set barOne(param1:ChallengeBarComponent) : void
      {
         var _loc2_:Object = this._1396253357barOne;
         if(_loc2_ !== param1)
         {
            this._1396253357barOne = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barOne",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barTwo() : ChallengeBarComponent
      {
         return this._1396248263barTwo;
      }
      
      public function set barTwo(param1:ChallengeBarComponent) : void
      {
         var _loc2_:Object = this._1396248263barTwo;
         if(_loc2_ !== param1)
         {
            this._1396248263barTwo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barTwo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bubbleGroup() : Group
      {
         return this._756762963bubbleGroup;
      }
      
      public function set bubbleGroup(param1:Group) : void
      {
         var _loc2_:Object = this._756762963bubbleGroup;
         if(_loc2_ !== param1)
         {
            this._756762963bubbleGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubbleGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeName() : LocaLabel
      {
         return this._812351090challengeName;
      }
      
      public function set challengeName(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._812351090challengeName;
         if(_loc2_ !== param1)
         {
            this._812351090challengeName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeProgress() : StepMarkerBarComponent
      {
         return this._1577357232challengeProgress;
      }
      
      public function set challengeProgress(param1:StepMarkerBarComponent) : void
      {
         var _loc2_:Object = this._1577357232challengeProgress;
         if(_loc2_ !== param1)
         {
            this._1577357232challengeProgress = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeProgress",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventButton() : MultistateButton
      {
         return this._378557844eventButton;
      }
      
      public function set eventButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._378557844eventButton;
         if(_loc2_ !== param1)
         {
            this._378557844eventButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventMainText() : LocaLabel
      {
         return this._1917266112eventMainText;
      }
      
      public function set eventMainText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1917266112eventMainText;
         if(_loc2_ !== param1)
         {
            this._1917266112eventMainText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventMainText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventRuntime() : LocaLabel
      {
         return this._1835748386eventRuntime;
      }
      
      public function set eventRuntime(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1835748386eventRuntime;
         if(_loc2_ !== param1)
         {
            this._1835748386eventRuntime = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventRuntime",_loc2_,param1));
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
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2112922897polaroidImage;
         if(_loc2_ !== param1)
         {
            this._2112922897polaroidImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerbar() : TimerBarComponent
      {
         return this._2076478802timerbar;
      }
      
      public function set timerbar(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._2076478802timerbar;
         if(_loc2_ !== param1)
         {
            this._2076478802timerbar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerbar",_loc2_,param1));
            }
         }
      }
   }
}

