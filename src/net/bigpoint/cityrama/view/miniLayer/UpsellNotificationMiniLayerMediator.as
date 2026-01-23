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
      
      private var _data:UpsellingNotificationLayerVo;
      
      public function UpsellNotificationMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      public function setData(param1:Object) : void
      {
         this.component.data = this._data = param1 as UpsellingNotificationLayerVo;
      }
      
      override public function onRegister() : void
      {
         this.addListeners();
      }
      
      override public function onRemove() : void
      {
         this.removeListeners();
      }
      
      private function addListeners() : void
      {
         this.component.addEventListener(Event.CLOSE,this.finalCall);
         this.component.addEventListener(Event.OPEN,this.openHandler);
         this.component.addEventListener(Event.CANCEL,this.cancelHandler);
      }
      
      private function removeListeners() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.removeEventListener(Event.OPEN,this.openHandler);
         this.component.removeEventListener(Event.CANCEL,this.cancelHandler);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function get component() : UpsellNotificationMinilayer
      {
         return super.viewComponent as UpsellNotificationMinilayer;
      }
      
      private function openHandler(param1:Event) : void
      {
         var _loc5_:ConfigPaymentPackUpsellingDTO = null;
         var _loc2_:Object = new Object();
         var _loc3_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc4_:PlayerPaymentUpsellDTO = _loc3_.player.playerPaymentPackInfo.upsellPaymentPack;
         for each(_loc5_ in this._data.packConfig.upsellPackages)
         {
            if(_loc5_.category == _loc4_.type)
            {
               _loc2_.itemKey = _loc5_.key;
            }
         }
         _loc2_.category = this._data.oldPaymentCall.category;
         _loc2_.deeplink = true;
         _loc2_.ignoreUpsell = true;
         sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,_loc2_);
         this.finalCall();
      }
      
      private function cancelHandler(param1:Event) : void
      {
         this._data.oldPaymentCall.ignoreUpsell = true;
         sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,this._data.oldPaymentCall);
         this.finalCall();
      }
   }
}

