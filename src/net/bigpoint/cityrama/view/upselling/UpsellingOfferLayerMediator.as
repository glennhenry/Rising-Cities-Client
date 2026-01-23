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
      
      private var _data:UpsellingOfferLayerVo;
      
      public function UpsellingOfferLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is UpsellingOfferLayerVo)
         {
            this._data = param1 as UpsellingOfferLayerVo;
            this.component.data = this._data;
         }
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
         this.component.addEventListener(UpsellingOfferLayer.SHOW_OFFER,this.onHandleShowOffer);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function removeListeners() : void
      {
         this.component.removeEventListener(UpsellingOfferLayer.SHOW_OFFER,this.onHandleShowOffer);
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function get component() : UpsellingOfferLayer
      {
         return super.viewComponent as UpsellingOfferLayer;
      }
      
      private function onHandleShowOffer(param1:Event) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:ConfigTagDTO = null;
         var _loc2_:Object = new Object();
         var _loc3_:CityTreasuryProxy = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         for each(_loc7_ in this._data.packConfig.configTags)
         {
            switch(_loc7_.tagName)
            {
               case ServerTagConstants.CLIENT_RESOURCE_REBUY_PACK:
                  _loc4_ = CityTreasuryTabProxy.CURRENCY_TAB_INDEX;
                  _loc5_ = 0;
                  _loc6_ = _loc3_.getIndexOfPaymentPack(this._data.packConfig);
                  break;
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STARTER:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_STUDENT:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_PRODUCTION:
               case ServerTagConstants.CLIENT_PAYMENT_PACK_FIRST_AID:
                  _loc4_ = CityTreasuryTabProxy.PACKS_TAB_INDEX;
                  _loc5_ = int(CityTreasuryProxy.starterPackCategories.indexOf(_loc7_.tagName));
                  _loc6_ = -1;
            }
         }
         _loc2_.index = _loc4_;
         _loc2_.cat = _loc5_;
         _loc2_.pack = _loc6_;
         sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY,_loc2_);
         this.finalCall();
      }
   }
}

