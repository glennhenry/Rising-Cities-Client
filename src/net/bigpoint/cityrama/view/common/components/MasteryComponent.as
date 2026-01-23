package net.bigpoint.cityrama.view.common.components
{
   import com.greensock.TweenMax;
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.mastery.MasteryComponentVo;
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class MasteryComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const SHOW_MASTERY_INFOLAYER:String = "SHOW_MASTERY_INFOLAYER";
      
      public static const HIDE_MASTERY_INFOLAYER:String = "HIDE_MASTERY_INFOLAYER";
      
      public static const COLLECT_MASTERY_CLICKED:String = "COLLECT_MASTERY_CLICKED";
      
      public static const INSTANT_FINISH_MASTERY:String = "INSTANT_FINISH_MASTERY";
      
      private var _1271589544buyButton:DynamicPlusButton;
      
      private var _1434885828buyInstantGroup:VGroup;
      
      private var _1438983993buyInstantLabel:LocaLabel;
      
      private var _1932038916collectButton:MultistateButton;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _96419224masteryGroup:VGroup;
      
      private var _85291001masteryStar0:BriskImageDynaLib;
      
      private var _85291000masteryStar1:BriskImageDynaLib;
      
      private var _85290999masteryStar2:BriskImageDynaLib;
      
      private var _85290998masteryStar3:BriskImageDynaLib;
      
      private var _85290997masteryStar4:BriskImageDynaLib;
      
      private var _1131509414progressBar:SlimProgressBarComponent;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var _1844912971upgradeIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:MasteryComponentVo;
      
      private var _dataChanged:Boolean;
      
      private var _starIcons:Vector.<BriskImageDynaLib>;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function MasteryComponent()
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
         bindings = this._MasteryComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_MasteryComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return MasteryComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._MasteryComponent_HGroup1_c(),this._MasteryComponent_UiInfolayerAlignmentLine1_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         MasteryComponent._watcherSetupUtil = param1;
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
      
      public function set data(param1:MasteryComponentVo) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._data = param1;
            this._dataChanged = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:uint = 0;
         super.commitProperties();
         if(this._dataChanged)
         {
            this._dataChanged = false;
            _loc1_ = true;
            _loc2_ = false;
            _loc3_ = 0;
            if(this._data)
            {
               _loc1_ = this._data.masteryLocked;
               _loc3_ = this._data.currentMasteryIndex;
               _loc2_ = this._data.readyToCollect;
            }
            if(_loc2_ && !_loc1_)
            {
               this.upgradeIcon.dynaBmpSourceName = "mastery_star_icon";
               this.collectButton.visible = this.collectButton.includeInLayout = true;
               this.buyButton.visible = false;
               this.masteryGroup.visible = this.masteryGroup.includeInLayout = false;
               this.collectButton.label = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.button.reward.capital");
            }
            else
            {
               this.collectButton.visible = this.collectButton.includeInLayout = false;
               this.masteryGroup.visible = this.masteryGroup.includeInLayout = true;
               if(this._data)
               {
                  this.buyInstantLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.instant",[this._data.instantFinishPrice]);
                  this.progressBar.progress = this._data.currentProgress / this._data.targetProgress;
               }
               if(_loc1_)
               {
                  this.buyButton.visible = false;
                  this.upgradeIcon.dynaBmpSourceName = "mastery_lock_icon";
                  this.infoLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.mastery.unlocks",[this._data.masteryUnlockLevel]);
               }
               else
               {
                  this.buyButton.visible = true;
                  this.buyButton.showPlus = this._data.amountRC < this._data.instantFinishPrice;
                  this.buyButton.priceToConfirm = this._data.instantFinishPrice;
                  this.upgradeIcon.dynaBmpSourceName = "upgrade_icon";
                  if(_loc3_ < 4)
                  {
                     this.infoLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.progress.normal");
                  }
                  else
                  {
                     this.infoLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.progress.final");
                  }
               }
               var _loc4_:int = 0;
               for each(var _loc5_ in this.starIcons)
               {
                  if(0 < _loc3_ && !_loc1_)
                  {
                     null.dynaBmpSourceName = "mastery_star_blue";
                  }
                  else
                  {
                     null.dynaBmpSourceName = "mastery_star_grey";
                  }
                  _loc4_++;
               }
            }
         }
      }
      
      private function get starIcons() : Vector.<BriskImageDynaLib>
      {
         if(this._starIcons == null)
         {
            this._starIcons = new <BriskImageDynaLib>[this.masteryStar0,this.masteryStar1,this.masteryStar2,this.masteryStar3,this.masteryStar4];
         }
         return this._starIcons;
      }
      
      private function masteryGroupRollOverHandler(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         var _loc2_:int = -1;
         switch(param1.currentTarget)
         {
            case this.masteryStar0:
               _loc2_ = 0;
               break;
            case this.masteryStar1:
               _loc2_ = 1;
               break;
            case this.masteryStar2:
               _loc2_ = 2;
               break;
            case this.masteryStar3:
               _loc2_ = 3;
               break;
            case this.masteryStar4:
               _loc2_ = 4;
         }
         if(this._data.currentMasteryIndex <= _loc2_)
         {
            TweenMax.to(param1.currentTarget,1,{"glowFilter":{
               "color":1821182,
               "alpha":1,
               "blurX":4,
               "blurY":4,
               "strength":4
            }});
         }
         dispatchEvent(new ShowMasteryInfolayerEvent(_loc2_));
      }
      
      private function masteryGroupRollOutHandler(param1:MouseEvent) : void
      {
         TweenMax.to(param1.currentTarget,1,{"glowFilter":{
            "color":65535,
            "alpha":0,
            "blurX":0,
            "blurY":0,
            "strength":1
         }});
         param1.stopPropagation();
         dispatchEvent(new Event(HIDE_MASTERY_INFOLAYER));
      }
      
      private function collectButton_clickHandler(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         dispatchEvent(new Event(COLLECT_MASTERY_CLICKED));
      }
      
      private function buyButton_rollOverHandler(param1:MouseEvent) : void
      {
         if(this._data)
         {
            if(!this._data.masteryLocked && !this._data.readyToCollect)
            {
               var _temp_2:* = this.masteryGroup;
               this.masteryGroup.includeInLayout = false;
               _temp_2.visible = false;
               var _temp_3:* = this.buyInstantGroup;
               var _loc2_:Boolean;
               this.buyInstantGroup.includeInLayout = _loc2_ = true;
               _temp_3.visible = false;
            }
         }
      }
      
      private function buyButton_rollOutHandler(param1:MouseEvent) : void
      {
         if(this._data)
         {
            if(!this._data.masteryLocked && !this._data.readyToCollect)
            {
               var _temp_2:* = this.masteryGroup;
               this.masteryGroup.includeInLayout = true;
               _temp_2.visible = true;
               var _temp_3:* = this.buyInstantGroup;
               var _loc2_:Boolean;
               this.buyInstantGroup.includeInLayout = _loc2_ = false;
               _temp_3.visible = true;
            }
         }
      }
      
      private function instantFinishClickHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(INSTANT_FINISH_MASTERY));
      }
      
      private function _MasteryComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 218;
         _loc1_.mxmlContent = [this._MasteryComponent_Group2_c(),this._MasteryComponent_VGroup1_i(),this._MasteryComponent_MultistateButton1_i(),this._MasteryComponent_VGroup2_i(),this._MasteryComponent_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 31;
         _loc1_.height = 36;
         _loc1_.mxmlContent = [this._MasteryComponent_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.id = "upgradeIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.upgradeIcon = _loc1_;
         BindingManager.executeBindings(this,"upgradeIcon",this.upgradeIcon);
         return _loc1_;
      }
      
      private function _MasteryComponent_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 2;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryComponent_Group3_c(),this._MasteryComponent_Group4_c(),this._MasteryComponent_LocaLabel1_i()];
         _loc1_.id = "masteryGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryGroup = _loc1_;
         BindingManager.executeBindings(this,"masteryGroup",this.masteryGroup);
         return _loc1_;
      }
      
      private function _MasteryComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._MasteryComponent_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 1;
         _loc1_.mxmlContent = [this._MasteryComponent_BriskImageDynaLib2_i(),this._MasteryComponent_BriskImageDynaLib3_i(),this._MasteryComponent_BriskImageDynaLib4_i(),this._MasteryComponent_BriskImageDynaLib5_i(),this._MasteryComponent_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.addEventListener("rollOver",this.__masteryStar0_rollOver);
         _loc1_.addEventListener("rollOut",this.__masteryStar0_rollOut);
         _loc1_.id = "masteryStar0";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar0 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar0",this.masteryStar0);
         return _loc1_;
      }
      
      public function __masteryStar0_rollOver(param1:MouseEvent) : void
      {
         this.masteryGroupRollOverHandler(param1);
      }
      
      public function __masteryStar0_rollOut(param1:MouseEvent) : void
      {
         this.masteryGroupRollOutHandler(param1);
      }
      
      private function _MasteryComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.addEventListener("rollOver",this.__masteryStar1_rollOver);
         _loc1_.addEventListener("rollOut",this.__masteryStar1_rollOut);
         _loc1_.id = "masteryStar1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar1 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar1",this.masteryStar1);
         return _loc1_;
      }
      
      public function __masteryStar1_rollOver(param1:MouseEvent) : void
      {
         this.masteryGroupRollOverHandler(param1);
      }
      
      public function __masteryStar1_rollOut(param1:MouseEvent) : void
      {
         this.masteryGroupRollOutHandler(param1);
      }
      
      private function _MasteryComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.addEventListener("rollOver",this.__masteryStar2_rollOver);
         _loc1_.addEventListener("rollOut",this.__masteryStar2_rollOut);
         _loc1_.id = "masteryStar2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar2 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar2",this.masteryStar2);
         return _loc1_;
      }
      
      public function __masteryStar2_rollOver(param1:MouseEvent) : void
      {
         this.masteryGroupRollOverHandler(param1);
      }
      
      public function __masteryStar2_rollOut(param1:MouseEvent) : void
      {
         this.masteryGroupRollOutHandler(param1);
      }
      
      private function _MasteryComponent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.addEventListener("rollOver",this.__masteryStar3_rollOver);
         _loc1_.addEventListener("rollOut",this.__masteryStar3_rollOut);
         _loc1_.id = "masteryStar3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar3 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar3",this.masteryStar3);
         return _loc1_;
      }
      
      public function __masteryStar3_rollOver(param1:MouseEvent) : void
      {
         this.masteryGroupRollOverHandler(param1);
      }
      
      public function __masteryStar3_rollOut(param1:MouseEvent) : void
      {
         this.masteryGroupRollOutHandler(param1);
      }
      
      private function _MasteryComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.addEventListener("rollOver",this.__masteryStar4_rollOver);
         _loc1_.addEventListener("rollOut",this.__masteryStar4_rollOut);
         _loc1_.id = "masteryStar4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar4 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar4",this.masteryStar4);
         return _loc1_;
      }
      
      public function __masteryStar4_rollOver(param1:MouseEvent) : void
      {
         this.masteryGroupRollOverHandler(param1);
      }
      
      public function __masteryStar4_rollOut(param1:MouseEvent) : void
      {
         this.masteryGroupRollOutHandler(param1);
      }
      
      private function _MasteryComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 15;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MasteryComponent_SlimProgressBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryComponent_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.progress = 0;
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _MasteryComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "residentialProgressComment";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "infoLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoLabel = _loc1_;
         BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
         return _loc1_;
      }
      
      private function _MasteryComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.showSparkle = true;
         _loc1_.percentWidth = 100;
         _loc1_.addEventListener("click",this.__collectButton_click);
         _loc1_.addEventListener("rollOver",this.__collectButton_rollOver);
         _loc1_.addEventListener("rollOut",this.__collectButton_rollOut);
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
         this.collectButton_clickHandler(param1);
      }
      
      public function __collectButton_rollOver(param1:MouseEvent) : void
      {
         this.masteryGroupRollOverHandler(param1);
      }
      
      public function __collectButton_rollOut(param1:MouseEvent) : void
      {
         this.masteryGroupRollOutHandler(param1);
      }
      
      private function _MasteryComponent_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.height = 60;
         _loc1_.percentWidth = 100;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryComponent_LocaLabel2_i()];
         _loc1_.id = "buyInstantGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buyInstantGroup = _loc1_;
         BindingManager.executeBindings(this,"buyInstantGroup",this.buyInstantGroup);
         return _loc1_;
      }
      
      private function _MasteryComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 110;
         _loc1_.width = 110;
         _loc1_.maxDisplayedLines = 4;
         _loc1_.styleName = "residentialProgressComment";
         _loc1_.id = "buyInstantLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buyInstantLabel = _loc1_;
         BindingManager.executeBindings(this,"buyInstantLabel",this.buyInstantLabel);
         return _loc1_;
      }
      
      private function _MasteryComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.useConfirmation = true;
         _loc1_.iconImageName = "dd_button_icon";
         _loc1_.iconLibName = "gui_resources_icons";
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("rollOver",this.__buyButton_rollOver);
         _loc1_.addEventListener("rollOut",this.__buyButton_rollOut);
         _loc1_.addEventListener("click",this.__buyButton_click);
         _loc1_.id = "buyButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buyButton = _loc1_;
         BindingManager.executeBindings(this,"buyButton",this.buyButton);
         return _loc1_;
      }
      
      public function __buyButton_rollOver(param1:MouseEvent) : void
      {
         this.buyButton_rollOverHandler(param1);
      }
      
      public function __buyButton_rollOut(param1:MouseEvent) : void
      {
         this.buyButton_rollOutHandler(param1);
      }
      
      public function __buyButton_click(param1:MouseEvent) : void
      {
         this.instantFinishClickHandler(param1);
      }
      
      private function _MasteryComponent_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 40;
         _loc1_.top = 30;
         _loc1_.right = 40;
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
      
      private function _MasteryComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : DynamicPlusButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._1271589544buyButton;
         if(_loc2_ !== param1)
         {
            this._1271589544buyButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyInstantGroup() : VGroup
      {
         return this._1434885828buyInstantGroup;
      }
      
      public function set buyInstantGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1434885828buyInstantGroup;
         if(_loc2_ !== param1)
         {
            this._1434885828buyInstantGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyInstantGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyInstantLabel() : LocaLabel
      {
         return this._1438983993buyInstantLabel;
      }
      
      public function set buyInstantLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1438983993buyInstantLabel;
         if(_loc2_ !== param1)
         {
            this._1438983993buyInstantLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyInstantLabel",_loc2_,param1));
            }
         }
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
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc2_ !== param1)
         {
            this._1213523686infoLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryGroup() : VGroup
      {
         return this._96419224masteryGroup;
      }
      
      public function set masteryGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._96419224masteryGroup;
         if(_loc2_ !== param1)
         {
            this._96419224masteryGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar0() : BriskImageDynaLib
      {
         return this._85291001masteryStar0;
      }
      
      public function set masteryStar0(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85291001masteryStar0;
         if(_loc2_ !== param1)
         {
            this._85291001masteryStar0 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar0",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar1() : BriskImageDynaLib
      {
         return this._85291000masteryStar1;
      }
      
      public function set masteryStar1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85291000masteryStar1;
         if(_loc2_ !== param1)
         {
            this._85291000masteryStar1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar2() : BriskImageDynaLib
      {
         return this._85290999masteryStar2;
      }
      
      public function set masteryStar2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85290999masteryStar2;
         if(_loc2_ !== param1)
         {
            this._85290999masteryStar2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar3() : BriskImageDynaLib
      {
         return this._85290998masteryStar3;
      }
      
      public function set masteryStar3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85290998masteryStar3;
         if(_loc2_ !== param1)
         {
            this._85290998masteryStar3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar4() : BriskImageDynaLib
      {
         return this._85290997masteryStar4;
      }
      
      public function set masteryStar4(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85290997masteryStar4;
         if(_loc2_ !== param1)
         {
            this._85290997masteryStar4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : SlimProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:SlimProgressBarComponent) : void
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
      
      [Bindable(event="propertyChange")]
      public function get upgradeIcon() : BriskImageDynaLib
      {
         return this._1844912971upgradeIcon;
      }
      
      public function set upgradeIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1844912971upgradeIcon;
         if(_loc2_ !== param1)
         {
            this._1844912971upgradeIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeIcon",_loc2_,param1));
            }
         }
      }
   }
}

