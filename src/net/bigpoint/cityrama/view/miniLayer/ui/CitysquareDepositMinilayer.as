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
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeStepDetailViewVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.miniLayer.components.CitySquareDepositItemRenderer;
   import net.bigpoint.cityrama.view.miniLayer.components.skins.CitySquareDepositSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.List;
   
   use namespace mx_internal;
   
   public class CitysquareDepositMinilayer extends MiniLayerWindow implements IBindingClient
   {
      
      public static const DEPOSIT_CLICKED:String = "DEPOSIT_CLICKED";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         DEPOSIT_CLICKED = "DEPOSIT_CLICKED";
         if(!(_loc1_ && CitysquareDepositMinilayer))
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
      
      private var _371311760depositButton:MultistateButton;
      
      private var _1798747784depositFlavorLabel:LocaLabel;
      
      private var _1177280081itemList:List;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CitySquareDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _valueInvalidated:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CitysquareDepositMinilayer()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§push(null);
            if(!(_loc4_ && Boolean(this)))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§newactivation());
                  if(_loc3_ || Boolean(this))
                  {
                     addr004e:
                     §§pop().§§slot[5] = null;
                     if(_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc3_ || _loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    super();
                                    if(_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§pop().§§slot[1] = this._CitysquareDepositMinilayer_bindingsSetup();
                                             if(_loc3_ || _loc1_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_)
                                                   {
                                                      addr00e9:
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         addr00f1:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr0103:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_CitysquareDepositMinilayerWatcherSetupUtil");
                                                                     if(_loc3_)
                                                                     {
                                                                        addr013c:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc4_ && Boolean(this)))
                                                                        {
                                                                           addr015a:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!(_loc4_ && Boolean(this)))
                                                                           {
                                                                              addr0179:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return CitysquareDepositMinilayer[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr0197:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr01e5:
                                                                                       this.width = 540;
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          this.height = 313;
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr01fb:
                                                                                             this.showAttentionSign = false;
                                                                                             if(!(_loc4_ && _loc1_))
                                                                                             {
                                                                                                addr020e:
                                                                                                this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CitysquareDepositMinilayer_Array1_c);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   this.addEventListener("creationComplete",this.___CitysquareDepositMinilayer_MiniLayerWindow1_creationComplete);
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      addr023e:
                                                                                                      this.addEventListener("removedFromStage",this.___CitysquareDepositMinilayer_MiniLayerWindow1_removedFromStage);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr0252:
                                                                                                         i = 0;
                                                                                                         addr0250:
                                                                                                      }
                                                                                                      var _temp_16:*;
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
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!(_loc4_ && _loc3_))
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
                                                                                                      while(var _temp_16:* = §§pop(), §§pop().§§slot[4] = _temp_16, !(_loc4_ && _loc3_));
                                                                                                      
                                                                                                      return;
                                                                                                      addr02bf:
                                                                                                   }
                                                                                                   §§goto(addr0250);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr023e);
                                                                                          }
                                                                                          §§goto(addr020e);
                                                                                       }
                                                                                       §§goto(addr02bf);
                                                                                    }
                                                                                    §§goto(addr0250);
                                                                                 }
                                                                                 §§goto(addr01fb);
                                                                              }
                                                                              §§goto(addr0250);
                                                                           }
                                                                           §§goto(addr020e);
                                                                        }
                                                                        §§goto(addr0252);
                                                                     }
                                                                     §§goto(addr020e);
                                                                  }
                                                                  §§goto(addr0252);
                                                               }
                                                               §§goto(addr02bf);
                                                            }
                                                            §§goto(addr0179);
                                                         }
                                                         §§goto(addr013c);
                                                      }
                                                      §§goto(addr015a);
                                                   }
                                                   §§goto(addr013c);
                                                }
                                                §§goto(addr0252);
                                             }
                                             §§goto(addr00e9);
                                          }
                                          §§goto(addr00f1);
                                       }
                                       §§goto(addr0103);
                                    }
                                    §§goto(addr013c);
                                 }
                                 §§goto(addr0103);
                              }
                              §§goto(addr01fb);
                           }
                           §§goto(addr0197);
                        }
                        §§goto(addr0179);
                     }
                     §§goto(addr01e5);
                  }
                  §§goto(addr015a);
               }
               §§goto(addr013c);
            }
            §§goto(addr004e);
         }
         §§goto(addr015a);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            CitysquareDepositMinilayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               addr002c:
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr002c);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function handleRemoved(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.itemList.removeEventListener(CitySquareDepositSkin.LOCKED,this.onListLock);
            if(!_loc3_)
            {
               this.itemList.removeEventListener(CitySquareDepositSkin.UNLOCKED,this.onListUnLock);
               if(_loc2_)
               {
                  this.itemList.removeEventListener(CitySquareDepositItemRenderer.VALUE_CHANGED,this.onValueChanged);
                  if(_loc2_)
                  {
                     addr0070:
                     this.itemList.removeEventListener(CitySquareDepositItemRenderer.KEY_ENTER,this.onEnterKey);
                  }
                  return;
               }
            }
         }
         §§goto(addr0070);
      }
      
      private function onEnterKey(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this.depositButton.enabled)
            {
               if(_loc2_)
               {
                  dispatchEvent(new Event(DEPOSIT_CLICKED,true,true));
               }
            }
         }
      }
      
      private function handleEventButtonClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event(DEPOSIT_CLICKED,true,true));
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            title = LocaUtils.getString("rcl.citysquare.popup.mini.deposit","rcl.citysquare.popup.mini.deposit.header");
            if(_loc2_ || _loc2_)
            {
               this.depositFlavorLabel.text = LocaUtils.getString("rcl.citysquare.popup.mini.deposit","rcl.citysquare.popup.mini.deposit.flavour");
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§push(this.depositButton);
                  if(_loc2_ || Boolean(param1))
                  {
                     §§pop().label = LocaUtils.getString("rcl.citysquare.popup.mini.deposit","rcl.citysquare.popup.mini.deposit.button.deposit");
                     if(_loc2_)
                     {
                        addr0079:
                        §§push(this.depositButton);
                        if(_loc2_)
                        {
                           §§pop().skin.setCurrentState("down");
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr00aa);
                           }
                           §§goto(addr00fe);
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr0129);
                  }
                  addr00aa:
                  this.depositButton.skin.setCurrentState("up");
                  if(_loc2_ || _loc2_)
                  {
                     this.itemList.addEventListener(CitySquareDepositSkin.LOCKED,this.onListLock);
                     if(_loc2_ || Boolean(this))
                     {
                        addr00df:
                        this.itemList.addEventListener(CitySquareDepositSkin.UNLOCKED,this.onListUnLock);
                        if(_loc2_ || Boolean(this))
                        {
                           addr00fe:
                           this.itemList.addEventListener(CitySquareDepositItemRenderer.VALUE_CHANGED,this.onValueChanged);
                           if(_loc2_ || Boolean(this))
                           {
                              addr0129:
                              this.itemList.addEventListener(CitySquareDepositItemRenderer.KEY_ENTER,this.onEnterKey);
                              if(!_loc3_)
                              {
                                 this._valueInvalidated = true;
                                 if(!_loc3_)
                                 {
                                    addr014a:
                                    invalidateProperties();
                                 }
                                 §§goto(addr014f);
                              }
                           }
                           §§goto(addr014a);
                        }
                        §§goto(addr014f);
                     }
                     §§goto(addr014a);
                  }
                  addr014f:
                  return;
               }
               §§goto(addr00df);
            }
            §§goto(addr014a);
         }
         §§goto(addr0079);
      }
      
      private function onValueChanged(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._valueInvalidated = true;
            if(!(_loc2_ && _loc3_))
            {
               addr002b:
               invalidateProperties();
            }
            return;
         }
         §§goto(addr002b);
      }
      
      private function onListLock(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.depositButton.mouseEnabled = false;
         }
      }
      
      private function onListUnLock(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.depositButton.mouseEnabled = true;
            if(!_loc2_)
            {
               this.onValueChanged();
            }
         }
      }
      
      public function set data(param1:CitySquareDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._data = param1;
            if(_loc2_ || Boolean(this))
            {
               this._dataIsDirty = true;
               if(!_loc3_)
               {
                  addr0040:
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr0040);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc1_:ArrayList = null;
         var _loc2_:EventChallengeDetailViewVo = null;
         var _loc3_:EventChallengeStepDetailViewVo = null;
         var _loc4_:int = 0;
         var _loc5_:CitySquareDepositItemRenderer = null;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:* = false;
         if(!(_loc15_ && Boolean(_loc1_)))
         {
            super.commitProperties();
            if(_loc14_ || Boolean(_loc2_))
            {
               §§push(this._dataIsDirty);
               if(_loc14_ || Boolean(_loc1_))
               {
                  §§push(§§pop());
                  if(!(_loc15_ && Boolean(_loc2_)))
                  {
                     addr007b:
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc14_)
                        {
                           §§pop();
                           if(!(_loc15_ && Boolean(_loc3_)))
                           {
                              §§goto(addr009a);
                           }
                           §§goto(addr00a9);
                        }
                     }
                  }
                  addr009a:
                  §§goto(addr0095);
               }
               §§goto(addr007b);
            }
            addr0095:
            if(Boolean(this._data))
            {
               if(_loc14_)
               {
                  this._dataIsDirty = false;
               }
               addr00a9:
               _loc1_ = new ArrayList();
               for each(_loc2_ in this._data.eventList[0].listOfChallenges)
               {
                  if(_loc14_ || Boolean(this))
                  {
                     if(_loc2_.state != QuestSystemStateConst.VALID)
                     {
                        continue;
                     }
                     if(!_loc14_)
                     {
                        continue;
                     }
                  }
                  var _loc12_:int = 0;
                  if(!_loc15_)
                  {
                     for each(_loc3_ in _loc2_.listOfSteps)
                     {
                        if(!_loc15_)
                        {
                           if(_loc3_.eventStockTarget > _loc3_.eventStock)
                           {
                              if(_loc14_)
                              {
                                 _loc1_.addItem(_loc3_);
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc14_ || Boolean(_loc1_))
               {
                  this.itemList.dataProvider = _loc1_;
               }
            }
            if(this._valueInvalidated)
            {
               if(!(_loc15_ && Boolean(_loc3_)))
               {
                  this._valueInvalidated = false;
                  if(!(_loc15_ && Boolean(this)))
                  {
                     _loc4_ = int(this.itemList.dataGroup.getItemIndicesInView()[0]);
                  }
               }
               _loc5_ = this.itemList.dataGroup.getElementAt(_loc4_) as CitySquareDepositItemRenderer;
               §§push(_loc5_.numericStepper);
               if(_loc14_)
               {
                  §§push(§§pop().value);
                  if(_loc14_ || Boolean(_loc1_))
                  {
                     §§push(0);
                     if(!(_loc15_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop() > §§pop());
                        if(_loc14_)
                        {
                           _loc6_ = §§pop();
                           if(_loc14_)
                           {
                              §§push(_loc5_.depositData.playerStock > 0);
                              if(_loc14_ || Boolean(_loc2_))
                              {
                                 §§goto(addr0214);
                              }
                              §§goto(addr026c);
                           }
                           §§goto(addr027c);
                        }
                        addr0214:
                        _loc7_ = §§pop();
                        if(!_loc15_)
                        {
                           §§push(_loc5_.numericStepper);
                           if(_loc14_ || Boolean(_loc3_))
                           {
                              §§push(§§pop().value);
                              if(_loc14_ || Boolean(this))
                              {
                                 §§push(_loc5_.depositData);
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop().eventStockTarget);
                                    if(_loc14_)
                                    {
                                       §§push(§§pop() <= §§pop() - _loc5_.depositData.eventStock);
                                       if(!(_loc15_ && Boolean(_loc1_)))
                                       {
                                          addr026c:
                                          _loc8_ = §§pop();
                                          if(_loc14_ || Boolean(_loc1_))
                                          {
                                             addr028d:
                                             _loc9_ = _loc5_.numericStepper.value <= _loc5_.depositData.playerStock;
                                             addr028c:
                                             addr0289:
                                             addr0284:
                                             addr0281:
                                             addr027c:
                                             if(!_loc15_)
                                             {
                                                §§push(this.depositButton);
                                                if(_loc14_ || Boolean(_loc3_))
                                                {
                                                   §§push(_loc6_);
                                                   if(!(_loc15_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc14_)
                                                      {
                                                         var _temp_21:* = §§pop();
                                                         §§push(_temp_21);
                                                         §§push(_temp_21);
                                                         if(!(_loc15_ && Boolean(this)))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc14_)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc15_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc14_ || Boolean(_loc2_))
                                                                        {
                                                                           addr02fd:
                                                                           var _temp_25:* = §§pop();
                                                                           §§push(_temp_25);
                                                                           §§push(_temp_25);
                                                                           if(!(_loc15_ && Boolean(_loc1_)))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       addr031d:
                                                                                       §§push(_loc7_);
                                                                                       if(_loc14_ || Boolean(this))
                                                                                       {
                                                                                          addr033a:
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc15_ && Boolean(this)))
                                                                                          {
                                                                                             §§goto(addr0349);
                                                                                          }
                                                                                          §§goto(addr0354);
                                                                                       }
                                                                                       §§goto(addr0349);
                                                                                    }
                                                                                    §§goto(addr0355);
                                                                                 }
                                                                                 §§goto(addr033a);
                                                                              }
                                                                              addr0349:
                                                                              var _temp_29:* = §§pop();
                                                                              §§goto(addr034a);
                                                                           }
                                                                           addr034a:
                                                                        }
                                                                        §§goto(addr0366);
                                                                     }
                                                                     §§goto(addr02fd);
                                                                  }
                                                                  §§goto(addr031d);
                                                               }
                                                               §§goto(addr033a);
                                                            }
                                                            §§goto(addr02fd);
                                                         }
                                                         §§goto(addr034a);
                                                      }
                                                      addr0366:
                                                      §§push(_temp_29);
                                                      if(_temp_29)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            addr0354:
                                                            §§pop();
                                                            addr0355:
                                                            §§push(_loc9_);
                                                            if(_loc14_ || Boolean(_loc3_))
                                                            {
                                                               addr0365:
                                                               §§push(§§pop());
                                                            }
                                                         }
                                                      }
                                                      §§pop().enabled = §§pop();
                                                      §§goto(addr0369);
                                                   }
                                                   §§goto(addr0365);
                                                }
                                                §§goto(addr0355);
                                             }
                                          }
                                          §§goto(addr0369);
                                       }
                                       §§goto(addr028d);
                                    }
                                    §§goto(addr028c);
                                 }
                                 §§goto(addr0289);
                              }
                              §§goto(addr0284);
                           }
                           §§goto(addr0281);
                        }
                        §§goto(addr0369);
                     }
                     §§goto(addr028c);
                  }
                  §§goto(addr0284);
               }
               §§goto(addr0281);
            }
            addr0369:
            return;
         }
         §§goto(addr00a9);
      }
      
      private function _CitysquareDepositMinilayer_Array1_c() : Array
      {
         return [this._CitysquareDepositMinilayer_Group1_c(),this._CitysquareDepositMinilayer_MultistateButton1_i()];
      }
      
      private function _CitysquareDepositMinilayer_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentHeight = 80;
               if(!_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._CitysquareDepositMinilayer_LocaLabel1_i(),this._CitysquareDepositMinilayer_List1_i(),this._CitysquareDepositMinilayer_UiInfolayerAlignmentLine1_i()];
                        if(!_loc2_)
                        {
                           addr008c:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a0:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr00a4);
            }
            §§goto(addr008c);
         }
         addr00a4:
         return _loc1_;
      }
      
      private function _CitysquareDepositMinilayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.maxHeight = 50;
            if(!_loc3_)
            {
               §§goto(addr0031);
            }
            §§goto(addr0097);
         }
         addr0031:
         _loc1_.maxWidth = 340;
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.id = "depositFlavorLabel";
                     if(!_loc3_)
                     {
                        addr0083:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0097:
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00c6);
                           }
                        }
                        addr00b4:
                        this.depositFlavorLabel = _loc1_;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr00c6:
                           BindingManager.executeBindings(this,"depositFlavorLabel",this.depositFlavorLabel);
                        }
                        §§goto(addr00d3);
                     }
                  }
                  §§goto(addr00d3);
               }
               §§goto(addr00b4);
            }
            §§goto(addr0083);
         }
         addr00d3:
         return _loc1_;
      }
      
      private function _CitysquareDepositMinilayer_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_)
         {
            _loc1_.itemRenderer = this._CitysquareDepositMinilayer_ClassFactory1_c();
            if(_loc3_ || _loc3_)
            {
               _loc1_.top = 40;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0049:
                  _loc1_.left = 30;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0066:
                     _loc1_.width = 320;
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0079:
                        _loc1_.setStyle("skinClass",CitySquareDepositSkin);
                        if(!_loc2_)
                        {
                           _loc1_.id = "itemList";
                           if(_loc3_)
                           {
                              addr0093:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00b4:
                                       this.itemList = _loc1_;
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00c6:
                                          BindingManager.executeBindings(this,"itemList",this.itemList);
                                       }
                                       §§goto(addr00d3);
                                    }
                                    §§goto(addr00c6);
                                 }
                                 §§goto(addr00d3);
                              }
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0079);
               }
               addr00d3:
               return _loc1_;
            }
            §§goto(addr0049);
         }
         §§goto(addr0066);
      }
      
      private function _CitysquareDepositMinilayer_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc3_)
         {
            _loc1_.generator = CitySquareDepositItemRenderer;
         }
         return _loc1_;
      }
      
      private function _CitysquareDepositMinilayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc2_)
         {
            _loc1_.left = 80;
            if(_loc2_)
            {
               _loc1_.top = 110;
               if(_loc2_)
               {
                  §§goto(addr0037);
               }
               §§goto(addr009d);
            }
            addr0037:
            _loc1_.right = 300;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.lineId = 0;
               if(_loc2_)
               {
                  §§goto(addr0061);
               }
               §§goto(addr00a7);
            }
            §§goto(addr0061);
         }
         addr0061:
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(_loc2_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.document = this;
                  if(_loc2_ || _loc3_)
                  {
                     addr009d:
                     this.uiInfolayerAlignmentLine = _loc1_;
                     if(_loc2_)
                     {
                        addr00a7:
                        BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr00b4);
            }
            §§goto(addr009d);
         }
         addr00b4:
         return _loc1_;
      }
      
      private function _CitysquareDepositMinilayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.libNameLeft = "gui_popups_miniLayer";
            if(_loc2_ || _loc2_)
            {
               _loc1_.imageNameLeft = "button_icon_goto";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.width = 207;
                  if(!_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc3_)
                     {
                        addr0066:
                        _loc1_.bottom = 10;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr0079);
                        }
                        §§goto(addr00b3);
                     }
                     addr0079:
                     _loc1_.addEventListener("click",this.__depositButton_click);
                     if(!_loc3_)
                     {
                        _loc1_.id = "depositButton";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr00b3:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr00bc);
                                 }
                                 §§goto(addr00ce);
                              }
                           }
                           addr00bc:
                           this.depositButton = _loc1_;
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              addr00ce:
                              BindingManager.executeBindings(this,"depositButton",this.depositButton);
                           }
                           §§goto(addr00db);
                        }
                        §§goto(addr00b3);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00bc);
               }
            }
            addr00db:
            return _loc1_;
         }
         §§goto(addr0066);
      }
      
      public function __depositButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleEventButtonClick(param1);
         }
      }
      
      public function ___CitysquareDepositMinilayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.handleCreationComplete(param1);
         }
      }
      
      public function ___CitysquareDepositMinilayer_MiniLayerWindow1_removedFromStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleRemoved(param1);
         }
      }
      
      private function _CitysquareDepositMinilayer_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr003f);
               }
               §§goto(addr005b);
            }
            §§goto(addr0059);
         }
         addr003f:
         §§push(§§pop().§§slot[1]);
         if(!_loc3_)
         {
            §§pop()[0] = new Binding(this,function():uint
            {
               return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
            },null,"uiInfolayerAlignmentLine.alignment");
            addr005b:
            addr0059:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get depositButton() : MultistateButton
      {
         return this._371311760depositButton;
      }
      
      public function set depositButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._371311760depositButton;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._371311760depositButton = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get depositFlavorLabel() : LocaLabel
      {
         return this._1798747784depositFlavorLabel;
      }
      
      public function set depositFlavorLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1798747784depositFlavorLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1798747784depositFlavorLabel = param1;
                  addr0042:
                  if(_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"depositFlavorLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0058);
            }
            addr007f:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1177280081itemList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1177280081itemList = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr005b);
            }
            addr0082:
            return;
         }
         §§goto(addr005b);
      }
   }
}

