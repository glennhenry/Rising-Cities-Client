package net.bigpoint.cityrama.view.cityWheel.ui.components
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
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelRewardVo;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelTabVo;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.WheelComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.SlimProgressBarTimer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class CityWheelTab extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const BUY_SPIN_TOKEN:String = "BUY_SPIN_TOKEN";
      
      public static const BUY_BUFF_TOKEN:String = "BUY_BUFF_TOKEN";
      
      public static const SPIN_WHEEL:String = "SPIN_WHEEL";
      
      public static const COLLECT_REWARDS:String = "COLLECT_REWARDS";
      
      public static const PLAY_SPIN_SOUND_MAIN:String = "PLAY_SPIN_SOUND_MAIN";
      
      public static const PLAY_STOP_SOUND_MAIN:String = "PLAY_STOP_SOUND_MAIN";
      
      public static const PLAY_SPIN_SOUND_BUFF:String = "PLAY_SPIN_SOUND_BUFF";
      
      public static const PLAY_STOP_SOUND_BUFF:String = "PLAY_STOP_SOUND_BUFF";
      
      public static const PLAY_MAIN_SELECTED_SOUND:String = "PLAY_MAIN_SELECTED_SOUND";
      
      public static const PLAY_BUFF_SELECTED_SOUND:String = "PLAY_BUFF_SELECTED_SOUND";
      
      public static const PLAY_REWARD_SOUND:String = "PLAY_REWARD_SOUND";
      
      public static const SHOW_INFOLAYER_NO_SPIN:String = "SHOW_INFOLAYER_NO_SPIN";
      
      public static const SHOW_INFOLAYER_NO_BUFF:String = "SHOW_INFOLAYER_NO_BUFF";
      
      public static const SHOW_INFOLAYER_BUFF_LOCKED:String = "SHOW_INFOLAYER_BUFF_LOCKED";
      
      public static const HIDE_INFOLAYER:String = "HIDE_INFOLAYER";
      
      private static const WHEEL_SPEED_FAST_TIME_MAIN:Number = 1;
      
      private static const WHEEL_SPEED_FAST_TIME_BUFF:Number = 0.6;
      
      private static const WHEEL_SPEED_IDLE_TIME_MAIN:Number = 18;
      
      private static const WHEEL_SPEED_IDLE_TIME_BUFF:Number = 10.8;
      
      private var _1022398728actionButton:MultistateButton;
      
      private var _1184087807buffLockGroup:Group;
      
      private var _513153895bufftokenGroup:Group;
      
      private var _1223187228colorBackgroundBuff:BriskImageDynaLib;
      
      private var _1222878646colorBackgroundMain:BriskImageDynaLib;
      
      private var _973878475eventTimer:SlimProgressBarTimer;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _895124308lockBackgroundBuff:BriskImageDynaLib;
      
      private var _894815726lockBackgroundMain:BriskImageDynaLib;
      
      private var _967110786lockIconBuffLock:BriskImageDynaLib;
      
      private var _76940926lockIconBuffToken:BriskImageDynaLib;
      
      private var _385327133lockIconMain:BriskImageDynaLib;
      
      private var _1849690867plusBuff:BriskImageDynaLib;
      
      private var _1849382285plusMain:BriskImageDynaLib;
      
      private var _895412750spinLockGroup:Group;
      
      private var _140958188tokenBuff:BriskImageDynaLib;
      
      private var _2102140700tokenBuffDeactivated:BriskImageDynaLib;
      
      private var _79273990tokenGroup:Group;
      
      private var _1825295995tokenIconBuff:BriskImageDynaLib;
      
      private var _1825003939tokenIconLock:BriskImageDynaLib;
      
      private var _1824987413tokenIconMain:BriskImageDynaLib;
      
      private var _141266770tokenMain:BriskImageDynaLib;
      
      private var _1025249346tokenMainDeactivated:BriskImageDynaLib;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var _878929322uiInfolayerAlignmentLine2:UiInfolayerAlignmentLine;
      
      private var _1333110194wheelBuff:WheelComponent;
      
      private var _1332801612wheelMain:WheelComponent;
      
      private var _1166052085wheelStateBuffLabel:LocaLabel;
      
      private var _1473106075wheelStateMainLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isRewardAvailable:Boolean;
      
      private var _hasSpinToken:Boolean;
      
      private var _hasBuffToken:Boolean;
      
      private var _data:CityWheelTabVo;
      
      private var _dataDirty:Boolean;
      
      private var _rewardIndexes:Vector.<int>;
      
      private var _buffIndex:int = -1;
      
      private var _drawnRewards:Vector.<CityWheelRewardDTO>;
      
      private var _drawnBuff:ConfigCityWheelBuffDTO;
      
      private var _playJackpotAnimation:Boolean;
      
      private var _disposing:Boolean = false;
      
      private var _mainAnimationHelper:CityWheelAnimationHelper;
      
      private var _buffAnimationHelper:CityWheelAnimationHelper;
      
      private var _respinTriggered:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CityWheelTab()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._rewardIndexes = new Vector.<int>(0);
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._CityWheelTab_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_cityWheel_ui_components_CityWheelTabWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CityWheelTab[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.top = -18;
         this.mxmlContent = [this._CityWheelTab_VGroup1_c()];
         this.addEventListener("creationComplete",this.___CityWheelTab_Group1_creationComplete);
         this.addEventListener("removedFromStage",this.___CityWheelTab_Group1_removedFromStage);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      private static function lockWheel(param1:WheelComponent, param2:Boolean) : void
      {
         if(param1)
         {
            param1.alpha = param2 ? 1 : 0.3;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         CityWheelTab._watcherSetupUtil = param1;
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.headerTextLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.headline.capital");
         this.actionButton.label = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.spin");
         this.actionButton.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.spinit");
         this.initAnimationHelpers();
      }
      
      private function initAnimationHelpers() : void
      {
         var _loc1_:CityWheelAnimationSettingsVo = null;
         if(this._mainAnimationHelper == null)
         {
            _loc1_ = new CityWheelAnimationSettingsVo();
            _loc1_.idleAnimationDuration = WHEEL_SPEED_IDLE_TIME_MAIN;
            _loc1_.spinAnimationCycleDuration = WHEEL_SPEED_FAST_TIME_MAIN;
            _loc1_.spinDecelerationDuration = 3;
            this._mainAnimationHelper = new CityWheelAnimationHelper(this.wheelMain,_loc1_);
            this._mainAnimationHelper.init();
         }
         if(this._buffAnimationHelper == null)
         {
            _loc1_ = new CityWheelAnimationSettingsVo();
            _loc1_.idleAnimationDuration = WHEEL_SPEED_IDLE_TIME_BUFF;
            _loc1_.spinAnimationCycleDuration = WHEEL_SPEED_FAST_TIME_BUFF;
            _loc1_.spinDecelerationDuration = 3;
            this._buffAnimationHelper = new CityWheelAnimationHelper(this.wheelBuff,_loc1_);
            this._buffAnimationHelper.init();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty && Boolean(this._data))
         {
            if(this.isWheelMainSpinning || this.isWheelBuffSpinning)
            {
               return;
            }
            this._dataDirty = false;
            this.wheelMain.dataGroup.dataProvider = this._data.rewardData;
            this.wheelBuff.dataGroup.dataProvider = this._data.buffData;
            this._hasSpinToken = this._data.numSpinTokens > 0;
            this._hasBuffToken = this._data.numBuffTokens > 0;
            this.setWheelStates();
            this.setTimer();
            this.initAnimationHelpers();
            this._mainAnimationHelper.init();
            this._buffAnimationHelper.init();
         }
      }
      
      private function setTimer() : void
      {
         if(this._disposing)
         {
            return;
         }
         if(this._data.availabilityTimer)
         {
            this.eventTimer.data = this._data.availabilityTimer;
            this.eventTimer.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.timeline",[LocaUtils.getDurationHM((this._data.availabilityTimer.targetTime - this._data.availabilityTimer.currentTime) / 1000)]);
            TweenMax.delayedCall(60,this.setTimer);
         }
      }
      
      private function setWheelStates() : void
      {
         if(this.isWheelMainSpinning)
         {
            return;
         }
         this.enableMainWheel();
         this.enableBuffWheel();
         lockWheel(this.wheelMain,this._hasSpinToken);
         lockWheel(this.wheelBuff,this._hasSpinToken && this._hasBuffToken);
         if(!this._hasSpinToken)
         {
            this.tokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.spintoken.userhasnt");
            this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.noSpin");
         }
         else
         {
            this.tokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.spintoken.userhas",[this._data.numSpinTokens]);
            if(this._hasBuffToken)
            {
               this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.bothAvailable");
            }
            else
            {
               this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.noBuff");
            }
         }
      }
      
      private function enableMainWheel() : void
      {
         this.tokenMain.visible = this.tokenMain.includeInLayout = this._hasSpinToken;
         this.lockBackgroundMain.visible = this.lockBackgroundMain.includeInLayout = !this._hasSpinToken;
         this.lockIconMain.visible = this.lockIconMain.includeInLayout = !this._hasSpinToken;
         this.spinLockGroup.mouseEnabled = this.spinLockGroup.mouseChildren = !this._hasSpinToken;
         this.tokenMainDeactivated.visible = this.tokenMainDeactivated.includeInLayout = !this._hasSpinToken;
         this.actionButton.enabled = this._hasSpinToken;
         if(this._hasSpinToken)
         {
            this.tokenIconMain.alpha = this.colorBackgroundMain.alpha = 1;
            this.wheelStateMainLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.mainWheel.status.active");
         }
         else
         {
            this.tokenIconMain.alpha = this.colorBackgroundMain.alpha = 0.3;
            this.wheelStateMainLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.mainWheel.status.inActive");
         }
      }
      
      private function enableBuffWheel() : void
      {
         if(this._data.numBuffTokens > 0)
         {
            if(this._hasSpinToken)
            {
               this.bufftokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.bufftoken.userhas",[this._data.numBuffTokens]);
            }
            else
            {
               this.bufftokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.bufftoken.userhasbutlocked",[this._data.numBuffTokens]);
            }
         }
         else if(this._hasSpinToken)
         {
            this.bufftokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.bufftoken.userhasnt");
         }
         else
         {
            this.bufftokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.bufftoken.userhasntbutlocked");
         }
         if(this._hasSpinToken && this._hasBuffToken)
         {
            this.tokenIconBuff.alpha = this.colorBackgroundBuff.alpha = 1;
            this.tokenBuff.visible = this.tokenBuff.includeInLayout = true;
            this.lockBackgroundBuff.visible = this.lockBackgroundBuff.includeInLayout = false;
            this.buffLockGroup.mouseEnabled = this.buffLockGroup.mouseChildren = false;
            this.lockIconBuffLock.visible = this.lockIconBuffLock.includeInLayout = false;
            this.lockIconBuffToken.visible = this.lockIconBuffToken.includeInLayout = false;
            this.tokenBuffDeactivated.visible = this.tokenBuffDeactivated.includeInLayout = false;
            this.plusBuff.visible = this.plusBuff.includeInLayout = true;
            this.plusMain.visible = this.plusBuff.includeInLayout = true;
            this.tokenIconLock.visible = this.tokenIconLock.includeInLayout = false;
            this.wheelStateBuffLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buffWheel.status.active");
         }
         else
         {
            this.tokenIconBuff.alpha = this.colorBackgroundBuff.alpha = 0.3;
            if(this._hasSpinToken)
            {
               this.lockIconBuffLock.visible = this.lockIconBuffLock.includeInLayout = false;
               this.tokenIconLock.visible = this.tokenIconLock.includeInLayout = false;
               this.tokenBuff.visible = this.tokenBuff.includeInLayout = false;
               this.lockBackgroundBuff.visible = this.lockBackgroundBuff.includeInLayout = true;
               this.buffLockGroup.mouseEnabled = this.buffLockGroup.mouseChildren = true;
               this.plusBuff.visible = this.plusBuff.includeInLayout = true;
               this.lockIconBuffToken.visible = this.lockIconBuffToken.includeInLayout = true;
               this.tokenBuffDeactivated.visible = this.tokenBuffDeactivated.includeInLayout = true;
               this.wheelStateBuffLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buffWheel.status.inActive");
            }
            else
            {
               this.lockIconBuffToken.visible = this.lockIconBuffToken.includeInLayout = false;
               this.plusBuff.visible = this.plusBuff.includeInLayout = false;
               this.tokenBuff.visible = this.tokenBuff.includeInLayout = false;
               this.lockBackgroundBuff.visible = this.lockBackgroundBuff.includeInLayout = true;
               this.buffLockGroup.mouseEnabled = this.buffLockGroup.mouseChildren = true;
               this.lockIconBuffLock.visible = this.lockIconBuffLock.includeInLayout = true;
               this.tokenIconLock.visible = this.tokenIconLock.includeInLayout = true;
               this.tokenBuffDeactivated.visible = this.tokenBuffDeactivated.includeInLayout = true;
               this.wheelStateBuffLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buffWheel.status.locked");
            }
         }
      }
      
      private function spinWheelMainCompleted() : void
      {
         if(this._rewardIndexes.length == 0)
         {
            if(this._playJackpotAnimation)
            {
               this._playJackpotAnimation = false;
               this.playJackpotAnimation();
            }
            else
            {
               this.actionButton.enabled = true;
               this.actionButton.label = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.collectReward");
               this.actionButton.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.collect");
               this.actionButton.styleName = "confirm";
               this._isRewardAvailable = true;
               dispatchEvent(new Event(PLAY_REWARD_SOUND));
            }
         }
         else
         {
            TweenMax.delayedCall(1,this.playRespinAnimation);
         }
      }
      
      private function reSpinWheelMainCompleted() : void
      {
         this.actionButton.enabled = true;
         this.actionButton.label = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.collectReward");
         this.actionButton.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.collect");
         this.actionButton.styleName = "confirm";
         this._isRewardAvailable = true;
         dispatchEvent(new Event(PLAY_REWARD_SOUND));
      }
      
      private function playJackpotAnimation() : void
      {
         this._mainAnimationHelper.playJackpotAnimation(this.spinWheelMainCompleted);
      }
      
      private function playRespinAnimation() : void
      {
         this._respinTriggered = true;
         this._mainAnimationHelper.spinWheel(this.reSpinWheelMainCompleted);
         this.actionButton.enabled = true;
         this.actionButton.label = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.stop");
         this.actionButton.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.stop");
         TweenMax.delayedCall(3,this._mainAnimationHelper.stopWheelOnIndex,[this._rewardIndexes.pop()]);
      }
      
      private function actionButton_clickHandler(param1:MouseEvent) : void
      {
         if(!this._isRewardAvailable)
         {
            if(!this.isWheelMainSpinning)
            {
               dispatchEvent(new Event(SPIN_WHEEL,true));
               this.actionButton.enabled = false;
               this.actionButton.label = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.stop");
               this.actionButton.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.stop");
               this._rewardIndexes = new Vector.<int>();
               this._mainAnimationHelper.spinWheel(this.spinWheelMainCompleted);
               if(this._hasBuffToken)
               {
                  this._buffAnimationHelper.spinWheel(null);
               }
            }
            else
            {
               this.actionButton.enabled = false;
               this.actionButton.label = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.stop");
               this.actionButton.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.stop");
               this.finishOffWheelSpin();
            }
         }
         else
         {
            dispatchEvent(new Event(COLLECT_REWARDS,true));
            this._isRewardAvailable = false;
            this.actionButton.label = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.spin");
            this.actionButton.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.spinit");
            this.actionButton.styleName = null;
            this.setWheelStates();
            this.actionButton.enabled = false;
         }
      }
      
      private function tokenMain_rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = this.plusMain;
         this.plusMain.scaleY = 1.05;
         _temp_1.scaleX = 1.05;
      }
      
      private function tokenMain_rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = this.plusMain;
         this.plusMain.scaleY = 1;
         _temp_1.scaleX = 1;
      }
      
      private function tokenBuff_rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = this.plusBuff;
         this.plusBuff.scaleY = 1.05;
         _temp_1.scaleX = 1.05;
      }
      
      private function tokenBuff_rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = this.plusBuff;
         this.plusBuff.scaleY = 1;
         _temp_1.scaleX = 1;
      }
      
      private function buyTokensHandler(param1:MouseEvent) : void
      {
         if(Boolean(this.plusMain.includeInLayout) && Boolean(this.plusMain.visible))
         {
            dispatchEvent(new Event(BUY_SPIN_TOKEN));
         }
      }
      
      private function buyBuffsHandler(param1:MouseEvent) : void
      {
         if(Boolean(this.plusBuff.includeInLayout) && Boolean(this.plusBuff.visible))
         {
            dispatchEvent(new Event(BUY_BUFF_TOKEN));
         }
      }
      
      public function set data(param1:CityWheelTabVo) : void
      {
         if(this.isWheelMainSpinning || this.isWheelBuffSpinning)
         {
            return;
         }
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._dataDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      public function get isWheelMainSpinning() : Boolean
      {
         if(this._mainAnimationHelper)
         {
            return this._mainAnimationHelper.isWheelSpinning;
         }
         return false;
      }
      
      public function get isWheelBuffSpinning() : Boolean
      {
         if(this._buffAnimationHelper)
         {
            return this._buffAnimationHelper.isWheelSpinning;
         }
         return false;
      }
      
      public function setDrawnRewardsAndBuff(param1:Vector.<CityWheelRewardDTO>, param2:ConfigCityWheelBuffDTO) : void
      {
         this._respinTriggered = false;
         this._drawnRewards = param1;
         this._drawnBuff = param2;
         if(this.isWheelMainSpinning)
         {
            TweenMax.delayedCall(2,this.finishOffWheelSpin);
         }
         this.actionButton.enabled = true;
      }
      
      private function finishOffWheelSpin() : void
      {
         var _loc1_:int = 0;
         var _loc3_:ConfigCityWheelBuffDTO = null;
         var _loc4_:CityWheelRewardDTO = null;
         var _loc5_:CityWheelRewardVo = null;
         if(this._respinTriggered)
         {
            return;
         }
         if(this._mainAnimationHelper.isWheelStopping || this._buffAnimationHelper.isWheelStopping || this._rewardIndexes.length > 0)
         {
            return;
         }
         TweenMax.killDelayedCallsTo(this.finishOffWheelSpin);
         var _loc2_:int = 0;
         if(this._buffAnimationHelper.isWheelSpinning)
         {
            if(this._drawnBuff != null)
            {
               for each(_loc3_ in this._data.buffData)
               {
                  if(_loc3_.id == this._drawnBuff.id)
                  {
                     _loc1_ = _loc2_;
                     _loc2_ = 0;
                     break;
                  }
                  _loc2_++;
               }
            }
         }
         for each(_loc4_ in this._drawnRewards)
         {
            if(_loc4_.rewardType != ServerTagConstants.BUFF_HARVEST)
            {
               for each(_loc5_ in this._data.rewardData)
               {
                  if(_loc5_.rewardConfigId == _loc4_.configId && _loc5_.outputType == _loc4_.type && _loc5_.rewardType == _loc4_.rewardType)
                  {
                     this._rewardIndexes.push(_loc2_);
                     _loc2_ = 0;
                     break;
                  }
                  _loc2_++;
               }
            }
         }
         if(this._rewardIndexes.length == 0)
         {
            this.spinWheelMainCompleted();
            throw new RamaCityError("The reward id could not be found");
         }
         if(this._drawnBuff && this.isWheelBuffSpinning && this._drawnBuff.isJackpot)
         {
            this._playJackpotAnimation = true;
         }
         if(this.isWheelBuffSpinning)
         {
            this._buffAnimationHelper.stopWheelOnIndex(_loc1_);
            TweenMax.delayedCall(1,this._mainAnimationHelper.stopWheelOnIndex,[this._rewardIndexes.pop(),this._playJackpotAnimation]);
         }
         else
         {
            TweenMax.killDelayedCallsTo(this._mainAnimationHelper.stopWheelOnIndex);
            this._mainAnimationHelper.stopWheelOnIndex(this._rewardIndexes.pop(),this._playJackpotAnimation);
         }
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         TweenMax.killDelayedCallsTo(this.setTimer);
         this._disposing = true;
      }
      
      private function lockGroupRollOverHandler(param1:MouseEvent) : void
      {
         if(param1.target is UIComponent)
         {
            switch((param1.target as UIComponent).id)
            {
               case "buffLockGroup":
                  if(this._hasBuffToken)
                  {
                     if(!this._hasSpinToken)
                     {
                        dispatchEvent(new Event(SHOW_INFOLAYER_BUFF_LOCKED));
                     }
                     break;
                  }
                  dispatchEvent(new Event(SHOW_INFOLAYER_NO_BUFF));
                  break;
               case "spinLockGroup":
                  if(!this._hasSpinToken)
                  {
                     dispatchEvent(new Event(SHOW_INFOLAYER_NO_SPIN));
                  }
            }
         }
      }
      
      private function lockGroupRollOutHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(HIDE_INFOLAYER));
      }
      
      private function _CityWheelTab_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "top";
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._CityWheelTab_Group2_c(),this._CityWheelTab_HGroup4_c(),this._CityWheelTab_Group4_c(),this._CityWheelTab_Group15_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CityWheelTab_HGroup1_c(),this._CityWheelTab_Group3_c(),this._CityWheelTab_HGroup2_c(),this._CityWheelTab_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._CityWheelTab_BlueBarComponent1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentHeight = 100;
         _loc1_.width = 574;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 574;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 50;
         _loc1_.width = 50;
         _loc1_.left = 50;
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "headline_icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 30;
         _loc1_.paddingTop = 2;
         _loc1_.mxmlContent = [this._CityWheelTab_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStyle";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.maxWidth = 356;
         _loc1_.id = "headerTextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerTextLabel = _loc1_;
         BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
         return _loc1_;
      }
      
      private function _CityWheelTab_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 17;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 32;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib2_c(),this._CityWheelTab_SlimProgressBarTimer1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
         _loc1_.width = 18;
         _loc1_.height = 17;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_SlimProgressBarTimer1_i() : SlimProgressBarTimer
      {
         var _loc1_:SlimProgressBarTimer = new SlimProgressBarTimer();
         _loc1_.progressBarTint = 10739019;
         _loc1_.revertProgress = true;
         _loc1_.width = 330;
         _loc1_.id = "eventTimer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventTimer = _loc1_;
         BindingManager.executeBindings(this,"eventTimer",this.eventTimer);
         return _loc1_;
      }
      
      private function _CityWheelTab_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 28;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CityWheelTab_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "flavorText";
         _loc1_.percentWidth = 85;
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _CityWheelTab_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CityWheelTab_Group5_c(),this._CityWheelTab_Group8_c(),this._CityWheelTab_Group11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 10;
         _loc1_.left = -32;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib3_c(),this._CityWheelTab_Group6_i(),this._CityWheelTab_Group7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "background_main";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 5;
         _loc1_.top = 26;
         _loc1_.width = 69;
         _loc1_.height = 69;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib4_i(),this._CityWheelTab_BriskImageDynaLib5_i(),this._CityWheelTab_BriskImageDynaLib6_i(),this._CityWheelTab_BriskImageDynaLib7_i()];
         _loc1_.addEventListener("rollOver",this.__tokenGroup_rollOver);
         _loc1_.addEventListener("rollOut",this.__tokenGroup_rollOut);
         _loc1_.addEventListener("click",this.__tokenGroup_click);
         _loc1_.id = "tokenGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tokenGroup = _loc1_;
         BindingManager.executeBindings(this,"tokenGroup",this.tokenGroup);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "token_background";
         _loc1_.id = "tokenMain";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tokenMain = _loc1_;
         BindingManager.executeBindings(this,"tokenMain",this.tokenMain);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "token_background_locked";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "tokenMainDeactivated";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tokenMainDeactivated = _loc1_;
         BindingManager.executeBindings(this,"tokenMainDeactivated",this.tokenMainDeactivated);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "token_icon_spin";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "tokenIconMain";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tokenIconMain = _loc1_;
         BindingManager.executeBindings(this,"tokenIconMain",this.tokenIconMain);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = 48;
         _loc1_.top = -1;
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
         _loc1_.id = "plusMain";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusMain = _loc1_;
         BindingManager.executeBindings(this,"plusMain",this.plusMain);
         return _loc1_;
      }
      
      public function __tokenGroup_rollOver(param1:MouseEvent) : void
      {
         this.tokenMain_rollOverHandler(param1);
      }
      
      public function __tokenGroup_rollOut(param1:MouseEvent) : void
      {
         this.tokenMain_rollOutHandler(param1);
      }
      
      public function __tokenGroup_click(param1:MouseEvent) : void
      {
         this.buyTokensHandler(param1);
      }
      
      private function _CityWheelTab_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 16;
         _loc1_.left = 100;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib8_i(),this._CityWheelTab_WheelComponent1_i(),this._CityWheelTab_BriskImageDynaLib9_c(),this._CityWheelTab_LocaLabel3_i(),this._CityWheelTab_UiInfolayerAlignmentLine1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "colorbackground_main";
         _loc1_.id = "colorBackgroundMain";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.colorBackgroundMain = _loc1_;
         BindingManager.executeBindings(this,"colorBackgroundMain",this.colorBackgroundMain);
         return _loc1_;
      }
      
      private function _CityWheelTab_WheelComponent1_i() : WheelComponent
      {
         var _loc1_:WheelComponent = new WheelComponent();
         _loc1_.width = 520;
         _loc1_.height = 95;
         _loc1_.elementWidth = 130;
         _loc1_.itemRenderer = this._CityWheelTab_ClassFactory1_c();
         _loc1_.id = "wheelMain";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.wheelMain = _loc1_;
         BindingManager.executeBindings(this,"wheelMain",this.wheelMain);
         return _loc1_;
      }
      
      private function _CityWheelTab_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CityWheelRewardItemRenderer;
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "shadow_main";
         _loc1_.top = -1;
         _loc1_.mouseEnabled = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "flavorText";
         _loc1_.maxWidth = 180;
         _loc1_.width = 180;
         _loc1_.left = 10;
         _loc1_.top = -9;
         _loc1_.setStyle("textAlign","left");
         _loc1_.id = "wheelStateMainLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.wheelStateMainLabel = _loc1_;
         BindingManager.executeBindings(this,"wheelStateMainLabel",this.wheelStateMainLabel);
         return _loc1_;
      }
      
      private function _CityWheelTab_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
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
      
      private function _CityWheelTab_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 133;
         _loc1_.left = -32;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib10_c(),this._CityWheelTab_Group9_i(),this._CityWheelTab_Group10_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "background_buff";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_Group9_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 5;
         _loc1_.top = 6;
         _loc1_.width = 69;
         _loc1_.height = 69;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib11_i(),this._CityWheelTab_BriskImageDynaLib12_i(),this._CityWheelTab_BriskImageDynaLib13_c(),this._CityWheelTab_BriskImageDynaLib14_i(),this._CityWheelTab_BriskImageDynaLib15_i(),this._CityWheelTab_BriskImageDynaLib16_i()];
         _loc1_.addEventListener("rollOver",this.__bufftokenGroup_rollOver);
         _loc1_.addEventListener("rollOut",this.__bufftokenGroup_rollOut);
         _loc1_.addEventListener("click",this.__bufftokenGroup_click);
         _loc1_.id = "bufftokenGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bufftokenGroup = _loc1_;
         BindingManager.executeBindings(this,"bufftokenGroup",this.bufftokenGroup);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "token_background";
         _loc1_.id = "tokenBuff";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tokenBuff = _loc1_;
         BindingManager.executeBindings(this,"tokenBuff",this.tokenBuff);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "token_background_locked";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "tokenBuffDeactivated";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tokenBuffDeactivated = _loc1_;
         BindingManager.executeBindings(this,"tokenBuffDeactivated",this.tokenBuffDeactivated);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "token_icon_sparkle";
         _loc1_.top = -8;
         _loc1_.left = -3;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib14_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "token_icon_buff";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "tokenIconBuff";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tokenIconBuff = _loc1_;
         BindingManager.executeBindings(this,"tokenIconBuff",this.tokenIconBuff);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib15_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = 48;
         _loc1_.top = -1;
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
         _loc1_.id = "plusBuff";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusBuff = _loc1_;
         BindingManager.executeBindings(this,"plusBuff",this.plusBuff);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib16_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = 48;
         _loc1_.top = -5;
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "token_icon_lock";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "tokenIconLock";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tokenIconLock = _loc1_;
         BindingManager.executeBindings(this,"tokenIconLock",this.tokenIconLock);
         return _loc1_;
      }
      
      public function __bufftokenGroup_rollOver(param1:MouseEvent) : void
      {
         this.tokenBuff_rollOverHandler(param1);
      }
      
      public function __bufftokenGroup_rollOut(param1:MouseEvent) : void
      {
         this.tokenBuff_rollOutHandler(param1);
      }
      
      public function __bufftokenGroup_click(param1:MouseEvent) : void
      {
         this.buyBuffsHandler(param1);
      }
      
      private function _CityWheelTab_Group10_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 16;
         _loc1_.left = 100;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib17_i(),this._CityWheelTab_WheelComponent2_i(),this._CityWheelTab_BriskImageDynaLib18_c(),this._CityWheelTab_LocaLabel4_i(),this._CityWheelTab_BriskImageDynaLib19_c(),this._CityWheelTab_BriskImageDynaLib20_c(),this._CityWheelTab_UiInfolayerAlignmentLine2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib17_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "colorbackground_buff";
         _loc1_.id = "colorBackgroundBuff";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.colorBackgroundBuff = _loc1_;
         BindingManager.executeBindings(this,"colorBackgroundBuff",this.colorBackgroundBuff);
         return _loc1_;
      }
      
      private function _CityWheelTab_WheelComponent2_i() : WheelComponent
      {
         var _loc1_:WheelComponent = new WheelComponent();
         _loc1_.width = 520;
         _loc1_.height = 62;
         _loc1_.elementWidth = 130;
         _loc1_.itemRenderer = this._CityWheelTab_ClassFactory2_c();
         _loc1_.id = "wheelBuff";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.wheelBuff = _loc1_;
         BindingManager.executeBindings(this,"wheelBuff",this.wheelBuff);
         return _loc1_;
      }
      
      private function _CityWheelTab_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CityWheelBuffItemRenderer;
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib18_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "shadow_buff";
         _loc1_.top = -1;
         _loc1_.left = -1;
         _loc1_.mouseEnabled = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "flavorText";
         _loc1_.maxWidth = 180;
         _loc1_.width = 180;
         _loc1_.left = 10;
         _loc1_.top = -9;
         _loc1_.setStyle("textAlign","left");
         _loc1_.id = "wheelStateBuffLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.wheelStateBuffLabel = _loc1_;
         BindingManager.executeBindings(this,"wheelStateBuffLabel",this.wheelStateBuffLabel);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib19_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "wheel_spark";
         _loc1_.top = -23;
         _loc1_.left = -13;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib20_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "wheel_spark";
         _loc1_.top = -12;
         _loc1_.left = 502;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_UiInfolayerAlignmentLine2_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.top = 40;
         _loc1_.right = 0;
         _loc1_.lineId = 1;
         _loc1_.id = "uiInfolayerAlignmentLine2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine2 = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine2",this.uiInfolayerAlignmentLine2);
         return _loc1_;
      }
      
      private function _CityWheelTab_Group11_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 242;
         _loc1_.top = -3;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib21_c(),this._CityWheelTab_Group12_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib21_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.mouseEnabled = false;
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "reward_frame";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_Group12_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 10;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._CityWheelTab_Group13_i(),this._CityWheelTab_Group14_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_Group13_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 50;
         _loc1_.width = 152;
         _loc1_.height = 62;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib22_i(),this._CityWheelTab_BriskImageDynaLib23_i()];
         _loc1_.addEventListener("rollOver",this.__spinLockGroup_rollOver);
         _loc1_.addEventListener("rollOut",this.__spinLockGroup_rollOut);
         _loc1_.id = "spinLockGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.spinLockGroup = _loc1_;
         BindingManager.executeBindings(this,"spinLockGroup",this.spinLockGroup);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib22_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "lock_background";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "lockBackgroundMain";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockBackgroundMain = _loc1_;
         BindingManager.executeBindings(this,"lockBackgroundMain",this.lockBackgroundMain);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib23_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "lock_icon_token";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "lockIconMain";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockIconMain = _loc1_;
         BindingManager.executeBindings(this,"lockIconMain",this.lockIconMain);
         return _loc1_;
      }
      
      public function __spinLockGroup_rollOver(param1:MouseEvent) : void
      {
         this.lockGroupRollOverHandler(param1);
      }
      
      public function __spinLockGroup_rollOut(param1:MouseEvent) : void
      {
         this.lockGroupRollOutHandler(param1);
      }
      
      private function _CityWheelTab_Group14_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 151;
         _loc1_.width = 152;
         _loc1_.height = 62;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib24_i(),this._CityWheelTab_BriskImageDynaLib25_i(),this._CityWheelTab_BriskImageDynaLib26_i()];
         _loc1_.addEventListener("rollOver",this.__buffLockGroup_rollOver);
         _loc1_.addEventListener("rollOut",this.__buffLockGroup_rollOut);
         _loc1_.id = "buffLockGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buffLockGroup = _loc1_;
         BindingManager.executeBindings(this,"buffLockGroup",this.buffLockGroup);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib24_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "lock_background";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "lockBackgroundBuff";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockBackgroundBuff = _loc1_;
         BindingManager.executeBindings(this,"lockBackgroundBuff",this.lockBackgroundBuff);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib25_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "lock_icon_token";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "lockIconBuffToken";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockIconBuffToken = _loc1_;
         BindingManager.executeBindings(this,"lockIconBuffToken",this.lockIconBuffToken);
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib26_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.dynaBmpSourceName = "lock_icon_lock";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "lockIconBuffLock";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockIconBuffLock = _loc1_;
         BindingManager.executeBindings(this,"lockIconBuffLock",this.lockIconBuffLock);
         return _loc1_;
      }
      
      public function __buffLockGroup_rollOver(param1:MouseEvent) : void
      {
         this.lockGroupRollOverHandler(param1);
      }
      
      public function __buffLockGroup_rollOut(param1:MouseEvent) : void
      {
         this.lockGroupRollOutHandler(param1);
      }
      
      private function _CityWheelTab_Group15_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CityWheelTab_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 180;
         _loc1_.left = 306;
         _loc1_.addEventListener("click",this.__actionButton_click);
         _loc1_.id = "actionButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.actionButton = _loc1_;
         BindingManager.executeBindings(this,"actionButton",this.actionButton);
         return _loc1_;
      }
      
      public function __actionButton_click(param1:MouseEvent) : void
      {
         this.actionButton_clickHandler(param1);
      }
      
      public function ___CityWheelTab_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      public function ___CityWheelTab_Group1_removedFromStage(param1:Event) : void
      {
         this.removedFromStageHandler(param1);
      }
      
      private function _CityWheelTab_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine.alignment");
         result[1] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine2.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton() : MultistateButton
      {
         return this._1022398728actionButton;
      }
      
      public function set actionButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1022398728actionButton;
         if(_loc2_ !== param1)
         {
            this._1022398728actionButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buffLockGroup() : Group
      {
         return this._1184087807buffLockGroup;
      }
      
      public function set buffLockGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1184087807buffLockGroup;
         if(_loc2_ !== param1)
         {
            this._1184087807buffLockGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buffLockGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bufftokenGroup() : Group
      {
         return this._513153895bufftokenGroup;
      }
      
      public function set bufftokenGroup(param1:Group) : void
      {
         var _loc2_:Object = this._513153895bufftokenGroup;
         if(_loc2_ !== param1)
         {
            this._513153895bufftokenGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bufftokenGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get colorBackgroundBuff() : BriskImageDynaLib
      {
         return this._1223187228colorBackgroundBuff;
      }
      
      public function set colorBackgroundBuff(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1223187228colorBackgroundBuff;
         if(_loc2_ !== param1)
         {
            this._1223187228colorBackgroundBuff = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"colorBackgroundBuff",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get colorBackgroundMain() : BriskImageDynaLib
      {
         return this._1222878646colorBackgroundMain;
      }
      
      public function set colorBackgroundMain(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1222878646colorBackgroundMain;
         if(_loc2_ !== param1)
         {
            this._1222878646colorBackgroundMain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"colorBackgroundMain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventTimer() : SlimProgressBarTimer
      {
         return this._973878475eventTimer;
      }
      
      public function set eventTimer(param1:SlimProgressBarTimer) : void
      {
         var _loc2_:Object = this._973878475eventTimer;
         if(_loc2_ !== param1)
         {
            this._973878475eventTimer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventTimer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc2_ !== param1)
         {
            this._949820541flavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerTextLabel() : LocaLabel
      {
         return this._1105049158headerTextLabel;
      }
      
      public function set headerTextLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1105049158headerTextLabel;
         if(_loc2_ !== param1)
         {
            this._1105049158headerTextLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerTextLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockBackgroundBuff() : BriskImageDynaLib
      {
         return this._895124308lockBackgroundBuff;
      }
      
      public function set lockBackgroundBuff(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._895124308lockBackgroundBuff;
         if(_loc2_ !== param1)
         {
            this._895124308lockBackgroundBuff = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockBackgroundBuff",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockBackgroundMain() : BriskImageDynaLib
      {
         return this._894815726lockBackgroundMain;
      }
      
      public function set lockBackgroundMain(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._894815726lockBackgroundMain;
         if(_loc2_ !== param1)
         {
            this._894815726lockBackgroundMain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockBackgroundMain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockIconBuffLock() : BriskImageDynaLib
      {
         return this._967110786lockIconBuffLock;
      }
      
      public function set lockIconBuffLock(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._967110786lockIconBuffLock;
         if(_loc2_ !== param1)
         {
            this._967110786lockIconBuffLock = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockIconBuffLock",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockIconBuffToken() : BriskImageDynaLib
      {
         return this._76940926lockIconBuffToken;
      }
      
      public function set lockIconBuffToken(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._76940926lockIconBuffToken;
         if(_loc2_ !== param1)
         {
            this._76940926lockIconBuffToken = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockIconBuffToken",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockIconMain() : BriskImageDynaLib
      {
         return this._385327133lockIconMain;
      }
      
      public function set lockIconMain(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._385327133lockIconMain;
         if(_loc2_ !== param1)
         {
            this._385327133lockIconMain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockIconMain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get plusBuff() : BriskImageDynaLib
      {
         return this._1849690867plusBuff;
      }
      
      public function set plusBuff(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1849690867plusBuff;
         if(_loc2_ !== param1)
         {
            this._1849690867plusBuff = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusBuff",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get plusMain() : BriskImageDynaLib
      {
         return this._1849382285plusMain;
      }
      
      public function set plusMain(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1849382285plusMain;
         if(_loc2_ !== param1)
         {
            this._1849382285plusMain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusMain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spinLockGroup() : Group
      {
         return this._895412750spinLockGroup;
      }
      
      public function set spinLockGroup(param1:Group) : void
      {
         var _loc2_:Object = this._895412750spinLockGroup;
         if(_loc2_ !== param1)
         {
            this._895412750spinLockGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spinLockGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenBuff() : BriskImageDynaLib
      {
         return this._140958188tokenBuff;
      }
      
      public function set tokenBuff(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._140958188tokenBuff;
         if(_loc2_ !== param1)
         {
            this._140958188tokenBuff = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenBuff",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenBuffDeactivated() : BriskImageDynaLib
      {
         return this._2102140700tokenBuffDeactivated;
      }
      
      public function set tokenBuffDeactivated(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2102140700tokenBuffDeactivated;
         if(_loc2_ !== param1)
         {
            this._2102140700tokenBuffDeactivated = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenBuffDeactivated",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenGroup() : Group
      {
         return this._79273990tokenGroup;
      }
      
      public function set tokenGroup(param1:Group) : void
      {
         var _loc2_:Object = this._79273990tokenGroup;
         if(_loc2_ !== param1)
         {
            this._79273990tokenGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenIconBuff() : BriskImageDynaLib
      {
         return this._1825295995tokenIconBuff;
      }
      
      public function set tokenIconBuff(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1825295995tokenIconBuff;
         if(_loc2_ !== param1)
         {
            this._1825295995tokenIconBuff = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenIconBuff",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenIconLock() : BriskImageDynaLib
      {
         return this._1825003939tokenIconLock;
      }
      
      public function set tokenIconLock(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1825003939tokenIconLock;
         if(_loc2_ !== param1)
         {
            this._1825003939tokenIconLock = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenIconLock",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenIconMain() : BriskImageDynaLib
      {
         return this._1824987413tokenIconMain;
      }
      
      public function set tokenIconMain(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1824987413tokenIconMain;
         if(_loc2_ !== param1)
         {
            this._1824987413tokenIconMain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenIconMain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenMain() : BriskImageDynaLib
      {
         return this._141266770tokenMain;
      }
      
      public function set tokenMain(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._141266770tokenMain;
         if(_loc2_ !== param1)
         {
            this._141266770tokenMain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenMain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenMainDeactivated() : BriskImageDynaLib
      {
         return this._1025249346tokenMainDeactivated;
      }
      
      public function set tokenMainDeactivated(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1025249346tokenMainDeactivated;
         if(_loc2_ !== param1)
         {
            this._1025249346tokenMainDeactivated = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenMainDeactivated",_loc2_,param1));
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
      public function get uiInfolayerAlignmentLine2() : UiInfolayerAlignmentLine
      {
         return this._878929322uiInfolayerAlignmentLine2;
      }
      
      public function set uiInfolayerAlignmentLine2(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._878929322uiInfolayerAlignmentLine2;
         if(_loc2_ !== param1)
         {
            this._878929322uiInfolayerAlignmentLine2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelBuff() : WheelComponent
      {
         return this._1333110194wheelBuff;
      }
      
      public function set wheelBuff(param1:WheelComponent) : void
      {
         var _loc2_:Object = this._1333110194wheelBuff;
         if(_loc2_ !== param1)
         {
            this._1333110194wheelBuff = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelBuff",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelMain() : WheelComponent
      {
         return this._1332801612wheelMain;
      }
      
      public function set wheelMain(param1:WheelComponent) : void
      {
         var _loc2_:Object = this._1332801612wheelMain;
         if(_loc2_ !== param1)
         {
            this._1332801612wheelMain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelMain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelStateBuffLabel() : LocaLabel
      {
         return this._1166052085wheelStateBuffLabel;
      }
      
      public function set wheelStateBuffLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1166052085wheelStateBuffLabel;
         if(_loc2_ !== param1)
         {
            this._1166052085wheelStateBuffLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelStateBuffLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelStateMainLabel() : LocaLabel
      {
         return this._1473106075wheelStateMainLabel;
      }
      
      public function set wheelStateMainLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1473106075wheelStateMainLabel;
         if(_loc2_ !== param1)
         {
            this._1473106075wheelStateMainLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelStateMainLabel",_loc2_,param1));
            }
         }
      }
   }
}

