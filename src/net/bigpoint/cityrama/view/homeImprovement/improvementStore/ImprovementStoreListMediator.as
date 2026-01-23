package net.bigpoint.cityrama.view.homeImprovement.improvementStore
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementStoreProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementBoosterpackVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.ImprovementStoreDataGrid;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.vo.ImprovementStoreDataGridLayerVo;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementStoreListMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ImprovementStoreListMediator";
      
      private static const UI_MEDIATOR_NAME:String;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "ImprovementStoreListMediator";
         if(_loc1_)
         {
            UI_MEDIATOR_NAME = UserInterfaceInfoLayerMediator.NAME + NAME;
         }
      }
      
      private var _component:ImprovementStoreDataGrid;
      
      private var _data:ImprovementStoreDataGridLayerVo;
      
      private var _featureProxy:FeatureProxy;
      
      private var _intervalId:uint;
      
      public function ImprovementStoreListMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.onRemove();
            if(!_loc1_)
            {
               this.removeListener();
               if(_loc2_ || _loc1_)
               {
                  §§push(this._component);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop());
                     if(!(_loc1_ && _loc2_))
                     {
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        §§push(_temp_6);
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§pop();
                                 if(!_loc1_)
                                 {
                                    addr0082:
                                    §§push(this.container);
                                    if(!(_loc1_ && Boolean(this)))
                                    {
                                       §§push(§§pop().contentGroup);
                                       if(_loc2_)
                                       {
                                          addr009d:
                                          var _temp_9:* = §§pop();
                                          addr009e:
                                          §§push(_temp_9);
                                          if(_temp_9)
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§pop();
                                                if(_loc2_)
                                                {
                                                   addr00ce:
                                                   addr00c3:
                                                   if(this._component.parent == this.container.contentGroup)
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr00e3:
                                                         this.container.contentGroup.removeElement(this._component);
                                                         addr00df:
                                                      }
                                                   }
                                                }
                                                §§goto(addr00ee);
                                             }
                                          }
                                       }
                                       §§goto(addr00ce);
                                    }
                                    §§goto(addr00e3);
                                 }
                                 addr00ee:
                                 return;
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr009d);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00ce);
                  }
                  §§goto(addr00c3);
               }
            }
            §§goto(addr00df);
         }
         §§goto(addr0082);
      }
      
      public function removeRelevantListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.removeListener();
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc3_:ImprovementStoreDataGridLayerVo = new ImprovementStoreDataGridLayerVo();
         if(!(_loc6_ && Boolean(this)))
         {
            _loc3_.improvementPacks = this._data.improvementPacks;
            if(_loc5_)
            {
               _loc3_.realCurrency = this._data.realCurrency;
               if(_loc5_)
               {
                  addr0060:
                  _loc3_.virtualCurrency = this._data.virtualCurrency;
               }
               addr00a8:
               var _loc4_:* = param1.getName();
               if(!_loc6_)
               {
                  §§push(ApplicationNotificationConstants.REALCURRENCY_CHANGED);
                  if(_loc5_ || Boolean(this))
                  {
                     §§push(_loc4_);
                     if(_loc5_ || Boolean(param1))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc5_)
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                              }
                           }
                           else
                           {
                              addr00f9:
                              §§push(1);
                              if(_loc6_)
                              {
                              }
                           }
                           addr0111:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc3_.realCurrency = _loc2_.realCurrency;
                                 if(_loc5_)
                                 {
                                 }
                                 break;
                              case 1:
                                 _loc3_.virtualCurrency = _loc2_.ingameCurrency;
                                 if(_loc6_)
                                 {
                                 }
                           }
                           §§push(this._component);
                           if(_loc5_ || Boolean(_loc3_))
                           {
                              §§pop().data = _loc3_;
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 addr015b:
                                 this._component.visible = true;
                              }
                              return;
                           }
                           §§goto(addr015b);
                        }
                        else
                        {
                           addr00f5:
                           addr00f3:
                           if(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED === _loc4_)
                           {
                              §§goto(addr00f9);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr0111);
                        }
                     }
                     §§goto(addr00f5);
                  }
                  §§goto(addr00f3);
               }
               §§goto(addr00f9);
            }
            §§goto(addr0060);
         }
         §§goto(addr00a8);
      }
      
      private function setInitialValues() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._component);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._component = new ImprovementStoreDataGrid();
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0059:
                        §§push(this._component);
                        if(!_loc2_)
                        {
                           §§goto(addr0062);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr006d);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0059);
            }
            addr0062:
            §§pop().data = this._data;
            if(!_loc2_)
            {
               addr006d:
               §§push(this._component);
               if(!_loc2_)
               {
                  §§pop().visible = true;
                  if(_loc1_)
                  {
                     addr007e:
                     if(!this._featureProxy.improvementFeatureUnlocked)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr00a4:
                           this._component.locked(this._featureProxy.improvementFeatureUnlockLevel);
                           addr00a0:
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00bc:
                              this.container.contentGroup.addElement(this._component);
                           }
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr00a4);
            }
            addr00cb:
            return;
         }
         §§goto(addr00a0);
      }
      
      private function setupListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._component);
            if(!_loc2_)
            {
               §§push(ImprovementStoreDataGrid.BUY_PACK);
               if(!(_loc2_ && _loc1_))
               {
                  §§pop().addEventListener(§§pop(),this.handleBuy);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(this._component);
                     if(_loc1_)
                     {
                        §§push(ImprovementStoreDataGrid.OPEN_CURRENCY_REAL);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0069:
                           §§pop().addEventListener(§§pop(),this.handleCurrencyRebuy);
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(this._component);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 §§goto(addr0098);
                              }
                              §§goto(addr0123);
                           }
                           §§goto(addr00ed);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr011f);
               }
               §§goto(addr0069);
            }
            addr0098:
            §§push(ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL);
            if(!_loc2_)
            {
               addr00a3:
               §§pop().addEventListener(§§pop(),this.handleCurrencyRebuy);
               if(_loc1_)
               {
                  addr00af:
                  facade.removeMediator(UI_MEDIATOR_NAME);
                  if(_loc1_)
                  {
                     facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLine],this));
                     if(!_loc2_)
                     {
                        addr00ed:
                        §§push(this._component);
                        if(_loc1_ || _loc2_)
                        {
                           §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                           if(!_loc2_)
                           {
                              §§goto(addr0113);
                           }
                           §§goto(addr0129);
                        }
                        §§goto(addr0123);
                     }
                     §§goto(addr011f);
                  }
               }
               §§goto(addr00ed);
            }
            addr0113:
            §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
            if(!_loc2_)
            {
               addr0129:
               this._component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
               addr0123:
               addr011f:
            }
            return;
         }
         §§goto(addr00af);
      }
      
      private function handleBuy(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_ || _loc2_)
         {
            param1.stopPropagation();
            if(_loc6_)
            {
               addr0032:
               this._component.visible = false;
            }
            var _loc2_:ImprovementStoreProxy = facade.retrieveProxy(ImprovementStoreProxy.NAME) as ImprovementStoreProxy;
            var _loc3_:ImprovementBoosterpackVo = this._component.selectedItem;
            if(_loc6_ || Boolean(param1))
            {
               _loc2_.boughtImprovementPackVo = _loc3_;
            }
            var _loc4_:* = _loc3_.currencyType == ServerResConst.RESOURCE_REALCURRENCY;
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_IMPROVEMENT_BOOSTER_BUY,{
                  "boosterId":_loc3_.config.id,
                  "real":_loc4_
               });
               if(!_loc5_)
               {
                  this.startDisableBuyButtonTimer();
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc5_ && Boolean(this)))
                        {
                           addr00db:
                           StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr00db);
         }
         §§goto(addr0032);
      }
      
      private function handleCurrencyRebuy(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            param1.stopPropagation();
            if(!_loc3_)
            {
               if(param1.type == ImprovementStoreDataGrid.OPEN_CURRENCY_REAL)
               {
                  if(!_loc3_)
                  {
                     sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                     if(_loc2_)
                     {
                     }
                  }
               }
               else if(param1.type == ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL)
               {
                  if(_loc2_)
                  {
                     sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
                  }
               }
            }
         }
      }
      
      private function startDisableBuyButtonTimer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._component.enableBuyButton(false);
            if(!(_loc2_ && _loc2_))
            {
               addr0035:
               this._intervalId = setInterval(this.enableBuyButton,1000);
            }
            return;
         }
         §§goto(addr0035);
      }
      
      private function enableBuyButton() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            clearInterval(this._intervalId);
            if(_loc1_ || _loc1_)
            {
               §§push(this._component);
               if(_loc1_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr0067:
                        this._component.enableBuyButton(true);
                        addr0063:
                     }
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0067);
            }
            §§goto(addr0063);
         }
         addr006c:
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._component);
            if(!_loc1_)
            {
               §§push(ImprovementStoreDataGrid.BUY_PACK);
               if(_loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.handleBuy);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§push(this._component);
                     if(!_loc1_)
                     {
                        addr004f:
                        §§push(ImprovementStoreDataGrid.OPEN_CURRENCY_REAL);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§pop().addEventListener(§§pop(),this.handleCurrencyRebuy);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              addr0080:
                              §§push(this._component);
                              if(_loc2_)
                              {
                                 §§push(ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§pop().addEventListener(§§pop(),this.handleCurrencyRebuy);
                                    if(_loc2_)
                                    {
                                       addr00b2:
                                       §§push(this._component);
                                       if(!_loc1_)
                                       {
                                          addr00bb:
                                          §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                                          if(_loc2_)
                                          {
                                             addr00c6:
                                             §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                                             if(!_loc1_)
                                             {
                                                addr00dc:
                                                this._component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                                                addr00d6:
                                                addr00d2:
                                             }
                                             §§goto(addr00e3);
                                          }
                                          §§goto(addr00dc);
                                       }
                                       §§goto(addr00d6);
                                    }
                                    addr00e3:
                                    return;
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00d6);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00dc);
                     }
                     §§goto(addr00bb);
                  }
                  §§goto(addr00d2);
               }
               §§goto(addr00c6);
            }
            §§goto(addr004f);
         }
         §§goto(addr0080);
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.cid);
         if(!_loc5_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!_loc5_)
         {
            _loc3_.x += param1.target.width / 2;
            if(!(_loc5_ && Boolean(param1)))
            {
               addr006f:
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
                  "pt":_loc3_,
                  "type":UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT_BOOSTER
               },NAME);
            }
            return;
         }
         §§goto(addr006f);
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PlayerResourceProxy = null;
         if(_loc4_ || Boolean(this))
         {
            if(param1 is Vector.<ImprovementBoosterpackVo>)
            {
               if(_loc4_)
               {
                  this._data = new ImprovementStoreDataGridLayerVo();
                  if(_loc4_ || _loc3_)
                  {
                     this._data.improvementPacks = param1 as Vector.<ImprovementBoosterpackVo>;
                  }
               }
               addr0074:
               _loc2_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
               if(_loc4_ || Boolean(param1))
               {
                  §§push(this._data);
                  if(!_loc3_)
                  {
                     §§push(_loc2_.realCurrency);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§pop().realCurrency = §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr00c9);
                        }
                        §§goto(addr00da);
                     }
                     addr00c9:
                     this._data.virtualCurrency = _loc2_.ingameCurrency;
                     §§goto(addr00c5);
                  }
                  addr00c5:
                  if(_loc4_ || Boolean(param1))
                  {
                     addr00da:
                     this.setInitialValues();
                     if(_loc4_)
                     {
                        addr00e6:
                        this.setupListener();
                     }
                  }
                  §§goto(addr00ec);
               }
               §§goto(addr00e6);
            }
            addr00ec:
            return;
         }
         §§goto(addr0074);
      }
      
      public function get container() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         }
      }
   }
}

