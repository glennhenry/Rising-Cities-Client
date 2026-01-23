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
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.QuestTextFactory;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.skins.ChallengeListSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.quest.ui.skin.QuestLayerRewardSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class CitySquarePopup extends PaperPopupWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const START_EVENT:String = "START_EVENT";
      
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
      
      private var _756762963bubbleGroup:Group;
      
      private var _950398559comment:LocaLabel;
      
      private var _2004181219eventAvailibility:SlimProgressBarComponent;
      
      private var _31177304eventList:List;
      
      private var _31228997eventName:LocaLabel;
      
      private var _1835748386eventRuntime:LocaLabel;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var _1412873884rewardHeader:LocaLabel;
      
      private var _1690977389rewardList:List;
      
      private var _1599251286startEventButton:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CitySquarePopup()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._CitySquarePopup_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_citysquare_ui_components_CitySquarePopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CitySquarePopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.styleName = "citysquare";
         this.showBackButton = true;
         this.width = 785;
         this.height = 430;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquarePopup_Array1_c);
         this.addEventListener("creationComplete",this.___CitySquarePopup_PaperPopupWindow1_creationComplete);
         this.addEventListener("removedFromStage",this.___CitySquarePopup_PaperPopupWindow1_removedFromStage);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         CitySquarePopup._watcherSetupUtil = param1;
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
         this.eventRuntime.text = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.eventlifetime");
         this.rewardHeader.text = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.header.reward");
         this.startEventButton.libNameLeft = "gui_popup_citysquare_general";
         this.startEventButton.imageNameLeft = "button_icon_event";
         this.startEventButton.label = LocaUtils.getString("rcl.citysquare.popup.overview","rcl.citysquare.popup.overview.button.startevent");
         this.startEventButton.styleName = "confirm";
         this.startEventButton.skin.setCurrentState("down");
         this.startEventButton.skin.setCurrentState("up");
         this.startEventButton.addEventListener(MouseEvent.CLICK,this.handleStartEventButtonClick);
      }
      
      private function handleStartEventButtonClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(START_EVENT));
      }
      
      private function handleClose(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      public function set data(param1:CitySquareDetailViewVo) : void
      {
         this._data = param1;
         this._dataIsDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.rewardList.dataProvider = this._data.eventList[0].rewardCollection;
            this.checkEvents();
            this.checkEventAssets();
         }
      }
      
      private function checkEvents() : void
      {
         var _loc2_:EventChallengeDetailViewVo = null;
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc5_:uint = 0;
         var _loc6_:Number = NaN;
         var _loc1_:ArrayList = new ArrayList();
         for each(_loc2_ in this._data.eventList[0].listOfChallenges)
         {
            _loc1_.addItem(_loc2_);
         }
         this.eventList.dataProvider = _loc1_;
         _loc3_ = (this._data.eventList[0].fullRuntime - this._data.eventList[0].timeLeft) / this._data.eventList[0].timeLeft;
         this.eventAvailibility.progress = _loc3_ * -1;
         this.eventAvailibility.toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.eventavailability");
         _loc5_ = LocaUtils.getDaysFromSeconds(this._data.eventList[0].listOfChallenges[0].fullRuntime / 1000);
         if(_loc5_ >= 2)
         {
            _loc6_ = LocaUtils.getExactDaysFromSecond(this._data.eventList[0].listOfChallenges[0].fullRuntime / 1000);
            if(_loc5_ - _loc6_ < 0)
            {
               _loc4_ = LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[">" + _loc5_]);
            }
            else
            {
               _loc4_ = LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificDays",[_loc5_]);
            }
         }
         else
         {
            _loc4_ = LocaUtils.getDuration(this._data.eventList[0].listOfChallenges[0].fullRuntime / 1000);
         }
         this.progressBar.label = _loc4_;
         this.progressBar.toolTip = LocaUtils.getString("rcl.citysquare.popup.tooltips","rcl.citysquare.popup.tooltips.overalleventruntime",[LocaUtils.getDuration(this._data.eventList[0].listOfChallenges[0].fullRuntime / 1000)]);
         this.progressBar.progress = 1;
      }
      
      private function checkEventAssets() : void
      {
         this.polaroidImage.dynaSWFFileName = this._data.eventList[0].gfxId.toString();
         this.polaroidImage.dynaLibName = this._data.eventList[0].gfxId.toString() + "_gui_popup_events";
         this.polaroidImage.dynaBmpSourceName = "preview";
         var _loc1_:String = LocaUtils.getString("rcl.citysquarequests." + this._data.eventList[0].localeId,"rcl.citysquarequests." + this._data.eventList[0].localeId + ".layer.preview.flavour");
         this.comment.text = QuestTextFactory.replaceWildCards(_loc1_);
         this.eventName.text = LocaUtils.getString("rcl.citysquarequests." + this._data.eventList[0].localeId,"rcl.citysquarequests." + this._data.eventList[0].localeId + ".layer.name");
      }
      
      private function setMouse(param1:MultistateButton, param2:Boolean) : void
      {
         param1.mouseChildren = param2;
         param1.mouseEnabled = param2;
      }
      
      public function get data() : CitySquareDetailViewVo
      {
         return this._data;
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         this.startEventButton.removeEventListener(MouseEvent.CLICK,this.handleStartEventButtonClick);
      }
      
      private function _CitySquarePopup_Array1_c() : Array
      {
         return [this._CitySquarePopup_Group1_c()];
      }
      
      private function _CitySquarePopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 340;
         _loc1_.top = 20;
         _loc1_.mxmlContent = [this._CitySquarePopup_HGroup1_c(),this._CitySquarePopup_Group13_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = 35;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._CitySquarePopup_Group2_c(),this._CitySquarePopup_Group5_c(),this._CitySquarePopup_Group8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.mxmlContent = [this._CitySquarePopup_StickyNoteComponent1_c(),this._CitySquarePopup_Group3_c(),this._CitySquarePopup_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_StickyNoteComponent1_c() : StickyNoteComponent
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
      
      private function _CitySquarePopup_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 33;
         _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib1_c(),this._CitySquarePopup_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _CitySquarePopup_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
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
      
      private function _CitySquarePopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 268;
         _loc1_.mxmlContent = [this._CitySquarePopup_LocaLabel1_i(),this._CitySquarePopup_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.horizontalCenter = 0;
         _loc1_.maxHeight = 85;
         _loc1_.styleName = "eventRuntime";
         _loc1_.text = "NotSet";
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
      
      private function _CitySquarePopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.width = 167;
         _loc1_.mxmlContent = [this._CitySquarePopup_Group4_c(),this._CitySquarePopup_BriskImageDynaLib3_c(),this._CitySquarePopup_ProgressBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _CitySquarePopup_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
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
      
      private function _CitySquarePopup_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib4_c(),this._CitySquarePopup_Group6_c(),this._CitySquarePopup_Group7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quadrillepaper_breit";
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 51;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CitySquarePopup_HGroup3_c(),this._CitySquarePopup_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.width = 280;
         _loc1_.verticalCenter = -2;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib5_c(),this._CitySquarePopup_BriskImageDynaLib6_c(),this._CitySquarePopup_BriskImageDynaLib7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
         _loc1_.height = 40;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         _loc1_.percentWidth = 100;
         _loc1_.height = 40;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
         _loc1_.height = 40;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.horizontalCenter = 0;
         _loc1_.maxHeight = 40;
         _loc1_.styleName = "eventName";
         _loc1_.text = "NotSet";
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.id = "eventName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventName = _loc1_;
         BindingManager.executeBindings(this,"eventName",this.eventName);
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CitySquarePopup_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._CitySquarePopup_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.setStyle("skinClass",ChallengeListSkin);
         _loc1_.id = "eventList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventList = _loc1_;
         BindingManager.executeBindings(this,"eventList",this.eventList);
         return _loc1_;
      }
      
      private function _CitySquarePopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ChallangeItemRenderer;
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CitySquarePopup_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.paddingTop = 25;
         _loc1_.gap = 1;
         _loc1_.paddingLeft = -3;
         _loc1_.mxmlContent = [this._CitySquarePopup_Group9_c(),this._CitySquarePopup_Group12_c(),this._CitySquarePopup_SlimProgressBarComponent1_i(),this._CitySquarePopup_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group9_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 209;
         _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib8_c(),this._CitySquarePopup_Group10_c(),this._CitySquarePopup_VGroup4_c(),this._CitySquarePopup_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "reward_postit_blue_previewlayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group10_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CitySquarePopup_Group11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group11_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 188;
         _loc1_.top = 26;
         _loc1_.left = 11;
         _loc1_.height = 39;
         _loc1_.mxmlContent = [this._CitySquarePopup_HGroup4_c(),this._CitySquarePopup_BriskImageDynaLib12_c(),this._CitySquarePopup_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib9_c(),this._CitySquarePopup_BriskImageDynaLib10_c(),this._CitySquarePopup_BriskImageDynaLib11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
         _loc1_.height = 39;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         _loc1_.percentWidth = 100;
         _loc1_.height = 39;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
         _loc1_.height = 39;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.left = -3;
         _loc1_.top = -11;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CitySquarePopup_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 80;
         _loc1_.styleName = "rewardHeader";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "rewardHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardHeader = _loc1_;
         BindingManager.executeBindings(this,"rewardHeader",this.rewardHeader);
         return _loc1_;
      }
      
      private function _CitySquarePopup_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.paddingTop = 80;
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CitySquarePopup_List2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_List2_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._CitySquarePopup_ClassFactory2_c();
         _loc1_.setStyle("skinClass",QuestLayerRewardSkin);
         _loc1_.id = "rewardList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardList = _loc1_;
         BindingManager.executeBindings(this,"rewardList",this.rewardList);
         return _loc1_;
      }
      
      private function _CitySquarePopup_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RewardItemRenderer;
         return _loc1_;
      }
      
      private function _CitySquarePopup_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.top = 80;
         _loc1_.right = 0;
         _loc1_.lineId = 0;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group12_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquarePopup_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         _loc1_.styleName = "eventOverallTime";
         _loc1_.revertProgress = true;
         _loc1_.id = "eventAvailibility";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventAvailibility = _loc1_;
         BindingManager.executeBindings(this,"eventAvailibility",this.eventAvailibility);
         return _loc1_;
      }
      
      private function _CitySquarePopup_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 207;
         _loc1_.horizontalCenter = 0;
         _loc1_.focusEnabled = false;
         _loc1_.tabFocusEnabled = false;
         _loc1_.id = "startEventButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.startEventButton = _loc1_;
         BindingManager.executeBindings(this,"startEventButton",this.startEventButton);
         return _loc1_;
      }
      
      private function _CitySquarePopup_Group13_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CitySquarePopup_BriskImageDynaLib13_c(),this._CitySquarePopup_LocaLabel4_i(),this._CitySquarePopup_BriskImageDynaLib14_i()];
         _loc1_.id = "bubbleGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bubbleGroup = _loc1_;
         BindingManager.executeBindings(this,"bubbleGroup",this.bubbleGroup);
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib13_c() : BriskImageDynaLib
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
      
      private function _CitySquarePopup_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxHeight = 50;
         _loc1_.maxWidth = 660;
         _loc1_.styleName = "avatarText";
         _loc1_.text = "dev";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "comment";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.comment = _loc1_;
         BindingManager.executeBindings(this,"comment",this.comment);
         return _loc1_;
      }
      
      private function _CitySquarePopup_BriskImageDynaLib14_i() : BriskImageDynaLib
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
      
      public function ___CitySquarePopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      public function ___CitySquarePopup_PaperPopupWindow1_removedFromStage(param1:Event) : void
      {
         this.removedFromStageHandler(param1);
      }
      
      private function _CitySquarePopup_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
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
      public function get comment() : LocaLabel
      {
         return this._950398559comment;
      }
      
      public function set comment(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._950398559comment;
         if(_loc2_ !== param1)
         {
            this._950398559comment = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comment",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventAvailibility() : SlimProgressBarComponent
      {
         return this._2004181219eventAvailibility;
      }
      
      public function set eventAvailibility(param1:SlimProgressBarComponent) : void
      {
         var _loc2_:Object = this._2004181219eventAvailibility;
         if(_loc2_ !== param1)
         {
            this._2004181219eventAvailibility = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventAvailibility",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventList() : List
      {
         return this._31177304eventList;
      }
      
      public function set eventList(param1:List) : void
      {
         var _loc2_:Object = this._31177304eventList;
         if(_loc2_ !== param1)
         {
            this._31177304eventList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventName() : LocaLabel
      {
         return this._31228997eventName;
      }
      
      public function set eventName(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._31228997eventName;
         if(_loc2_ !== param1)
         {
            this._31228997eventName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventName",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get rewardHeader() : LocaLabel
      {
         return this._1412873884rewardHeader;
      }
      
      public function set rewardHeader(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1412873884rewardHeader;
         if(_loc2_ !== param1)
         {
            this._1412873884rewardHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardList() : List
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:List) : void
      {
         var _loc2_:Object = this._1690977389rewardList;
         if(_loc2_ !== param1)
         {
            this._1690977389rewardList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startEventButton() : MultistateButton
      {
         return this._1599251286startEventButton;
      }
      
      public function set startEventButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1599251286startEventButton;
         if(_loc2_ !== param1)
         {
            this._1599251286startEventButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startEventButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc2_ !== param1)
         {
            this._1218573432uiInfolayerAlignmentLine = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
            }
         }
      }
   }
}

