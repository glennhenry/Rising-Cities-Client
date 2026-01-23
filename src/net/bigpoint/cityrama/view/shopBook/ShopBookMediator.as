package net.bigpoint.cityrama.view.shopBook
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.ShopDetailViewVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ShopStockGoodVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.UpgradeProgressComponent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.shopBook.ui.components.NumericMaxStepperComponent;
   import net.bigpoint.cityrama.view.shopBook.ui.components.ShopPopup;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ShopBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ShopBookMediator";
      
      private var _buildingData:ShopDetailViewVo;
      
      private var _soundProxy:SoundProxy;
      
      public function ShopBookMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this.addEventListener();
      }
      
      private function addEventListener() : void
      {
         this.component.addEventListener(ShopPopup.TO_STORE,this.handleToStore);
         this.component.addEventListener(ShopPopup.TO_STORAGE,this.handleToStorage);
         this.component.addEventListener(NumericMaxStepperComponent.MAX_MINUS_CLICKED,this.handleMaxMinusClicked);
         this.component.addEventListener(NumericMaxStepperComponent.MAX_PLUS_CLICKED,this.handleMaxPlusClicked);
         this.component.addEventListener(UpgradeProgressComponent.BUY_DD,this.handleBuyDD);
         this.component.addEventListener(UpgradeProgressComponent.BUY_UPGRADE,this.handleBuyUpgrade);
         this.component.addEventListener(UpgradeProgressComponent.UPGRADE_BUILDING,this.handleUpgradeBuilding);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
      }
      
      private function removeEventListener() : void
      {
         this.component.removeEventListener(UpgradeProgressComponent.BUY_UPGRADE,this.handleBuyUpgrade);
         this.component.removeEventListener(UpgradeProgressComponent.BUY_DD,this.handleBuyDD);
         this.component.removeEventListener(UpgradeProgressComponent.UPGRADE_BUILDING,this.handleUpgradeBuilding);
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(ShopPopup.TO_STORE,this.handleToStore);
         this.component.removeEventListener(ShopPopup.TO_STORAGE,this.handleToStorage);
         this.component.removeEventListener(NumericMaxStepperComponent.MAX_MINUS_CLICKED,this.handleMaxMinusClicked);
         this.component.removeEventListener(NumericMaxStepperComponent.MAX_PLUS_CLICKED,this.handleMaxPlusClicked);
      }
      
      private function handleUpgradeBuilding(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:BillboardObject = _loc2_.getBillboardById(this._buildingData.buildingID) as BillboardObject;
         facade.sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc3_);
      }
      
      private function handleBuyDD(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      private function handleBuyUpgrade(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._buildingData.buildingID);
         this.handleClose();
      }
      
      private function handleMaxMinusClicked(param1:Event) : void
      {
         param1.stopPropagation();
         this._soundProxy.playButtonClick();
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_UNSTACK_NEED,{
            "amount":this.getMaxMinusAmount(),
            "good":this.component.good,
            "building":this._buildingData
         });
         this.checkCloseLayerAutomatically();
      }
      
      private function getMaxMinusAmount() : int
      {
         var _loc1_:ShopStockGoodVo = null;
         for each(_loc1_ in this._buildingData.storeStock)
         {
            if(_loc1_.goodVo.config.id == this.component.good.config.id)
            {
               return _loc1_.stockCurrent;
            }
         }
         return 0;
      }
      
      private function handleMaxPlusClicked(param1:Event) : void
      {
         param1.stopPropagation();
         this._soundProxy.playButtonClick();
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_STACK_NEED,{
            "amount":this.getMaxPlusAmount(),
            "good":this.component.good,
            "building":this._buildingData
         });
         this.checkCloseLayerAutomatically();
      }
      
      private function getMaxPlusAmount() : int
      {
         var _loc2_:ShopStockGoodVo = null;
         var _loc3_:int = 0;
         var _loc4_:GoodObjectVo = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this._buildingData.storeStock)
         {
            if(_loc2_.goodVo.config.id == this.component.good.config.id)
            {
               _loc1_ = _loc2_.stockMax - _loc2_.stockCurrent;
               break;
            }
         }
         _loc3_ = 0;
         for each(_loc4_ in this._buildingData.storageInterests)
         {
            if(_loc4_.config.id == this.component.good.config.id)
            {
               _loc3_ = _loc4_.playerStock;
               break;
            }
         }
         if(_loc3_ >= _loc1_)
         {
            return _loc1_;
         }
         return _loc3_;
      }
      
      private function handleToStore(param1:Event) : void
      {
         this._soundProxy.playButtonClick();
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_STACK_NEED,{
            "amount":this.component.amount,
            "good":this.component.good,
            "building":this._buildingData
         });
      }
      
      private function handleToStorage(param1:Event) : void
      {
         this._soundProxy.playButtonClick();
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_UNSTACK_NEED,{
            "amount":this.component.amount,
            "good":this.component.good,
            "building":this._buildingData
         });
      }
      
      private function checkCloseLayerAutomatically() : void
      {
         if(this._buildingData.storageInterests.length < 2)
         {
            TweenMax.delayedCall(0.8,this.handleClose);
         }
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
         sendNotification(VirtualTaskNotificationInterest.SHOPLAYER_OPENED);
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
         TweenMax.killDelayedCallsTo(this.handleClose);
         this.removeEventListener();
         super.onRemove();
         sendNotification(VirtualTaskNotificationInterest.SHOPLAYER_CLOSED);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.NEED_BUILDING_DATA_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:MainLayerProxy = null;
         var _loc3_:BillboardObject = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.NEED_BUILDING_DATA_CHANGED:
               _loc2_ = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
               _loc3_ = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME)).getBillboardById(Number(this._buildingData.buildingID));
               this.setData(_loc2_.getShopDetailViewVo(ShopFieldObject(_loc3_).shopFieldObjectVo));
         }
      }
      
      public function setData(param1:Object) : void
      {
         this._buildingData = param1 as ShopDetailViewVo;
         this.component.data = this._buildingData;
      }
      
      public function get component() : ShopPopup
      {
         return super.viewComponent as ShopPopup;
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":0,
            "pt":_loc3_,
            "type":param1.callerType
         },NAME);
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
   }
}

