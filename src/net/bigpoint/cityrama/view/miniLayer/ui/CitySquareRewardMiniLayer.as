package net.bigpoint.cityrama.view.miniLayer.ui
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.quest.ui.skin.QuestLayerRewardSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class CitySquareRewardMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const OK_CLICKED:String = "OK_CLICKED";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1641788370okButton:MultistateButton;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _1690977389rewardList:List;
      
      private var _2086222678stateIcon:BriskImageDynaLib;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _success:Boolean;
      
      private var _upsell:Boolean;
      
      private var _currentChallengeId:Number;
      
      private var _drops:Vector.<DropInfoVo>;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CitySquareRewardMiniLayer()
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
         bindings = this._CitySquareRewardMiniLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_CitySquareRewardMiniLayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CitySquareRewardMiniLayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.showAttentionSign = false;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareRewardMiniLayer_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         CitySquareRewardMiniLayer._watcherSetupUtil = param1;
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
      
      public function set successState(param1:Boolean) : void
      {
         this._success = param1;
         invalidateProperties();
      }
      
      public function set upsellState(param1:Boolean) : void
      {
         this._upsell = param1;
      }
      
      public function set data(param1:CitySquareDetailViewVo) : void
      {
         this._data = param1;
         this._dataIsDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:String = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.checkRewards();
            this.stateIcon.visible = this._success;
            if(this._success)
            {
               title = LocaUtils.getString("rcl.citysquare.popup.mini.success","rcl.citysquare.popup.mini.success.header");
               this.okButton.label = LocaUtils.getString("rcl.citysquare.popup.mini.success","rcl.citysquare.popup.mini.success.button.collect");
               this.okButton.styleName = "confirm";
               this.okButton.skin.setCurrentState("down");
               this.okButton.skin.setCurrentState("up");
               this.okButton.showSparkle = true;
               this.polaroidImage.dynaSWFFileName = this._data.eventList[0].gfxId.toString();
               this.polaroidImage.dynaLibName = this._data.eventList[0].gfxId.toString() + "_gui_popup_events";
               if(!this._upsell)
               {
                  _loc1_ = LocaUtils.getString("rcl.citysquarequests." + this._data.eventList[0].localeId,"rcl.citysquarequests." + this._data.eventList[0].localeId + ".layer.success.flavour.challenge." + this._data.eventList[0].currentRewardStage.toString());
                  this.polaroidImage.dynaBmpSourceName = "success_" + this._data.eventList[0].currentRewardStage;
               }
               else
               {
                  _loc1_ = LocaUtils.getString("rcl.citysquarequests.8016000","rcl.citysquarequests.8016000.layer.success.flavour.upselling");
                  this.polaroidImage.dynaBmpSourceName = "success_1";
               }
               this.flavourText.text = _loc1_;
            }
            else
            {
               title = LocaUtils.getString("rcl.citysquare.popup.mini.failure","rcl.citysquare.popup.mini.failure.header");
               this.flavourText.text = LocaUtils.getString("rcl.citysquare.popup.mini.failure","rcl.citysquare.popup.mini.failure.flavor");
               this.polaroidImage.dynaSWFFileName = this._data.eventList[0].gfxId.toString();
               this.polaroidImage.dynaLibName = this._data.eventList[0].gfxId.toString() + "_gui_popup_events";
               this.polaroidImage.dynaBmpSourceName = "fail_" + this._data.eventList[0].currentRewardStage;
               this.okButton.label = LocaUtils.getString("rcl.citysquare.popup.mini.failure","rcl.citysquare.popup.mini.failure.button");
               this.okButton.showSparkle = false;
               this.okButton.styleName = "";
               this.okButton.skin.setCurrentState("down");
               this.okButton.skin.setCurrentState("up");
            }
         }
      }
      
      private function checkRewards() : void
      {
         var _loc1_:ArrayCollection = null;
         var _loc2_:EventChallengeDetailViewVo = null;
         var _loc3_:int = 0;
         if(!this._upsell)
         {
            if(!this._success)
            {
               _loc1_ = this._data.eventList[0].listOfChallenges[this._data.eventList[0].listOfChallenges.length - 1].rewards;
               this._currentChallengeId = this._data.eventList[0].listOfChallenges[this._data.eventList[0].listOfChallenges.length - 1].id;
            }
            else if(this._data != null)
            {
               for each(_loc2_ in this._data.eventList[0].listOfChallenges)
               {
                  _loc3_ = 0;
                  if(_loc2_.state == QuestSystemStateConst.DONE)
                  {
                     _loc3_++;
                     _loc1_ = _loc2_.rewards;
                     this._drops = _loc2_.drops;
                     this._currentChallengeId = _loc2_.id;
                     break;
                  }
               }
            }
         }
         else
         {
            _loc1_ = this._data.eventList[0].rewardCollection;
         }
         this.rewardList.dataProvider = _loc1_;
      }
      
      public function get data() : CitySquareDetailViewVo
      {
         return this._data;
      }
      
      public function get currentChallengeId() : Number
      {
         return this._currentChallengeId;
      }
      
      public function get drops() : Vector.<DropInfoVo>
      {
         return this._drops;
      }
      
      private function _CitySquareRewardMiniLayer_Array1_c() : Array
      {
         return [this._CitySquareRewardMiniLayer_Group1_c(),this._CitySquareRewardMiniLayer_Group2_c(),this._CitySquareRewardMiniLayer_Group3_c(),this._CitySquareRewardMiniLayer_BriskImageDynaLib4_i()];
      }
      
      private function _CitySquareRewardMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 10;
         _loc1_.left = 10;
         _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_BriskImageDynaLib1_c(),this._CitySquareRewardMiniLayer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _CitySquareRewardMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
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
      
      private function _CitySquareRewardMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 30;
         _loc1_.top = 20;
         _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = -5;
         _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_StickyNoteComponent1_c(),this._CitySquareRewardMiniLayer_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.styleName = "blue";
         _loc1_.height = 170;
         _loc1_.width = 245;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareRewardMiniLayer_Array5_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_Array5_c() : Array
      {
         return [this._CitySquareRewardMiniLayer_List1_i(),this._CitySquareRewardMiniLayer_UiInfolayerAlignmentLine1_i()];
      }
      
      private function _CitySquareRewardMiniLayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._CitySquareRewardMiniLayer_ClassFactory1_c();
         _loc1_.top = -16;
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
      
      private function _CitySquareRewardMiniLayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RewardItemRenderer;
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
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
      
      private function _CitySquareRewardMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 245;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.id = "okButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.okButton = _loc1_;
         BindingManager.executeBindings(this,"okButton",this.okButton);
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = -18;
         _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_BriskImageDynaLib3_c(),this._CitySquareRewardMiniLayer_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bubble_small";
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 426;
         _loc1_.height = 40;
         _loc1_.top = 8;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.maxDisplayedLines = 3;
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.left = 9;
         _loc1_.top = -70;
         _loc1_.visible = false;
         _loc1_.id = "stateIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stateIcon = _loc1_;
         BindingManager.executeBindings(this,"stateIcon",this.stateIcon);
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
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
      public function get okButton() : MultistateButton
      {
         return this._1641788370okButton;
      }
      
      public function set okButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1641788370okButton;
         if(_loc2_ !== param1)
         {
            this._1641788370okButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
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
      public function get stateIcon() : BriskImageDynaLib
      {
         return this._2086222678stateIcon;
      }
      
      public function set stateIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2086222678stateIcon;
         if(_loc2_ !== param1)
         {
            this._2086222678stateIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateIcon",_loc2_,param1));
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

