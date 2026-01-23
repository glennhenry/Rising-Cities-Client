package net.bigpoint.cityrama.view.homeImprovement.improvementStore
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementStoreProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementBoosterpackVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.ImprovementStoreDataGrid;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.vo.ImprovementStoreDataGridLayerVo;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementStoreListMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ImprovementStoreListMediator";
      
      private static const UI_MEDIATOR_NAME:String = UserInterfaceInfoLayerMediator.NAME + NAME;
      
      private var _component:ImprovementStoreDataGrid;
      
      private var _data:ImprovementStoreDataGridLayerVo;
      
      private var _featureProxy:FeatureProxy;
      
      private var _intervalId:uint;
      
      public function ImprovementStoreListMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
         if(this._component && this.container.contentGroup && this._component.parent == this.container.contentGroup)
         {
            this.container.contentGroup.removeElement(this._component);
         }
      }
      
      public function removeRelevantListener() : void
      {
         this.removeListener();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc3_:ImprovementStoreDataGridLayerVo = new ImprovementStoreDataGridLayerVo();
         _loc3_.improvementPacks = this._data.improvementPacks;
         _loc3_.realCurrency = this._data.realCurrency;
         _loc3_.virtualCurrency = this._data.virtualCurrency;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               _loc3_.realCurrency = _loc2_.realCurrency;
               break;
            case ApplicationNotificationConstants.INGAMECURRENCY_CHANGED:
               _loc3_.virtualCurrency = _loc2_.ingameCurrency;
         }
         this._component.data = _loc3_;
         this._component.visible = true;
      }
      
      private function setInitialValues() : void
      {
         if(!this._component)
         {
            this._component = new ImprovementStoreDataGrid();
         }
         this._component.data = this._data;
         this._component.visible = true;
         if(!this._featureProxy.improvementFeatureUnlocked)
         {
            this._component.locked(this._featureProxy.improvementFeatureUnlockLevel);
         }
         this.container.contentGroup.addElement(this._component);
      }
      
      private function setupListener() : void
      {
         this._component.addEventListener(ImprovementStoreDataGrid.BUY_PACK,this.handleBuy);
         this._component.addEventListener(ImprovementStoreDataGrid.OPEN_CURRENCY_REAL,this.handleCurrencyRebuy);
         this._component.addEventListener(ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL,this.handleCurrencyRebuy);
         facade.removeMediator(UI_MEDIATOR_NAME);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLine],this));
         this._component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this._component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
      }
      
      private function handleBuy(param1:Event) : void
      {
         param1.stopPropagation();
         this._component.visible = false;
         var _loc2_:ImprovementStoreProxy = facade.retrieveProxy(ImprovementStoreProxy.NAME) as ImprovementStoreProxy;
         var _loc3_:ImprovementBoosterpackVo = this._component.selectedItem;
         _loc2_.boughtImprovementPackVo = _loc3_;
         var _loc4_:* = _loc3_.currencyType == ServerResConst.RESOURCE_REALCURRENCY;
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_IMPROVEMENT_BOOSTER_BUY,{
            "boosterId":_loc3_.config.id,
            "real":_loc4_
         });
         this.startDisableBuyButtonTimer();
         if(_loc4_)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         }
      }
      
      private function handleCurrencyRebuy(param1:Event) : void
      {
         param1.stopPropagation();
         if(param1.type == ImprovementStoreDataGrid.OPEN_CURRENCY_REAL)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         }
         else if(param1.type == ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
         }
      }
      
      private function startDisableBuyButtonTimer() : void
      {
         this._component.enableBuyButton(false);
         this._intervalId = setInterval(this.enableBuyButton,1000);
      }
      
      private function enableBuyButton() : void
      {
         clearInterval(this._intervalId);
         if(this._component)
         {
            this._component.enableBuyButton(true);
         }
      }
      
      private function removeListener() : void
      {
         this._component.removeEventListener(ImprovementStoreDataGrid.BUY_PACK,this.handleBuy);
         this._component.addEventListener(ImprovementStoreDataGrid.OPEN_CURRENCY_REAL,this.handleCurrencyRebuy);
         this._component.addEventListener(ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL,this.handleCurrencyRebuy);
         this._component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this._component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
            "pt":_loc3_,
            "type":UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT_BOOSTER
         },NAME);
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      public function setData(param1:Object) : void
      {
         var _loc2_:PlayerResourceProxy = null;
         if(param1 is Vector.<ImprovementBoosterpackVo>)
         {
            this._data = new ImprovementStoreDataGridLayerVo();
            this._data.improvementPacks = param1 as Vector.<ImprovementBoosterpackVo>;
            _loc2_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
            this._data.realCurrency = _loc2_.realCurrency;
            this._data.virtualCurrency = _loc2_.ingameCurrency;
            this.setInitialValues();
            this.setupListener();
         }
      }
      
      public function get container() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      override public function onRegister() : void
      {
         this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
      }
   }
}

