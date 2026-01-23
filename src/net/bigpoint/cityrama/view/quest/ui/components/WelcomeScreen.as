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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardInfoVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.NextLevelUpRewardItemListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class WelcomeScreen extends PaperPopupWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
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
      
      private var _97921but:MultistateButton;
      
      private var _1790120620characterName:LocaLabel;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _871500217introText:LocaLabel;
      
      private var _58259577layerTitle:LocaLabel;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _1440288096rewardItemList:List;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _creationIsDirty:Boolean = false;
      
      private var _data:Vector.<QuestRewardInfoVo>;
      
      private var _dataIsDirty:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function WelcomeScreen()
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
         bindings = this._WelcomeScreen_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_quest_ui_components_WelcomeScreenWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return WelcomeScreen[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.showBackButton = false;
         this.styleName = "introduction";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._WelcomeScreen_Array1_c);
         this.addEventListener("creationComplete",this.___WelcomeScreen_PaperPopupWindow1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      private static function buildRewardData(param1:Vector.<QuestRewardInfoVo>) : ArrayCollection
      {
         var _loc3_:RewardItemComponentVo = null;
         var _loc4_:QuestRewardInfoVo = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc4_ in param1)
         {
            _loc3_ = QuestGUIProxy.getRewardVoForQuestReward(_loc4_.questRewardVo,RewardItemComponentVo.SIZE_SMALL);
            if(_loc3_)
            {
               _loc2_.addItem(_loc3_);
            }
         }
         RewardLayerProxy.sortRewardList(_loc2_);
         return _loc2_;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         WelcomeScreen._watcherSetupUtil = param1;
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
         this._creationIsDirty = true;
         invalidateProperties();
      }
      
      public function set data(param1:Vector.<QuestRewardInfoVo>) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._dataIsDirty = true;
            this._data = param1;
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._creationIsDirty)
         {
            this._creationIsDirty = false;
            this.title = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.title");
            this.flavourText.text = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.flavourText");
            this.but.label = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.button");
            this.layerTitle.text = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.starterGifts");
            this.introText.text = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.sideAdvisorInfo");
            this.characterName.text = LocaUtils.getString("rcl.miniLayer.introduction","rcl.miniLayer.introduction.characterName");
         }
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.rewardItemList.dataProvider = buildRewardData(this._data);
         }
      }
      
      private function _WelcomeScreen_Array1_c() : Array
      {
         return [this._WelcomeScreen_Group1_c(),this._WelcomeScreen_Group4_c(),this._WelcomeScreen_Group5_c(),this._WelcomeScreen_Group7_c(),this._WelcomeScreen_MultistateButton1_i()];
      }
      
      private function _WelcomeScreen_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 5;
         _loc1_.top = 70;
         _loc1_.mxmlContent = [this._WelcomeScreen_BriskImageDynaLib1_c(),this._WelcomeScreen_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quadrillepaper_welcomescreen";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 476;
         _loc1_.top = 30;
         _loc1_.left = 30;
         _loc1_.gap = 1;
         _loc1_.mxmlContent = [this._WelcomeScreen_Group2_c(),this._WelcomeScreen_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._WelcomeScreen_Rect1_c(),this._WelcomeScreen_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 5;
         _loc1_.right = 5;
         _loc1_.bottomLeftRadiusX = 10;
         _loc1_.bottomLeftRadiusY = 30;
         _loc1_.bottomRightRadiusX = 10;
         _loc1_.bottomRightRadiusY = 30;
         _loc1_.topLeftRadiusX = 10;
         _loc1_.topLeftRadiusY = 30;
         _loc1_.topRightRadiusX = 10;
         _loc1_.topRightRadiusY = 30;
         _loc1_.height = 25;
         _loc1_.maxHeight = 25;
         _loc1_.fill = this._WelcomeScreen_RadialGradient1_c();
         _loc1_.filters = [this._WelcomeScreen_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _WelcomeScreen_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.entries = [this._WelcomeScreen_GradientEntry1_c()];
         return _loc1_;
      }
      
      private function _WelcomeScreen_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 165328;
         _loc1_.ratio = 0.5;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _WelcomeScreen_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 0;
         _loc1_.blurX = 3;
         _loc1_.blurY = 3;
         _loc1_.color = 165328;
         _loc1_.alpha = 0.45;
         return _loc1_;
      }
      
      private function _WelcomeScreen_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.top = 8;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "infoLayerTitle";
         _loc1_.id = "layerTitle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.layerTitle = _loc1_;
         BindingManager.executeBindings(this,"layerTitle",this.layerTitle);
         return _loc1_;
      }
      
      private function _WelcomeScreen_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 10;
         _loc1_.width = 450;
         _loc1_.height = 145;
         _loc1_.mxmlContent = [this._WelcomeScreen_List1_i(),this._WelcomeScreen_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._WelcomeScreen_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.setStyle("skinClass",NextLevelUpRewardItemListSkin);
         _loc1_.id = "rewardItemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardItemList = _loc1_;
         BindingManager.executeBindings(this,"rewardItemList",this.rewardItemList);
         return _loc1_;
      }
      
      private function _WelcomeScreen_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RewardItemRenderer;
         return _loc1_;
      }
      
      private function _WelcomeScreen_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.top = 70;
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
      
      private function _WelcomeScreen_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 100;
         _loc1_.left = 20;
         _loc1_.mxmlContent = [this._WelcomeScreen_StickyNoteComponent1_c(),this._WelcomeScreen_BriskImageDynaLib2_c(),this._WelcomeScreen_BriskImageDynaLib3_i(),this._WelcomeScreen_BriskImageDynaLib4_c(),this._WelcomeScreen_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.horizontalCenter = 0;
         _loc1_.width = 180;
         _loc1_.top = 210;
         _loc1_.height = 65;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._WelcomeScreen_Array9_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_Array9_c() : Array
      {
         return [this._WelcomeScreen_LocaLabel2_i()];
      }
      
      private function _WelcomeScreen_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.verticalCenter = -2;
         _loc1_.horizontalCenter = 0;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "featureBubbleText";
         _loc1_.id = "characterName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.characterName = _loc1_;
         BindingManager.executeBindings(this,"characterName",this.characterName);
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_polaroidframe";
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "welcomeScreen_character";
         _loc1_.top = 10;
         _loc1_.horizontalCenter = -1;
         _loc1_.id = "polaroidImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroidImage = _loc1_;
         BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "postit_tape_top";
         _loc1_.top = -5;
         _loc1_.width = 130;
         _loc1_.horizontalCenter = -1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "postit_tape_top";
         _loc1_.top = 210;
         _loc1_.width = 130;
         _loc1_.horizontalCenter = -1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 250;
         _loc1_.left = 205;
         _loc1_.height = 140;
         _loc1_.mxmlContent = [this._WelcomeScreen_BriskImageDynaLib6_c(),this._WelcomeScreen_BriskImageDynaLib7_c(),this._WelcomeScreen_Group6_c(),this._WelcomeScreen_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "bubble_small";
         _loc1_.bottom = 0;
         _loc1_.left = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
         _loc1_.top = 0;
         _loc1_.left = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 40;
         _loc1_.right = 10;
         _loc1_.mxmlContent = [this._WelcomeScreen_BriskImageDynaLib8_c(),this._WelcomeScreen_BriskImageDynaLib9_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.dynaBmpSourceName = "questmarker_base";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.dynaBmpSourceName = "quest51005";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.top = 40;
         _loc1_.left = 60;
         _loc1_.styleName = "welcomeIntroText";
         _loc1_.width = 180;
         _loc1_.id = "introText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.introText = _loc1_;
         BindingManager.executeBindings(this,"introText",this.introText);
         return _loc1_;
      }
      
      private function _WelcomeScreen_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 18;
         _loc1_.mxmlContent = [this._WelcomeScreen_BriskImageDynaLib10_c(),this._WelcomeScreen_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "bubble-top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 700;
         _loc1_.height = 58;
         _loc1_.top = 10;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._WelcomeScreen_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _WelcomeScreen_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.maxDisplayedLines = 4;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _WelcomeScreen_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 15;
         _loc1_.right = 5;
         _loc1_.width = 184;
         _loc1_.label = "Button";
         _loc1_.id = "but";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.but = _loc1_;
         BindingManager.executeBindings(this,"but",this.but);
         return _loc1_;
      }
      
      public function ___WelcomeScreen_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _WelcomeScreen_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get but() : MultistateButton
      {
         return this._97921but;
      }
      
      public function set but(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._97921but;
         if(_loc2_ !== param1)
         {
            this._97921but = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"but",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get characterName() : LocaLabel
      {
         return this._1790120620characterName;
      }
      
      public function set characterName(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1790120620characterName;
         if(_loc2_ !== param1)
         {
            this._1790120620characterName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterName",_loc2_,param1));
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
      public function get introText() : LocaLabel
      {
         return this._871500217introText;
      }
      
      public function set introText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._871500217introText;
         if(_loc2_ !== param1)
         {
            this._871500217introText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get layerTitle() : LocaLabel
      {
         return this._58259577layerTitle;
      }
      
      public function set layerTitle(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._58259577layerTitle;
         if(_loc2_ !== param1)
         {
            this._58259577layerTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerTitle",_loc2_,param1));
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
      public function get rewardItemList() : List
      {
         return this._1440288096rewardItemList;
      }
      
      public function set rewardItemList(param1:List) : void
      {
         var _loc2_:Object = this._1440288096rewardItemList;
         if(_loc2_ !== param1)
         {
            this._1440288096rewardItemList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardItemList",_loc2_,param1));
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

