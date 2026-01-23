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
      
      private var _boosterpackBookProxy:BoosterpackBookProxy;
      
      private var _component:BoosterpackSublevelDetail;
      
      private var _data:BoosterpackVo;
      
      private var _boosterType:String = BoosterpackBookProxy.SUBLEVEL_BOOSTER;
      
      public function BoosterpackSublevelDetailMediator(param1:Object)
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
      }
      
      private function handleNavigationClick(param1:Event) : void
      {
         var _loc2_:int = 0;
         switch(param1.type)
         {
            case BoosterpackDetail.SCROLL_RIGHT:
               _loc2_ = this._boosterpackBookProxy.getNextBoosterpackSlotId(this._data.slotId,this._boosterType);
               break;
            case BoosterpackDetail.SCROLL_LEFT:
               _loc2_ = this._boosterpackBookProxy.getPreviousBoosterpackSlotId(this._data.slotId,this._boosterType);
               break;
            default:
               return;
         }
         facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
            "container":this.container,
            "content":_loc2_,
            "type":this._boosterType
         });
      }
      
      private function handleBuyBoosterClick(param1:Event) : void
      {
         this._data.defaultCostUserStock -= this._data.defaultCostAmount;
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_BOOSTERPACK_BUY,{
            "booster":this._data,
            "rc":false
         });
      }
      
      private function prepareProxies() : void
      {
         this._boosterpackBookProxy = facade.retrieveProxy(BoosterpackBookProxy.NAME) as BoosterpackBookProxy;
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
      
      private function updateData() : void
      {
         var _loc1_:PlayerGoodsStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         var _loc2_:GoodObjectVo = _loc1_.getGoodByConfigId(this._data.defaultCostConfig.configId);
         this._data.defaultCostUserStock = _loc2_.playerStock;
         this._component.data = this._data;
         this._component.checkButtonStates();
      }
      
      private function setInitialValues() : void
      {
         if(!this._component)
         {
            this._component = new BoosterpackSublevelDetail();
         }
         this.updateData();
         this.container.contentGroup.addElement(this._component);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
               this.updateData();
         }
      }
   }
}

