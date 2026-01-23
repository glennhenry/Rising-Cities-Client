package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.upselling.ui.UpsellNotificationMinilayer;
   import net.bigpoint.cityrama.view.upselling.vo.UpsellingNotificationLayerVo;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class UpsellNotificationMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "UpsellNotificationMiniLayerMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "UpsellNotificationMiniLayerMediator";
      }
      
      private var _data:UpsellingNotificationLayerVo;
      
      public function UpsellNotificationMiniLayerMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            this.component.data = this._data = param1 as UpsellingNotificationLayerVo;
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.addListeners();
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.removeListeners();
         }
      }
      
      private function addListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().addEventListener(Event.CLOSE,this.finalCall);
               if(_loc2_ || _loc1_)
               {
                  §§push(this.component);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr007d);
            }
            addr006b:
            §§pop().addEventListener(Event.OPEN,this.openHandler);
            if(!_loc1_)
            {
               addr0080:
               this.component.addEventListener(Event.CANCEL,this.cancelHandler);
               addr007d:
            }
            return;
         }
         §§goto(addr007d);
      }
      
      private function removeListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.finalCall);
               if(!_loc2_)
               {
                  addr0038:
                  §§push(this.component);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§pop().removeEventListener(Event.OPEN,this.openHandler);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr006f:
                        this.component.removeEventListener(Event.CANCEL,this.cancelHandler);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006f);
               }
               addr007b:
               return;
            }
            §§goto(addr006f);
         }
         §§goto(addr0038);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      public function get component() : UpsellNotificationMinilayer
      {
         return super.viewComponent as UpsellNotificationMinilayer;
      }
      
      private function openHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:ConfigPaymentPackUpsellingDTO = null;
         var _loc2_:Object = new Object();
         var _loc3_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc4_:PlayerPaymentUpsellDTO = _loc3_.player.playerPaymentPackInfo.upsellPaymentPack;
         for each(_loc5_ in this._data.packConfig.upsellPackages)
         {
            if(_loc5_.category == _loc4_.type)
            {
               if(!_loc8_)
               {
                  _loc2_.itemKey = _loc5_.key;
               }
            }
         }
         if(_loc9_ || Boolean(this))
         {
            _loc2_.category = this._data.oldPaymentCall.category;
            if(!_loc8_)
            {
               _loc2_.deeplink = true;
               if(_loc9_ || Boolean(_loc3_))
               {
                  _loc2_.ignoreUpsell = true;
                  if(_loc9_ || Boolean(param1))
                  {
                     sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,_loc2_);
                     if(_loc9_ || Boolean(param1))
                     {
                        addr010a:
                        this.finalCall();
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr010a);
      }
      
      private function cancelHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._data.oldPaymentCall.ignoreUpsell = true;
            if(_loc3_ || Boolean(this))
            {
               addr0046:
               sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,this._data.oldPaymentCall);
               if(!_loc2_)
               {
                  this.finalCall();
               }
            }
            return;
         }
         §§goto(addr0046);
      }
   }
}

