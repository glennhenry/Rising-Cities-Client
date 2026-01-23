package net.bigpoint.cityrama.view.quest.ui.components
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
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.quest.ui.QuestDetailViewMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class QuestDetailViewComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const EVENT_COLLECT_REWARD:String = "EVENT_COLLECT_REWARD";
      
      private var _1443225712characterGfx:BriskImageDynaLib;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1256457025rewardButton:MultistateButton;
      
      private var _1412873884rewardHeader:LocaLabel;
      
      private var _1690977389rewardList:RewardSlideComponent;
      
      private var _110132044task1:QuestDetailTaskComponent;
      
      private var _110132045task2:QuestDetailTaskComponent;
      
      private var _110132046task3:QuestDetailTaskComponent;
      
      private var _110132047task4:QuestDetailTaskComponent;
      
      private var _640748658taskHeader:QuestHeaderComponent;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:QuestDetailViewVo;
      
      private var _dirty:Boolean;
      
      private var _taskComponentList:Vector.<QuestDetailTaskComponent>;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function QuestDetailViewComponent()
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
         bindings = this._QuestDetailViewComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_quest_ui_components_QuestDetailViewComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return QuestDetailViewComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.maxWidth = 755;
         this.horizontalCenter = 0;
         this.mxmlContent = [this._QuestDetailViewComponent_VGroup1_c(),this._QuestDetailViewComponent_BriskImageDynaLib3_i()];
         this.addEventListener("creationComplete",this.___QuestDetailViewComponent_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         QuestDetailViewComponent._watcherSetupUtil = param1;
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
         this.rewardHeader.text = LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.rewardsHeader.capital");
         this.rewardButton.label = LocaUtils.getString("rcl.questbook.layer","rcl.questbook.layer.collectReward");
         this.rewardButton.toolTip = LocaUtils.getString("rcl.tooltips","rcl.tooltips.rewardLayer.level.button");
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._dirty)
         {
            this._dirty = false;
            if(!this._taskComponentList)
            {
               this._taskComponentList = new <QuestDetailTaskComponent>[this.task1,this.task2,this.task3,this.task4];
            }
            this.rewardList.showPaging = !this._data.isQuestComplete;
            this.rewardButton.includeInLayout = this.rewardButton.visible = this._data.isQuestComplete;
            this.flavourText.text = this._data.bubbleText;
            this.taskHeader.data = this._data;
            this.rewardList.data = this._data.rewards;
            this.characterGfx.dynaBmpSourceName = "quest_giver_" + this._data.questGiverGfxId;
            var _loc1_:uint = 0;
            for each(var _loc2_ in this._taskComponentList)
            {
               null.includeInLayout = null.visible = this._data.tasks[0] != null;
               if(this._data.tasks[0] != null)
               {
                  null.data = this._data.tasks[0];
               }
               _loc1_ = uint(0 + 1);
            }
         }
      }
      
      private function rewardButtonClickHandler() : void
      {
         this.rewardButton.enabled = false;
         dispatchEvent(new Event(EVENT_COLLECT_REWARD,true,true));
      }
      
      public function set data(param1:QuestDetailViewVo) : void
      {
         this._data = param1;
         this._dirty = true;
         invalidateProperties();
      }
      
      private function _QuestDetailViewComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 3;
         _loc1_.top = -26;
         _loc1_.percentHeight = 100;
         _loc1_.left = -3;
         _loc1_.right = -6;
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_VGroup2_c(),this._QuestDetailViewComponent_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 4;
         _loc1_.verticalAlign = "top";
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_QuestHeaderComponent1_i(),this._QuestDetailViewComponent_Group2_c(),this._QuestDetailViewComponent_HGroup1_c(),this._QuestDetailViewComponent_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_QuestHeaderComponent1_i() : QuestHeaderComponent
      {
         var _loc1_:QuestHeaderComponent = new QuestHeaderComponent();
         _loc1_.percentWidth = 90;
         _loc1_.height = 36;
         _loc1_.id = "taskHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.taskHeader = _loc1_;
         BindingManager.executeBindings(this,"taskHeader",this.taskHeader);
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 2;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.height = 40;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "flavorText";
         _loc1_.maxDisplayedLines = 3;
         _loc1_.minWidth = 1;
         _loc1_.percentWidth = 70;
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_DebossedBackgroundComponent1_c(),this._QuestDetailViewComponent_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 3;
         _loc1_.paddingRight = 0;
         _loc1_.paddingLeft = 3;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_VGroup3_c(),this._QuestDetailViewComponent_Group5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 5;
         _loc1_.percentWidth = 100;
         _loc1_.height = 268;
         _loc1_.verticalAlign = "middle";
         _loc1_.maxHeight = 268;
         _loc1_.minHeight = 1;
         _loc1_.bottom = 0;
         _loc1_.top = 0;
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_QuestDetailTaskComponent1_i(),this._QuestDetailViewComponent_QuestDetailTaskComponent2_i(),this._QuestDetailViewComponent_QuestDetailTaskComponent3_i(),this._QuestDetailViewComponent_QuestDetailTaskComponent4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_QuestDetailTaskComponent1_i() : QuestDetailTaskComponent
      {
         var _loc1_:QuestDetailTaskComponent = new QuestDetailTaskComponent();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 268;
         _loc1_.id = "task1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.task1 = _loc1_;
         BindingManager.executeBindings(this,"task1",this.task1);
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_QuestDetailTaskComponent2_i() : QuestDetailTaskComponent
      {
         var _loc1_:QuestDetailTaskComponent = new QuestDetailTaskComponent();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 268;
         _loc1_.id = "task2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.task2 = _loc1_;
         BindingManager.executeBindings(this,"task2",this.task2);
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_QuestDetailTaskComponent3_i() : QuestDetailTaskComponent
      {
         var _loc1_:QuestDetailTaskComponent = new QuestDetailTaskComponent();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 268;
         _loc1_.id = "task3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.task3 = _loc1_;
         BindingManager.executeBindings(this,"task3",this.task3);
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_QuestDetailTaskComponent4_i() : QuestDetailTaskComponent
      {
         var _loc1_:QuestDetailTaskComponent = new QuestDetailTaskComponent();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 268;
         _loc1_.id = "task4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.task4 = _loc1_;
         BindingManager.executeBindings(this,"task4",this.task4);
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_BriskImageDynaLib1_c(),this._QuestDetailViewComponent_VGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "blue_reward_bg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 15;
         _loc1_.horizontalCenter = "middle";
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_Group6_c(),this._QuestDetailViewComponent_VGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_BlueBarComponent1_c(),this._QuestDetailViewComponent_BriskImageDynaLib2_c(),this._QuestDetailViewComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 90;
         _loc1_.height = 38;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.top = -10;
         _loc1_.left = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.height = 38;
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "fieldInfoSubHeader2";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.percentWidth = 70;
         _loc1_.id = "rewardHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardHeader = _loc1_;
         BindingManager.executeBindings(this,"rewardHeader",this.rewardHeader);
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_VGroup5_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = -6;
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_Group7_c(),this._QuestDetailViewComponent_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._QuestDetailViewComponent_RewardSlideComponent1_i(),this._QuestDetailViewComponent_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_RewardSlideComponent1_i() : RewardSlideComponent
      {
         var _loc1_:RewardSlideComponent = new RewardSlideComponent();
         _loc1_.id = "rewardList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardList = _loc1_;
         BindingManager.executeBindings(this,"rewardList",this.rewardList);
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 23;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      private function _QuestDetailViewComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "confirm";
         _loc1_.width = 188;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.addEventListener("click",this.__rewardButton_click);
         _loc1_.id = "rewardButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardButton = _loc1_;
         BindingManager.executeBindings(this,"rewardButton",this.rewardButton);
         return _loc1_;
      }
      
      public function __rewardButton_click(param1:MouseEvent) : void
      {
         this.rewardButtonClickHandler();
      }
      
      private function _QuestDetailViewComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_polaroid_worker";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.top = -44;
         _loc1_.left = -30;
         _loc1_.id = "characterGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.characterGfx = _loc1_;
         BindingManager.executeBindings(this,"characterGfx",this.characterGfx);
         return _loc1_;
      }
      
      public function ___QuestDetailViewComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      private function _QuestDetailViewComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLine.alignment");
         result[1] = new Binding(this,function():uint
         {
            return QuestDetailViewMediator.UI_LINE_ID;
         },null,"uiInfolayerAlignmentLine.lineId");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get characterGfx() : BriskImageDynaLib
      {
         return this._1443225712characterGfx;
      }
      
      public function set characterGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1443225712characterGfx;
         if(_loc2_ !== param1)
         {
            this._1443225712characterGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._800887486flavourText;
         if(_loc2_ !== param1)
         {
            this._800887486flavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardButton() : MultistateButton
      {
         return this._1256457025rewardButton;
      }
      
      public function set rewardButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1256457025rewardButton;
         if(_loc2_ !== param1)
         {
            this._1256457025rewardButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardButton",_loc2_,param1));
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
      public function get rewardList() : RewardSlideComponent
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:RewardSlideComponent) : void
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
      public function get task1() : QuestDetailTaskComponent
      {
         return this._110132044task1;
      }
      
      public function set task1(param1:QuestDetailTaskComponent) : void
      {
         var _loc2_:Object = this._110132044task1;
         if(_loc2_ !== param1)
         {
            this._110132044task1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get task2() : QuestDetailTaskComponent
      {
         return this._110132045task2;
      }
      
      public function set task2(param1:QuestDetailTaskComponent) : void
      {
         var _loc2_:Object = this._110132045task2;
         if(_loc2_ !== param1)
         {
            this._110132045task2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get task3() : QuestDetailTaskComponent
      {
         return this._110132046task3;
      }
      
      public function set task3(param1:QuestDetailTaskComponent) : void
      {
         var _loc2_:Object = this._110132046task3;
         if(_loc2_ !== param1)
         {
            this._110132046task3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get task4() : QuestDetailTaskComponent
      {
         return this._110132047task4;
      }
      
      public function set task4(param1:QuestDetailTaskComponent) : void
      {
         var _loc2_:Object = this._110132047task4;
         if(_loc2_ !== param1)
         {
            this._110132047task4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"task4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get taskHeader() : QuestHeaderComponent
      {
         return this._640748658taskHeader;
      }
      
      public function set taskHeader(param1:QuestHeaderComponent) : void
      {
         var _loc2_:Object = this._640748658taskHeader;
         if(_loc2_ !== param1)
         {
            this._640748658taskHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"taskHeader",_loc2_,param1));
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

