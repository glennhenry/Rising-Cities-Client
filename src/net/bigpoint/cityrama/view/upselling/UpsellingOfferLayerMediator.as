package net.bigpoint.cityrama.view.upselling
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.upselling.ui.UpsellingOfferLayer;
   import net.bigpoint.cityrama.view.upselling.vo.UpsellingOfferLayerVo;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class UpsellingOfferLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "UpsellingOfferLayerMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "UpsellingOfferLayerMediator";
      }
      
      private var _data:UpsellingOfferLayerVo;
      
      public function UpsellingOfferLayerMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 is UpsellingOfferLayerVo)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr003a:
                  this._data = param1 as UpsellingOfferLayerVo;
                  if(_loc3_)
                  {
                     this.component.data = this._data;
                  }
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.addListeners();
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.removeListeners();
         }
      }
      
      private function addListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_ || _loc1_)
            {
               §§pop().addEventListener(UpsellingOfferLayer.SHOW_OFFER,this.onHandleShowOffer);
               if(_loc2_)
               {
                  addr0046:
                  this.component.addEventListener(Event.CLOSE,this.finalCall);
               }
               §§goto(addr0052);
            }
            §§goto(addr0046);
         }
         addr0052:
      }
      
      private function removeListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_ || _loc1_)
            {
               §§pop().removeEventListener(UpsellingOfferLayer.SHOW_OFFER,this.onHandleShowOffer);
               if(_loc2_)
               {
                  addr0046:
                  this.component.removeEventListener(Event.CLOSE,this.finalCall);
               }
               §§goto(addr0052);
            }
            §§goto(addr0046);
         }
         addr0052:
      }
      
      private function finalCall(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      public function get component() : UpsellingOfferLayer
      {
         return super.viewComponent as UpsellingOfferLayer;
      }
      
      private function onHandleShowOffer(param1:Event) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:ConfigTagDTO = null;
         var _loc2_:Object = new Object();
         var _loc3_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         loop0:
         for each(_loc7_ in this._data.packConfig.configTags)
         {
            if(_loc12_ && Boolean(param1))
            {
               continue;
            }
            var _loc10_:* = _loc7_.tagName;
            if(!_loc12_)
            {
               §§push(ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK);
               if(!(_loc12_ && Boolean(this)))
               {
                  §§push(_loc10_);
                  if(_loc11_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc11_)
                        {
                           §§push(0);
                           if(_loc11_)
                           {
                           }
                        }
                        else
                        {
                           addr01b4:
                           §§push(1);
                           if(_loc11_ || Boolean(_loc2_))
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER);
                        if(_loc11_)
                        {
                           §§push(_loc10_);
                           if(_loc11_ || Boolean(this))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc11_)
                                 {
                                    §§goto(addr01b4);
                                 }
                                 else
                                 {
                                    addr024d:
                                    §§push(4);
                                    if(_loc11_)
                                    {
                                    }
                                 }
                                 addr0265:
                                 loop1:
                                 while(true)
                                 {
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push(CityTreasuryTabProxy.CURRENCY_TAB_INDEX);
                                          if(!(_loc12_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop());
                                             if(!_loc11_)
                                             {
                                                break;
                                             }
                                             _loc4_ = §§pop();
                                             if(_loc11_)
                                             {
                                                §§push(0);
                                                if(!_loc12_)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(_loc3_.getIndexOfPaymentPack(this._data.packConfig));
                                                   if(_loc11_ || Boolean(_loc2_))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc12_ && Boolean(this))
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   addr00cf:
                                                   _loc6_ = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                else
                                                {
                                                   addr00f7:
                                                   _loc4_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                §§push(int(CityTreasuryProxy.starterPackCategories.indexOf(_loc7_.tagName)));
                                                if(_loc11_ || Boolean(_loc3_))
                                                {
                                                   addr011d:
                                                   _loc5_ = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      §§push(-1);
                                                      if(!(_loc12_ && Boolean(this)))
                                                      {
                                                         break loop1;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr00cf);
                                       case 1:
                                       case 2:
                                       case 3:
                                       case 4:
                                          §§push(CityTreasuryTabProxy.PACKS_TAB_INDEX);
                                          if(!_loc12_)
                                          {
                                             break;
                                          }
                                          §§goto(addr011d);
                                       default:
                                          continue loop0;
                                    }
                                    §§push(§§pop());
                                    if(!(_loc11_ || Boolean(_loc2_)))
                                    {
                                       continue;
                                    }
                                    §§goto(addr00f7);
                                 }
                                 _loc6_ = §§pop();
                                 if(_loc11_)
                                 {
                                 }
                                 continue;
                              }
                              §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT);
                              if(!(_loc12_ && Boolean(_loc3_)))
                              {
                                 addr01db:
                                 §§push(_loc10_);
                                 if(_loc11_)
                                 {
                                    addr01e3:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc11_ || Boolean(this))
                                       {
                                          §§push(2);
                                          if(_loc12_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr022e:
                                          §§push(3);
                                          if(_loc11_ || Boolean(_loc3_))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION);
                                       if(_loc11_)
                                       {
                                          addr020c:
                                          §§push(_loc10_);
                                          if(!(_loc12_ && Boolean(_loc3_)))
                                          {
                                             addr021c:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc12_ && Boolean(_loc2_)))
                                                {
                                                   §§goto(addr022e);
                                                }
                                                else
                                                {
                                                   §§goto(addr024d);
                                                }
                                             }
                                             else
                                             {
                                                addr0249:
                                                addr0247:
                                                if(ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID === _loc10_)
                                                {
                                                   §§goto(addr024d);
                                                }
                                                else
                                                {
                                                   §§push(5);
                                                }
                                                §§goto(addr0265);
                                             }
                                             §§goto(addr024d);
                                          }
                                          §§goto(addr0249);
                                       }
                                       §§goto(addr0247);
                                    }
                                    §§goto(addr0265);
                                 }
                                 §§goto(addr0249);
                              }
                              §§goto(addr0247);
                              §§goto(addr024d);
                           }
                           §§goto(addr021c);
                        }
                        §§goto(addr020c);
                     }
                     §§goto(addr0265);
                  }
                  §§goto(addr01e3);
               }
               §§goto(addr01db);
            }
            §§goto(addr024d);
         }
         if(_loc11_)
         {
            _loc2_.index = _loc4_;
            if(!_loc12_)
            {
               _loc2_.cat = _loc5_;
               if(_loc11_ || Boolean(_loc3_))
               {
                  _loc2_.pack = _loc6_;
                  if(!(_loc12_ && Boolean(this)))
                  {
                     addr02d3:
                     sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY,_loc2_);
                     if(_loc11_)
                     {
                        addr02e4:
                        this.finalCall();
                     }
                  }
                  return;
               }
               §§goto(addr02e4);
            }
         }
         §§goto(addr02d3);
      }
   }
}

