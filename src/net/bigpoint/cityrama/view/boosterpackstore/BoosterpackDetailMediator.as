package net.bigpoint.cityrama.view.boosterpackstore
{
   import flash.events.Event;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackDetail;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BoosterpackDetailMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "BoosterpackDetailMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "BoosterpackDetailMediator";
      }
      
      private var _boosterpackBookProxy:BoosterpackBookProxy;
      
      private var _component:BoosterpackDetail;
      
      private var _data:BoosterpackVo;
      
      private var _intervalId:uint;
      
      public function BoosterpackDetailMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.onRegister();
            if(!(_loc2_ && _loc1_))
            {
               this.prepareProxies();
            }
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRemove();
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr0028);
            }
            §§goto(addr009d);
         }
         addr0028:
         this.removeListeners();
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this._component);
            if(_loc2_ || Boolean(this))
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  §§push(_temp_5);
                  if(_loc2_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           if(_loc2_)
                           {
                              §§push(this.container);
                              if(_loc2_)
                              {
                                 §§push(§§pop().contentGroup);
                                 if(_loc2_)
                                 {
                                    addr008d:
                                    var _temp_7:* = §§pop();
                                    addr008e:
                                    §§push(_temp_7);
                                    if(_temp_7)
                                    {
                                       if(!_loc1_)
                                       {
                                          addr0097:
                                          §§pop();
                                          if(_loc2_)
                                          {
                                             addr00b6:
                                             addr00ab:
                                             addr009d:
                                             if(this._component.parent == this.container.contentGroup)
                                             {
                                                if(!(_loc1_ && Boolean(this)))
                                                {
                                                   addr00cb:
                                                   this.container.contentGroup.removeElement(this._component);
                                                   addr00c7:
                                                   if(!_loc1_)
                                                   {
                                                      addr00db:
                                                      this.enableBuyButton();
                                                   }
                                                }
                                                §§goto(addr00e1);
                                             }
                                          }
                                          §§goto(addr00db);
                                       }
                                    }
                                    §§goto(addr00b6);
                                 }
                                 §§goto(addr0097);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00c7);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr008d);
            }
            §§goto(addr00ab);
         }
         addr00e1:
      }
      
      private function removeListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._component);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     return;
                  }
                  addr00c9:
                  §§push(this._component);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§push(BoosterpackDetail.BUY_BOOSTER_RC);
                     if(!_loc1_)
                     {
                        §§pop().removeEventListener(§§pop(),this.handleBuyBoosterClick);
                        if(!_loc1_)
                        {
                           addr0105:
                           this._component.removeEventListener(BoosterpackDetail.OPEN_TREASURY,this.handleOpenTreasury);
                           addr00ff:
                           addr00fb:
                        }
                        return;
                     }
                     §§goto(addr0105);
                  }
                  §§goto(addr00ff);
               }
               else
               {
                  addr003f:
                  §§push(this._component);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(BoosterpackDetail.SCROLL_RIGHT);
                     if(!_loc1_)
                     {
                        §§pop().removeEventListener(§§pop(),this.handleNavigationClick);
                        if(_loc2_)
                        {
                           §§push(this._component);
                           if(!_loc1_)
                           {
                              addr007a:
                              §§push(BoosterpackDetail.SCROLL_LEFT);
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr008d:
                                 §§pop().removeEventListener(§§pop(),this.handleNavigationClick);
                                 if(_loc2_)
                                 {
                                    §§push(this._component);
                                    if(_loc2_)
                                    {
                                       addr00a2:
                                       §§push(BoosterpackDetail.BUY_BOOSTER_GOOD);
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§pop().removeEventListener(§§pop(),this.handleBuyBoosterClick);
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§goto(addr00c9);
                                          }
                                          §§goto(addr00fb);
                                       }
                                       §§goto(addr0105);
                                    }
                                    §§goto(addr00ff);
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr0105);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0105);
            }
            §§goto(addr007a);
         }
         §§goto(addr003f);
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._component);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     return;
                  }
                  addr011b:
                  addr011f:
                  §§push(this._component);
                  §§push(BoosterpackDetail.OPEN_TREASURY);
               }
               else
               {
                  §§push(this._component);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§push(BoosterpackDetail.SCROLL_RIGHT);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§pop().addEventListener(§§pop(),this.handleNavigationClick);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(this._component);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(BoosterpackDetail.SCROLL_LEFT);
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 §§pop().addEventListener(§§pop(),this.handleNavigationClick);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§push(this._component);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§goto(addr00ca);
                                    }
                                    §§goto(addr0104);
                                 }
                                 §§goto(addr00e9);
                              }
                              §§goto(addr00d5);
                           }
                           addr00ca:
                           §§push(BoosterpackDetail.BUY_BOOSTER_GOOD);
                           if(_loc2_)
                           {
                              addr00d5:
                              §§pop().addEventListener(§§pop(),this.handleBuyBoosterClick);
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00e9:
                                 §§push(this._component);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr0104:
                                    §§push(BoosterpackDetail.BUY_BOOSTER_RC);
                                    if(_loc2_)
                                    {
                                       §§pop().addEventListener(§§pop(),this.handleBuyBoosterClick);
                                       if(_loc2_)
                                       {
                                          §§goto(addr011b);
                                       }
                                       §§goto(addr012d);
                                    }
                                    §§goto(addr0125);
                                 }
                                 §§goto(addr011f);
                              }
                              §§goto(addr011b);
                           }
                           §§goto(addr0125);
                        }
                        §§goto(addr00e9);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr0104);
               }
               addr0125:
               §§pop().addEventListener(§§pop(),this.handleOpenTreasury);
               addr012d:
               return;
            }
            §§goto(addr0104);
         }
         §§goto(addr00e9);
      }
      
      private function prepareProxies() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this._boosterpackBookProxy = facade.retrieveProxy(BoosterpackBookProxy.NAME) as BoosterpackBookProxy;
         }
      }
      
      private function handleBuyBoosterClick(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Boolean = false;
         var _loc3_:* = param1.type;
         if(_loc4_)
         {
            §§push(BoosterpackDetail.BUY_BOOSTER_GOOD);
            if(_loc4_)
            {
               if(§§pop() === _loc3_)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(_loc4_ || _loc2_)
                     {
                     }
                  }
                  else
                  {
                     addr010d:
                     §§push(1);
                     if(_loc4_)
                     {
                     }
                  }
                  §§goto(addr0125);
               }
               else
               {
                  §§goto(addr0108);
               }
            }
            addr0108:
            if(BoosterpackDetail.BUY_BOOSTER_RC === _loc3_)
            {
               §§goto(addr010d);
            }
            else
            {
               §§push(2);
            }
            addr0125:
            switch(§§pop())
            {
               case 0:
                  §§push(this._data);
                  if(!_loc5_)
                  {
                     §§push(this._data);
                     if(!_loc5_)
                     {
                        §§push(§§pop().defaultCostUserStock);
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           §§push(this._data);
                           if(_loc4_)
                           {
                              §§push(§§pop().defaultCostAmount);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!_loc5_)
                                 {
                                    §§pop().defaultCostUserStock = §§pop();
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_BOOSTERPACK_BUY,{
                                       "booster":this._data,
                                       "rc":_loc2_
                                    });
                                    addr0143:
                                    if(_loc4_)
                                    {
                                       addr016e:
                                       sendNotification(ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_IN);
                                       if(_loc5_ && Boolean(_loc3_))
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr00bb:
                                    §§pop().realCurrencyUserStock = §§pop() - this._data.realCurrencyCostAmount;
                                    addr00ba:
                                    addr00b7:
                                    addr00b3:
                                    if(!_loc5_)
                                    {
                                       §§goto(addr0143);
                                    }
                                 }
                                 this.startDisableBuyButtonTimer();
                                 break;
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00b3);
                     }
                     else
                     {
                        addr0095:
                        §§push(§§pop().realCurrencyUserStock);
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           §§goto(addr00b3);
                        }
                     }
                     §§goto(addr00bb);
                  }
                  else
                  {
                     addr0091:
                     §§push(this._data);
                  }
                  §§goto(addr0095);
               case 1:
                  StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     _loc2_ = true;
                     if(!_loc5_)
                     {
                        §§goto(addr0091);
                        §§push(this._data);
                     }
                  }
                  §§goto(addr016e);
               default:
                  §§goto(addr0143);
            }
            return;
         }
         §§goto(addr010d);
      }
      
      private function startDisableBuyButtonTimer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this._component.goodBuyButton.enabled = false;
            if(_loc1_)
            {
               this._intervalId = setInterval(this.enableBuyButton,1000);
            }
         }
      }
      
      private function enableBuyButton() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            clearInterval(this._intervalId);
            if(!_loc1_)
            {
               §§push(this._component);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        addr0046:
                        this._component.goodBuyButton.enabled = this._data.userCanAffordGoodPrice;
                        addr0042:
                     }
                  }
                  return;
               }
               §§goto(addr0046);
            }
         }
         §§goto(addr0042);
      }
      
      private function handleNavigationClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = param1.type;
         if(!_loc4_)
         {
            §§push(BoosterpackDetail.SCROLL_RIGHT);
            if(!_loc4_)
            {
               if(§§pop() === _loc3_)
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§push(0);
                     if(_loc4_)
                     {
                     }
                  }
                  else
                  {
                     addr0100:
                     §§push(1);
                     if(_loc4_ && Boolean(this))
                     {
                     }
                  }
                  §§goto(addr012d);
               }
               else
               {
                  §§goto(addr00fb);
               }
            }
            addr00fb:
            if(BoosterpackDetail.SCROLL_LEFT === _loc3_)
            {
               §§goto(addr0100);
            }
            else
            {
               §§push(2);
            }
            addr012d:
            loop0:
            do
            {
               switch(§§pop())
               {
                  case 0:
                     §§push(this._boosterpackBookProxy);
                     if(!(_loc5_ || Boolean(this)))
                     {
                        break;
                     }
                     §§push(this._data);
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop().slotId);
                        if(_loc5_)
                        {
                           §§push(§§pop().getNextBoosterpackSlotId(§§pop()));
                           if(!(_loc5_ || Boolean(this)))
                           {
                              break loop0;
                           }
                           §§push(§§pop());
                           if(!_loc4_)
                           {
                              _loc2_ = §§pop();
                              if(_loc5_ || Boolean(_loc2_))
                              {
                              }
                              §§goto(addr0143);
                           }
                           continue;
                        }
                     }
                     else
                     {
                        addr0080:
                        §§push(§§pop().slotId);
                     }
                     §§push(§§pop().getPreviousBoosterpackSlotId(§§pop()));
                     if(!_loc5_)
                     {
                        break loop0;
                     }
                     continue;
                  case 1:
                     §§push(this._boosterpackBookProxy);
                     break;
                  default:
                     return;
               }
               §§goto(addr0080);
            }
            while(§§push(§§pop()), !_loc5_);
            
            _loc2_ = §§pop();
            if(!(_loc4_ && Boolean(_loc3_)))
            {
               addr0143:
               facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
                  "container":this.container,
                  "content":_loc2_
               });
               §§goto(addr015a);
            }
            addr015a:
            return;
         }
         §§goto(addr0100);
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         }
      }
      
      private function setInitialValues() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._component);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     this._component = new BoosterpackDetail();
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0060:
                        this._component.data = this._data;
                        §§goto(addr005c);
                     }
                     §§goto(addr006b);
                  }
               }
               addr005c:
               if(_loc2_)
               {
                  addr006b:
                  this.container.contentGroup.addElement(this._component);
               }
               §§goto(addr007a);
            }
            §§goto(addr0060);
         }
         addr007a:
      }
      
      public function get container() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(param1 is BoosterpackVo)
            {
               if(!_loc2_)
               {
                  this._data = param1 as BoosterpackVo;
                  if(!_loc2_)
                  {
                     addr0048:
                     this.setInitialValues();
                     if(!(_loc2_ && _loc3_))
                     {
                        addr005b:
                        this.setupListeners();
                     }
                     §§goto(addr0061);
                  }
               }
               §§goto(addr005b);
            }
            addr0061:
            return;
         }
         §§goto(addr0048);
      }
      
      override public function getMediatorName() : String
      {
         return BoosterpackDetailMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(!_loc4_)
         {
            §§push(ApplicationNotificationConstants.REALCURRENCY_CHANGED);
            if(_loc3_ || Boolean(param1))
            {
               §§push(_loc2_);
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr009e:
                        §§push(0);
                        if(_loc4_ && _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr00bc:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                     §§goto(addr00d4);
                  }
                  else
                  {
                     §§goto(addr00b8);
                  }
               }
               addr00b8:
               §§goto(addr00b7);
            }
            addr00b7:
            if(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED === _loc2_)
            {
               §§goto(addr00bc);
            }
            else
            {
               §§push(2);
            }
            addr00d4:
            switch(§§pop())
            {
               case 0:
                  this.updateData(false);
                  if(_loc3_ || _loc3_)
                  {
                  }
                  break;
               case 1:
                  this.updateData(true);
                  if(_loc4_ && Boolean(this))
                  {
                  }
            }
            return;
         }
         §§goto(addr009e);
      }
      
      private function updateData(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:PlayerGoodsStockProxy = null;
         var _loc3_:PlayerResourceProxy = null;
         if(_loc5_)
         {
            if(param1)
            {
               §§goto(addr002a);
            }
            else
            {
               _loc3_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
               if(!_loc4_)
               {
                  this._data.realCurrencyUserStock = _loc3_.realCurrency;
               }
            }
            §§goto(addr00c7);
         }
         addr002a:
         _loc2_ = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         if(_loc5_ || Boolean(this))
         {
            _loc2_.getGoodByConfigId(this._data.defaultCostConfig.configId);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               §§goto(addr0074);
            }
            §§goto(addr00e5);
         }
         addr0074:
         this._data.defaultCostUserStock = _loc2_.getGoodByConfigId(this._data.defaultCostConfig.configId).playerStock;
         if(_loc5_)
         {
            addr00c7:
            §§push(this._component);
            if(_loc5_ || Boolean(_loc2_))
            {
               §§pop().data = this._data;
               if(!_loc4_)
               {
                  addr00e9:
                  this._component.updateData();
                  addr00e5:
               }
               §§goto(addr00ed);
            }
            §§goto(addr00e9);
         }
         addr00ed:
      }
   }
}

