package net.bigpoint.cityrama.view.productionBook
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.FormulaProxy;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionDetailViewVo;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.UpgradeProgressComponent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.productionBook.ui.components.ProductionPopup;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProductionPopupMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProductionPopupMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         NAME = "ProductionPopupMediator";
      }
      
      private var _productionData:ProductionDetailViewVo;
      
      private var _billboardDetailViewProxy:MainLayerProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _storage:SharedObject;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _formulaProxy:FormulaProxy;
      
      private var _intervalId:uint;
      
      private var _intervalRunning:Boolean;
      
      private var _instantFinishCosts:Array;
      
      public function ProductionPopupMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._storage = SharedObject.getLocal(OptionsMenuProxy.NAME);
            if(_loc1_)
            {
               this._billboardDetailViewProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
               if(!_loc2_)
               {
                  this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                  if(_loc1_)
                  {
                     sendNotification(VirtualTaskNotificationInterest.PRODUCTIONLAYER_OPENED);
                     if(!_loc2_)
                     {
                        addr0072:
                        sendNotification(ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE,ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                        if(_loc1_)
                        {
                           facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
                           if(!_loc2_)
                           {
                              addr00bf:
                              this.addListener();
                           }
                           §§goto(addr00c5);
                        }
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr00c5);
            }
            §§goto(addr00bf);
         }
         addr00c5:
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§push(ProductionPopup.START_PRODUCTION);
               if(_loc2_ || _loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.handleStartProduction);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this.component);
                     if(_loc2_)
                     {
                        §§push(ProductionPopup.INSTANT_PRODUCTION);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§pop().addEventListener(§§pop(),this.handleInstantProduction);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(this.component);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§push(ProductionPopup.STOP_PRODUCTION);
                                 if(!_loc1_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.handleStopProduction);
                                    if(!_loc1_)
                                    {
                                       addr00a6:
                                       §§push(this.component);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          §§push(UpgradeProgressComponent.UPGRADE_BUILDING);
                                          if(_loc2_)
                                          {
                                             §§pop().addEventListener(§§pop(),this.handleUpgradeBuilding);
                                             if(!_loc1_)
                                             {
                                                §§push(this.component);
                                                if(_loc2_)
                                                {
                                                   addr00d6:
                                                   §§push(UpgradeProgressComponent.BUY_DD);
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.handleBuyDD);
                                                      if(!(_loc1_ && Boolean(this)))
                                                      {
                                                         §§push(this.component);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§push(UpgradeProgressComponent.BUY_UPGRADE);
                                                            if(_loc2_)
                                                            {
                                                               addr0123:
                                                               §§pop().addEventListener(§§pop(),this.handleBuyUpgrade);
                                                               if(!_loc1_)
                                                               {
                                                                  §§push(this.component);
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     addr0140:
                                                                     §§push(TimerBarComponent.EVENT_TIMER_UP);
                                                                     if(!(_loc1_ && Boolean(this)))
                                                                     {
                                                                        §§goto(addr0153);
                                                                     }
                                                                     §§goto(addr01e9);
                                                                  }
                                                                  §§goto(addr01d6);
                                                               }
                                                               §§goto(addr01f6);
                                                            }
                                                            §§goto(addr01e9);
                                                         }
                                                         §§goto(addr0190);
                                                      }
                                                      §§goto(addr0180);
                                                   }
                                                   §§goto(addr0123);
                                                }
                                                §§goto(addr0140);
                                             }
                                             §§goto(addr01c4);
                                          }
                                          §§goto(addr0123);
                                       }
                                       §§goto(addr01d6);
                                    }
                                    §§goto(addr01f6);
                                 }
                                 §§goto(addr01ff);
                              }
                              §§goto(addr016f);
                           }
                           §§goto(addr01c4);
                        }
                        addr0153:
                        §§pop().addEventListener(§§pop(),this.handleClose);
                        if(!(_loc1_ && _loc2_))
                        {
                           addr0167:
                           §§push(this.component);
                           if(!_loc1_)
                           {
                              addr016f:
                              §§pop().addEventListener(Event.CLOSE,this.handleClose);
                              if(_loc2_)
                              {
                                 addr0180:
                                 §§push(this.component);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr0190:
                                    §§push("openBalanceFeature");
                                    if(_loc2_)
                                    {
                                       §§pop().addEventListener(§§pop(),this.handleOpenBalanceFeature);
                                       if(!_loc1_)
                                       {
                                          §§push(this.component);
                                          if(!_loc1_)
                                          {
                                             addr01b0:
                                             §§pop().addEventListener("openCurrencyFeature",this.handleOpenCurrencyFeature);
                                             addr01ad:
                                             if(_loc2_ || Boolean(this))
                                             {
                                                addr01c4:
                                                §§push(this.component);
                                                if(_loc2_)
                                                {
                                                   addr01d6:
                                                   §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                                                   if(!(_loc1_ && Boolean(this)))
                                                   {
                                                      addr01e9:
                                                      §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                                                      if(!_loc1_)
                                                      {
                                                         addr01ff:
                                                         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
                                                         addr01f9:
                                                         addr01f6:
                                                      }
                                                      §§goto(addr0206);
                                                   }
                                                   §§goto(addr01ff);
                                                }
                                                §§goto(addr01f9);
                                             }
                                             §§goto(addr01f6);
                                          }
                                          §§goto(addr01f9);
                                       }
                                       §§goto(addr01f6);
                                    }
                                    §§goto(addr01b0);
                                 }
                                 §§goto(addr01f9);
                              }
                              §§goto(addr01c4);
                           }
                           §§goto(addr01ad);
                        }
                        addr0206:
                        return;
                     }
                     §§goto(addr0190);
                  }
                  §§goto(addr0167);
               }
               §§goto(addr01ff);
            }
            §§goto(addr00d6);
         }
         §§goto(addr00a6);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         }
      }
      
      private function handleOpenBalanceFeature(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            param1.stopPropagation();
         }
         var _loc2_:Object = {};
         if(_loc3_)
         {
            _loc2_.feature = FeatureScreenProxy.FEATURE_BALANCE;
            if(_loc3_ || Boolean(this))
            {
               _loc2_.quest = false;
               if(_loc3_)
               {
                  addr006b:
                  sendNotification(ApplicationNotificationConstants.OPEN_FEATURESCREEN,_loc2_);
               }
               return;
            }
         }
         §§goto(addr006b);
      }
      
      private function handleOpenCurrencyFeature(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            param1.stopPropagation();
         }
         var _loc2_:Object = {};
         if(!_loc3_)
         {
            _loc2_.feature = QuestGFXIDLayerConstants.BIG_FEATURE_PRODUCTION_POINTS;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc2_.quest = false;
               if(!_loc3_)
               {
                  addr006d:
                  sendNotification(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN,_loc2_);
               }
            }
            return;
         }
         §§goto(addr006d);
      }
      
      private function handleUpgradeBuilding(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(this)))
         {
            param1.stopPropagation();
            if(!(_loc4_ && Boolean(param1)))
            {
               addr0042:
               this._soundProxy.playButtonClick();
            }
            var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            var _loc3_:BillboardObject = _loc2_.getObjectByVo(this._productionData.productionFieldObjectVo) as BillboardObject;
            if(!(_loc4_ && Boolean(_loc3_)))
            {
               facade.sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc3_);
            }
            return;
         }
         §§goto(addr0042);
      }
      
      private function handleBuyDD(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
      }
      
      private function handleBuyUpgrade(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            param1.stopImmediatePropagation();
            if(!_loc3_)
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               if(_loc2_)
               {
                  sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._productionData.productionFieldObjectVo.buildingDTO.id);
                  if(_loc2_ || Boolean(param1))
                  {
                     addr0073:
                     this.handleClose();
                  }
               }
            }
            return;
         }
         §§goto(addr0073);
      }
      
      private function handleStartProduction(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._soundProxy.playButtonClick();
            if(_loc3_)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REQUEST_PRODUCTION,{
                  "building":this._productionData.productionFieldObjectVo,
                  "good":this.component.data.productionOptions[this.component.currentGoodIndex],
                  "boost":false
               });
               if(_loc3_ || Boolean(param1))
               {
                  sendNotification(ApplicationNotificationConstants.SHOW_PRODUCTION_FLOATER,{
                     "pro":this._productionData.productionFieldObjectVo,
                     "good":this.component.data.productionOptions[this.component.currentGoodIndex]
                  });
                  if(!(_loc2_ && _loc2_))
                  {
                     sendNotification(ApplicationNotificationConstants.SHOW_PRODUCTION_ANIMATION,{
                        "buildingId":this._productionData.productionFieldObjectVo.buildingDTO.id,
                        "isEvent":this.component.data.productionOptions[this.component.currentGoodIndex].config.isEventGood
                     });
                     if(!_loc2_)
                     {
                        addr00ed:
                        this.handleClose();
                     }
                     §§goto(addr00f2);
                  }
               }
            }
            §§goto(addr00ed);
         }
         addr00f2:
      }
      
      private function handleInstantProduction(param1:Event) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:* = NaN;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:Object = null;
         var _loc7_:PhaseDTO = null;
         var _loc2_:FormulaProxy = facade.retrieveProxy(FormulaProxy.NAME) as FormulaProxy;
         var _loc3_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(!_loc9_)
         {
            if(this._productionData.harvestEndTime == 0)
            {
               addr0062:
               _loc5_ = this.getConfigPhase(this.component.data.currentProductionIndex);
               if(_loc5_)
               {
                  if(_loc8_)
                  {
                     §§push(_loc2_.getInstantFinishCostForProductionPhase(_loc5_));
                     if(_loc8_)
                     {
                        §§push(§§pop());
                        if(_loc8_)
                        {
                           _loc4_ = §§pop();
                           if(_loc8_)
                           {
                              addr009b:
                              §§push(_loc4_);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() == -1);
                                 if(_loc8_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc8_ || Boolean(param1))
                                    {
                                       var _temp_3:* = §§pop();
                                       §§push(_temp_3);
                                       if(_temp_3)
                                       {
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             addr00ce:
                                             §§pop();
                                             if(!(_loc9_ && Boolean(param1)))
                                             {
                                                §§goto(addr00e4);
                                             }
                                             §§goto(addr02df);
                                          }
                                       }
                                    }
                                    addr00e4:
                                    §§goto(addr00e1);
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr02df);
                        }
                     }
                     addr00e1:
                     if(_loc3_.realCurrency >= _loc4_)
                     {
                        if(_loc8_)
                        {
                           addr00ee:
                           sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REQUEST_PRODUCTION,{
                              "building":this._productionData.productionFieldObjectVo,
                              "good":this.component.data.productionOptions[this.component.currentGoodIndex],
                              "boost":true
                           });
                           if(!(_loc9_ && Boolean(this)))
                           {
                              this.clearTimerCostInterval();
                              if(_loc8_)
                              {
                                 addr02df:
                                 this.handleClose();
                              }
                              §§goto(addr02e4);
                           }
                           §§goto(addr02df);
                        }
                     }
                     else
                     {
                        facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           §§goto(addr02df);
                        }
                     }
                     addr02e4:
                     return;
                  }
                  §§goto(addr00ee);
               }
               §§goto(addr009b);
            }
            else
            {
               var _temp_8:* = {};
               _loc6_ = {};
               _loc6_.buildingId = this._productionData.productionFieldObjectVo.buildingDTO.id;
               if(!(_loc9_ && Boolean(param1)))
               {
                  _loc6_.boost = true;
               }
               _loc7_ = this.getRunningPhase();
               if(_loc7_)
               {
                  if(_loc8_ || Boolean(this))
                  {
                     _loc6_.phaseId = _loc7_.config.phaseId;
                     if(!_loc9_)
                     {
                        addr01c5:
                        §§push(_loc2_.getInstantFinishCostForProductionPhase(_loc7_.config,_loc7_));
                        if(_loc8_)
                        {
                           §§push(§§pop());
                           if(_loc8_ || Boolean(param1))
                           {
                              _loc4_ = §§pop();
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 addr0236:
                                 §§push(_loc4_);
                                 if(_loc8_)
                                 {
                                    addr023e:
                                    §§push(§§pop() == -1);
                                    if(_loc8_ || Boolean(_loc2_))
                                    {
                                       §§push(!§§pop());
                                       if(_loc8_ || Boolean(_loc3_))
                                       {
                                          var _temp_16:* = §§pop();
                                          §§push(_temp_16);
                                          if(_temp_16)
                                          {
                                             if(_loc8_ || Boolean(_loc3_))
                                             {
                                                §§pop();
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   addr0287:
                                                   addr0284:
                                                   if(_loc3_.realCurrency >= _loc4_)
                                                   {
                                                      if(!(_loc9_ && Boolean(_loc3_)))
                                                      {
                                                         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_BOOSTPHASE,_loc6_);
                                                         if(!(_loc9_ && Boolean(param1)))
                                                         {
                                                            this.clearTimerCostInterval();
                                                            if(_loc8_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                                                   }
                                                }
                                                §§goto(addr02df);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr0287);
                                 }
                                 §§goto(addr0284);
                              }
                              §§goto(addr02df);
                           }
                        }
                        §§goto(addr023e);
                     }
                     §§goto(addr02df);
                  }
                  §§goto(addr01c5);
               }
               else
               {
                  _loc5_ = this.getConfigPhase(this.component.data.currentProductionIndex);
                  if(_loc5_)
                  {
                     if(_loc8_ || Boolean(_loc2_))
                     {
                        §§push(_loc2_.getInstantFinishCostForProductionPhase(_loc5_));
                        if(_loc8_ || Boolean(_loc3_))
                        {
                           §§push(§§pop());
                        }
                        _loc4_ = §§pop();
                     }
                  }
               }
               §§goto(addr0236);
            }
         }
         §§goto(addr0062);
      }
      
      private function handleStopProduction(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._soundProxy.playButtonClick();
            if(!_loc3_)
            {
               this.clearTimerCostInterval();
               if(_loc2_)
               {
                  facade.sendNotification(MiniLayerConstants.OPEN_MINI_PRODUCTION_CANCEL,this._productionData.productionFieldObjectVo);
               }
            }
         }
      }
      
      override public function getMediatorName() : String
      {
         return super.mediatorName;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.PRODUCTION_BUILDING_STATE_CHANGED,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.PRODUCTIONPOINTS_CHANGED,ApplicationNotificationConstants.ENERGY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_ || Boolean(param1))
         {
            §§push(ApplicationNotificationConstants.PRODUCTION_BUILDING_STATE_CHANGED);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr016a:
                        §§push(4);
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr0181);
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED);
                     if(!_loc4_)
                     {
                        addr00a6:
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(1);
                                 if(_loc3_ || Boolean(this))
                                 {
                                 }
                              }
                              else
                              {
                                 addr014c:
                                 §§push(3);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.REALCURRENCY_CHANGED);
                              if(!_loc4_)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    addr00f8:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          addr0102:
                                          §§push(2);
                                          if(_loc4_ && _loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr016a);
                                       }
                                    }
                                    else
                                    {
                                       §§push(ApplicationNotificationConstants.PRODUCTIONPOINTS_CHANGED);
                                       if(!_loc4_)
                                       {
                                          addr0121:
                                          §§push(_loc2_);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             addr0130:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc4_ && Boolean(param1)))
                                                {
                                                   §§goto(addr014c);
                                                }
                                                else
                                                {
                                                   §§goto(addr016a);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr0166);
                                             }
                                             §§goto(addr016a);
                                          }
                                          addr0166:
                                          §§goto(addr0165);
                                       }
                                       addr0165:
                                       if(ApplicationNotificationConstants.ENERGY_CHANGED === _loc2_)
                                       {
                                          §§goto(addr016a);
                                       }
                                       else
                                       {
                                          §§push(5);
                                       }
                                    }
                                    §§goto(addr0181);
                                 }
                                 §§goto(addr0130);
                              }
                              §§goto(addr0121);
                           }
                           addr0181:
                           switch(§§pop())
                           {
                              case 0:
                              case 1:
                              case 2:
                              case 3:
                              case 4:
                                 this.saveCurrentGoodIndex();
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    this.setData(this._billboardDetailViewProxy.getProductionDetailViewVo(this._productionData.productionFieldObjectVo));
                                    if(_loc3_)
                                    {
                                    }
                                 }
                           }
                           return;
                        }
                        §§goto(addr00f8);
                     }
                     §§goto(addr0165);
                  }
               }
               §§goto(addr0130);
            }
            §§goto(addr00a6);
         }
         §§goto(addr0102);
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._productionData = param1 as ProductionDetailViewVo;
            if(!(_loc2_ && Boolean(param1)))
            {
               this.component.data = this._productionData;
               if(_loc3_ || _loc3_)
               {
                  this.setTimerCost();
                  if(_loc3_ || _loc3_)
                  {
                     addr0078:
                     this.startTimerCostInterval();
                  }
               }
            }
            return;
         }
         §§goto(addr0078);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.saveCurrentGoodIndex();
            if(!_loc1_)
            {
               this.removeListener();
               if(!_loc1_)
               {
                  addr0035:
                  this.clearTimerCostInterval();
                  if(!(_loc1_ && _loc2_))
                  {
                     super.onRemove();
                     if(_loc2_ || Boolean(this))
                     {
                        addr0059:
                        facade.sendNotification(VirtualTaskNotificationInterest.PRODUCTIONLAYER_CLOSED);
                     }
                     §§goto(addr0064);
                  }
                  §§goto(addr0059);
               }
               addr0064:
               return;
            }
         }
         §§goto(addr0035);
      }
      
      private function saveCurrentGoodIndex() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(Boolean(this._productionData));
            if(!(_loc1_ && _loc1_))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0044);
                  }
               }
               §§goto(addr0061);
            }
            addr0044:
            §§pop();
            if(!(_loc1_ && Boolean(this)))
            {
               addr0061:
               if(Boolean(this._storage))
               {
                  if(!_loc1_)
                  {
                     this._storage.data[this._productionData.productionFieldObjectVo.buildingDTO.id] = this.component.currentGoodIndex;
                  }
               }
            }
            §§goto(addr0085);
         }
         addr0085:
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
               if(!_loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        §§push(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER);
                        if(!_loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.component_HIDE_UI_INFOLAYERHandler);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§push(this.component);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(ProductionPopup.START_PRODUCTION);
                                 if(_loc1_)
                                 {
                                    §§pop().removeEventListener(§§pop(),this.handleStartProduction);
                                    if(!_loc2_)
                                    {
                                       §§push(this.component);
                                       if(_loc1_)
                                       {
                                          addr009c:
                                          §§push(ProductionPopup.INSTANT_PRODUCTION);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§pop().removeEventListener(§§pop(),this.handleInstantProduction);
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                §§push(this.component);
                                                if(!_loc2_)
                                                {
                                                   §§push(ProductionPopup.STOP_PRODUCTION);
                                                   if(!_loc2_)
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.handleStopProduction);
                                                      if(!_loc2_)
                                                      {
                                                         addr00ee:
                                                         §§push(this.component);
                                                         if(_loc1_)
                                                         {
                                                            §§push(UpgradeProgressComponent.UPGRADE_BUILDING);
                                                            if(_loc1_)
                                                            {
                                                               §§goto(addr0101);
                                                            }
                                                            §§goto(addr0121);
                                                         }
                                                         §§goto(addr0176);
                                                      }
                                                      §§goto(addr01a9);
                                                   }
                                                   §§goto(addr0101);
                                                }
                                                §§goto(addr0146);
                                             }
                                             §§goto(addr01e0);
                                          }
                                          §§goto(addr0121);
                                       }
                                       §§goto(addr0116);
                                    }
                                    §§goto(addr010e);
                                 }
                                 §§goto(addr0101);
                              }
                              §§goto(addr0176);
                           }
                           §§goto(addr00ee);
                        }
                        addr0101:
                        §§pop().removeEventListener(§§pop(),this.handleUpgradeBuilding);
                        if(_loc1_)
                        {
                           addr010e:
                           §§push(this.component);
                           if(!_loc2_)
                           {
                              addr0116:
                              §§push(UpgradeProgressComponent.BUY_DD);
                              if(!_loc2_)
                              {
                                 addr0121:
                                 §§pop().removeEventListener(§§pop(),this.handleBuyDD);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§push(this.component);
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr0146:
                                       §§push(UpgradeProgressComponent.BUY_UPGRADE);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          addr0159:
                                          §§pop().removeEventListener(§§pop(),this.handleBuyUpgrade);
                                          if(_loc1_)
                                          {
                                             addr0166:
                                             §§push(this.component);
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                addr017c:
                                                §§pop().removeEventListener(TimerBarComponent.EVENT_TIMER_UP,this.handleClose);
                                                addr0176:
                                                if(_loc1_)
                                                {
                                                   addr0188:
                                                   §§push(this.component);
                                                   if(_loc1_ || Boolean(this))
                                                   {
                                                      addr0198:
                                                      §§pop().removeEventListener(Event.CLOSE,this.handleClose);
                                                      if(!_loc2_)
                                                      {
                                                         addr01a9:
                                                         §§push(this.component);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            addr01c3:
                                                            §§push("openBalanceFeature");
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               §§pop().removeEventListener(§§pop(),this.handleOpenBalanceFeature);
                                                               if(_loc1_)
                                                               {
                                                                  addr01e6:
                                                                  this.component.removeEventListener("openCurrencyFeature",this.handleOpenCurrencyFeature);
                                                                  addr01e3:
                                                                  addr01e0:
                                                               }
                                                               §§goto(addr01ed);
                                                            }
                                                            §§goto(addr01e6);
                                                         }
                                                         §§goto(addr01e3);
                                                      }
                                                      §§goto(addr01e0);
                                                   }
                                                   §§goto(addr01e3);
                                                }
                                                §§goto(addr01e0);
                                             }
                                             §§goto(addr01c3);
                                          }
                                          §§goto(addr01e0);
                                       }
                                       §§goto(addr017c);
                                    }
                                    §§goto(addr01c3);
                                 }
                                 §§goto(addr0166);
                              }
                              §§goto(addr0159);
                           }
                           §§goto(addr0198);
                        }
                        addr01ed:
                        return;
                     }
                     §§goto(addr0116);
                  }
                  §§goto(addr0166);
               }
               §§goto(addr017c);
            }
            §§goto(addr009c);
         }
         §§goto(addr0188);
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1.cid);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(_loc5_ || Boolean(this))
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc5_ || Boolean(this))
            {
               addr0078:
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
            return;
         }
         §§goto(addr0078);
      }
      
      private function component_HIDE_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      public function get component() : ProductionPopup
      {
         return super.viewComponent as ProductionPopup;
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._resourceProxy);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0054:
                     this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               return this._resourceProxy;
            }
         }
         §§goto(addr0054);
      }
      
      private function get formulaProxy() : FormulaProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._formulaProxy);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this._formulaProxy = facade.retrieveProxy(FormulaProxy.NAME) as FormulaProxy;
                  }
               }
               addr0054:
               return this._formulaProxy;
            }
         }
         §§goto(addr0054);
      }
      
      private function setTimerCost() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:int = 0;
         var _loc4_:ConfigPhaseDTO = null;
         var _loc1_:Object = {};
         if(_loc5_ || Boolean(this))
         {
            _loc1_.rcStock = this.resourceProxy.realCurrency;
            if(_loc5_ || Boolean(this))
            {
               if(this._instantFinishCosts == null)
               {
                  if(!_loc6_)
                  {
                     addr005a:
                     this._instantFinishCosts = [];
                     if(_loc5_)
                     {
                        addr0066:
                        _loc3_ = 0;
                     }
                     while(_loc3_ < this.component.data.productionOptions.length)
                     {
                        _loc4_ = this.getConfigPhase(_loc3_);
                        if(_loc4_)
                        {
                           if(_loc5_ || Boolean(this))
                           {
                              §§push(this._instantFinishCosts);
                              if(_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(!_loc6_)
                                 {
                                    §§pop()[§§pop()] = this.formulaProxy.getInstantFinishCostForProductionPhase(_loc4_);
                                    if(_loc5_ || Boolean(_loc3_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr00d0:
                                    §§pop()[§§pop()] = -1;
                                    if(!_loc5_)
                                    {
                                       continue;
                                    }
                                 }
                                 addr00db:
                                 _loc3_++;
                                 continue;
                              }
                              addr00cf:
                              §§push(_loc3_);
                              §§goto(addr00d0);
                           }
                           §§goto(addr00db);
                        }
                        else
                        {
                           §§push(this._instantFinishCosts);
                        }
                        §§goto(addr00cf);
                     }
                     addr00ec:
                     var _loc2_:PhaseDTO = this.getRunningPhase();
                     if(_loc5_ || Boolean(this))
                     {
                        if(_loc2_)
                        {
                           if(_loc5_ || Boolean(this))
                           {
                              this._instantFinishCosts[this.component.data.currentProductionIndex] = this.formulaProxy.getInstantFinishCostForProductionPhase(_loc2_.config,_loc2_);
                              §§goto(addr0116);
                           }
                        }
                        §§goto(addr014d);
                     }
                     addr0116:
                     if(_loc5_ || Boolean(_loc1_))
                     {
                        addr014d:
                        _loc1_.cost = this._instantFinishCosts;
                        if(_loc5_)
                        {
                           this.component.instantFinishData = _loc1_;
                        }
                     }
                     return;
                     addr00dd:
                  }
                  §§goto(addr0066);
               }
               §§goto(addr00ec);
            }
            §§goto(addr005a);
         }
         §§goto(addr00dd);
      }
      
      private function getRunningPhase() : PhaseDTO
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:PhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         §§push(this.component.data.currentProductionIndex);
         if(!_loc10_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc10_)
         {
            §§push(_loc1_);
            if(_loc9_ || _loc2_)
            {
               if(§§pop() == -1)
               {
                  if(!(_loc10_ && Boolean(this)))
                  {
                     addr0059:
                     _loc1_ = 0;
                  }
               }
               §§goto(addr005a);
            }
            §§goto(addr0059);
         }
         addr005a:
         var _loc2_:ProductionGoodObjectVo = this.component.data.productionOptions[_loc1_];
         for each(_loc3_ in this._productionData.productionFieldObjectVo.activePhases)
         {
            if(!_loc10_)
            {
               var _loc7_:int = 0;
               if(!_loc10_)
               {
                  for each(_loc4_ in _loc3_.config.listEntryOutputs)
                  {
                     §§push(_loc4_.goodConfig);
                     if(!_loc10_)
                     {
                        §§push(§§pop());
                        if(!_loc10_)
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           if(_temp_4)
                           {
                              if(!_loc10_)
                              {
                                 §§goto(addr00d8);
                              }
                           }
                           §§goto(addr0100);
                        }
                        addr00d8:
                        §§pop();
                        if(_loc9_ || Boolean(_loc1_))
                        {
                           addr0100:
                           addr00f8:
                           if(_loc4_.goodConfig.id != _loc2_.config.id)
                           {
                              continue;
                           }
                           if(_loc10_)
                           {
                              continue;
                           }
                        }
                        return _loc3_;
                     }
                     §§goto(addr00f8);
                  }
               }
            }
         }
         return null;
      }
      
      private function getConfigPhase(param1:int) : ConfigPhaseDTO
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         if(_loc9_ || Boolean(_loc3_))
         {
            §§push(param1);
            if(_loc9_ || Boolean(param1))
            {
               if(§§pop() == -1)
               {
                  if(_loc9_)
                  {
                     addr0049:
                     param1 = 0;
                  }
               }
               addr004a:
               var _loc2_:ProductionGoodObjectVo = this.component.data.productionOptions[param1];
               if(_loc9_)
               {
                  if(this._productionData.productionFieldObjectVo.buildingDTO.config)
                  {
                     addr0070:
                     for each(_loc3_ in this._productionData.productionFieldObjectVo.buildingDTO.config.activePhases)
                     {
                        if(_loc9_)
                        {
                           var _loc7_:int = 0;
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              for each(_loc4_ in _loc3_.listEntryOutputs)
                              {
                                 §§push(_loc4_.goodConfig);
                                 if(!(_loc10_ && Boolean(_loc2_)))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc10_ && Boolean(param1)))
                                    {
                                       var _temp_7:* = §§pop();
                                       §§push(_temp_7);
                                       if(_temp_7)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§pop();
                                             if(_loc9_ || Boolean(param1))
                                             {
                                                addr0122:
                                                addr011a:
                                                if(_loc4_.goodConfig.id != _loc2_.config.id)
                                                {
                                                   continue;
                                                }
                                                if(_loc10_)
                                                {
                                                   continue;
                                                }
                                             }
                                             return _loc3_;
                                          }
                                       }
                                    }
                                    §§goto(addr0122);
                                 }
                                 §§goto(addr011a);
                              }
                           }
                        }
                     }
                  }
                  return null;
               }
               §§goto(addr0070);
            }
            §§goto(addr0049);
         }
         §§goto(addr004a);
      }
      
      private function startTimerCostInterval() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = this.getRunningPhase();
         if(_loc3_ || _loc3_)
         {
            if(_loc1_ == null)
            {
               if(!_loc2_)
               {
                  this.clearTimerCostInterval();
                  if(!_loc3_)
                  {
                     §§goto(addr0059);
                  }
               }
               return;
            }
            addr0059:
            if(!this._intervalRunning)
            {
               if(!_loc2_)
               {
                  this._intervalRunning = true;
                  if(_loc3_)
                  {
                     addr0070:
                     this._intervalId = setInterval(this.setTimerCost,1000);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0070);
            }
            §§goto(addr0084);
         }
         addr0084:
      }
      
      private function clearTimerCostInterval() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            if(this._intervalRunning)
            {
               if(_loc2_)
               {
                  this._instantFinishCosts = null;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0047:
                     clearInterval(this._intervalId);
                     if(_loc2_)
                     {
                        this._intervalRunning = false;
                     }
                  }
                  §§goto(addr005d);
               }
               §§goto(addr0047);
            }
            addr005d:
            return;
         }
         §§goto(addr0047);
      }
   }
}

