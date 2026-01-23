package net.bigpoint.cityrama.view.assistants
{
   import flash.events.Event;
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorLayer;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorOffersItemRenderer;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class RentCollectorLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "RentCollectorLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "RentCollectorLayerMediator";
      }
      
      private var _viewProxy:AssistViewProxy;
      
      public function RentCollectorLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.onRegister();
            if(_loc2_)
            {
               this._viewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
               if(!(_loc1_ && Boolean(this)))
               {
                  this.addListener();
               }
            }
         }
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.component);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(this.component);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(RentCollectorOffersItemRenderer.EVENT_PAYMENT);
                     if(_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.handleOpenPayment);
                        if(!_loc2_)
                        {
                           §§push(this.component);
                           if(!_loc2_)
                           {
                              addr008a:
                              §§push(RentCollectorOffersItemRenderer.EVENT_TREASURY);
                              if(!_loc2_)
                              {
                                 §§pop().addEventListener(§§pop(),this.handleOpenTreasury);
                                 if(_loc1_ || Boolean(this))
                                 {
                                    addr00b2:
                                    this.component.addEventListener(RentCollectorOffersItemRenderer.EVENT_PURCHASE,this.handlePurchase);
                                    addr00ac:
                                    addr00a9:
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00ba);
            }
            §§goto(addr00ac);
         }
         addr00ba:
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.removeListener();
            if(!(_loc1_ && _loc1_))
            {
               addr0029:
               super.onRemove();
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this.component);
            if(_loc2_ || Boolean(this))
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     addr0059:
                     §§push(RentCollectorOffersItemRenderer.EVENT_PAYMENT);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§pop().removeEventListener(§§pop(),this.handleOpenPayment);
                        if(!(_loc1_ && _loc2_))
                        {
                           addr0081:
                           §§push(this.component);
                           if(!_loc1_)
                           {
                              addr0089:
                              §§push(RentCollectorOffersItemRenderer.EVENT_TREASURY);
                              if(_loc2_ || _loc2_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.handleOpenTreasury);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00c3:
                                    this.component.removeEventListener(RentCollectorOffersItemRenderer.EVENT_PURCHASE,this.handlePurchase);
                                    addr00bd:
                                    addr00ba:
                                 }
                                 return;
                              }
                              §§goto(addr00c3);
                           }
                           §§goto(addr00bd);
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0081);
            }
            §§goto(addr0059);
         }
         §§goto(addr0081);
      }
      
      private function handleOpenPayment(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            param1.stopPropagation();
            if(_loc5_ || Boolean(param1))
            {
               addr002f:
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            }
            var _loc2_:Boolean = false;
            var _loc3_:* = "";
            if(_loc5_)
            {
               if(param1.target is RentCollectorOffersItemRenderer)
               {
                  if(_loc5_ || _loc2_)
                  {
                     §§push(RentCollectorOffersItemRenderer(param1.target).externalPackKey);
                     if(_loc5_ || _loc2_)
                     {
                        if(§§pop() != "")
                        {
                           if(_loc5_)
                           {
                              §§push(RentCollectorOffersItemRenderer(param1.target).externalPackKey);
                              if(_loc5_ || Boolean(this))
                              {
                                 addr00bd:
                                 §§push(§§pop());
                              }
                              _loc3_ = §§pop();
                              if(_loc5_)
                              {
                                 addr00c5:
                                 sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,{
                                    "category":CityTreasuryProxy.PAYMENT_CATEGORY_EXTERNAL,
                                    "itemKey":_loc3_,
                                    "deeplink":_loc2_
                                 });
                              }
                           }
                        }
                        §§goto(addr00e2);
                     }
                     §§goto(addr00bd);
                  }
               }
               addr00e2:
               return;
            }
            §§goto(addr00c5);
         }
         §§goto(addr002f);
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.stopPropagation();
            if(_loc3_)
            {
               addr002c:
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
               if(!_loc2_)
               {
                  sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
               }
            }
            return;
         }
         §§goto(addr002c);
      }
      
      private function handlePurchase(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopPropagation();
            if(_loc2_)
            {
               if(param1.target is RentCollectorOffersItemRenderer)
               {
                  if(!_loc3_)
                  {
                     addr003e:
                     if(RentCollectorOffersItemRenderer(param1.target).assistConfigId != -1)
                     {
                        if(_loc2_)
                        {
                           StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                           §§goto(addr0057);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr009a);
                  }
                  addr0057:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr007c:
                     facade.sendNotification(ApplicationNotificationConstants.BUY_ASSIST,RentCollectorOffersItemRenderer(param1.target).assistConfigId);
                     if(_loc2_)
                     {
                        addr009a:
                        this.handleClose();
                     }
                  }
                  return;
               }
               §§goto(addr009a);
            }
            §§goto(addr007c);
         }
         §§goto(addr003e);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc2_)
            {
               addr006f:
               §§push(0);
               if(_loc4_ || Boolean(this))
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
                  this.setData(this._viewProxy.rentCollectorOffers);
                  if(_loc4_ || Boolean(param1))
                  {
                  }
            }
            return;
         }
         §§goto(addr006f);
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            if(param1 is ArrayCollection)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.component.data = param1 as ArrayCollection;
               }
            }
         }
      }
      
      public function get component() : RentCollectorLayer
      {
         return super.viewComponent as RentCollectorLayer;
      }
   }
}

