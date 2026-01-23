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
      
      private var _viewProxy:AssistViewProxy;
      
      public function RentCollectorLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._viewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(RentCollectorOffersItemRenderer.EVENT_PAYMENT,this.handleOpenPayment);
         this.component.addEventListener(RentCollectorOffersItemRenderer.EVENT_TREASURY,this.handleOpenTreasury);
         this.component.addEventListener(RentCollectorOffersItemRenderer.EVENT_PURCHASE,this.handlePurchase);
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(RentCollectorOffersItemRenderer.EVENT_PAYMENT,this.handleOpenPayment);
         this.component.removeEventListener(RentCollectorOffersItemRenderer.EVENT_TREASURY,this.handleOpenTreasury);
         this.component.removeEventListener(RentCollectorOffersItemRenderer.EVENT_PURCHASE,this.handlePurchase);
      }
      
      private function handleOpenPayment(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         if(param1.target is RentCollectorOffersItemRenderer)
         {
            if(RentCollectorOffersItemRenderer(param1.target).externalPackKey != "")
            {
               var _loc3_:String = RentCollectorOffersItemRenderer(param1.target).externalPackKey;
               sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,{
                  "category":CityTreasuryProxy.PAYMENT_CATEGORY_EXTERNAL,
                  "itemKey":"",
                  "deeplink":false
               });
            }
         }
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handlePurchase(param1:Event) : void
      {
         param1.stopPropagation();
         if(param1.target is RentCollectorOffersItemRenderer)
         {
            if(RentCollectorOffersItemRenderer(param1.target).assistConfigId != -1)
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               facade.sendNotification(ApplicationNotificationConstants.BUY_ASSIST,RentCollectorOffersItemRenderer(param1.target).assistConfigId);
            }
         }
         this.handleClose();
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               this.setData(this._viewProxy.rentCollectorOffers);
         }
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is ArrayCollection)
         {
            this.component.data = param1 as ArrayCollection;
         }
      }
      
      public function get component() : RentCollectorLayer
      {
         return super.viewComponent as RentCollectorLayer;
      }
   }
}

