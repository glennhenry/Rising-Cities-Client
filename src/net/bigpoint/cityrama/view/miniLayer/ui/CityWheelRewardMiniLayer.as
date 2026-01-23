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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.CityWheelRewardListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class CityWheelRewardMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const COLLECT_REWARDS:String = "COLLECT_REWARDS";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _1932038916collectButton:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1440288096rewardItemList:List;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayCollection;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CityWheelRewardMiniLayer()
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
         bindings = this._CityWheelRewardMiniLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_CityWheelRewardMiniLayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CityWheelRewardMiniLayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 540;
         this.height = 313;
         this.showSparkle = false;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CityWheelRewardMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___CityWheelRewardMiniLayer_MiniLayerWindow1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         CityWheelRewardMiniLayer._watcherSetupUtil = param1;
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
         title = LocaUtils.getString("rcl.miniLayer.citywheel","rcl.miniLayer.citywheel.title.capital");
         this.flavourText.text = LocaUtils.getString("rcl.miniLayer.citywheel","rcl.miniLayer.citywheel.flavour");
         this.collectButton.label = LocaUtils.getString("rcl.miniLayer.citywheel","rcl.miniLayer.citywheel.button.collect");
         this.collectButton.toolTip = LocaUtils.getString("rcl.miniLayer.citywheel","rcl.miniLayer.citywheel.button.tooltip");
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.rewardItemList.dataProvider = this._data;
         }
      }
      
      public function set data(param1:ArrayCollection) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function handleCollectRewards(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(COLLECT_REWARDS,true));
         this.collectButton.enabled = false;
      }
      
      private function _CityWheelRewardMiniLayer_Array1_c() : Array
      {
         return [this._CityWheelRewardMiniLayer_VGroup1_c(),this._CityWheelRewardMiniLayer_BriskImageDynaLib1_c()];
      }
      
      private function _CityWheelRewardMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingBottom = 20;
         _loc1_.gap = -10;
         _loc1_.mxmlContent = [this._CityWheelRewardMiniLayer_HGroup1_c(),this._CityWheelRewardMiniLayer_Group1_c(),this._CityWheelRewardMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelRewardMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 50;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CityWheelRewardMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelRewardMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
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
      
      private function _CityWheelRewardMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CityWheelRewardMiniLayer_HGroup2_c(),this._CityWheelRewardMiniLayer_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelRewardMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CityWheelRewardMiniLayer_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelRewardMiniLayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._CityWheelRewardMiniLayer_ClassFactory1_c();
         _loc1_.maxWidth = 455;
         _loc1_.setStyle("skinClass",CityWheelRewardListSkin);
         _loc1_.id = "rewardItemList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardItemList = _loc1_;
         BindingManager.executeBindings(this,"rewardItemList",this.rewardItemList);
         return _loc1_;
      }
      
      private function _CityWheelRewardMiniLayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RewardItemRenderer;
         return _loc1_;
      }
      
      private function _CityWheelRewardMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
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
      
      private function _CityWheelRewardMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.addEventListener("click",this.__collectButton_click);
         _loc1_.id = "collectButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.collectButton = _loc1_;
         BindingManager.executeBindings(this,"collectButton",this.collectButton);
         return _loc1_;
      }
      
      public function __collectButton_click(param1:MouseEvent) : void
      {
         this.handleCollectRewards(param1);
      }
      
      private function _CityWheelRewardMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.left = 9;
         _loc1_.top = -66;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___CityWheelRewardMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _CityWheelRewardMiniLayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get collectButton() : MultistateButton
      {
         return this._1932038916collectButton;
      }
      
      public function set collectButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1932038916collectButton;
         if(_loc2_ !== param1)
         {
            this._1932038916collectButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"collectButton",_loc2_,param1));
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

