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
      
      private var _boosterpackBookProxy:BoosterpackBookProxy;
      
      private var _component:BoosterpackDetail;
      
      private var _data:BoosterpackVo;
      
      private var _intervalId:uint;
      
      public function BoosterpackDetailMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.prepareProxies();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListeners();
         if(this._component && this.container.contentGroup && this._component.parent == this.container.contentGroup)
         {
            this.container.contentGroup.removeElement(this._component);
         }
         this.enableBuyButton();
      }
      
      private function removeListeners() : void
      {
         if(this._component == null)
         {
            return;
         }
         this._component.removeEventListener(BoosterpackDetail.SCROLL_RIGHT,this.handleNavigationClick);
         this._component.removeEventListener(BoosterpackDetail.SCROLL_LEFT,this.handleNavigationClick);
         this._component.removeEventListener(BoosterpackDetail.BUY_BOOSTER_GOOD,this.handleBuyBoosterClick);
         this._component.removeEventListener(BoosterpackDetail.BUY_BOOSTER_RC,this.handleBuyBoosterClick);
         this._component.removeEventListener(BoosterpackDetail.OPEN_TREASURY,this.handleOpenTreasury);
      }
      
      private function setupListeners() : void
      {
         if(this._component == null)
         {
            return;
         }
         this._component.addEventListener(BoosterpackDetail.SCROLL_RIGHT,this.handleNavigationClick);
         this._component.addEventListener(BoosterpackDetail.SCROLL_LEFT,this.handleNavigationClick);
         this._component.addEventListener(BoosterpackDetail.BUY_BOOSTER_GOOD,this.handleBuyBoosterClick);
         this._component.addEventListener(BoosterpackDetail.BUY_BOOSTER_RC,this.handleBuyBoosterClick);
         this._component.addEventListener(BoosterpackDetail.OPEN_TREASURY,this.handleOpenTreasury);
      }
      
      private function prepareProxies() : void
      {
         this._boosterpackBookProxy = facade.retrieveProxy(BoosterpackBookProxy.NAME) as BoosterpackBookProxy;
      }
      
      private function handleBuyBoosterClick(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         switch(param1.type)
         {
            case BoosterpackDetail.BUY_BOOSTER_GOOD:
               this._data.defaultCostUserStock -= this._data.defaultCostAmount;
               break;
            case BoosterpackDetail.BUY_BOOSTER_RC:
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
               _loc2_ = true;
               this._data.realCurrencyUserStock -= this._data.realCurrencyCostAmount;
         }
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_BOOSTERPACK_BUY,{
            "booster":this._data,
            "rc":_loc2_
         });
         sendNotification(ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_IN);
         this.startDisableBuyButtonTimer();
      }
      
      private function startDisableBuyButtonTimer() : void
      {
         this._component.goodBuyButton.enabled = false;
         this._intervalId = setInterval(this.enableBuyButton,1000);
      }
      
      private function enableBuyButton() : void
      {
         clearInterval(this._intervalId);
         if(this._component)
         {
            this._component.goodBuyButton.enabled = this._data.userCanAffordGoodPrice;
         }
      }
      
      private function handleNavigationClick(param1:Event) : void
      {
         var _loc2_:int = 0;
         switch(param1.type)
         {
            case BoosterpackDetail.SCROLL_RIGHT:
               _loc2_ = this._boosterpackBookProxy.getNextBoosterpackSlotId(this._data.slotId);
               break;
            case BoosterpackDetail.SCROLL_LEFT:
               _loc2_ = this._boosterpackBookProxy.getPreviousBoosterpackSlotId(this._data.slotId);
               break;
            default:
               return;
         }
         facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
            "container":this.container,
            "content":_loc2_
         });
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function setInitialValues() : void
      {
         if(!this._component)
         {
            this._component = new BoosterpackDetail();
         }
         this._component.data = this._data;
         this.container.contentGroup.addElement(this._component);
      }
      
      public function get container() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is BoosterpackVo)
         {
            this._data = param1 as BoosterpackVo;
            this.setInitialValues();
            this.setupListeners();
         }
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
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               this.updateData(false);
               break;
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
               this.updateData(true);
         }
      }
      
      private function updateData(param1:Boolean) : void
      {
         var _loc2_:PlayerGoodsStockProxy = null;
         var _loc3_:PlayerResourceProxy = null;
         if(param1)
         {
            _loc2_ = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
            _loc2_.getGoodByConfigId(this._data.defaultCostConfig.configId);
            this._data.defaultCostUserStock = _loc2_.getGoodByConfigId(this._data.defaultCostConfig.configId).playerStock;
         }
         else
         {
            _loc3_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
            this._data.realCurrencyUserStock = _loc3_.realCurrency;
         }
         this._component.data = this._data;
         this._component.updateData();
      }
   }
}

