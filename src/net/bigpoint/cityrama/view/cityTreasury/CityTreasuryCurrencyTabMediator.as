package net.bigpoint.cityrama.view.cityTreasury
{
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.cityTreasury.event.CityTreasuryEvent;
   import net.bigpoint.cityrama.view.cityTreasury.event.ItemPurchaseEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryTabView;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CityTreasuryCurrencyTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CityTreasuryCurrencyTabMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && CityTreasuryCurrencyTabMediator))
      {
         NAME = "CityTreasuryCurrencyTabMediator";
      }
      
      private var _component:CityTreasuryTabView;
      
      private var _cTP:CityTreasuryProxy;
      
      public function CityTreasuryCurrencyTabMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super(NAME,param1);
         }
      }
      
      public function init(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            if(!this.component)
            {
               if(_loc4_)
               {
                  this._component = new CityTreasuryTabView();
                  if(!_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               §§goto(addr0065);
            }
            addr0043:
            this.setLayerData(param1,param2);
            if(!_loc3_)
            {
               this.container.contentGroup.addElement(this.component);
               if(!_loc3_)
               {
                  addr0065:
                  this.addListener();
               }
            }
            return;
         }
         §§goto(addr0065);
      }
      
      private function setLayerData(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param2)))
         {
            this.component.data = this.treasuryProxy.getCityTreasuryContentVo(CityTreasuryTabProxy.CURRENCY_TAB_INDEX,param1,param2);
         }
      }
      
      private function addListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               §§push(ItemPurchaseEvent.PURCHASE_ITEM_PACK);
               if(!_loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.handlePurchaseItemPack);
                  if(_loc2_)
                  {
                     addr005a:
                     this.component.addEventListener(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,this.handleRealCurrencyBtnClicked);
                     addr0054:
                     addr0050:
                  }
                  return;
               }
               §§goto(addr005a);
            }
            §§goto(addr0054);
         }
         §§goto(addr0050);
      }
      
      private function handleRealCurrencyBtnClicked(param1:CityTreasuryEvent) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc4_:PlayerProxy = null;
         var _loc5_:TimerProxy = null;
         var _loc6_:PlayerPaymentUpsellDTO = null;
         var _loc7_:ConfigPaymentPackUpsellingDTO = null;
         if(_loc11_ || _loc2_)
         {
            param1.stopPropagation();
         }
         var _loc2_:* = "";
         var _loc3_:Boolean = false;
         if(_loc11_)
         {
            §§push(param1.selectedPack);
            if(!(_loc10_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc10_)
                  {
                     addr006c:
                     addr0068:
                     §§push(param1.selectedPack.key);
                     if(_loc11_ || _loc3_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                  }
                  _loc4_ = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
                  _loc5_ = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  _loc6_ = _loc4_.player.playerPaymentPackInfo.upsellPaymentPack;
                  var _temp_6:* = _loc6_;
                  §§push(_temp_6);
                  if(_temp_6)
                  {
                     §§pop();
                     if(_loc11_)
                     {
                        §§push(_loc6_.id);
                        if(_loc11_ || _loc3_)
                        {
                           §§push(param1.selectedPack.id);
                           if(_loc11_)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc11_)
                              {
                                 addr00ea:
                                 §§push(§§pop());
                                 if(_loc11_)
                                 {
                                    var _temp_8:* = §§pop();
                                    §§push(_temp_8);
                                    §§push(_temp_8);
                                    if(!_loc10_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc10_)
                                          {
                                             addr0111:
                                             §§pop();
                                             if(_loc11_ || Boolean(this))
                                             {
                                                §§push(_loc5_.currentTimeStamp);
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc6_.startTime);
                                                   if(_loc11_)
                                                   {
                                                      addr0136:
                                                      §§push(§§pop() >= §§pop());
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc11_ || Boolean(param1))
                                                         {
                                                            §§goto(addr0155);
                                                         }
                                                         §§goto(addr0160);
                                                      }
                                                      addr0155:
                                                      var _temp_12:* = §§pop();
                                                      addr0156:
                                                      §§push(_temp_12);
                                                      if(_temp_12)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            addr0160:
                                                            §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr017e);
                                                            }
                                                            §§goto(addr0182);
                                                         }
                                                      }
                                                      addr017e:
                                                      §§goto(addr016c);
                                                   }
                                                   §§goto(addr0177);
                                                }
                                                §§goto(addr016c);
                                             }
                                             §§goto(addr0182);
                                          }
                                       }
                                       §§goto(addr0155);
                                    }
                                    §§goto(addr0156);
                                 }
                                 §§goto(addr0155);
                              }
                              §§goto(addr0111);
                           }
                           §§goto(addr0136);
                        }
                        addr016c:
                        §§goto(addr0167);
                     }
                     addr0167:
                     §§push(_loc5_.currentTimeStamp);
                     §§push(_loc6_.startTime);
                     if(_loc11_)
                     {
                        addr0177:
                        §§push(§§pop() + _loc6_.duration);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr0182:
                        for each(_loc7_ in param1.selectedPack.upsellPackages)
                        {
                           §§push(_loc7_.category);
                           if(!(_loc10_ && _loc3_))
                           {
                              if(§§pop() == _loc6_.type)
                              {
                                 if(_loc11_ || Boolean(param1))
                                 {
                                    §§push(_loc7_.key);
                                    if(!_loc10_)
                                    {
                                       addr01de:
                                       §§push(§§pop());
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                 }
                                 _loc3_ = true;
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr01de);
                        }
                     }
                     §§goto(addr01f7);
                  }
                  §§goto(addr00ea);
               }
               addr01f7:
               sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,{
                  "category":CityTreasuryProxy.PAYMENT_CATEGORY_REAL_CURRENCY,
                  "itemKey":_loc2_,
                  "deeplink":_loc3_
               });
               return;
            }
            §§goto(addr006c);
         }
         §§goto(addr0068);
      }
      
      private function handlePurchaseItemPack(param1:ItemPurchaseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            param1.stopPropagation();
            if(!(_loc2_ && Boolean(param1)))
            {
               if(param1.itemPack)
               {
                  if(!_loc2_)
                  {
                     StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                     if(_loc3_ || _loc3_)
                     {
                        facade.sendNotification(ApplicationNotificationConstants.BUY_PAYMENT_PACK,param1.itemPack);
                        if(!_loc2_)
                        {
                           addr0081:
                           this.showDrops(param1);
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0088);
            }
            §§goto(addr0081);
         }
         addr0088:
      }
      
      private function showDrops(param1:ItemPurchaseEvent) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:String = null;
         var _loc2_:* = 0;
         if(_loc8_)
         {
            §§push(param1.itemPack);
            if(_loc8_)
            {
               if(§§pop())
               {
                  if(!(_loc9_ && Boolean(this)))
                  {
                     §§push(int(Math.max(1,param1.itemPack.resources[0].outputAmount / 5)));
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        _loc2_ = §§pop();
                        if(!_loc9_)
                        {
                           addr0077:
                           _loc2_ = Math.min(15,_loc2_);
                           if(!_loc9_)
                           {
                              §§push(param1.itemPack);
                              if(!_loc9_)
                              {
                                 if(§§pop().resources[0].resourceConfig)
                                 {
                                    if(_loc8_)
                                    {
                                       addr00ae:
                                       _loc3_ = param1.itemPack.resources[0].resourceConfig.type;
                                       addr00aa:
                                    }
                                 }
                                 §§goto(addr00be);
                              }
                              §§goto(addr00ae);
                           }
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr0077);
                  }
               }
               addr00be:
               var _loc4_:DisplayObject = param1.dropContainer as DisplayObject;
               var _loc5_:Point = new Point(_loc4_.width / 2,_loc4_.height / 2);
               _loc5_ = _loc4_.localToGlobal(_loc5_);
               var _loc6_:DropIconVO = new DropIconVO(_loc3_,_loc5_,false);
               var _loc7_:int = 1;
               while(_loc7_ <= _loc2_)
               {
                  §§push(TweenMax);
                  §§push(0.1);
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     §§push(§§pop() * _loc7_);
                  }
                  §§pop().delayedCall(§§pop(),facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,_loc6_]);
                  if(_loc8_ || Boolean(this))
                  {
                     _loc7_++;
                     if(_loc9_ && Boolean(param1))
                     {
                        break;
                     }
                  }
               }
               return;
            }
            §§goto(addr00ae);
         }
         §§goto(addr00aa);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_)
         {
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc2_)
            {
               addr0079:
               §§push(0);
               if(_loc4_ && _loc3_)
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
                  if(this.component)
                  {
                     if(!_loc4_)
                     {
                        this.setLayerData(this.component.currentSelectedCategoryIndex,this.component.currentSelectedPackIndex);
                        if(_loc4_)
                        {
                        }
                     }
                  }
            }
            return;
         }
         §§goto(addr0079);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.removeListener();
            if(_loc2_)
            {
               super.onRemove();
            }
         }
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§push(ItemPurchaseEvent.PURCHASE_ITEM_PACK);
               if(_loc1_ || Boolean(this))
               {
                  §§pop().removeEventListener(§§pop(),this.handlePurchaseItemPack);
                  if(!(_loc2_ && _loc1_))
                  {
                     addr0059:
                     this.component.removeEventListener(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,this.handleRealCurrencyBtnClicked);
                     addr0053:
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0059);
            }
            §§goto(addr0053);
         }
         addr0061:
      }
      
      private function get container() : CityTreasuryLayer
      {
         return super.viewComponent as CityTreasuryLayer;
      }
      
      private function get component() : CityTreasuryTabView
      {
         return this._component as CityTreasuryTabView;
      }
      
      private function get treasuryProxy() : CityTreasuryProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this._cTP);
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this._cTP = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
                  }
               }
               addr0054:
               return this._cTP;
            }
         }
         §§goto(addr0054);
      }
   }
}

