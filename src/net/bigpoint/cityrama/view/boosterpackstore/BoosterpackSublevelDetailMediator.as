package net.bigpoint.cityrama.view.boosterpackstore
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackDetail;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackSublevelDetail;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BoosterpackSublevelDetailMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "BoosterpackSublevelDetailMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && BoosterpackSublevelDetailMediator))
      {
         NAME = "BoosterpackSublevelDetailMediator";
      }
      
      private var _boosterpackBookProxy:BoosterpackBookProxy;
      
      private var _component:BoosterpackSublevelDetail;
      
      private var _data:BoosterpackVo;
      
      private var _boosterType:String;
      
      public function BoosterpackSublevelDetailMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._boosterType = BoosterpackBookProxy.SUBLEVEL_BOOSTER;
            if(!(_loc2_ && _loc2_))
            {
               super(NAME,param1);
            }
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.onRegister();
            if(_loc1_ || _loc2_)
            {
               this.prepareProxies();
            }
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.onRemove();
            if(!_loc2_)
            {
               this.removeListeners();
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this._component);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§§pop());
                     if(_loc1_ || _loc2_)
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 §§pop();
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(this.container);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop().contentGroup);
                                       if(_loc1_ || Boolean(this))
                                       {
                                          addr00a4:
                                          var _temp_9:* = §§pop();
                                          addr00a5:
                                          §§push(_temp_9);
                                          if(_temp_9)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§goto(addr00b6);
                                             }
                                          }
                                          §§goto(addr00dd);
                                       }
                                       addr00b6:
                                       §§pop();
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr00dd:
                                          addr00d2:
                                          if(this._component.parent == this.container.contentGroup)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr00ea:
                                                this.container.contentGroup.removeElement(this._component);
                                                addr00e6:
                                             }
                                          }
                                       }
                                       §§goto(addr00f5);
                                    }
                                    §§goto(addr00ea);
                                 }
                                 §§goto(addr00f5);
                              }
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00d2);
               }
               §§goto(addr00f5);
            }
            §§goto(addr00e6);
         }
         addr00f5:
      }
      
      private function removeListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._component);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     return;
                  }
               }
               addr003e:
               §§push(this._component);
               if(_loc1_)
               {
                  §§push(BoosterpackDetail.SCROLL_RIGHT);
                  if(_loc1_)
                  {
                     §§pop().removeEventListener(§§pop(),this.handleNavigationClick);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(this._component);
                        if(!_loc2_)
                        {
                           §§push(BoosterpackDetail.SCROLL_LEFT);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§goto(addr0096);
                           }
                           §§goto(addr00b4);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr00aa);
                  }
                  addr0096:
                  §§pop().removeEventListener(§§pop(),this.handleNavigationClick);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00b4:
                     this._component.removeEventListener(BoosterpackDetail.BUY_BOOSTER_GOOD,this.handleBuyBoosterClick);
                     addr00ae:
                     addr00aa:
                  }
                  return;
               }
            }
            §§goto(addr00ae);
         }
         §§goto(addr003e);
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._component);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0038);
                  }
                  else
                  {
                     addr00aa:
                     §§push(this._component);
                  }
               }
               else
               {
                  §§push(this._component);
                  if(!_loc2_)
                  {
                     §§push(BoosterpackDetail.SCROLL_RIGHT);
                     if(!_loc2_)
                     {
                        §§pop().addEventListener(§§pop(),this.handleNavigationClick);
                        if(!_loc2_)
                        {
                           §§push(this._component);
                           if(_loc1_ || Boolean(this))
                           {
                              addr008b:
                              §§push(BoosterpackDetail.SCROLL_LEFT);
                              if(!_loc2_)
                              {
                                 §§pop().addEventListener(§§pop(),this.handleNavigationClick);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§goto(addr00aa);
                                 }
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00b4);
                           }
                           addr00ae:
                           addr00b4:
                           §§pop().addEventListener(§§pop(),this.handleBuyBoosterClick);
                           addr00bc:
                           return;
                           §§push(BoosterpackDetail.BUY_BOOSTER_GOOD);
                        }
                        §§goto(addr00bc);
                     }
                     §§goto(addr00b4);
                  }
               }
               §§goto(addr00ae);
            }
            §§goto(addr008b);
         }
         addr0038:
      }
      
      private function handleNavigationClick(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = param1.type;
         if(_loc4_ || Boolean(param1))
         {
            §§push(BoosterpackDetail.SCROLL_RIGHT);
            if(!(_loc5_ && Boolean(this)))
            {
               if(§§pop() === _loc3_)
               {
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     §§push(0);
                     if(_loc4_ || Boolean(_loc3_))
                     {
                     }
                  }
                  else
                  {
                     addr011c:
                     §§push(1);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                     }
                  }
                  §§goto(addr0148);
               }
               else
               {
                  §§goto(addr0117);
               }
            }
            addr0117:
            if(BoosterpackDetail.SCROLL_LEFT === _loc3_)
            {
               §§goto(addr011c);
            }
            else
            {
               §§push(2);
            }
            addr0148:
            loop0:
            while(true)
            {
               switch(§§pop())
               {
                  case 0:
                     §§push(this._boosterpackBookProxy);
                     if(_loc5_ && Boolean(_loc2_))
                     {
                        break;
                     }
                     §§push(this._data);
                     if(_loc4_)
                     {
                        §§push(§§pop().slotId);
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(this._boosterType);
                           if(_loc4_)
                           {
                              §§push(§§pop().getNextBoosterpackSlotId(§§pop(),§§pop()));
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                                 if(!_loc5_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr0166);
                                 }
                                 break loop0;
                              }
                           }
                           else
                           {
                              addr0081:
                              §§push(§§pop().getPreviousBoosterpackSlotId(§§pop(),§§pop()));
                              if(!(_loc4_ || Boolean(this)))
                              {
                                 continue;
                              }
                           }
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              break loop0;
                           }
                           continue;
                        }
                        addr007d:
                        §§push(this._boosterType);
                        §§goto(addr0081);
                     }
                     else
                     {
                        addr007a:
                        §§push(§§pop().slotId);
                     }
                     §§goto(addr007d);
                     break;
                  case 1:
                     §§push(this._boosterpackBookProxy);
                     break;
                  default:
                     return;
               }
               §§goto(addr007a);
            }
            _loc2_ = §§pop();
            if(!_loc5_)
            {
               addr0166:
               facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
                  "container":this.container,
                  "content":_loc2_,
                  "type":this._boosterType
               });
               §§goto(addr0184);
            }
            addr0184:
            return;
         }
         §§goto(addr011c);
      }
      
      private function handleBuyBoosterClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this._data);
            §§push(this._data.defaultCostUserStock);
            if(_loc3_)
            {
               §§push(§§pop() - this._data.defaultCostAmount);
            }
            §§pop().defaultCostUserStock = §§pop();
            if(!(_loc2_ && _loc2_))
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_BOOSTERPACK_BUY,{
                  "booster":this._data,
                  "rc":false
               });
            }
         }
      }
      
      private function prepareProxies() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this._boosterpackBookProxy = facade.retrieveProxy(BoosterpackBookProxy.NAME) as BoosterpackBookProxy;
         }
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
         if(!_loc2_)
         {
            if(param1 is BoosterpackVo)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr003b:
                  this._data = param1 as BoosterpackVo;
                  if(!_loc2_)
                  {
                     this.setInitialValues();
                     if(!_loc2_)
                     {
                        addr0054:
                        this.setupListeners();
                     }
                     §§goto(addr005a);
                  }
               }
               §§goto(addr0054);
            }
            addr005a:
            return;
         }
         §§goto(addr003b);
      }
      
      private function updateData() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:PlayerGoodsStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         var _loc2_:GoodObjectVo = _loc1_.getGoodByConfigId(this._data.defaultCostConfig.configId);
         if(_loc3_ || Boolean(_loc2_))
         {
            this._data.defaultCostUserStock = _loc2_.playerStock;
            if(_loc3_ || Boolean(_loc1_))
            {
               §§push(this._component);
               if(_loc3_)
               {
                  §§pop().data = this._data;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0094:
                     this._component.checkButtonStates();
                     addr0090:
                  }
                  return;
               }
               §§goto(addr0094);
            }
         }
         §§goto(addr0090);
      }
      
      private function setInitialValues() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            if(!this._component)
            {
               if(_loc2_ || Boolean(this))
               {
                  this._component = new BoosterpackSublevelDetail();
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr0072);
               }
            }
            addr005f:
            this.updateData();
            if(_loc2_ || _loc1_)
            {
               addr0072:
               this.container.contentGroup.addElement(this._component);
            }
            return;
         }
         §§goto(addr0072);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(!(_loc3_ && Boolean(this)))
         {
            if(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED === _loc2_)
            {
               addr0068:
               §§push(0);
               if(_loc3_ && Boolean(_loc2_))
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  this.updateData();
                  if(_loc4_ || Boolean(param1))
                  {
                  }
            }
            return;
         }
         §§goto(addr0068);
      }
   }
}

