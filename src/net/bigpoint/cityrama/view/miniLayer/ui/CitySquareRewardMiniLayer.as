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
      
      public static const OK_CLICKED:String = "OK_CLICKED";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         OK_CLICKED = "OK_CLICKED";
         if(!(_loc1_ && _loc2_))
         {
            _skinParts = {
               "moveArea":false,
               "sparkle":false,
               "closeButton":false,
               "controlBarGroup":false,
               "attentionSign":false,
               "contentGroup":false,
               "titleDisplay":false
            };
         }
      }
      
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
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc3_ && _loc3_))
         {
            §§push(null);
            if(_loc4_ || _loc2_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr0048:
                     §§pop().§§slot[5] = null;
                     if(_loc4_ || _loc1_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc1_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_ || Boolean(this))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    addr0099:
                                    super();
                                    if(!_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             addr00c3:
                                             §§pop().§§slot[1] = this._CitySquareRewardMiniLayer_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                addr00d2:
                                                §§push(§§newactivation());
                                                if(!_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         addr00f5:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            addr0108:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr0116:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     addr0130:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_CitySquareRewardMiniLayerWatcherSetupUtil");
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              addr0171:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return CitySquareRewardMiniLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr01c6:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01ed:
                                                                                       this.showAttentionSign = false;
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareRewardMiniLayer_Array1_c);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr0218:
                                                                                             i = 0;
                                                                                             addr0216:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    var _temp_17:*;
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
                                                                                                if(_loc3_ && _loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§newactivation());
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop().§§slot[4]);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(uint(§§pop() + 1));
                                                                                                      if(_loc3_)
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
                                                                                    while(var _temp_17:* = §§pop(), §§pop().§§slot[4] = _temp_17, _loc4_);
                                                                                    
                                                                                    return;
                                                                                    addr0280:
                                                                                 }
                                                                                 §§goto(addr01ed);
                                                                              }
                                                                              §§goto(addr01c6);
                                                                           }
                                                                           §§goto(addr0280);
                                                                        }
                                                                        §§goto(addr0218);
                                                                     }
                                                                     §§goto(addr0216);
                                                                  }
                                                                  §§goto(addr0218);
                                                               }
                                                               §§goto(addr01ed);
                                                            }
                                                            §§goto(addr0171);
                                                         }
                                                         §§goto(addr0116);
                                                      }
                                                      §§goto(addr0218);
                                                   }
                                                   §§goto(addr0171);
                                                }
                                                §§goto(addr0130);
                                             }
                                             §§goto(addr0171);
                                          }
                                          §§goto(addr0130);
                                       }
                                       §§goto(addr0280);
                                    }
                                    §§goto(addr0216);
                                 }
                                 §§goto(addr0116);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr0108);
                        }
                        §§goto(addr01c6);
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr00f5);
               }
               §§goto(addr01ed);
            }
            §§goto(addr0048);
         }
         §§goto(addr00c3);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            CitySquareRewardMiniLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  addr004a:
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr004a);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      public function set successState(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || param1)
         {
            this._success = param1;
            if(_loc2_)
            {
               invalidateProperties();
            }
         }
      }
      
      public function set upsellState(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._upsell = param1;
         }
      }
      
      public function set data(param1:CitySquareDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._data = param1;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr003e);
            }
            §§goto(addr0048);
         }
         addr003e:
         this._dataIsDirty = true;
         if(_loc2_)
         {
            addr0048:
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null;
         if(!_loc2_)
         {
            super.commitProperties();
            if(_loc3_ || Boolean(_loc1_))
            {
               §§push(this._dataIsDirty);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0046:
                        this._dataIsDirty = false;
                        if(_loc3_)
                        {
                           this.checkRewards();
                           if(_loc3_ || _loc2_)
                           {
                              this.stateIcon.visible = this._success;
                              if(_loc3_)
                              {
                                 addr0072:
                                 §§push(this._success);
                                 if(_loc3_)
                                 {
                                    addr007b:
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          title = LocaUtils.getString("rcl.citysquare.popup.mini.success","rcl.citysquare.popup.mini.success.header");
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(this.okButton);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(LocaUtils.getString("rcl.citysquare.popup.mini.success","rcl.citysquare.popup.mini.success.button.collect"));
                                                if(!(_loc2_ && Boolean(_loc1_)))
                                                {
                                                   §§pop().label = §§pop();
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      §§push(this.okButton);
                                                      if(_loc3_)
                                                      {
                                                         §§push("confirm");
                                                         if(!_loc2_)
                                                         {
                                                            §§pop().styleName = §§pop();
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               addr00ff:
                                                               §§push(this.okButton);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  addr0110:
                                                                  §§pop().skin.setCurrentState("down");
                                                                  if(_loc3_)
                                                                  {
                                                                     addr011f:
                                                                     §§push(this.okButton);
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§pop().skin.setCurrentState("up");
                                                                        if(_loc3_ || Boolean(_loc1_))
                                                                        {
                                                                           §§push(this.okButton);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0150:
                                                                              §§push(true);
                                                                              if(_loc3_ || Boolean(this))
                                                                              {
                                                                                 §§pop().showSparkle = §§pop();
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    addr016e:
                                                                                    §§push(this.polaroidImage);
                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                    {
                                                                                       §§push(this._data);
                                                                                       if(_loc3_ || Boolean(this))
                                                                                       {
                                                                                          §§pop().dynaSWFFileName = §§pop().eventList[0].gfxId.toString();
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(this.polaroidImage);
                                                                                             if(_loc3_ || Boolean(this))
                                                                                             {
                                                                                                §§push(this._data);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§goto(addr01c1);
                                                                                                }
                                                                                                §§goto(addr03ae);
                                                                                             }
                                                                                             §§goto(addr03aa);
                                                                                          }
                                                                                          §§goto(addr041e);
                                                                                       }
                                                                                       addr01c1:
                                                                                       §§push(§§pop().eventList[0].gfxId.toString() + "_gui_popup_events");
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§pop().dynaLibName = §§pop();
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             addr01e8:
                                                                                             addr01ec:
                                                                                             if(!this._upsell)
                                                                                             {
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   §§push(LocaUtils);
                                                                                                   §§push("rcl.citysquarequests.");
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() + this._data.eventList[0].localeId);
                                                                                                   }
                                                                                                   §§push("rcl.citysquarequests.");
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(this._data);
                                                                                                      if(_loc3_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop().eventList[0].localeId);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr024d:
                                                                                                            §§push(§§pop() + ".layer.success.flavour.challenge.");
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               addr025f:
                                                                                                               addr0263:
                                                                                                               §§push(§§pop() + this._data.eventList[0].currentRewardStage.toString());
                                                                                                            }
                                                                                                            §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  addr0281:
                                                                                                                  _loc1_ = §§pop();
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(this.polaroidImage);
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        addr0290:
                                                                                                                        §§push("success_");
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(this._data);
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop().eventList[0].currentRewardStage);
                                                                                                                              if(_loc3_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 addr02bb:
                                                                                                                                 §§pop().dynaBmpSourceName = §§pop();
                                                                                                                                 if(!(_loc2_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    addr0318:
                                                                                                                                    §§push(this.flavourText);
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          §§pop().text = §§pop();
                                                                                                                                          if(_loc2_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             addr046b:
                                                                                                                                             this.okButton.skin.setCurrentState("up");
                                                                                                                                             addr0467:
                                                                                                                                          }
                                                                                                                                          §§goto(addr0475);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr0369:
                                                                                                                                          §§pop().text = §§pop();
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             addr0370:
                                                                                                                                             §§push(this.polaroidImage);
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                §§push(this._data);
                                                                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§pop().dynaSWFFileName = §§pop().eventList[0].gfxId.toString();
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr03a1:
                                                                                                                                                      §§push(this.polaroidImage);
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr03ae:
                                                                                                                                                         addr03aa:
                                                                                                                                                         §§push(this._data.eventList[0].gfxId.toString() + "_gui_popup_events");
                                                                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr03ce);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr03fa);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03e1);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0401);
                                                                                                                                                }
                                                                                                                                                §§goto(addr03ae);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03aa);
                                                                                                                                          }
                                                                                                                                          §§goto(addr03a1);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr035d:
                                                                                                                                       §§push(LocaUtils.getString("rcl.citysquare.popup.mini.failure","rcl.citysquare.popup.mini.failure.flavor"));
                                                                                                                                    }
                                                                                                                                    §§goto(addr0369);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0370);
                                                                                                                              }
                                                                                                                              §§goto(addr03ea);
                                                                                                                           }
                                                                                                                           §§goto(addr03ee);
                                                                                                                        }
                                                                                                                        §§goto(addr02bb);
                                                                                                                     }
                                                                                                                     §§goto(addr03aa);
                                                                                                                  }
                                                                                                                  §§goto(addr0318);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr02e9:
                                                                                                                  _loc1_ = §§pop();
                                                                                                                  addr02e8:
                                                                                                                  if(_loc3_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     addr02f7:
                                                                                                                     §§push(this.polaroidImage);
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        §§push("success_1");
                                                                                                                        if(!(_loc2_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           §§pop().dynaBmpSourceName = §§pop();
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr0318);
                                                                                                                           }
                                                                                                                           §§goto(addr03a1);
                                                                                                                        }
                                                                                                                        §§goto(addr03ce);
                                                                                                                     }
                                                                                                                     §§goto(addr03e1);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr041e);
                                                                                                            }
                                                                                                            §§goto(addr0281);
                                                                                                         }
                                                                                                         §§goto(addr025f);
                                                                                                      }
                                                                                                      §§goto(addr0263);
                                                                                                   }
                                                                                                   §§goto(addr024d);
                                                                                                }
                                                                                                §§goto(addr041e);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(LocaUtils.getString("rcl.citysquarequests.8016000","rcl.citysquarequests.8016000.layer.success.flavour.upselling"));
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   §§goto(addr02e8);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr02e9);
                                                                                          }
                                                                                          §§goto(addr0467);
                                                                                       }
                                                                                       addr03ce:
                                                                                       §§pop().dynaLibName = §§pop();
                                                                                       if(_loc3_ || Boolean(_loc1_))
                                                                                       {
                                                                                          addr03fa:
                                                                                          addr03e1:
                                                                                          §§push(this.polaroidImage);
                                                                                          §§push("fail_");
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr03ea:
                                                                                             addr03ee:
                                                                                             §§push(§§pop() + this._data.eventList[0].currentRewardStage);
                                                                                          }
                                                                                          §§pop().dynaBmpSourceName = §§pop();
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr0401:
                                                                                             §§push(this.okButton);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr0416:
                                                                                                §§pop().label = LocaUtils.getString("rcl.citysquare.popup.mini.failure","rcl.citysquare.popup.mini.failure.button");
                                                                                                addr040a:
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr041e:
                                                                                                   §§push(this.okButton);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr0428:
                                                                                                      §§pop().showSparkle = false;
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr043d:
                                                                                                         §§push(this.okButton);
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr0448:
                                                                                                            §§pop().styleName = "";
                                                                                                            addr0446:
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               addr044f:
                                                                                                               §§push(this.okButton);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr0458);
                                                                                                               }
                                                                                                               §§goto(addr046b);
                                                                                                            }
                                                                                                            §§goto(addr0467);
                                                                                                         }
                                                                                                         addr0458:
                                                                                                         §§pop().skin.setCurrentState("down");
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr0467);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr0475);
                                                                                                   }
                                                                                                   §§goto(addr0458);
                                                                                                }
                                                                                                §§goto(addr0467);
                                                                                             }
                                                                                             §§goto(addr0446);
                                                                                          }
                                                                                          §§goto(addr044f);
                                                                                       }
                                                                                       §§goto(addr0475);
                                                                                    }
                                                                                    §§goto(addr0290);
                                                                                 }
                                                                                 §§goto(addr03a1);
                                                                              }
                                                                              §§goto(addr0428);
                                                                           }
                                                                           §§goto(addr0446);
                                                                        }
                                                                        §§goto(addr01e8);
                                                                     }
                                                                     §§goto(addr0150);
                                                                  }
                                                                  §§goto(addr016e);
                                                               }
                                                               §§goto(addr040a);
                                                            }
                                                            §§goto(addr043d);
                                                         }
                                                         §§goto(addr0448);
                                                      }
                                                      §§goto(addr0110);
                                                   }
                                                   §§goto(addr01e8);
                                                }
                                                §§goto(addr0416);
                                             }
                                             §§goto(addr0458);
                                          }
                                          §§goto(addr011f);
                                       }
                                       §§goto(addr02f7);
                                    }
                                    else
                                    {
                                       title = LocaUtils.getString("rcl.citysquare.popup.mini.failure","rcl.citysquare.popup.mini.failure.header");
                                       if(!_loc2_)
                                       {
                                          addr0359:
                                          §§goto(addr035d);
                                          §§push(this.flavourText);
                                       }
                                    }
                                    §§goto(addr0467);
                                 }
                                 §§goto(addr01ec);
                              }
                              §§goto(addr0359);
                           }
                           §§goto(addr0475);
                        }
                        §§goto(addr00ff);
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0475);
               }
               §§goto(addr007b);
            }
            §§goto(addr0046);
         }
         addr0475:
      }
      
      private function checkRewards() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:ArrayCollection = null;
         var _loc2_:EventChallengeDetailViewVo = null;
         var _loc3_:int = 0;
         if(!(_loc7_ && Boolean(_loc1_)))
         {
            §§push(this._upsell);
            if(!_loc7_)
            {
               if(!§§pop())
               {
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     addr004e:
                     addr004a:
                     if(!this._success)
                     {
                        if(!(_loc7_ && Boolean(this)))
                        {
                           §§push(this._data);
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              _loc1_ = §§pop().eventList[0].listOfChallenges[this._data.eventList[0].listOfChallenges.length - 1].rewards;
                              if(!(_loc7_ && Boolean(_loc1_)))
                              {
                                 this._currentChallengeId = this._data.eventList[0].listOfChallenges[this._data.eventList[0].listOfChallenges.length - 1].id;
                              }
                           }
                           else
                           {
                              addr00e4:
                              if(§§pop() != null)
                              {
                                 addr00e9:
                                 for each(_loc2_ in this._data.eventList[0].listOfChallenges)
                                 {
                                    if(!_loc7_)
                                    {
                                       _loc3_ = 0;
                                       if(_loc6_)
                                       {
                                          if(_loc2_.state != QuestSystemStateConst.DONE)
                                          {
                                             continue;
                                          }
                                          if(!_loc7_)
                                          {
                                             _loc3_++;
                                          }
                                       }
                                    }
                                    _loc1_ = _loc2_.rewards;
                                    if(!(_loc7_ && Boolean(_loc3_)))
                                    {
                                       this._drops = _loc2_.drops;
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                    }
                                    this._currentChallengeId = _loc2_.id;
                                    break;
                                 }
                              }
                           }
                           §§goto(addr018f);
                        }
                        §§goto(addr00e9);
                     }
                     else
                     {
                        §§push(this._data);
                     }
                     §§goto(addr00e4);
                  }
                  §§goto(addr00e9);
               }
               else
               {
                  _loc1_ = this._data.eventList[0].rewardCollection;
               }
               addr018f:
               this.rewardList.dataProvider = _loc1_;
               return;
            }
            §§goto(addr004e);
         }
         §§goto(addr004a);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.top = 10;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.left = 10;
               if(_loc2_)
               {
                  §§goto(addr005a);
               }
            }
            §§goto(addr0070);
         }
         addr005a:
         _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_BriskImageDynaLib1_c(),this._CitySquareRewardMiniLayer_BriskImageDynaLib2_i()];
         if(_loc2_)
         {
            addr0070:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaBmpSourceName = "quest_polaroidframe";
            if(!(_loc2_ && _loc2_))
            {
               addr004a:
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_)
                  {
                     addr006f:
                     _loc1_.verticalCenter = 0;
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008d:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr008d);
               }
            }
            §§goto(addr006f);
         }
         §§goto(addr004a);
      }
      
      private function _CitySquareRewardMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popup_events";
            if(_loc2_)
            {
               _loc1_.horizontalCenter = -1;
               if(_loc2_)
               {
                  _loc1_.verticalCenter = -1;
                  if(_loc2_)
                  {
                     _loc1_.id = "polaroidImage";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              §§goto(addr007c);
                           }
                           §§goto(addr0097);
                        }
                     }
                     §§goto(addr008d);
                  }
                  addr007c:
                  _loc1_.document = this;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr008d:
                     this.polaroidImage = _loc1_;
                     if(!_loc3_)
                     {
                        addr0097:
                        BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
                     }
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0097);
            }
            §§goto(addr008d);
         }
         addr00a4:
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.right = 30;
            if(_loc3_)
            {
               _loc1_.top = 20;
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0053);
               }
               §§goto(addr006f);
            }
         }
         addr0053:
         _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_VGroup1_c()];
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr006f:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.gap = -5;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_StickyNoteComponent1_c(),this._CitySquareRewardMiniLayer_VGroup2_c()];
               if(_loc3_)
               {
                  §§goto(addr0063);
               }
               §§goto(addr006f);
            }
         }
         addr0063:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr006f:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_)
         {
            _loc1_.styleName = "blue";
            if(!_loc2_)
            {
               _loc1_.height = 170;
               if(!_loc2_)
               {
                  addr0041:
                  _loc1_.width = 245;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitySquareRewardMiniLayer_Array5_c);
                     §§goto(addr004c);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0076);
            }
            §§goto(addr0041);
         }
         addr004c:
         if(!(_loc2_ && _loc3_))
         {
            addr0076:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr008a:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_Array5_c() : Array
      {
         return [this._CitySquareRewardMiniLayer_List1_i(),this._CitySquareRewardMiniLayer_UiInfolayerAlignmentLine1_i()];
      }
      
      private function _CitySquareRewardMiniLayer_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!_loc3_)
         {
            _loc1_.itemRenderer = this._CitySquareRewardMiniLayer_ClassFactory1_c();
            if(_loc2_ || Boolean(this))
            {
               _loc1_.top = -16;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.setStyle("skinClass",QuestLayerRewardSkin);
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "rewardList";
                     if(!(_loc3_ && _loc2_))
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0088:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00ba);
                           }
                        }
                        addr00a8:
                        this.rewardList = _loc1_;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00ba:
                           BindingManager.executeBindings(this,"rewardList",this.rewardList);
                        }
                        §§goto(addr00c7);
                     }
                  }
                  §§goto(addr0088);
               }
               addr00c7:
               return _loc1_;
            }
            §§goto(addr007c);
         }
         §§goto(addr0088);
      }
      
      private function _CitySquareRewardMiniLayer_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = RewardItemRenderer;
         }
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.left = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.top = 70;
               if(!_loc2_)
               {
                  _loc1_.right = 0;
                  if(_loc3_)
                  {
                     _loc1_.lineId = 0;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    addr00a1:
                                    this.uiInfolayerAlignmentLine = _loc1_;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00b3:
                                       BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                                    }
                                 }
                                 §§goto(addr00c0);
                              }
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr00b3);
                     }
                  }
               }
               addr00c0:
               return _loc1_;
            }
            §§goto(addr00a1);
         }
         §§goto(addr00b3);
      }
      
      private function _CitySquareRewardMiniLayer_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.width = 245;
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_MultistateButton1_i()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0072:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0072);
      }
      
      private function _CitySquareRewardMiniLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 204;
            if(!(_loc3_ && _loc3_))
            {
               addr0039:
               _loc1_.libNameLeft = "gui_popups_miniLayer";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.id = "okButton";
                  if(!_loc3_)
                  {
                     addr0066:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr008e:
                              this.okButton = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00a0:
                                 BindingManager.executeBindings(this,"okButton",this.okButton);
                              }
                              §§goto(addr00ad);
                           }
                           §§goto(addr00a0);
                        }
                        addr00ad:
                        return _loc1_;
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0066);
            }
            §§goto(addr008e);
         }
         §§goto(addr0039);
      }
      
      private function _CitySquareRewardMiniLayer_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.top = -18;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_BriskImageDynaLib3_c(),this._CitySquareRewardMiniLayer_HGroup1_c()];
               addr003e:
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _CitySquareRewardMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popup_citysquare_general";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "bubble_small";
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.top = 0;
                  if(_loc2_)
                  {
                     _loc1_.left = 0;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.mouseChildren = false;
                        if(!_loc3_)
                        {
                           _loc1_.mouseEnabled = false;
                           if(!_loc3_)
                           {
                              _loc1_.horizontalCenter = 0;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00a0:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00b0);
                           }
                        }
                        §§goto(addr00a0);
                     }
                  }
               }
            }
         }
         addr00b0:
         return _loc1_;
      }
      
      private function _CitySquareRewardMiniLayer_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 426;
            if(_loc3_)
            {
               _loc1_.height = 40;
               if(!_loc2_)
               {
                  _loc1_.top = 8;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr005a:
                     _loc1_.verticalAlign = "middle";
                     if(!_loc2_)
                     {
                        addr0065:
                        _loc1_.horizontalAlign = "center";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.horizontalCenter = 0;
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._CitySquareRewardMiniLayer_LocaLabel1_i()];
                              if(!_loc2_)
                              {
                                 addr009d:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00b1:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr0065);
               }
               §§goto(addr005a);
            }
         }
         §§goto(addr00b1);
      }
      
      private function _CitySquareRewardMiniLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr003a:
                  _loc1_.maxDisplayedLines = 3;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.id = "flavourText";
                     if(_loc2_ || _loc3_)
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr0096:
                                 this.flavourText = _loc1_;
                                 if(_loc2_)
                                 {
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                           }
                           §§goto(addr00ad);
                        }
                     }
                     §§goto(addr0096);
                  }
               }
               addr00ad:
               return _loc1_;
            }
            §§goto(addr006c);
         }
         §§goto(addr003a);
      }
      
      private function _CitySquareRewardMiniLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "quest_bubble_icon_trophy";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaLibName = "gui_popups_questPopup";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.left = 9;
                  if(_loc3_)
                  {
                     _loc1_.top = -70;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0075:
                        _loc1_.visible = false;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.id = "stateIcon";
                           if(_loc3_)
                           {
                              addr0091:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00aa:
                                    _loc1_.document = this;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00bb:
                                       this.stateIcon = _loc1_;
                                       if(!_loc2_)
                                       {
                                          addr00c5:
                                          BindingManager.executeBindings(this,"stateIcon",this.stateIcon);
                                       }
                                    }
                                    §§goto(addr00d2);
                                 }
                                 §§goto(addr00c5);
                              }
                           }
                           §§goto(addr00bb);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr00c5);
                  }
                  addr00d2:
                  return _loc1_;
               }
               §§goto(addr00bb);
            }
            §§goto(addr00aa);
         }
         §§goto(addr0075);
      }
      
      private function _CitySquareRewardMiniLayer_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || _loc1_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§pop()[0] = new Binding(this,function():uint
                     {
                        return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                     },null,"uiInfolayerAlignmentLine.alignment");
                     addr007c:
                     addr007a:
                     return result;
                  }
               }
               §§goto(addr007c);
            }
            §§goto(addr007a);
         }
         §§goto(addr007c);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._800887486flavourText;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._800887486flavourText = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get okButton() : MultistateButton
      {
         return this._1641788370okButton;
      }
      
      public function set okButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1641788370okButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr004b:
                  this._1641788370okButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr004b);
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2112922897polaroidImage;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._2112922897polaroidImage = param1;
                  if(!_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0056);
            }
            addr0075:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardList() : List
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1690977389rewardList;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1690977389rewardList = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005e);
            }
            addr0085:
            return;
         }
         §§goto(addr0076);
      }
      
      [Bindable(event="propertyChange")]
      public function get stateIcon() : BriskImageDynaLib
      {
         return this._2086222678stateIcon;
      }
      
      public function set stateIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2086222678stateIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr004b:
                  this._2086222678stateIcon = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateIcon",_loc2_,param1));
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
         §§goto(addr004b);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
         }
         addr0086:
      }
   }
}

