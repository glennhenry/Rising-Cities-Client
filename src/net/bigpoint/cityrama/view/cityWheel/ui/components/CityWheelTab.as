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
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         BUY_SPIN_TOKEN = "BUY_SPIN_TOKEN";
         if(_loc1_ || _loc1_)
         {
            BUY_BUFF_TOKEN = "BUY_BUFF_TOKEN";
            if(_loc1_)
            {
               SPIN_WHEEL = "SPIN_WHEEL";
               if(_loc1_ || CityWheelTab)
               {
                  COLLECT_REWARDS = "COLLECT_REWARDS";
                  if(_loc1_ || _loc2_)
                  {
                     PLAY_SPIN_SOUND_MAIN = "PLAY_SPIN_SOUND_MAIN";
                     if(!_loc2_)
                     {
                        PLAY_STOP_SOUND_MAIN = "PLAY_STOP_SOUND_MAIN";
                        if(_loc1_ || CityWheelTab)
                        {
                           PLAY_SPIN_SOUND_BUFF = "PLAY_SPIN_SOUND_BUFF";
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr00b1);
                           }
                           §§goto(addr00c7);
                        }
                     }
                     §§goto(addr010f);
                  }
                  addr00b1:
                  PLAY_STOP_SOUND_BUFF = "PLAY_STOP_SOUND_BUFF";
                  if(_loc1_ || CityWheelTab)
                  {
                     addr00c7:
                     PLAY_MAIN_SELECTED_SOUND = "PLAY_MAIN_SELECTED_SOUND";
                     if(_loc1_ || _loc2_)
                     {
                        PLAY_BUFF_SELECTED_SOUND = "PLAY_BUFF_SELECTED_SOUND";
                        if(_loc1_)
                        {
                           addr00eb:
                           PLAY_REWARD_SOUND = "PLAY_REWARD_SOUND";
                           if(_loc1_)
                           {
                              SHOW_INFOLAYER_NO_SPIN = "SHOW_INFOLAYER_NO_SPIN";
                              if(_loc1_ || CityWheelTab)
                              {
                                 addr010f:
                                 SHOW_INFOLAYER_NO_BUFF = "SHOW_INFOLAYER_NO_BUFF";
                                 if(_loc1_ || CityWheelTab)
                                 {
                                    §§goto(addr0125);
                                 }
                                 §§goto(addr0145);
                              }
                              §§goto(addr0160);
                           }
                           §§goto(addr0145);
                        }
                        addr0125:
                        SHOW_INFOLAYER_BUFF_LOCKED = "SHOW_INFOLAYER_BUFF_LOCKED";
                        if(_loc1_ || CityWheelTab)
                        {
                           addr0145:
                           HIDE_INFOLAYER = "HIDE_INFOLAYER";
                           if(!_loc2_)
                           {
                              addr0153:
                              WHEEL_SPEED_FAST_TIME_MAIN = 1;
                              if(!_loc2_)
                              {
                                 addr0160:
                                 WHEEL_SPEED_FAST_TIME_BUFF = 0.6;
                                 if(!_loc2_)
                                 {
                                    addr016d:
                                    WHEEL_SPEED_IDLE_TIME_MAIN = 18;
                                    if(_loc1_)
                                    {
                                       addr017a:
                                       WHEEL_SPEED_IDLE_TIME_BUFF = 10.8;
                                    }
                                 }
                                 §§goto(addr0182);
                              }
                              §§goto(addr017a);
                           }
                           §§goto(addr016d);
                        }
                        §§goto(addr0182);
                     }
                  }
                  addr0182:
                  return;
               }
               §§goto(addr00c7);
            }
            §§goto(addr0153);
         }
         §§goto(addr0125);
      }
      §§goto(addr00eb);
      
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
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc4_)
         {
            §§push(null);
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc3_)
                  {
                     addr0042:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc3_))
                     {
                        this._rewardIndexes = new Vector.<int>(0);
                        if(_loc4_ || _loc3_)
                        {
                           this.mx_internal::_bindings = [];
                           if(!_loc3_)
                           {
                              this.mx_internal::_watchers = [];
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0092:
                                 this.mx_internal::_bindingsByDestination = {};
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr00a6:
                                    this.mx_internal::_bindingsBeginWithWord = {};
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       super();
                                       if(_loc4_)
                                       {
                                          mx_internal::_document = this;
                                          if(!_loc3_)
                                          {
                                             addr00d4:
                                             §§push(§§newactivation());
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                §§pop().§§slot[1] = this._CityWheelTab_bindingsSetup();
                                                if(_loc4_)
                                                {
                                                   addr00f3:
                                                   §§push(§§newactivation());
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr0102:
                                                      §§pop().§§slot[2] = [];
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            addr0125:
                                                            §§pop().§§slot[3] = this;
                                                            if(_loc4_)
                                                            {
                                                               addr0130:
                                                               if(_watcherSetupUtil == null)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_cityWheel_ui_components_CityWheelTabWatcherSetupUtil");
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(_loc4_)
                                                                           {
                                                                              addr017c:
                                                                              §§pop().§§slot[5]["init"](null);
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 addr019a:
                                                                                 _watcherSetupUtil.setup(this,function(param1:String):*
                                                                                 {
                                                                                    return target[param1];
                                                                                 },function(param1:String):*
                                                                                 {
                                                                                    return CityWheelTab[param1];
                                                                                 },bindings,watchers);
                                                                                 if(!(_loc3_ && _loc1_))
                                                                                 {
                                                                                    addr01bf:
                                                                                    mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          addr0214:
                                                                                          this.percentWidth = 100;
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             §§goto(addr0226);
                                                                                          }
                                                                                          §§goto(addr0264);
                                                                                       }
                                                                                       §§goto(addr0226);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0214);
                                                                              }
                                                                              §§goto(addr01bf);
                                                                           }
                                                                           §§goto(addr0298);
                                                                        }
                                                                        §§goto(addr0214);
                                                                     }
                                                                     §§goto(addr017c);
                                                                  }
                                                                  addr0226:
                                                                  this.percentHeight = 100;
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr0239:
                                                                     this.top = -18;
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        §§goto(addr024c);
                                                                     }
                                                                     §§goto(addr0264);
                                                                  }
                                                                  addr024c:
                                                                  this.mxmlContent = [this._CityWheelTab_VGroup1_c()];
                                                                  if(!(_loc3_ && _loc1_))
                                                                  {
                                                                     addr0264:
                                                                     this.addEventListener("creationComplete",this.___CityWheelTab_Group1_creationComplete);
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        addr027d:
                                                                        this.addEventListener("removedFromStage",this.___CityWheelTab_Group1_removedFromStage);
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           addr0298:
                                                                           i = 0;
                                                                           addr0296:
                                                                        }
                                                                     }
                                                                  }
                                                                  var _temp_24:*;
                                                                  loop0:
                                                                  do
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§§slot[4]);
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           while(§§pop() < §§pop().§§slot[1].length)
                                                                           {
                                                                              Binding(bindings[i]).execute();
                                                                              if(_loc3_ && _loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§newactivation());
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§pop().§§slot[4]);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(uint(§§pop() + 1));
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                 }
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           break;
                                                                        }
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(var _temp_24:* = §§pop(), §§pop().§§slot[4] = _temp_24, _loc4_ || _loc3_);
                                                                  
                                                                  return;
                                                               }
                                                               §§goto(addr019a);
                                                            }
                                                            §§goto(addr0239);
                                                         }
                                                         §§goto(addr0298);
                                                      }
                                                      §§goto(addr01bf);
                                                   }
                                                   §§goto(addr017c);
                                                }
                                                §§goto(addr0214);
                                             }
                                             §§goto(addr0125);
                                          }
                                          §§goto(addr027d);
                                       }
                                       §§goto(addr0239);
                                    }
                                    §§goto(addr00f3);
                                 }
                                 §§goto(addr0296);
                              }
                              §§goto(addr00d4);
                           }
                           §§goto(addr0130);
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr0102);
               }
               §§goto(addr0092);
            }
            §§goto(addr0042);
         }
         §§goto(addr017c);
      }
      
      private static function lockWheel(param1:WheelComponent, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || param2)
         {
            if(param1)
            {
               if(_loc4_)
               {
                  addr003c:
                  §§push(param1);
                  if(_loc4_)
                  {
                     if(param2)
                     {
                        addr0048:
                        §§push(1);
                        if(_loc4_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        §§push(0.3);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                        }
                     }
                     §§pop().alpha = §§pop();
                     §§goto(addr0069);
                  }
                  §§goto(addr0048);
               }
            }
            addr0069:
            return;
         }
         §§goto(addr003c);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            CityWheelTab._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0059);
                  }
               }
               this.__moduleFactoryInitialized = true;
               return;
            }
         }
         addr0059:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.headerTextLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.headline.capital");
            if(!(_loc2_ && Boolean(param1)))
            {
               addr0042:
               §§push(this.actionButton);
               if(!_loc2_)
               {
                  §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.spin"));
                  if(!_loc2_)
                  {
                     §§pop().label = §§pop();
                     if(_loc3_)
                     {
                        addr007f:
                        this.actionButton.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.spinit");
                        addr0073:
                        if(_loc3_)
                        {
                           addr0086:
                           this.initAnimationHelpers();
                        }
                     }
                     return;
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0073);
            }
            §§goto(addr0086);
         }
         §§goto(addr0042);
      }
      
      private function initAnimationHelpers() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:CityWheelAnimationSettingsVo = null;
         if(!(_loc3_ && Boolean(this)))
         {
            if(this._mainAnimationHelper == null)
            {
               if(_loc2_ || _loc2_)
               {
                  _loc1_ = new CityWheelAnimationSettingsVo();
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.idleAnimationDuration = WHEEL_SPEED_IDLE_TIME_MAIN;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.spinAnimationCycleDuration = WHEEL_SPEED_FAST_TIME_MAIN;
                        if(!_loc3_)
                        {
                           _loc1_.spinDecelerationDuration = 3;
                           addr0074:
                           if(!(_loc3_ && Boolean(this)))
                           {
                              this._mainAnimationHelper = new CityWheelAnimationHelper(this.wheelMain,_loc1_);
                              if(!_loc3_)
                              {
                                 addr00a8:
                                 this._mainAnimationHelper.init();
                              }
                           }
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr00b9);
            }
            addr00b0:
            if(this._buffAnimationHelper == null)
            {
               addr00b9:
               _loc1_ = new CityWheelAnimationSettingsVo();
               if(!_loc3_)
               {
                  _loc1_.idleAnimationDuration = WHEEL_SPEED_IDLE_TIME_BUFF;
                  if(_loc2_)
                  {
                     _loc1_.spinAnimationCycleDuration = WHEEL_SPEED_FAST_TIME_BUFF;
                     if(_loc2_)
                     {
                        addr00e1:
                        _loc1_.spinDecelerationDuration = 3;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           this._buffAnimationHelper = new CityWheelAnimationHelper(this.wheelBuff,_loc1_);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr011c:
                              this._buffAnimationHelper.init();
                           }
                           §§goto(addr0124);
                        }
                     }
                     §§goto(addr011c);
                  }
               }
               §§goto(addr00e1);
            }
            addr0124:
            return;
         }
         §§goto(addr00b9);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.commitProperties();
            if(_loc1_ || _loc2_)
            {
               §§push(this._dataDirty);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(!(_loc2_ && Boolean(this)))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§pop();
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(Boolean(this._data));
                                 if(!_loc2_)
                                 {
                                    §§goto(addr007d);
                                 }
                                 §§goto(addr00d1);
                              }
                              §§goto(addr00f0);
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr007d);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00d0);
               }
               addr007d:
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.isWheelMainSpinning);
                     if(_loc1_ || Boolean(this))
                     {
                        §§push(§§pop());
                        if(!_loc2_)
                        {
                           addr00a5:
                           var _temp_10:* = §§pop();
                           addr00a6:
                           §§push(_temp_10);
                           if(!_temp_10)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 §§pop();
                                 if(!_loc2_)
                                 {
                                    addr00d1:
                                    addr00c7:
                                    §§push(this.isWheelBuffSpinning);
                                    if(_loc1_)
                                    {
                                       addr00d0:
                                       §§push(§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§goto(addr00e2);
                                       }
                                       else
                                       {
                                          addr0110:
                                          this.wheelBuff.dataGroup.dataProvider = this._data.buffData;
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr012e:
                                             this._hasSpinToken = this._data.numSpinTokens > 0;
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                this._hasBuffToken = this._data.numBuffTokens > 0;
                                                if(_loc1_ || Boolean(this))
                                                {
                                                   this.setWheelStates();
                                                   if(_loc1_)
                                                   {
                                                      this.setTimer();
                                                      if(!_loc2_)
                                                      {
                                                         addr0182:
                                                         this.initAnimationHelpers();
                                                         if(_loc1_)
                                                         {
                                                            addr018d:
                                                            this._mainAnimationHelper.init();
                                                            if(_loc1_ || Boolean(this))
                                                            {
                                                               addr01a2:
                                                               this._buffAnimationHelper.init();
                                                            }
                                                         }
                                                         §§goto(addr01aa);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr01a2);
                                          }
                                          §§goto(addr018d);
                                       }
                                    }
                                    else
                                    {
                                       addr00f0:
                                       this._dataDirty = false;
                                       if(!_loc2_)
                                       {
                                          this.wheelMain.dataGroup.dataProvider = this._data.rewardData;
                                          if(_loc1_)
                                          {
                                             §§goto(addr0110);
                                          }
                                          §§goto(addr01aa);
                                       }
                                    }
                                    §§goto(addr0182);
                                 }
                                 addr00e2:
                                 return;
                              }
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr01aa);
            }
            §§goto(addr012e);
         }
         addr01aa:
      }
      
      private function setTimer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._disposing)
            {
               if(_loc1_)
               {
                  return;
               }
               addr0039:
               §§push(this.eventTimer);
               if(!_loc2_)
               {
                  §§pop().data = this._data.availabilityTimer;
                  if(_loc1_ || _loc2_)
                  {
                     addr0066:
                     addr0062:
                     §§push(this.eventTimer);
                     §§push(LocaUtils);
                     §§push("rcl.tooltips.citywheel");
                     §§push("rcl.tooltips.citywheel.timeline");
                     §§push(LocaUtils);
                     §§push(this._data.availabilityTimer.targetTime);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§push(§§pop() - this._data.availabilityTimer.currentTime);
                        if(_loc1_ || Boolean(this))
                        {
                           addr00aa:
                           §§push(§§pop() / 1000);
                        }
                        §§pop().toolTip = §§pop().getString(§§pop(),§§pop(),[§§pop().getDurationHM(§§pop())]);
                        if(_loc1_ || _loc2_)
                        {
                           addr00c7:
                           TweenMax.delayedCall(60,this.setTimer);
                        }
                        §§goto(addr00d3);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr00d3);
               }
               §§goto(addr0066);
            }
            else if(this._data.availabilityTimer)
            {
               if(!_loc2_)
               {
                  §§goto(addr0039);
               }
               §§goto(addr00c7);
            }
            addr00d3:
            return;
         }
         §§goto(addr0062);
      }
      
      private function setWheelStates() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.isWheelMainSpinning);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     return;
                  }
               }
               else
               {
                  this.enableMainWheel();
                  if(_loc2_)
                  {
                     this.enableBuffWheel();
                     if(!_loc1_)
                     {
                        lockWheel(this.wheelMain,this._hasSpinToken);
                        if(!_loc1_)
                        {
                           addr0078:
                           §§push(§§findproperty(lockWheel));
                           §§push(this.wheelBuff);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(this._hasSpinToken);
                              if(!_loc1_)
                              {
                                 §§push(§§pop());
                                 if(_loc2_)
                                 {
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    if(_temp_6)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§pop();
                                          addr00ae:
                                          §§push(this._hasBuffToken);
                                          if(!_loc1_)
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                    }
                                 }
                              }
                              §§pop().lockWheel(§§pop(),§§pop());
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(this._hasSpinToken);
                                 if(_loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          addr00ed:
                                          this.tokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.spintoken.userhasnt");
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§push(this.flavourLabel);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.noSpin"));
                                                if(!_loc1_)
                                                {
                                                   §§pop().text = §§pop();
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      addr0175:
                                                      §§push(this.flavourLabel);
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr0190:
                                                         §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.bothAvailable"));
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            addr01a9:
                                                            §§pop().text = §§pop();
                                                            if(_loc2_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr01c4:
                                                            §§pop().text = §§pop();
                                                         }
                                                         §§goto(addr01c6);
                                                      }
                                                      else
                                                      {
                                                         addr01b8:
                                                         §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.flavour.noBuff"));
                                                      }
                                                      §§goto(addr01c4);
                                                   }
                                                   §§goto(addr01c6);
                                                }
                                                §§goto(addr01a9);
                                             }
                                             §§goto(addr0190);
                                          }
                                          §§goto(addr01c6);
                                       }
                                       §§goto(addr0175);
                                    }
                                    else
                                    {
                                       this.tokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.spintoken.userhas",[this._data.numSpinTokens]);
                                       if(_loc2_)
                                       {
                                          addr0164:
                                          addr0160:
                                          if(this._hasBuffToken)
                                          {
                                             if(_loc2_ || _loc1_)
                                             {
                                                §§goto(addr0175);
                                             }
                                             §§goto(addr01c6);
                                          }
                                          else
                                          {
                                             §§push(this.flavourLabel);
                                          }
                                          §§goto(addr01b8);
                                       }
                                    }
                                    §§goto(addr01c6);
                                 }
                                 §§goto(addr0164);
                              }
                              §§goto(addr0160);
                           }
                           §§goto(addr00ae);
                        }
                     }
                     §§goto(addr00ed);
                  }
                  §§goto(addr0160);
               }
               addr01c6:
               return;
            }
            §§goto(addr0164);
         }
         §§goto(addr0078);
      }
      
      private function enableMainWheel() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            this.tokenMain.visible = this.tokenMain.includeInLayout = this._hasSpinToken;
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(this.lockBackgroundMain);
               §§push(this.lockBackgroundMain);
               §§push(this._hasSpinToken);
               if(_loc2_ || _loc3_)
               {
                  §§push(!§§pop());
               }
               var _loc1_:*;
               §§pop().includeInLayout = _loc1_ = §§pop();
               §§pop().visible = _loc1_;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(this.lockIconMain);
                  §§push(this.lockIconMain);
                  §§push(this._hasSpinToken);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop().includeInLayout = §§pop();
                  if(_loc2_)
                  {
                     var _temp_9:* = this.spinLockGroup;
                     this.spinLockGroup.mouseChildren = _loc1_ = !this._hasSpinToken;
                     _temp_9.mouseEnabled = _loc1_;
                     if(_loc2_)
                     {
                        addr00b0:
                        §§push(this.tokenMainDeactivated);
                        §§push(this.tokenMainDeactivated);
                        §§push(this._hasSpinToken);
                        if(!_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().includeInLayout = _loc1_ = §§pop();
                        §§pop().visible = _loc1_;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00e3:
                           this.actionButton.enabled = this._hasSpinToken;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr00fb:
                              if(this._hasSpinToken)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr0110:
                                    §§push(this.tokenIconMain);
                                    if(!_loc3_)
                                    {
                                       §§push(this.colorBackgroundMain);
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§pop().alpha = _loc1_ = 1;
                                          §§pop().alpha = _loc1_;
                                          if(_loc2_)
                                          {
                                             addr013c:
                                             §§push(this.wheelStateMainLabel);
                                             if(!_loc3_)
                                             {
                                                §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.mainWheel.status.active"));
                                                if(!(_loc3_ && Boolean(_loc1_)))
                                                {
                                                   §§pop().text = §§pop();
                                                   if(!_loc2_)
                                                   {
                                                      addr01a8:
                                                      this.wheelStateMainLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.mainWheel.status.inActive");
                                                      addr019c:
                                                      addr0198:
                                                   }
                                                   §§goto(addr01aa);
                                                }
                                                §§goto(addr01a8);
                                             }
                                             §§goto(addr019c);
                                          }
                                       }
                                       else
                                       {
                                          addr017e:
                                          §§pop().alpha = _loc1_ = 0.3;
                                          §§pop().alpha = _loc1_;
                                          if(!(_loc3_ && Boolean(_loc1_)))
                                          {
                                             §§goto(addr0198);
                                          }
                                       }
                                       §§goto(addr01aa);
                                    }
                                    else
                                    {
                                       addr017a:
                                       §§push(this.colorBackgroundMain);
                                    }
                                    §§goto(addr017e);
                                 }
                                 §§goto(addr013c);
                              }
                              else
                              {
                                 §§push(this.tokenIconMain);
                              }
                              §§goto(addr017a);
                           }
                           §§goto(addr0198);
                        }
                        §§goto(addr0110);
                     }
                     §§goto(addr00e3);
                  }
                  addr01aa:
                  return;
               }
               §§goto(addr013c);
            }
            §§goto(addr00b0);
         }
         §§goto(addr00fb);
      }
      
      private function enableBuffWheel() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._data.numBuffTokens > 0)
            {
               if(!_loc3_)
               {
                  §§push(this._hasSpinToken);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           this.bufftokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.bufftoken.userhas",[this._data.numBuffTokens]);
                           if(_loc2_ || Boolean(this))
                           {
                              addr00e5:
                              §§push(this._hasSpinToken);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(§§pop());
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    var _temp_4:* = §§pop();
                                    §§push(_temp_4);
                                    if(_temp_4)
                                    {
                                       if(_loc2_)
                                       {
                                          addr010e:
                                          §§pop();
                                          if(!_loc3_)
                                          {
                                             §§push(this._hasBuffToken);
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                addr0125:
                                                §§push(§§pop());
                                                if(_loc2_)
                                                {
                                                   addr012b:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr013c:
                                                         §§push(this.tokenIconBuff);
                                                         if(_loc2_ || Boolean(this))
                                                         {
                                                            §§push(this.colorBackgroundBuff);
                                                            if(!_loc3_)
                                                            {
                                                               §§pop().alpha = §§pop().alpha = 1;
                                                               if(_loc2_)
                                                               {
                                                                  addr0168:
                                                                  §§push(this.tokenBuff);
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     §§push(this.tokenBuff);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(true);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           var _temp_11:* = §§pop();
                                                                           §§push(_temp_11);
                                                                           §§push(_temp_11);
                                                                           if(!_loc3_)
                                                                           {
                                                                              var _loc1_:* = §§pop();
                                                                              if(_loc2_ || Boolean(_loc1_))
                                                                              {
                                                                                 §§pop().includeInLayout = §§pop();
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§pop().visible = §§pop();
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             §§push(this.lockBackgroundBuff);
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                §§push(this.lockBackgroundBuff);
                                                                                                if(_loc2_ || Boolean(this))
                                                                                                {
                                                                                                   §§push(false);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      var _temp_16:* = §§pop();
                                                                                                      §§push(_temp_16);
                                                                                                      §§push(_temp_16);
                                                                                                      if(_loc2_ || Boolean(_loc1_))
                                                                                                      {
                                                                                                         _loc1_ = §§pop();
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            §§pop().includeInLayout = §§pop();
                                                                                                            if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                            {
                                                                                                               §§push(_loc1_);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§pop().visible = §§pop();
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        var _temp_21:* = this.buffLockGroup;
                                                                                                                        this.buffLockGroup.mouseChildren = _loc1_ = false;
                                                                                                                        _temp_21.mouseEnabled = _loc1_;
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           addr0257:
                                                                                                                           §§push(this.lockIconBuffLock);
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §§push(this.lockIconBuffLock);
                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(false);
                                                                                                                                 if(_loc2_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    var _temp_24:* = §§pop();
                                                                                                                                    §§push(_temp_24);
                                                                                                                                    §§push(_temp_24);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          §§pop().includeInLayout = §§pop();
                                                                                                                                          if(!(_loc3_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc1_);
                                                                                                                                             if(_loc2_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   §§pop().visible = §§pop();
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.lockIconBuffToken);
                                                                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.lockIconBuffToken);
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(false);
                                                                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               var _temp_29:* = §§pop();
                                                                                                                                                               §§push(_temp_29);
                                                                                                                                                               §§push(_temp_29);
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  _loc1_ = §§pop();
                                                                                                                                                                  if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().includeInLayout = §§pop();
                                                                                                                                                                     if(!(_loc3_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                        if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc3_ && _loc1_))
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().visible = §§pop();
                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.tokenBuffDeactivated);
                                                                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.tokenBuffDeactivated);
                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(false);
                                                                                                                                                                                       if(!(_loc3_ && _loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          var _temp_36:* = §§pop();
                                                                                                                                                                                          §§push(_temp_36);
                                                                                                                                                                                          §§push(_temp_36);
                                                                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                if(_loc2_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc1_);
                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().visible = §§pop();
                                                                                                                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.plusBuff);
                                                                                                                                                                                                            if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.plusBuff);
                                                                                                                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(true);
                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     var _temp_42:* = §§pop();
                                                                                                                                                                                                                     §§push(_temp_42);
                                                                                                                                                                                                                     §§push(_temp_42);
                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                                                                        if(_loc2_ || _loc1_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                                                                              if(_loc2_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().visible = §§pop();
                                                                                                                                                                                                                                    if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       var _temp_48:* = this.plusMain;
                                                                                                                                                                                                                                       this.plusBuff.includeInLayout = _loc1_ = true;
                                                                                                                                                                                                                                       _temp_48.visible = _loc1_;
                                                                                                                                                                                                                                       if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.tokenIconLock);
                                                                                                                                                                                                                                          if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.tokenIconLock);
                                                                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(false);
                                                                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   var _temp_51:* = §§pop();
                                                                                                                                                                                                                                                   §§push(_temp_51);
                                                                                                                                                                                                                                                   §§push(_temp_51);
                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                                                                                                                            if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr0486:
                                                                                                                                                                                                                                                                     §§push(this.wheelStateBuffLabel);
                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buffWheel.status.active"));
                                                                                                                                                                                                                                                                        if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop().text = §§pop();
                                                                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr08bc:
                                                                                                                                                                                                                                                                              §§push(this.tokenBuffDeactivated);
                                                                                                                                                                                                                                                                              this.tokenBuffDeactivated.includeInLayout = _loc1_ = true;
                                                                                                                                                                                                                                                                              addr08c1:
                                                                                                                                                                                                                                                                              §§pop().visible = _loc1_;
                                                                                                                                                                                                                                                                              addr08bf:
                                                                                                                                                                                                                                                                              addr08be:
                                                                                                                                                                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr08e0:
                                                                                                                                                                                                                                                                                 this.wheelStateBuffLabel.text = LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buffWheel.status.locked");
                                                                                                                                                                                                                                                                                 addr08d4:
                                                                                                                                                                                                                                                                                 addr08d0:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr08a4:
                                                                                                                                                                                                                                                                              addr08bb:
                                                                                                                                                                                                                                                                              addr08ba:
                                                                                                                                                                                                                                                                              addr08b9:
                                                                                                                                                                                                                                                                              addr08b5:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr08e2);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr08e0);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr08d4);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr08a4);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr0581:
                                                                                                                                                                                                                                                                  §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.tokenBuff);
                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.tokenBuff);
                                                                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(false);
                                                                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              var _temp_56:* = §§pop();
                                                                                                                                                                                                                                                                              §§push(_temp_56);
                                                                                                                                                                                                                                                                              §§push(_temp_56);
                                                                                                                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr05a6:
                                                                                                                                                                                                                                                                                 _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                 if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr05b4:
                                                                                                                                                                                                                                                                                    §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc1_);
                                                                                                                                                                                                                                                                                       if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                                             if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr05ef:
                                                                                                                                                                                                                                                                                                §§push(this.lockBackgroundBuff);
                                                                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.lockBackgroundBuff);
                                                                                                                                                                                                                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(true);
                                                                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         var _temp_63:* = §§pop();
                                                                                                                                                                                                                                                                                                         §§push(_temp_63);
                                                                                                                                                                                                                                                                                                         §§push(_temp_63);
                                                                                                                                                                                                                                                                                                         if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                            if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr062b:
                                                                                                                                                                                                                                                                                                               §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                                                                               if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr064f:
                                                                                                                                                                                                                                                                                                                        §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                                                                        if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr065e:
                                                                                                                                                                                                                                                                                                                           this.buffLockGroup.mouseEnabled = this.buffLockGroup.mouseChildren = true;
                                                                                                                                                                                                                                                                                                                           if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(this.plusBuff);
                                                                                                                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 addr0688:
                                                                                                                                                                                                                                                                                                                                 §§push(this.plusBuff);
                                                                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    addr0691:
                                                                                                                                                                                                                                                                                                                                    §§push(true);
                                                                                                                                                                                                                                                                                                                                    if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       addr069f:
                                                                                                                                                                                                                                                                                                                                       var _temp_71:* = §§pop();
                                                                                                                                                                                                                                                                                                                                       §§push(_temp_71);
                                                                                                                                                                                                                                                                                                                                       §§push(_temp_71);
                                                                                                                                                                                                                                                                                                                                       if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr06bb:
                                                                                                                                                                                                                                                                                                                                             §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                                                                                                             if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr06d8:
                                                                                                                                                                                                                                                                                                                                                   if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(this.lockIconBuffToken);
                                                                                                                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this.lockIconBuffToken);
                                                                                                                                                                                                                                                                                                                                                            if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(true);
                                                                                                                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  var _temp_77:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  §§push(_temp_77);
                                                                                                                                                                                                                                                                                                                                                                  §§push(_temp_77);
                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr0714:
                                                                                                                                                                                                                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                           if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr0737:
                                                                                                                                                                                                                                                                                                                                                                              if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr0755:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.tokenBuffDeactivated);
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr075e:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.tokenBuffDeactivated);
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr0767:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             addr0775:
                                                                                                                                                                                                                                                                                                                                                                                             var _temp_84:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_temp_84);
                                                                                                                                                                                                                                                                                                                                                                                             §§push(_temp_84);
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr0781:
                                                                                                                                                                                                                                                                                                                                                                                                   §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            addr0795:
                                                                                                                                                                                                                                                                                                                                                                                                            §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(this.wheelStateBuffLabel);
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.buffWheel.status.inActive"));
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc3_ && _loc1_))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§pop().text = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc2_ || _loc3_))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr0839:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.lockBackgroundBuff);
                                                                                                                                                                                                                                                                                                                                                                                                                        this.lockBackgroundBuff.includeInLayout = _loc1_ = true;
                                                                                                                                                                                                                                                                                                                                                                                                                        addr083e:
                                                                                                                                                                                                                                                                                                                                                                                                                        §§pop().visible = _loc1_;
                                                                                                                                                                                                                                                                                                                                                                                                                        addr083c:
                                                                                                                                                                                                                                                                                                                                                                                                                        addr083b:
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           addr084d:
                                                                                                                                                                                                                                                                                                                                                                                                                           this.buffLockGroup.mouseEnabled = this.buffLockGroup.mouseChildren = true;
                                                                                                                                                                                                                                                                                                                                                                                                                           if(_loc2_ || Boolean(this))
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              addr0879:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(this.lockIconBuffLock);
                                                                                                                                                                                                                                                                                                                                                                                                                              this.lockIconBuffLock.includeInLayout = _loc1_ = true;
                                                                                                                                                                                                                                                                                                                                                                                                                              addr087e:
                                                                                                                                                                                                                                                                                                                                                                                                                              §§pop().visible = _loc1_;
                                                                                                                                                                                                                                                                                                                                                                                                                              addr087c:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr087b:
                                                                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0898:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§push(this.tokenIconLock);
                                                                                                                                                                                                                                                                                                                                                                                                                                 this.tokenIconLock.includeInLayout = _loc1_ = true;
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr089d:
                                                                                                                                                                                                                                                                                                                                                                                                                                 §§pop().visible = _loc1_;
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr089b:
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr089a:
                                                                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr08a4);
                                                                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr08e2:
                                                                                                                                                                                                                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr088d:
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0897:
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0896:
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0895:
                                                                                                                                                                                                                                                                                                                                                                                                                                 addr0891:
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr08a4);
                                                                                                                                                                                                                                                                                                                                                                                                                              addr086e:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr0877:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr0878:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr0876:
                                                                                                                                                                                                                                                                                                                                                                                                                              addr0872:
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr088d);
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr086e);
                                                                                                                                                                                                                                                                                                                                                                                                                        addr082e:
                                                                                                                                                                                                                                                                                                                                                                                                                        addr0838:
                                                                                                                                                                                                                                                                                                                                                                                                                        addr0837:
                                                                                                                                                                                                                                                                                                                                                                                                                        addr0836:
                                                                                                                                                                                                                                                                                                                                                                                                                        addr0832:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr08e2);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr08e0);
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr08d4);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr084d);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr08c1);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr08bf);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr08be);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr08bc);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr08bb);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr08ba);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr08b9);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr08b5);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr088d);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr07e9:
                                                                                                                                                                                                                                                                                                                                                                                 §§pop().visible = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    addr07fb:
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.plusBuff);
                                                                                                                                                                                                                                                                                                                                                                                    this.plusBuff.includeInLayout = _loc1_ = false;
                                                                                                                                                                                                                                                                                                                                                                                    addr0800:
                                                                                                                                                                                                                                                                                                                                                                                    §§pop().visible = _loc1_;
                                                                                                                                                                                                                                                                                                                                                                                    addr07fe:
                                                                                                                                                                                                                                                                                                                                                                                    addr07fd:
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       addr081a:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.tokenBuff);
                                                                                                                                                                                                                                                                                                                                                                                       this.tokenBuff.includeInLayout = _loc1_ = false;
                                                                                                                                                                                                                                                                                                                                                                                       addr081f:
                                                                                                                                                                                                                                                                                                                                                                                       §§pop().visible = _loc1_;
                                                                                                                                                                                                                                                                                                                                                                                       addr081d:
                                                                                                                                                                                                                                                                                                                                                                                       addr081c:
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§goto(addr082e);
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr08a4);
                                                                                                                                                                                                                                                                                                                                                                                       addr0819:
                                                                                                                                                                                                                                                                                                                                                                                       addr0818:
                                                                                                                                                                                                                                                                                                                                                                                       addr0817:
                                                                                                                                                                                                                                                                                                                                                                                       addr0813:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr088d);
                                                                                                                                                                                                                                                                                                                                                                                    addr07fa:
                                                                                                                                                                                                                                                                                                                                                                                    addr07f9:
                                                                                                                                                                                                                                                                                                                                                                                    addr07f8:
                                                                                                                                                                                                                                                                                                                                                                                    addr07f4:
                                                                                                                                                                                                                                                                                                                                                                                    addr07f0:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr086e);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              addr07e7:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr07e9);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr07e6:
                                                                                                                                                                                                                                                                                                                                                                           §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr07e7);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        addr07e4:
                                                                                                                                                                                                                                                                                                                                                                        §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr07e6);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr07e3:
                                                                                                                                                                                                                                                                                                                                                                     _loc1_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr07e4);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr07e2:
                                                                                                                                                                                                                                                                                                                                                                  var _temp_93:* = §§pop();
                                                                                                                                                                                                                                                                                                                                                                  §§push(_temp_93);
                                                                                                                                                                                                                                                                                                                                                                  §§push(_temp_93);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr07e3);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               addr07e1:
                                                                                                                                                                                                                                                                                                                                                               §§push(false);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr07e2);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr07dd:
                                                                                                                                                                                                                                                                                                                                                            §§push(this.lockIconBuffToken);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr07e1);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr08d0);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr0800);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr07fe);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr07fd);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr07fb);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr07fa);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr07f9);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr07f8);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr07f4);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr08e2);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr083e);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr083c);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr083b);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr0839);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr0838);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr0837);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr0836);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr0832);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr08e2);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr081f);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr081d);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr081c);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr081a);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr0819);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr0818);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr0817);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr0813);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr084d);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr0564:
                                                                                                                                                                                                                                                            §§push(_loc1_);
                                                                                                                                                                                                                                                            if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr0581);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr089d);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr089b);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr055d:
                                                                                                                                                                                                                                                         §§pop().includeInLayout = §§pop();
                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr0564);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr089a);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr054f:
                                                                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                                                                      if(_loc2_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr055d);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0898);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr053b:
                                                                                                                                                                                                                                                §§push(false);
                                                                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   var _temp_97:* = §§pop();
                                                                                                                                                                                                                                                   §§push(_temp_97);
                                                                                                                                                                                                                                                   §§push(_temp_97);
                                                                                                                                                                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr054f);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0897);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0896);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0529:
                                                                                                                                                                                                                                          §§push(this.tokenIconLock);
                                                                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.tokenIconLock);
                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr053b);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0895);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0891);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr08d0);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0800);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr06d8);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr07fd);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr06bb);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr07fa);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr069f);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0691);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0688);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr08d0);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0795);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr08bf);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr08be);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0781);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr08bb);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0775);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0767);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr075e);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr086e);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr07e9);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0737);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr07e6);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr07e4);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0714);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr07e2);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr07e1);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr07dd);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0755);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr0522:
                                                                                                                                                   §§pop().visible = §§pop();
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr0529);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr08e2);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr0513:
                                                                                                                                                if(_loc2_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr0522);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr087e);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0506:
                                                                                                                                          §§pop().includeInLayout = §§pop();
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc1_);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr0513);
                                                                                                                                             }
                                                                                                                                             §§goto(addr087c);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr087b);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr0500:
                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0506);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr0879);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0877);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr04e3:
                                                                                                                              §§push(this.lockIconBuffLock);
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(false);
                                                                                                                                 if(_loc2_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    var _temp_101:* = §§pop();
                                                                                                                                    §§push(_temp_101);
                                                                                                                                    §§push(_temp_101);
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr0500);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0878);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0877);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr0876);
                                                                                                                        }
                                                                                                                        §§goto(addr08a4);
                                                                                                                     }
                                                                                                                     §§goto(addr065e);
                                                                                                                  }
                                                                                                                  §§goto(addr064f);
                                                                                                               }
                                                                                                               §§goto(addr083c);
                                                                                                            }
                                                                                                            §§goto(addr083b);
                                                                                                         }
                                                                                                         §§goto(addr062b);
                                                                                                      }
                                                                                                      §§goto(addr0838);
                                                                                                   }
                                                                                                   §§goto(addr0837);
                                                                                                }
                                                                                                §§goto(addr0836);
                                                                                             }
                                                                                             §§goto(addr0832);
                                                                                          }
                                                                                          §§goto(addr0486);
                                                                                       }
                                                                                       §§goto(addr081f);
                                                                                    }
                                                                                    §§goto(addr081d);
                                                                                 }
                                                                                 §§goto(addr081c);
                                                                              }
                                                                              §§goto(addr05b4);
                                                                           }
                                                                           §§goto(addr05a6);
                                                                        }
                                                                        §§goto(addr0818);
                                                                     }
                                                                     §§goto(addr0817);
                                                                  }
                                                                  §§goto(addr0813);
                                                               }
                                                               §§goto(addr08e2);
                                                            }
                                                            else
                                                            {
                                                               addr04bb:
                                                               §§pop().alpha = §§pop().alpha = 0.3;
                                                               if(!_loc3_)
                                                               {
                                                                  addr04d1:
                                                                  if(this._hasSpinToken)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        addr04da:
                                                                        §§push(this.lockIconBuffLock);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§goto(addr04e3);
                                                                        }
                                                                        §§goto(addr0872);
                                                                     }
                                                                     §§goto(addr05ef);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.lockIconBuffToken);
                                                                  }
                                                                  §§goto(addr07dd);
                                                               }
                                                            }
                                                            §§goto(addr0529);
                                                         }
                                                         else
                                                         {
                                                            addr04b7:
                                                            §§push(this.colorBackgroundBuff);
                                                         }
                                                         §§goto(addr04bb);
                                                      }
                                                      §§goto(addr05ef);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.tokenIconBuff);
                                                   }
                                                   §§goto(addr04b7);
                                                }
                                                §§goto(addr04d1);
                                             }
                                             §§goto(addr012b);
                                          }
                                          §§goto(addr04da);
                                       }
                                    }
                                    §§goto(addr012b);
                                 }
                                 §§goto(addr0125);
                              }
                              §§goto(addr010e);
                           }
                           §§goto(addr086e);
                        }
                        §§goto(addr08d0);
                     }
                     else
                     {
                        this.bufftokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.bufftoken.userhasbutlocked",[this._data.numBuffTokens]);
                        if(_loc2_ || Boolean(this))
                        {
                           §§goto(addr00e5);
                        }
                     }
                     §§goto(addr04da);
                  }
                  §§goto(addr0125);
               }
               §§goto(addr0529);
            }
            else
            {
               §§push(this._hasSpinToken);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        this.bufftokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.bufftoken.userhasnt");
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr00e5);
                        }
                        §§goto(addr0257);
                     }
                     §§goto(addr013c);
                  }
                  else
                  {
                     this.bufftokenGroup.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.bufftoken.userhasntbutlocked");
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr00e5);
                     }
                  }
                  §§goto(addr07f0);
               }
            }
            §§goto(addr04d1);
         }
         §§goto(addr0168);
      }
      
      private function spinWheelMainCompleted() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this._rewardIndexes.length == 0)
            {
               if(_loc2_ || _loc2_)
               {
                  if(this._playJackpotAnimation)
                  {
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this._playJackpotAnimation = false;
                        if(_loc2_ || Boolean(this))
                        {
                           this.playJackpotAnimation();
                           if(_loc1_)
                           {
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(this.actionButton);
                     if(_loc2_ || _loc1_)
                     {
                        §§pop().enabled = true;
                        if(_loc2_ || _loc1_)
                        {
                           §§push(this.actionButton);
                           if(_loc2_ || Boolean(this))
                           {
                              addr00a2:
                              §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.collectReward"));
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§pop().label = §§pop();
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr00cb:
                                    §§push(this.actionButton);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§goto(addr00e8);
                                    }
                                    §§goto(addr00fb);
                                 }
                                 §§goto(addr0117);
                              }
                              addr00e8:
                              §§pop().toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.collect");
                              §§goto(addr00dc);
                           }
                           addr00dc:
                           if(!(_loc1_ && _loc2_))
                           {
                              addr00fb:
                              this.actionButton.styleName = "confirm";
                              addr00f7:
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0117:
                                 this._isRewardAvailable = true;
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr0129:
                                    dispatchEvent(new Event(PLAY_REWARD_SOUND));
                                    if(_loc2_)
                                    {
                                    }
                                 }
                                 §§goto(addr014c);
                              }
                              §§goto(addr0129);
                           }
                           §§goto(addr014c);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr014c);
               }
               §§goto(addr00f7);
            }
            else
            {
               TweenMax.delayedCall(1,this.playRespinAnimation);
            }
            addr014c:
            return;
         }
         §§goto(addr00cb);
      }
      
      private function reSpinWheelMainCompleted() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this.actionButton);
            if(!_loc2_)
            {
               §§pop().enabled = true;
               if(!_loc2_)
               {
                  §§push(this.actionButton);
                  if(_loc1_)
                  {
                     §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.collectReward"));
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop().label = §§pop();
                        if(!(_loc2_ && _loc1_))
                        {
                           addr006b:
                           §§push(this.actionButton);
                           if(_loc1_)
                           {
                              addr0080:
                              §§pop().toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.collect");
                              addr0074:
                              if(!_loc2_)
                              {
                                 this.actionButton.styleName = "confirm";
                                 §§goto(addr008b);
                              }
                              §§goto(addr00a7);
                           }
                           addr008b:
                           §§goto(addr0087);
                        }
                        addr0087:
                        if(_loc1_ || _loc2_)
                        {
                           addr00a7:
                           this._isRewardAvailable = true;
                           if(_loc1_ || _loc2_)
                           {
                              dispatchEvent(new Event(PLAY_REWARD_SOUND));
                           }
                        }
                        return;
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0074);
               }
               §§goto(addr00a7);
            }
            §§goto(addr0074);
         }
         §§goto(addr006b);
      }
      
      private function playJackpotAnimation() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._mainAnimationHelper.playJackpotAnimation(this.spinWheelMainCompleted);
         }
      }
      
      private function playRespinAnimation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this._respinTriggered = true;
            if(_loc1_ || _loc2_)
            {
               this._mainAnimationHelper.spinWheel(this.reSpinWheelMainCompleted);
               if(_loc1_)
               {
                  §§push(this.actionButton);
                  if(_loc1_)
                  {
                     §§pop().enabled = true;
                     if(!_loc2_)
                     {
                        §§push(this.actionButton);
                        if(_loc1_ || _loc1_)
                        {
                           §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.stop"));
                           if(_loc1_)
                           {
                              §§pop().label = §§pop();
                              if(_loc1_)
                              {
                                 §§goto(addr009f);
                              }
                              §§goto(addr00ae);
                           }
                           addr009f:
                           this.actionButton.toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.stop");
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr00ae);
                  }
                  addr0094:
                  §§goto(addr0086);
               }
               addr0086:
               if(_loc1_ || _loc2_)
               {
                  addr00ae:
                  TweenMax.delayedCall(3,this._mainAnimationHelper.stopWheelOnIndex,[this._rewardIndexes.pop()]);
               }
               return;
            }
         }
         §§goto(addr00ae);
      }
      
      private function actionButton_clickHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._isRewardAvailable);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr0039:
                     §§push(this.isWheelMainSpinning);
                     if(_loc3_)
                     {
                        addr0042:
                        if(!§§pop())
                        {
                           if(!_loc2_)
                           {
                              dispatchEvent(new Event(SPIN_WHEEL,true));
                              if(!_loc2_)
                              {
                                 §§push(this.actionButton);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§push(false);
                                    if(_loc3_)
                                    {
                                       §§pop().enabled = §§pop();
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(this.actionButton);
                                          if(_loc3_)
                                          {
                                             §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.stop"));
                                             if(!(_loc2_ && Boolean(param1)))
                                             {
                                                §§pop().label = §§pop();
                                                if(!(_loc2_ && Boolean(param1)))
                                                {
                                                   §§push(this.actionButton);
                                                   if(!_loc2_)
                                                   {
                                                      addr00bf:
                                                      §§push(LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.stop"));
                                                      if(!_loc2_)
                                                      {
                                                         §§pop().toolTip = §§pop();
                                                         if(_loc3_ || Boolean(param1))
                                                         {
                                                            addr00de:
                                                            this._rewardIndexes = new Vector.<int>();
                                                            if(!_loc2_)
                                                            {
                                                               this._mainAnimationHelper.spinWheel(this.spinWheelMainCompleted);
                                                               if(_loc3_)
                                                               {
                                                                  addr0106:
                                                                  addr0102:
                                                                  if(this._hasBuffToken)
                                                                  {
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        this._buffAnimationHelper.spinWheel(null);
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0202:
                                                                           §§push(this.actionButton);
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr0217:
                                                                              §§pop().toolTip = LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.spinit");
                                                                              addr020b:
                                                                              if(_loc3_ || Boolean(param1))
                                                                              {
                                                                                 addr0226:
                                                                                 §§push(this.actionButton);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§pop().styleName = null;
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       addr0253:
                                                                                       this.setWheelStates();
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          addr026a:
                                                                                          this.actionButton.enabled = false;
                                                                                          addr0269:
                                                                                          addr0265:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr026d);
                                                                                 }
                                                                                 §§goto(addr0269);
                                                                              }
                                                                              §§goto(addr0253);
                                                                           }
                                                                           §§goto(addr0269);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr026d);
                                                               }
                                                               else
                                                               {
                                                                  addr0154:
                                                                  §§push(this.actionButton);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr015d:
                                                                     §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.stop"));
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().label = §§pop();
                                                                        if(_loc3_)
                                                                        {
                                                                           addr0175:
                                                                           §§push(this.actionButton);
                                                                           if(_loc3_ || Boolean(param1))
                                                                           {
                                                                              §§push(LocaUtils.getString("rcl.tooltips.citywheel","rcl.tooltips.citywheel.actionbutton.stop"));
                                                                              if(_loc3_ || Boolean(this))
                                                                              {
                                                                                 addr019e:
                                                                                 §§pop().toolTip = §§pop();
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    addr01ad:
                                                                                    this.finishOffWheelSpin();
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr0202);
                                                                                    }
                                                                                    §§goto(addr026d);
                                                                                 }
                                                                                 §§goto(addr0226);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01e9:
                                                                              §§push(LocaUtils.getString("rcl.booklayer.cityWheel","rcl.booklayer.cityWheel.button.spin"));
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr01fa:
                                                                                 §§pop().label = §§pop();
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§goto(addr0202);
                                                                                 }
                                                                                 §§goto(addr026d);
                                                                              }
                                                                           }
                                                                           §§goto(addr0217);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01d8:
                                                                           §§push(this.actionButton);
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              §§goto(addr01e9);
                                                                           }
                                                                        }
                                                                        §§goto(addr020b);
                                                                     }
                                                                     §§goto(addr019e);
                                                                  }
                                                               }
                                                               §§goto(addr020b);
                                                            }
                                                         }
                                                         addr026d:
                                                         return;
                                                      }
                                                      §§goto(addr01fa);
                                                   }
                                                   §§goto(addr0269);
                                                }
                                                §§goto(addr00de);
                                             }
                                             §§goto(addr0217);
                                          }
                                          §§goto(addr00bf);
                                       }
                                       §§goto(addr0175);
                                    }
                                    §§goto(addr026a);
                                 }
                                 §§goto(addr00bf);
                              }
                              else
                              {
                                 addr01ce:
                                 this._isRewardAvailable = false;
                                 if(_loc3_)
                                 {
                                    §§goto(addr01d8);
                                 }
                              }
                              §§goto(addr0202);
                           }
                           §§goto(addr00de);
                        }
                        else
                        {
                           §§push(this.actionButton);
                           if(!_loc2_)
                           {
                              §§push(false);
                              if(_loc3_)
                              {
                                 §§pop().enabled = §§pop();
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr0154);
                                 }
                                 §§goto(addr01ad);
                              }
                              §§goto(addr026a);
                           }
                        }
                        §§goto(addr015d);
                     }
                     §§goto(addr0106);
                  }
                  §§goto(addr0102);
               }
               else
               {
                  dispatchEvent(new Event(COLLECT_REWARDS,true));
                  if(_loc3_)
                  {
                     §§goto(addr01ce);
                  }
               }
               §§goto(addr0265);
            }
            §§goto(addr0042);
         }
         §§goto(addr0039);
      }
      
      private function tokenMain_rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            this.plusMain.scaleX = this.plusMain.scaleY = 1.05;
         }
      }
      
      private function tokenMain_rollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            this.plusMain.scaleX = this.plusMain.scaleY = 1;
         }
      }
      
      private function tokenBuff_rollOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this.plusBuff.scaleX = this.plusBuff.scaleY = 1.05;
         }
      }
      
      private function tokenBuff_rollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param1)))
         {
            this.plusBuff.scaleX = this.plusBuff.scaleY = 1;
         }
      }
      
      private function buyTokensHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            §§push(this.plusMain);
            if(!(_loc2_ && _loc3_))
            {
               §§push(Boolean(§§pop().includeInLayout));
               if(!(_loc2_ && _loc2_))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(_temp_5)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr0061);
                     }
                  }
                  §§goto(addr0076);
               }
               addr0061:
               §§pop();
               if(!(_loc2_ && Boolean(param1)))
               {
                  addr0076:
                  addr0073:
                  if(Boolean(this.plusMain.visible))
                  {
                     if(!_loc2_)
                     {
                        dispatchEvent(new Event(BUY_SPIN_TOKEN));
                     }
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr0073);
         }
         addr008c:
      }
      
      private function buyBuffsHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.plusBuff);
            if(_loc3_ || _loc3_)
            {
               §§push(Boolean(§§pop().includeInLayout));
               if(!_loc2_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           addr0068:
                           addr0065:
                           if(Boolean(this.plusBuff.visible))
                           {
                              if(_loc3_)
                              {
                                 addr0071:
                                 dispatchEvent(new Event(BUY_BUFF_TOKEN));
                              }
                           }
                        }
                        return;
                     }
                  }
               }
               §§goto(addr0068);
            }
            §§goto(addr0065);
         }
         §§goto(addr0071);
      }
      
      public function set data(param1:CityWheelTabVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(this.isWheelMainSpinning);
            if(_loc2_)
            {
               §§push(§§pop());
               if(!(_loc3_ && Boolean(this)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§pop();
                        if(_loc2_ || Boolean(param1))
                        {
                           §§goto(addr00b0);
                        }
                        §§goto(addr00c3);
                     }
                     addr00b0:
                     §§goto(addr0061);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr006a);
            }
            §§goto(addr0078);
         }
         addr0061:
         §§push(this.isWheelBuffSpinning);
         if(_loc2_)
         {
            addr006a:
            §§push(§§pop());
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0078:
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return;
                  }
               }
               §§push(RandomUtilities.isEqual(this._data,param1));
            }
         }
         if(!§§pop())
         {
            if(_loc2_)
            {
               this._dataDirty = true;
               if(!_loc3_)
               {
                  addr00c3:
                  this._data = param1;
                  if(_loc2_ || Boolean(param1))
                  {
                     invalidateProperties();
                  }
               }
            }
         }
      }
      
      public function get isWheelMainSpinning() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._mainAnimationHelper);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr003e:
                     §§push(this._mainAnimationHelper.isWheelSpinning);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr004f:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr004f);
            }
            §§goto(addr003e);
         }
         §§goto(addr004f);
      }
      
      public function get isWheelBuffSpinning() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._buffAnimationHelper);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr003d:
                     §§push(this._buffAnimationHelper.isWheelSpinning);
                     if(_loc1_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr004e:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr004e);
            }
            §§goto(addr003d);
         }
         §§goto(addr004e);
      }
      
      public function setDrawnRewardsAndBuff(param1:Vector.<CityWheelRewardDTO>, param2:ConfigCityWheelBuffDTO) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this._respinTriggered = false;
            if(!_loc4_)
            {
               this._drawnRewards = param1;
               if(!_loc4_)
               {
                  this._drawnBuff = param2;
                  if(_loc3_)
                  {
                     if(this.isWheelMainSpinning)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0066:
                           TweenMax.delayedCall(2,this.finishOffWheelSpin);
                           if(_loc3_ || Boolean(this))
                           {
                              addr007f:
                              this.actionButton.enabled = true;
                           }
                        }
                        §§goto(addr0087);
                     }
                  }
                  §§goto(addr007f);
               }
               addr0087:
               return;
            }
            §§goto(addr007f);
         }
         §§goto(addr0066);
      }
      
      private function finishOffWheelSpin() : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc3_:ConfigCityWheelBuffDTO = null;
         var _loc4_:CityWheelRewardDTO = null;
         var _loc5_:CityWheelRewardVo = null;
         if(_loc11_)
         {
            §§push(this._respinTriggered);
            if(_loc11_ || Boolean(_loc3_))
            {
               if(§§pop())
               {
                  if(!(_loc10_ && Boolean(this)))
                  {
                     return;
                  }
               }
               else
               {
                  §§push(this._mainAnimationHelper.isWheelStopping);
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                     if(_loc11_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(_loc11_ || Boolean(_loc3_))
                        {
                           if(!§§pop())
                           {
                              if(!_loc10_)
                              {
                                 addr008b:
                                 §§pop();
                                 if(_loc11_ || _loc2_)
                                 {
                                    §§push(this._buffAnimationHelper.isWheelStopping);
                                    if(!_loc10_)
                                    {
                                       addr00a8:
                                       §§push(§§pop());
                                       if(_loc11_ || Boolean(_loc1_))
                                       {
                                          addr00b7:
                                          var _temp_8:* = §§pop();
                                          addr00b8:
                                          §§push(_temp_8);
                                          if(!_temp_8)
                                          {
                                             if(!(_loc10_ && Boolean(_loc1_)))
                                             {
                                                addr00ca:
                                                §§pop();
                                                if(_loc11_ || Boolean(_loc1_))
                                                {
                                                   addr00e2:
                                                   if(this._rewardIndexes.length > 0)
                                                   {
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         §§goto(addr00f4);
                                                      }
                                                   }
                                                }
                                                addr00fb:
                                                TweenMax.killDelayedCallsTo(this.finishOffWheelSpin);
                                                var _loc2_:int = 0;
                                                if(_loc11_)
                                                {
                                                   if(this._buffAnimationHelper.isWheelSpinning)
                                                   {
                                                      if(!(_loc10_ && Boolean(_loc2_)))
                                                      {
                                                         addr0127:
                                                         if(this._drawnBuff != null)
                                                         {
                                                            var _loc6_:int = 0;
                                                            var _loc7_:* = this._data.buffData;
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc7_,_loc6_));
                                                               if(_loc11_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr01ac:
                                                                        _loc6_ = 0;
                                                                        if(!(_loc10_ && Boolean(this)))
                                                                        {
                                                                           _loc7_ = this._drawnRewards;
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc7_,_loc6_));
                                                                              addr02da:
                                                                              while(§§pop())
                                                                              {
                                                                                 _loc4_ = §§nextvalue(_loc6_,_loc7_);
                                                                                 if(_loc4_.rewardType != ServerTagConstants.BUFF_HARVEST)
                                                                                 {
                                                                                    for each(_loc5_ in this._data.rewardData)
                                                                                    {
                                                                                       §§push(_loc5_.rewardConfigId == _loc4_.configId);
                                                                                       if(_loc11_ || Boolean(_loc2_))
                                                                                       {
                                                                                          var _temp_17:* = §§pop();
                                                                                          §§push(_temp_17);
                                                                                          §§push(_temp_17);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc10_ && Boolean(this)))
                                                                                                {
                                                                                                   addr023b:
                                                                                                   §§pop();
                                                                                                   if(_loc10_ && Boolean(_loc2_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(_loc5_.outputType);
                                                                                                   if(_loc11_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(§§pop() == _loc4_.type);
                                                                                                      if(_loc11_ || Boolean(this))
                                                                                                      {
                                                                                                         addr0270:
                                                                                                         var _temp_22:* = §§pop();
                                                                                                         addr0271:
                                                                                                         §§push(_temp_22);
                                                                                                         if(_temp_22)
                                                                                                         {
                                                                                                            if(_loc11_ || Boolean(_loc2_))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr0295:
                                                                                                                  addr028f:
                                                                                                                  if(_loc5_.rewardType != _loc4_.rewardType)
                                                                                                                  {
                                                                                                                     _loc2_++;
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(!(_loc11_ || Boolean(_loc2_)))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  this._rewardIndexes.push(_loc2_);
                                                                                                                  if(_loc10_ && Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc2_ = 0;
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0295);
                                                                                                   }
                                                                                                   §§goto(addr028f);
                                                                                                }
                                                                                                §§goto(addr0295);
                                                                                             }
                                                                                             §§goto(addr0270);
                                                                                          }
                                                                                          §§goto(addr0271);
                                                                                       }
                                                                                       §§goto(addr023b);
                                                                                    }
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr02de:
                                                                        }
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(this._rewardIndexes.length == 0)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 this.spinWheelMainCompleted();
                                                                                 if(!(_loc10_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    throw new RamaCityError("The reward id could not be found");
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr03d7:
                                                                                 addr03db:
                                                                                 if(this.isWheelBuffSpinning)
                                                                                 {
                                                                                    if(_loc11_ || Boolean(this))
                                                                                    {
                                                                                       this._buffAnimationHelper.stopWheelOnIndex(_loc1_);
                                                                                       if(_loc11_ || Boolean(_loc2_))
                                                                                       {
                                                                                          addr0404:
                                                                                          TweenMax.delayedCall(1,this._mainAnimationHelper.stopWheelOnIndex,[this._rewardIndexes.pop(),this._playJackpotAnimation]);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    TweenMax.killDelayedCallsTo(this._mainAnimationHelper.stopWheelOnIndex);
                                                                                    if(_loc11_ || Boolean(this))
                                                                                    {
                                                                                       this._mainAnimationHelper.stopWheelOnIndex(this._rewardIndexes.pop(),this._playJackpotAnimation);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr0467);
                                                                           }
                                                                           §§push(this._drawnBuff);
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 var _temp_30:* = §§pop();
                                                                                 §§push(_temp_30);
                                                                                 §§push(_temp_30);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc11_ || Boolean(_loc1_))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!(_loc10_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(this.isWheelBuffSpinning);
                                                                                             if(!(_loc10_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   addr037b:
                                                                                                   var _temp_34:* = §§pop();
                                                                                                   addr037c:
                                                                                                   §§push(_temp_34);
                                                                                                   if(_temp_34)
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr0386:
                                                                                                         §§pop();
                                                                                                         if(_loc11_ || Boolean(this))
                                                                                                         {
                                                                                                            addr0399:
                                                                                                            §§push(this._drawnBuff.isJackpot);
                                                                                                            if(!(_loc10_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr03ab:
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr03b2:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc11_ || Boolean(_loc1_))
                                                                                                                     {
                                                                                                                        §§goto(addr03c4);
                                                                                                                     }
                                                                                                                     §§goto(addr0404);
                                                                                                                  }
                                                                                                                  §§goto(addr03d7);
                                                                                                               }
                                                                                                               §§goto(addr03db);
                                                                                                            }
                                                                                                            §§goto(addr03b2);
                                                                                                         }
                                                                                                         §§goto(addr0404);
                                                                                                      }
                                                                                                      §§goto(addr03db);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr03b2);
                                                                                             }
                                                                                             §§goto(addr03ab);
                                                                                          }
                                                                                          §§goto(addr0404);
                                                                                       }
                                                                                       §§goto(addr0386);
                                                                                    }
                                                                                    §§goto(addr037b);
                                                                                 }
                                                                                 §§goto(addr037c);
                                                                              }
                                                                              §§goto(addr03db);
                                                                           }
                                                                           §§goto(addr0399);
                                                                           §§goto(addr03d7);
                                                                        }
                                                                        addr03c4:
                                                                        this._playJackpotAnimation = true;
                                                                        if(_loc11_ || Boolean(this))
                                                                        {
                                                                           §§goto(addr03d7);
                                                                        }
                                                                        addr0467:
                                                                        return;
                                                                        addr01a8:
                                                                     }
                                                                     §§goto(addr02de);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc3_ = §§nextvalue(_loc6_,_loc7_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(_loc3_.id != this._drawnBuff.id)
                                                                        {
                                                                           _loc2_++;
                                                                           continue;
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(_loc2_);
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc11_)
                                                                           {
                                                                              _loc1_ = §§pop();
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr0180:
                                                                                 _loc2_ = 0;
                                                                                 addr017e:
                                                                                 if(!(_loc11_ || Boolean(_loc1_)))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              §§goto(addr01a8);
                                                                           }
                                                                        }
                                                                        §§goto(addr0180);
                                                                     }
                                                                     §§goto(addr017e);
                                                                  }
                                                               }
                                                               §§goto(addr02da);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr01ac);
                                                }
                                                §§goto(addr0127);
                                             }
                                          }
                                       }
                                       §§goto(addr00e2);
                                    }
                                    §§goto(addr00ca);
                                 }
                                 §§goto(addr00f4);
                              }
                              §§goto(addr00e2);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00a8);
               }
               addr00f4:
               return;
            }
            §§goto(addr008b);
         }
         §§goto(addr00fb);
      }
      
      private function removedFromStageHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            TweenMax.killDelayedCallsTo(this.setTimer);
            if(!_loc2_)
            {
               this._disposing = true;
            }
         }
      }
      
      private function lockGroupRollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(param1.target is UIComponent)
            {
               addr00df:
               var _loc2_:* = (param1.target as UIComponent).id;
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  §§push("buffLockGroup");
                  if(_loc4_ || Boolean(this))
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc3_ && Boolean(param1))
                           {
                           }
                        }
                        else
                        {
                           addr013b:
                           §§push(1);
                           if(_loc3_)
                           {
                           }
                        }
                        §§goto(addr0152);
                     }
                     else
                     {
                        §§goto(addr0136);
                     }
                  }
                  addr0136:
                  if("spinLockGroup" === _loc2_)
                  {
                     §§goto(addr013b);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr0152:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(this._hasBuffToken);
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           if(!§§pop())
                           {
                              dispatchEvent(new Event(SHOW_INFOLAYER_NO_BUFF));
                              if(_loc3_ && Boolean(param1))
                              {
                              }
                              break;
                           }
                           if(!(_loc4_ || Boolean(this)))
                           {
                              break;
                           }
                           §§push(this._hasSpinToken);
                           if(!_loc4_)
                           {
                              addr00bb:
                              if(!§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    dispatchEvent(new Event(SHOW_INFOLAYER_NO_SPIN));
                                    if(_loc3_)
                                    {
                                    }
                                 }
                              }
                              break;
                           }
                        }
                        if(!§§pop())
                        {
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              dispatchEvent(new Event(SHOW_INFOLAYER_BUFF_LOCKED));
                              if(_loc4_)
                              {
                              }
                           }
                        }
                        break;
                     case 1:
                        §§goto(addr00bb);
                        §§push(this._hasSpinToken);
                  }
                  §§goto(addr0162);
               }
               §§goto(addr013b);
            }
            addr0162:
            return;
         }
         §§goto(addr00df);
      }
      
      private function lockGroupRollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            dispatchEvent(new Event(HIDE_INFOLAYER));
         }
      }
      
      private function _CityWheelTab_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr0038);
            }
            §§goto(addr0083);
         }
         addr0038:
         _loc1_.percentHeight = 100;
         if(_loc2_ || _loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "top";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.gap = 3;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._CityWheelTab_Group2_c(),this._CityWheelTab_HGroup4_c(),this._CityWheelTab_Group4_c(),this._CityWheelTab_Group15_c()];
                     addr0083:
                     if(!_loc3_)
                     {
                        addr00b1:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr00c5:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00c9);
                  }
                  §§goto(addr00c5);
               }
            }
            §§goto(addr00b1);
         }
         addr00c9:
         return _loc1_;
      }
      
      private function _CityWheelTab_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               addr0045:
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  addr005a:
                  _loc1_.mxmlContent = [this._CityWheelTab_HGroup1_c(),this._CityWheelTab_Group3_c(),this._CityWheelTab_HGroup2_c(),this._CityWheelTab_HGroup3_c()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0088:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0088);
            }
            §§goto(addr005a);
         }
         §§goto(addr0045);
      }
      
      private function _CityWheelTab_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     addr0051:
                     _loc1_.height = 30;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.mxmlContent = [this._CityWheelTab_BlueBarComponent1_c()];
                        if(_loc3_ || _loc2_)
                        {
                           addr0088:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr009c:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr009c);
                  }
                  addr00a0:
                  return _loc1_;
               }
               §§goto(addr009c);
            }
            §§goto(addr0088);
         }
         §§goto(addr0051);
      }
      
      private function _CityWheelTab_BlueBarComponent1_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
               _loc1_.width = 574;
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006e);
               }
            }
            §§goto(addr006a);
         }
         addr006e:
         return _loc1_;
      }
      
      private function _CityWheelTab_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 574;
            if(_loc2_)
            {
               addr0033:
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib1_c()];
                  if(!_loc3_)
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0070);
               }
            }
            addr005c:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0070:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _CityWheelTab_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.height = 50;
            if(_loc3_)
            {
               _loc1_.width = 50;
               if(_loc3_)
               {
                  _loc1_.left = 50;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.dynaLibName = "gui_popups_citywheel";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.dynaBmpSourceName = "headline_icon";
                        if(!_loc2_)
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr008f);
                     }
                     addr007b:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr008f:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr008f);
      }
      
      private function _CityWheelTab_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     _loc1_.height = 30;
                     if(_loc3_)
                     {
                        addr006f:
                        _loc1_.paddingTop = 2;
                        if(!_loc2_)
                        {
                           addr007a:
                           _loc1_.mxmlContent = [this._CityWheelTab_LocaLabel1_i()];
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr0096:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr009a);
                           }
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006f);
               }
               addr009a:
               return _loc1_;
            }
            §§goto(addr0096);
         }
         §§goto(addr006f);
      }
      
      private function _CityWheelTab_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.styleName = "StatusBarStyle";
            if(_loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc2_)
               {
                  addr0047:
                  _loc1_.maxWidth = 356;
                  if(!_loc3_)
                  {
                     _loc1_.id = "headerTextLabel";
                     if(!_loc3_)
                     {
                        addr005e:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0076:
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0087:
                                 this.headerTextLabel = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr0091:
                                    BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
                                 }
                                 §§goto(addr009e);
                              }
                              §§goto(addr0091);
                           }
                           addr009e:
                           return _loc1_;
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr005e);
               }
               §§goto(addr0091);
            }
            §§goto(addr0047);
         }
         §§goto(addr0076);
      }
      
      private function _CityWheelTab_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 17;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc3_)
                  {
                     addr0055:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.top = 32;
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib2_c(),this._CityWheelTab_SlimProgressBarTimer1_i()];
                           addr0071:
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00b0:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0055);
            }
            §§goto(addr00b0);
         }
         addr00b4:
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
               if(_loc2_)
               {
                  _loc1_.width = 18;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.height = 17;
                     addr0062:
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               §§goto(addr0099);
            }
            §§goto(addr0062);
         }
         addr0099:
         return _loc1_;
      }
      
      private function _CityWheelTab_SlimProgressBarTimer1_i() : SlimProgressBarTimer
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SlimProgressBarTimer = new SlimProgressBarTimer();
         if(!_loc2_)
         {
            _loc1_.progressBarTint = 10739019;
            if(_loc3_)
            {
               addr002f:
               _loc1_.revertProgress = true;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.width = 330;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.id = "eventTimer";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0089:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 §§goto(addr0092);
                              }
                           }
                           §§goto(addr009c);
                        }
                        addr0092:
                        this.eventTimer = _loc1_;
                        if(_loc3_)
                        {
                           addr009c:
                           BindingManager.executeBindings(this,"eventTimer",this.eventTimer);
                        }
                        §§goto(addr00a9);
                     }
                     addr00a9:
                     return _loc1_;
                  }
                  §§goto(addr009c);
               }
               §§goto(addr0089);
            }
            §§goto(addr009c);
         }
         §§goto(addr002f);
      }
      
      private function _CityWheelTab_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 28;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0049);
               }
               §§goto(addr0070);
            }
            §§goto(addr0094);
         }
         addr0049:
         _loc1_.verticalAlign = "middle";
         if(_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || _loc3_)
            {
               addr0070:
               _loc1_.mxmlContent = [this._CityWheelTab_LocaLabel2_i()];
               if(!_loc3_)
               {
                  §§goto(addr0080);
               }
               §§goto(addr0094);
            }
         }
         addr0080:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr0094:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.maxDisplayedLines = 2;
            if(!_loc3_)
            {
               §§goto(addr0031);
            }
            §§goto(addr006c);
         }
         addr0031:
         _loc1_.styleName = "flavorText";
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 85;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "flavourLabel";
               if(_loc2_)
               {
                  addr006c:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr0083);
                     }
                  }
                  §§goto(addr008c);
               }
               addr0083:
               _loc1_.document = this;
               if(_loc2_)
               {
                  addr008c:
                  this.flavourLabel = _loc1_;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
                  }
               }
               §§goto(addr00ab);
            }
         }
         addr00ab:
         return _loc1_;
      }
      
      private function _CityWheelTab_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.mxmlContent = [this._CityWheelTab_Group5_c(),this._CityWheelTab_Group8_c(),this._CityWheelTab_Group11_c()];
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0062:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0062);
      }
      
      private function _CityWheelTab_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.top = 10;
            if(_loc3_)
            {
               _loc1_.left = -32;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib3_c(),this._CityWheelTab_Group6_i(),this._CityWheelTab_Group7_c()];
                  if(!_loc2_)
                  {
                     §§goto(addr0069);
                  }
               }
               §§goto(addr0075);
            }
            addr0069:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0075:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      private function _CityWheelTab_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!_loc3_)
            {
               addr0034:
               _loc1_.dynaBmpSourceName = "background_main";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0034);
      }
      
      private function _CityWheelTab_Group6_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.left = 5;
            if(!_loc3_)
            {
               _loc1_.top = 26;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.width = 69;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.height = 69;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib4_i(),this._CityWheelTab_BriskImageDynaLib5_i(),this._CityWheelTab_BriskImageDynaLib6_i(),this._CityWheelTab_BriskImageDynaLib7_i()];
                        addr005e:
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.addEventListener("rollOver",this.__tokenGroup_rollOver);
                           if(_loc2_)
                           {
                              _loc1_.addEventListener("rollOut",this.__tokenGroup_rollOut);
                              if(_loc2_)
                              {
                                 _loc1_.addEventListener("click",this.__tokenGroup_click);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    _loc1_.id = "tokenGroup";
                                    if(_loc2_)
                                    {
                                       addr00e8:
                                       if(!_loc1_.document)
                                       {
                                          if(_loc2_)
                                          {
                                             §§goto(addr00f4);
                                          }
                                       }
                                       §§goto(addr00fd);
                                    }
                                 }
                                 §§goto(addr00f4);
                              }
                              §§goto(addr0107);
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr0107);
                     }
                     §§goto(addr00e8);
                  }
                  §§goto(addr005e);
               }
            }
            addr00f4:
            _loc1_.document = this;
            if(_loc2_)
            {
               addr00fd:
               this.tokenGroup = _loc1_;
               if(_loc2_)
               {
                  addr0107:
                  BindingManager.executeBindings(this,"tokenGroup",this.tokenGroup);
               }
            }
            return _loc1_;
         }
         §§goto(addr00e8);
      }
      
      private function _CityWheelTab_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "token_background";
               if(_loc2_)
               {
                  addr004c:
                  _loc1_.id = "tokenMain";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              addr0077:
                              this.tokenMain = _loc1_;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr0089:
                                 BindingManager.executeBindings(this,"tokenMain",this.tokenMain);
                              }
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr0089);
                     }
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr004c);
         }
         addr0096:
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "token_background_locked";
               if(_loc2_)
               {
                  addr003e:
                  _loc1_.visible = false;
                  if(_loc2_)
                  {
                     _loc1_.includeInLayout = false;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "tokenMainDeactivated";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0085:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00a3:
                                    this.tokenMainDeactivated = _loc1_;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00b5:
                                       BindingManager.executeBindings(this,"tokenMainDeactivated",this.tokenMainDeactivated);
                                    }
                                    §§goto(addr00c2);
                                 }
                                 §§goto(addr00b5);
                              }
                              §§goto(addr00c2);
                           }
                           §§goto(addr00a3);
                        }
                        §§goto(addr00b5);
                     }
                     addr00c2:
                     return _loc1_;
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr00b5);
            }
            §§goto(addr003e);
         }
         §§goto(addr0085);
      }
      
      private function _CityWheelTab_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!(_loc2_ && Boolean(this)))
            {
               addr0035:
               _loc1_.dynaBmpSourceName = "token_icon_spin";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0049:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "tokenIconMain";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr00b5);
                                 }
                              }
                              §§goto(addr00c7);
                           }
                        }
                     }
                     addr00b5:
                     this.tokenIconMain = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        addr00c7:
                        BindingManager.executeBindings(this,"tokenIconMain",this.tokenIconMain);
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr00c7);
            }
            §§goto(addr0049);
         }
         §§goto(addr0035);
      }
      
      private function _CityWheelTab_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.left = 48;
            if(_loc3_)
            {
               _loc1_.top = -1;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.dynaLibName = "gui_main_hud";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0065:
                     _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0078:
                        _loc1_.id = "plusMain";
                        if(_loc3_ || Boolean(this))
                        {
                           addr008b:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr009f:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00ba:
                                    this.plusMain = _loc1_;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00cc:
                                       BindingManager.executeBindings(this,"plusMain",this.plusMain);
                                    }
                                    §§goto(addr00d9);
                                 }
                                 §§goto(addr00cc);
                              }
                              addr00d9:
                              return _loc1_;
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0065);
            }
            §§goto(addr009f);
         }
         §§goto(addr008b);
      }
      
      public function __tokenGroup_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.tokenMain_rollOverHandler(param1);
         }
      }
      
      public function __tokenGroup_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.tokenMain_rollOutHandler(param1);
         }
      }
      
      public function __tokenGroup_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.buyTokensHandler(param1);
         }
      }
      
      private function _CityWheelTab_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.top = 16;
            if(!_loc2_)
            {
               §§goto(addr002b);
            }
            §§goto(addr0092);
         }
         addr002b:
         _loc1_.left = 100;
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib8_i(),this._CityWheelTab_WheelComponent1_i(),this._CityWheelTab_BriskImageDynaLib9_c(),this._CityWheelTab_LocaLabel3_i(),this._CityWheelTab_UiInfolayerAlignmentLine1_i()];
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0092:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "colorbackground_main";
               if(!_loc2_)
               {
                  _loc1_.id = "colorBackgroundMain";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr006e:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0077);
                           }
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr006e);
               }
            }
            addr0077:
            this.colorBackgroundMain = _loc1_;
            if(_loc3_)
            {
               addr0081:
               BindingManager.executeBindings(this,"colorBackgroundMain",this.colorBackgroundMain);
            }
            §§goto(addr008e);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _CityWheelTab_WheelComponent1_i() : WheelComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:WheelComponent = new WheelComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 520;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.height = 95;
               if(_loc2_)
               {
                  _loc1_.elementWidth = 130;
                  if(!_loc3_)
                  {
                     _loc1_.itemRenderer = this._CityWheelTab_ClassFactory1_c();
                     if(_loc2_)
                     {
                        _loc1_.id = "wheelMain";
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 addr0096:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00b3:
                                    this.wheelMain = _loc1_;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00c5:
                                       BindingManager.executeBindings(this,"wheelMain",this.wheelMain);
                                    }
                                 }
                              }
                              §§goto(addr00d2);
                           }
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr00d2);
                  }
                  §§goto(addr00b3);
               }
               §§goto(addr0096);
            }
            §§goto(addr00c5);
         }
         addr00d2:
         return _loc1_;
      }
      
      private function _CityWheelTab_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_ || _loc3_)
         {
            _loc1_.generator = CityWheelRewardItemRenderer;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "shadow_main";
               if(!_loc2_)
               {
                  addr004c:
                  _loc1_.top = -1;
                  if(_loc3_ || _loc2_)
                  {
                     addr0069:
                     _loc1_.mouseEnabled = false;
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008b);
                     }
                  }
                  §§goto(addr0087);
               }
               addr008b:
               return _loc1_;
            }
            §§goto(addr0069);
         }
         §§goto(addr004c);
      }
      
      private function _CityWheelTab_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.styleName = "flavorText";
               if(_loc2_)
               {
                  _loc1_.maxWidth = 180;
                  if(_loc2_)
                  {
                     _loc1_.width = 180;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.left = 10;
                        addr005d:
                        if(_loc2_)
                        {
                           _loc1_.top = -9;
                           if(_loc2_)
                           {
                              addr007c:
                              _loc1_.setStyle("textAlign","left");
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 _loc1_.id = "wheelStateMainLabel";
                                 if(_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr00aa:
                                          _loc1_.document = this;
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§goto(addr00c7);
                                          }
                                       }
                                       §§goto(addr00d9);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr00aa);
                              }
                              §§goto(addr00c7);
                           }
                        }
                        §§goto(addr00aa);
                     }
                     addr00c7:
                     this.wheelStateMainLabel = _loc1_;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr00d9:
                        BindingManager.executeBindings(this,"wheelStateMainLabel",this.wheelStateMainLabel);
                     }
                     §§goto(addr00e6);
                  }
                  addr00e6:
                  return _loc1_;
               }
               §§goto(addr00d9);
            }
            §§goto(addr005d);
         }
         §§goto(addr007c);
      }
      
      private function _CityWheelTab_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!_loc3_)
         {
            _loc1_.left = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.top = 70;
               if(_loc2_)
               {
                  _loc1_.right = 0;
                  if(!_loc3_)
                  {
                     _loc1_.lineId = 0;
                     if(_loc2_ || Boolean(this))
                     {
                        addr0067:
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(_loc2_)
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr0091);
                     }
                     addr0072:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0091:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00a4);
                        }
                     }
                     addr009a:
                     this.uiInfolayerAlignmentLine = _loc1_;
                     if(!_loc3_)
                     {
                        addr00a4:
                        BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr00b1);
            }
            §§goto(addr00a4);
         }
         addr00b1:
         return _loc1_;
      }
      
      private function _CityWheelTab_Group8_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 133;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.left = -32;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib10_c(),this._CityWheelTab_Group9_i(),this._CityWheelTab_Group10_c()];
                  addr0052:
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr008f:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0093);
                  }
               }
               §§goto(addr008f);
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _CityWheelTab_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "background_buff";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0072);
      }
      
      private function _CityWheelTab_Group9_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.left = 5;
            if(_loc2_)
            {
               _loc1_.top = 6;
               if(!_loc3_)
               {
                  _loc1_.width = 69;
                  if(_loc2_)
                  {
                     _loc1_.height = 69;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib11_i(),this._CityWheelTab_BriskImageDynaLib12_i(),this._CityWheelTab_BriskImageDynaLib13_c(),this._CityWheelTab_BriskImageDynaLib14_i(),this._CityWheelTab_BriskImageDynaLib15_i(),this._CityWheelTab_BriskImageDynaLib16_i()];
                        if(!_loc3_)
                        {
                           _loc1_.addEventListener("rollOver",this.__bufftokenGroup_rollOver);
                           if(!_loc3_)
                           {
                              addr009a:
                              _loc1_.addEventListener("rollOut",this.__bufftokenGroup_rollOut);
                              if(!(_loc3_ && _loc2_))
                              {
                                 _loc1_.addEventListener("click",this.__bufftokenGroup_click);
                                 if(!_loc3_)
                                 {
                                    addr00c4:
                                    _loc1_.id = "bufftokenGroup";
                                    if(!_loc3_)
                                    {
                                       if(!_loc1_.document)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             _loc1_.document = this;
                                             if(_loc2_)
                                             {
                                                §§goto(addr00f8);
                                             }
                                             §§goto(addr010a);
                                          }
                                       }
                                       §§goto(addr00f8);
                                    }
                                 }
                              }
                              §§goto(addr010a);
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr010a);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr010a);
               }
               §§goto(addr00c4);
            }
            addr00f8:
            this.bufftokenGroup = _loc1_;
            if(!(_loc3_ && _loc2_))
            {
               addr010a:
               BindingManager.executeBindings(this,"bufftokenGroup",this.bufftokenGroup);
            }
            return _loc1_;
         }
         §§goto(addr009a);
      }
      
      private function _CityWheelTab_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "token_background";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "tokenBuff";
                  if(!_loc2_)
                  {
                     addr006b:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0080:
                              this.tokenBuff = _loc1_;
                              if(!_loc2_)
                              {
                                 addr008a:
                                 BindingManager.executeBindings(this,"tokenBuff",this.tokenBuff);
                              }
                           }
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr008a);
               }
               addr0097:
               return _loc1_;
            }
            §§goto(addr008a);
         }
         §§goto(addr006b);
      }
      
      private function _CityWheelTab_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "token_background_locked";
               if(!_loc3_)
               {
                  _loc1_.visible = false;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.includeInLayout = false;
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr0073);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr0086);
            }
            addr0073:
            _loc1_.id = "tokenBuffDeactivated";
            if(!(_loc3_ && _loc2_))
            {
               addr0086:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr00a8:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr00b1:
                        this.tokenBuffDeactivated = _loc1_;
                        if(!_loc3_)
                        {
                           BindingManager.executeBindings(this,"tokenBuffDeactivated",this.tokenBuffDeactivated);
                        }
                     }
                     §§goto(addr00c8);
                  }
               }
               §§goto(addr00b1);
            }
            addr00c8:
            return _loc1_;
         }
         §§goto(addr00a8);
      }
      
      private function _CityWheelTab_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "token_icon_sparkle";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.top = -8;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.left = -3;
                     §§goto(addr006e);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr00a0);
            }
            addr006e:
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr008c:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr00a0:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr00a4);
         }
         addr00a4:
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib14_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "token_icon_buff";
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr005d:
                     _loc1_.verticalCenter = 0;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.id = "tokenIconBuff";
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00ab:
                                    this.tokenIconBuff = _loc1_;
                                    if(_loc3_)
                                    {
                                       BindingManager.executeBindings(this,"tokenIconBuff",this.tokenIconBuff);
                                    }
                                 }
                                 §§goto(addr00c2);
                              }
                           }
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr00ab);
               }
               addr00c2:
               return _loc1_;
            }
         }
         §§goto(addr005d);
      }
      
      private function _CityWheelTab_BriskImageDynaLib15_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.left = 48;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.top = -1;
               if(_loc2_)
               {
                  _loc1_.dynaLibName = "gui_main_hud";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "plusBuff";
                        if(_loc2_)
                        {
                           §§goto(addr0078);
                        }
                        §§goto(addr0091);
                     }
                     addr0078:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0091:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00ac);
                        }
                     }
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0078);
            }
            §§goto(addr0091);
         }
         addr009a:
         this.plusBuff = _loc1_;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            addr00ac:
            BindingManager.executeBindings(this,"plusBuff",this.plusBuff);
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib16_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.left = 48;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.top = -5;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.dynaLibName = "gui_popups_citywheel";
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "token_icon_lock";
                     if(!_loc3_)
                     {
                        _loc1_.visible = false;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc2_)
                           {
                              _loc1_.id = "tokenIconLock";
                              if(!_loc3_)
                              {
                                 addr0093:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00b2:
                                       _loc1_.document = this;
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr00c3:
                                          this.tokenIconLock = _loc1_;
                                          if(_loc2_)
                                          {
                                             addr00cd:
                                             BindingManager.executeBindings(this,"tokenIconLock",this.tokenIconLock);
                                          }
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00c3);
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr0093);
                        }
                        §§goto(addr00b2);
                     }
                  }
                  §§goto(addr00cd);
               }
               §§goto(addr00b2);
            }
            §§goto(addr00cd);
         }
         §§goto(addr00c3);
      }
      
      public function __bufftokenGroup_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.tokenBuff_rollOverHandler(param1);
         }
      }
      
      public function __bufftokenGroup_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.tokenBuff_rollOutHandler(param1);
         }
      }
      
      public function __bufftokenGroup_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this.buyBuffsHandler(param1);
         }
      }
      
      private function _CityWheelTab_Group10_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.top = 16;
            if(_loc2_ || _loc3_)
            {
               addr0043:
               _loc1_.left = 100;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib17_i(),this._CityWheelTab_WheelComponent2_i(),this._CityWheelTab_BriskImageDynaLib18_c(),this._CityWheelTab_LocaLabel4_i(),this._CityWheelTab_BriskImageDynaLib19_c(),this._CityWheelTab_BriskImageDynaLib20_c(),this._CityWheelTab_UiInfolayerAlignmentLine2_i()];
                  if(_loc2_ || _loc2_)
                  {
                     addr0097:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr00a3:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0097);
            }
            §§goto(addr00a3);
         }
         §§goto(addr0043);
      }
      
      private function _CityWheelTab_BriskImageDynaLib17_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0048:
               _loc1_.dynaBmpSourceName = "colorbackground_buff";
               if(!_loc2_)
               {
                  _loc1_.id = "colorBackgroundBuff";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0080:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0089);
                           }
                           §§goto(addr009b);
                        }
                     }
                     addr0089:
                     this.colorBackgroundBuff = _loc1_;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr009b:
                        BindingManager.executeBindings(this,"colorBackgroundBuff",this.colorBackgroundBuff);
                     }
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr0080);
            }
            addr00a8:
            return _loc1_;
         }
         §§goto(addr0048);
      }
      
      private function _CityWheelTab_WheelComponent2_i() : WheelComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:WheelComponent = new WheelComponent();
         if(_loc3_)
         {
            _loc1_.width = 520;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 62;
               if(_loc3_)
               {
                  _loc1_.elementWidth = 130;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.itemRenderer = this._CityWheelTab_ClassFactory2_c();
                     if(_loc3_)
                     {
                        addr0073:
                        _loc1_.id = "wheelBuff";
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr0095);
                        }
                        §§goto(addr00b4);
                     }
                     addr0095:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr00aa);
                           }
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr00b4);
               }
               addr00aa:
               this.wheelBuff = _loc1_;
               if(_loc3_)
               {
                  addr00b4:
                  BindingManager.executeBindings(this,"wheelBuff",this.wheelBuff);
               }
               return _loc1_;
            }
            §§goto(addr00b4);
         }
         §§goto(addr0073);
      }
      
      private function _CityWheelTab_ClassFactory2_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = CityWheelBuffItemRenderer;
         }
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib18_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "shadow_buff";
               addr0032:
               if(_loc3_)
               {
                  _loc1_.top = -1;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.left = -1;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.mouseEnabled = false;
                        if(!_loc2_)
                        {
                           addr0084:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0090:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr0084);
                  }
                  addr0094:
                  return _loc1_;
               }
            }
            §§goto(addr0090);
         }
         §§goto(addr0032);
      }
      
      private function _CityWheelTab_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc3_)
            {
               addr002a:
               _loc1_.styleName = "flavorText";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.maxWidth = 180;
                  if(!_loc2_)
                  {
                     addr0049:
                     _loc1_.width = 180;
                     if(!_loc2_)
                     {
                        addr0054:
                        _loc1_.left = 10;
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.top = -9;
                           if(_loc3_)
                           {
                              addr007b:
                              _loc1_.setStyle("textAlign","left");
                              if(_loc3_)
                              {
                                 _loc1_.id = "wheelStateBuffLabel";
                                 if(_loc3_ || Boolean(this))
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_ || Boolean(this))
                                       {
                                          _loc1_.document = this;
                                          if(!_loc2_)
                                          {
                                             §§goto(addr00c5);
                                          }
                                       }
                                       §§goto(addr00cf);
                                    }
                                    addr00c5:
                                    this.wheelStateBuffLabel = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00cf:
                                       BindingManager.executeBindings(this,"wheelStateBuffLabel",this.wheelStateBuffLabel);
                                    }
                                    §§goto(addr00dc);
                                 }
                                 addr00dc:
                                 return _loc1_;
                              }
                              §§goto(addr00c5);
                           }
                        }
                        §§goto(addr00cf);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0054);
               }
               §§goto(addr0049);
            }
            §§goto(addr0054);
         }
         §§goto(addr002a);
      }
      
      private function _CityWheelTab_BriskImageDynaLib19_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(_loc2_ || _loc3_)
            {
               addr003e:
               _loc1_.dynaBmpSourceName = "wheel_spark";
               if(!_loc3_)
               {
                  _loc1_.top = -23;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.left = -13;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr007c);
                     }
                     §§goto(addr0088);
                  }
                  addr007c:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0088:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0088);
         }
         §§goto(addr003e);
      }
      
      private function _CityWheelTab_BriskImageDynaLib20_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "wheel_spark";
               addr003c:
               if(!_loc3_)
               {
                  §§goto(addr0054);
               }
               §§goto(addr0075);
            }
            addr0054:
            _loc1_.top = -12;
            if(!_loc3_)
            {
               _loc1_.left = 502;
               if(!_loc3_)
               {
                  §§goto(addr0069);
               }
               §§goto(addr0075);
            }
            addr0069:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0075:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      private function _CityWheelTab_UiInfolayerAlignmentLine2_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_)
         {
            _loc1_.left = 0;
            if(_loc3_)
            {
               addr002f:
               _loc1_.top = 40;
               if(!_loc2_)
               {
                  _loc1_.right = 0;
                  if(!_loc2_)
                  {
                     addr0043:
                     _loc1_.lineId = 1;
                     if(_loc3_)
                     {
                        §§goto(addr005a);
                     }
                     §§goto(addr008e);
                  }
                  addr005a:
                  _loc1_.id = "uiInfolayerAlignmentLine2";
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr008e:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              addr009f:
                              this.uiInfolayerAlignmentLine2 = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"uiInfolayerAlignmentLine2",this.uiInfolayerAlignmentLine2);
                              }
                           }
                           §§goto(addr00b6);
                        }
                     }
                     §§goto(addr009f);
                  }
                  addr00b6:
                  return _loc1_;
               }
            }
            §§goto(addr0043);
         }
         §§goto(addr002f);
      }
      
      private function _CityWheelTab_Group11_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.left = 242;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.top = -3;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.mouseEnabled = false;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib21_c(),this._CityWheelTab_Group12_c()];
                     §§goto(addr0058);
                  }
                  §§goto(addr0083);
               }
            }
            addr0058:
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0083:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr009b);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib21_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.mouseEnabled = false;
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_citywheel";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.dynaBmpSourceName = "reward_frame";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0074:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0074);
            }
            addr0078:
            return _loc1_;
         }
         §§goto(addr0074);
      }
      
      private function _CityWheelTab_Group12_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.left = 10;
            if(_loc3_)
            {
               _loc1_.mouseEnabled = false;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._CityWheelTab_Group13_i(),this._CityWheelTab_Group14_i()];
                  if(_loc3_)
                  {
                     addr0075:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0081:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0075);
         }
         §§goto(addr0081);
      }
      
      private function _CityWheelTab_Group13_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 50;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.width = 152;
               if(_loc3_)
               {
                  _loc1_.height = 62;
                  if(_loc3_)
                  {
                     addr0047:
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib22_i(),this._CityWheelTab_BriskImageDynaLib23_i()];
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.addEventListener("rollOver",this.__spinLockGroup_rollOver);
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0094:
                              _loc1_.addEventListener("rollOut",this.__spinLockGroup_rollOut);
                              if(_loc3_ || _loc2_)
                              {
                                 addr00ad:
                                 _loc1_.id = "spinLockGroup";
                                 if(_loc3_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          §§goto(addr00d8);
                                       }
                                       §§goto(addr00f3);
                                    }
                                 }
                              }
                           }
                           §§goto(addr00e1);
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr00e1);
                  }
                  addr00d8:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr00e1:
                     this.spinLockGroup = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr00f3:
                        BindingManager.executeBindings(this,"spinLockGroup",this.spinLockGroup);
                     }
                  }
                  §§goto(addr0100);
               }
               §§goto(addr00ad);
            }
            §§goto(addr0047);
         }
         addr0100:
         return _loc1_;
      }
      
      private function _CityWheelTab_BriskImageDynaLib22_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "lock_background";
               if(_loc2_)
               {
                  addr003f:
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.visible = false;
                        if(!_loc3_)
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr007f:
                              _loc1_.id = "lockBackgroundMain";
                              if(_loc2_)
                              {
                                 addr008a:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00a3:
                                       _loc1_.document = this;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr00b4:
                                          this.lockBackgroundMain = _loc1_;
                                          if(_loc2_)
                                          {
                                             addr00be:
                                             BindingManager.executeBindings(this,"lockBackgroundMain",this.lockBackgroundMain);
                                          }
                                          §§goto(addr00cb);
                                       }
                                       §§goto(addr00be);
                                    }
                                    §§goto(addr00cb);
                                 }
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr008a);
            }
            addr00cb:
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _CityWheelTab_BriskImageDynaLib23_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§goto(addr003c);
            }
            §§goto(addr00c5);
         }
         addr003c:
         _loc1_.dynaBmpSourceName = "lock_icon_token";
         if(!_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr0064);
            }
            §§goto(addr0077);
         }
         addr0064:
         _loc1_.verticalCenter = 0;
         if(_loc2_)
         {
            _loc1_.visible = false;
            if(!_loc3_)
            {
               addr0077:
               _loc1_.includeInLayout = false;
               if(_loc2_ || _loc3_)
               {
                  addr0088:
                  _loc1_.id = "lockIconMain";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr00aa:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr00bb);
                           }
                           §§goto(addr00c5);
                        }
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr00bb);
            }
            §§goto(addr0088);
         }
         addr00bb:
         this.lockIconMain = _loc1_;
         if(!_loc3_)
         {
            addr00c5:
            BindingManager.executeBindings(this,"lockIconMain",this.lockIconMain);
         }
         return _loc1_;
      }
      
      public function __spinLockGroup_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.lockGroupRollOverHandler(param1);
         }
      }
      
      public function __spinLockGroup_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.lockGroupRollOutHandler(param1);
         }
      }
      
      private function _CityWheelTab_Group14_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.top = 151;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.width = 152;
               if(!_loc3_)
               {
                  _loc1_.height = 62;
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._CityWheelTab_BriskImageDynaLib24_i(),this._CityWheelTab_BriskImageDynaLib25_i(),this._CityWheelTab_BriskImageDynaLib26_i()];
                        addr0060:
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           _loc1_.addEventListener("rollOver",this.__buffLockGroup_rollOver);
                           if(!_loc3_)
                           {
                              addr00a2:
                              _loc1_.addEventListener("rollOut",this.__buffLockGroup_rollOut);
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.id = "buffLockGroup";
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    addr00ce:
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr00e5:
                                          _loc1_.document = this;
                                          if(_loc2_)
                                          {
                                             §§goto(addr00ee);
                                          }
                                       }
                                       §§goto(addr0100);
                                    }
                                 }
                                 addr00ee:
                                 this.buffLockGroup = _loc1_;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr0100:
                                    BindingManager.executeBindings(this,"buffLockGroup",this.buffLockGroup);
                                 }
                                 return _loc1_;
                              }
                           }
                        }
                        §§goto(addr00ce);
                     }
                     §§goto(addr00e5);
                  }
                  §§goto(addr00a2);
               }
            }
         }
         §§goto(addr0060);
      }
      
      private function _CityWheelTab_BriskImageDynaLib24_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "lock_background";
               if(_loc2_)
               {
                  addr0047:
                  _loc1_.visible = false;
                  if(!_loc3_)
                  {
                     addr005b:
                     _loc1_.includeInLayout = false;
                     if(!_loc3_)
                     {
                        addr0064:
                        _loc1_.id = "lockBackgroundBuff";
                        if(_loc2_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr0097:
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00a8:
                                    this.lockBackgroundBuff = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00b2:
                                       BindingManager.executeBindings(this,"lockBackgroundBuff",this.lockBackgroundBuff);
                                    }
                                    §§goto(addr00bf);
                                 }
                                 §§goto(addr00b2);
                              }
                              addr00bf:
                              return _loc1_;
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr0064);
            }
            §§goto(addr005b);
         }
         §§goto(addr0047);
      }
      
      private function _CityWheelTab_BriskImageDynaLib25_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "lock_icon_token";
               if(_loc3_)
               {
                  addr0040:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc3_ || _loc3_)
                     {
                        addr0072:
                        _loc1_.visible = false;
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc3_)
                           {
                              addr008c:
                              _loc1_.id = "lockIconBuffToken";
                              if(!_loc2_)
                              {
                                 addr00a2:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(_loc3_)
                                       {
                                          addr00b7:
                                          this.lockIconBuffToken = _loc1_;
                                          if(!_loc2_)
                                          {
                                             addr00c1:
                                             BindingManager.executeBindings(this,"lockIconBuffToken",this.lockIconBuffToken);
                                          }
                                       }
                                       return _loc1_;
                                    }
                                    §§goto(addr00c1);
                                 }
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr008c);
            }
            §§goto(addr00a2);
         }
         §§goto(addr0040);
      }
      
      private function _CityWheelTab_BriskImageDynaLib26_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_citywheel";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "lock_icon_lock";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.visible = false;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr008d:
                           _loc1_.includeInLayout = false;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              _loc1_.id = "lockIconBuffLock";
                              if(_loc2_)
                              {
                                 addr00a9:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(_loc2_)
                                       {
                                          §§goto(addr00cb);
                                       }
                                       §§goto(addr00dd);
                                    }
                                 }
                              }
                           }
                           addr00cb:
                           this.lockIconBuffLock = _loc1_;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00dd:
                              BindingManager.executeBindings(this,"lockIconBuffLock",this.lockIconBuffLock);
                           }
                           §§goto(addr00ea);
                        }
                        addr00ea:
                        return _loc1_;
                     }
                     §§goto(addr008d);
                  }
               }
               §§goto(addr00cb);
            }
            §§goto(addr00a9);
         }
         §§goto(addr008d);
      }
      
      public function __buffLockGroup_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.lockGroupRollOverHandler(param1);
         }
      }
      
      public function __buffLockGroup_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.lockGroupRollOutHandler(param1);
         }
      }
      
      private function _CityWheelTab_Group15_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._CityWheelTab_MultistateButton1_i()];
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr006b);
               }
               §§goto(addr0077);
            }
            addr006b:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr0077:
                  _loc1_.document = this;
               }
            }
            §§goto(addr007b);
         }
         addr007b:
         return _loc1_;
      }
      
      private function _CityWheelTab_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 180;
            if(_loc3_)
            {
               _loc1_.left = 306;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.addEventListener("click",this.__actionButton_click);
                  §§goto(addr0048);
               }
               §§goto(addr00aa);
            }
            §§goto(addr0099);
         }
         addr0048:
         if(!_loc2_)
         {
            _loc1_.id = "actionButton";
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0099:
                     _loc1_.document = this;
                     if(_loc3_ || _loc2_)
                     {
                        addr00aa:
                        this.actionButton = _loc1_;
                        if(!_loc2_)
                        {
                           BindingManager.executeBindings(this,"actionButton",this.actionButton);
                        }
                     }
                     §§goto(addr00c1);
                  }
               }
            }
            §§goto(addr00aa);
         }
         addr00c1:
         return _loc1_;
      }
      
      public function __actionButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.actionButton_clickHandler(param1);
         }
      }
      
      public function ___CityWheelTab_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      public function ___CityWheelTab_Group1_removedFromStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.removedFromStageHandler(param1);
         }
      }
      
      private function _CityWheelTab_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_ || _loc1_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && Boolean(this)))
               {
                  addr004d:
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                        },null,"uiInfolayerAlignmentLine.alignment");
                        if(!(_loc3_ && _loc1_))
                        {
                           addr0084:
                           §§push(§§newactivation());
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc2_)
                              {
                                 addr009c:
                                 §§pop()[1] = new Binding(this,function():uint
                                 {
                                    return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                                 },null,"uiInfolayerAlignmentLine2.alignment");
                                 addr00af:
                                 addr00ad:
                                 §§push(result);
                                 addr009a:
                              }
                              return §§pop();
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr00af);
            }
            §§goto(addr0084);
         }
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton() : MultistateButton
      {
         return this._1022398728actionButton;
      }
      
      public function set actionButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1022398728actionButton;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1022398728actionButton = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton",_loc2_,param1));
                        }
                     }
                  }
               }
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1184087807buffLockGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1184087807buffLockGroup = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006c);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buffLockGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get bufftokenGroup() : Group
      {
         return this._513153895bufftokenGroup;
      }
      
      public function set bufftokenGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._513153895bufftokenGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._513153895bufftokenGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bufftokenGroup",_loc2_,param1));
                        }
                     }
                  }
               }
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1223187228colorBackgroundBuff;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1223187228colorBackgroundBuff = param1;
                  addr0039:
                  if(!_loc4_)
                  {
                     §§goto(addr0050);
                  }
                  §§goto(addr0068);
               }
               addr0050:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0068:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"colorBackgroundBuff",_loc2_,param1));
                  }
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get colorBackgroundMain() : BriskImageDynaLib
      {
         return this._1222878646colorBackgroundMain;
      }
      
      public function set colorBackgroundMain(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1222878646colorBackgroundMain;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1222878646colorBackgroundMain = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"colorBackgroundMain",_loc2_,param1));
                        }
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0062);
            }
            addr0071:
            return;
         }
         §§goto(addr0062);
      }
      
      [Bindable(event="propertyChange")]
      public function get eventTimer() : SlimProgressBarTimer
      {
         return this._973878475eventTimer;
      }
      
      public function set eventTimer(param1:SlimProgressBarTimer) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._973878475eventTimer;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._973878475eventTimer = param1;
                  if(_loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventTimer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._949820541flavourLabel = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0068);
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerTextLabel() : LocaLabel
      {
         return this._1105049158headerTextLabel;
      }
      
      public function set headerTextLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1105049158headerTextLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1105049158headerTextLabel = param1;
                  addr0043:
                  if(!_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerTextLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0057);
            }
            addr007e:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockBackgroundBuff() : BriskImageDynaLib
      {
         return this._895124308lockBackgroundBuff;
      }
      
      public function set lockBackgroundBuff(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._895124308lockBackgroundBuff;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._895124308lockBackgroundBuff = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockBackgroundBuff",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
            addr007a:
            return;
         }
         §§goto(addr006b);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockBackgroundMain() : BriskImageDynaLib
      {
         return this._894815726lockBackgroundMain;
      }
      
      public function set lockBackgroundMain(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._894815726lockBackgroundMain;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._894815726lockBackgroundMain = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockBackgroundMain",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockIconBuffLock() : BriskImageDynaLib
      {
         return this._967110786lockIconBuffLock;
      }
      
      public function set lockIconBuffLock(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._967110786lockIconBuffLock;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr004e:
                  this._967110786lockIconBuffLock = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockIconBuffLock",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0068);
               }
            }
            addr0077:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockIconBuffToken() : BriskImageDynaLib
      {
         return this._76940926lockIconBuffToken;
      }
      
      public function set lockIconBuffToken(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._76940926lockIconBuffToken;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._76940926lockIconBuffToken = param1;
                  if(_loc4_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockIconBuffToken",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockIconMain() : BriskImageDynaLib
      {
         return this._385327133lockIconMain;
      }
      
      public function set lockIconMain(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._385327133lockIconMain;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  addr0043:
                  this._385327133lockIconMain = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockIconMain",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get plusBuff() : BriskImageDynaLib
      {
         return this._1849690867plusBuff;
      }
      
      public function set plusBuff(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1849690867plusBuff;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1849690867plusBuff = param1;
                  if(!_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusBuff",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0076);
               }
            }
            addr0085:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get plusMain() : BriskImageDynaLib
      {
         return this._1849382285plusMain;
      }
      
      public function set plusMain(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1849382285plusMain;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1849382285plusMain = param1;
                  addr0045:
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusMain",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0073);
            }
            addr0082:
            return;
         }
         §§goto(addr0045);
      }
      
      [Bindable(event="propertyChange")]
      public function get spinLockGroup() : Group
      {
         return this._895412750spinLockGroup;
      }
      
      public function set spinLockGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._895412750spinLockGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._895412750spinLockGroup = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spinLockGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenBuff() : BriskImageDynaLib
      {
         return this._140958188tokenBuff;
      }
      
      public function set tokenBuff(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._140958188tokenBuff;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._140958188tokenBuff = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenBuff",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
            addr0075:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenBuffDeactivated() : BriskImageDynaLib
      {
         return this._2102140700tokenBuffDeactivated;
      }
      
      public function set tokenBuffDeactivated(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2102140700tokenBuffDeactivated;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2102140700tokenBuffDeactivated = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr006a);
               }
               addr005a:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenBuffDeactivated",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr005a);
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenGroup() : Group
      {
         return this._79273990tokenGroup;
      }
      
      public function set tokenGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._79273990tokenGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._79273990tokenGroup = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenIconBuff() : BriskImageDynaLib
      {
         return this._1825295995tokenIconBuff;
      }
      
      public function set tokenIconBuff(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1825295995tokenIconBuff;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1825295995tokenIconBuff = param1;
                  addr0040:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenIconBuff",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenIconLock() : BriskImageDynaLib
      {
         return this._1825003939tokenIconLock;
      }
      
      public function set tokenIconLock(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1825003939tokenIconLock;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1825003939tokenIconLock = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr0075);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenIconLock",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenIconMain() : BriskImageDynaLib
      {
         return this._1824987413tokenIconMain;
      }
      
      public function set tokenIconMain(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1824987413tokenIconMain;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1824987413tokenIconMain = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenIconMain",_loc2_,param1));
                        }
                     }
                  }
               }
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._141266770tokenMain;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._141266770tokenMain = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenMain",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get tokenMainDeactivated() : BriskImageDynaLib
      {
         return this._1025249346tokenMainDeactivated;
      }
      
      public function set tokenMainDeactivated(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1025249346tokenMainDeactivated;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1025249346tokenMainDeactivated = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tokenMainDeactivated",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine2() : UiInfolayerAlignmentLine
      {
         return this._878929322uiInfolayerAlignmentLine2;
      }
      
      public function set uiInfolayerAlignmentLine2(param1:UiInfolayerAlignmentLine) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._878929322uiInfolayerAlignmentLine2;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._878929322uiInfolayerAlignmentLine2 = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine2",_loc2_,param1));
                        }
                     }
                  }
               }
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1333110194wheelBuff;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1333110194wheelBuff = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelBuff",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0063);
               }
            }
            addr0072:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelMain() : WheelComponent
      {
         return this._1332801612wheelMain;
      }
      
      public function set wheelMain(param1:WheelComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1332801612wheelMain;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1332801612wheelMain = param1;
                  if(!_loc4_)
                  {
                     addr003e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelMain",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005d);
               }
               §§goto(addr003e);
            }
         }
         addr005d:
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelStateBuffLabel() : LocaLabel
      {
         return this._1166052085wheelStateBuffLabel;
      }
      
      public function set wheelStateBuffLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1166052085wheelStateBuffLabel;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1166052085wheelStateBuffLabel = param1;
                  if(!_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelStateBuffLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get wheelStateMainLabel() : LocaLabel
      {
         return this._1473106075wheelStateMainLabel;
      }
      
      public function set wheelStateMainLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1473106075wheelStateMainLabel;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1473106075wheelStateMainLabel = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheelStateMainLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0079);
      }
   }
}

