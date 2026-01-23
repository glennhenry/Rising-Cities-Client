package net.bigpoint.cityrama.view.cityTreasury
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackUpsellingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentUpsellDTO;
   import net.bigpoint.cityrama.view.cityTreasury.event.CityTreasuryEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryLayer;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryTabView;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   
   public class CityTreasuryPackTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "CityTreasuryPackTabMediator";
      
      private static const UI_MEDIATOR_NAME:String = UserInterfaceInfoLayerMediator.NAME + NAME;
      
      private var _component:CityTreasuryTabView;
      
      private var _lineContainer:Group;
      
      private var _cTP:CityTreasuryProxy;
      
      public function CityTreasuryPackTabMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function init(param1:int) : void
      {
         if(!this.component)
         {
            this._component = new CityTreasuryTabView();
         }
         this.setLayerData(param1);
         this.container.contentGroup.addElement(this.component);
         this.addListener();
      }
      
      private function setLayerData(param1:int) : void
      {
         this.component.data = this.treasuryProxy.getCityTreasuryContentVo(CityTreasuryTabProxy.PACKS_TAB_INDEX,param1);
         this.createUIInfoLayer();
      }
      
      private function createUIInfoLayer() : void
      {
         facade.removeMediator(UI_MEDIATOR_NAME);
         var _loc1_:Vector.<UiInfolayerAlignmentLine> = new Vector.<UiInfolayerAlignmentLine>(0);
         if(this._lineContainer)
         {
            this._lineContainer.removeAllElements();
         }
         this._lineContainer = new Group();
         this._lineContainer.percentHeight = 100;
         this._lineContainer.percentWidth = 100;
         this.component.addElement(this._lineContainer);
         var _loc2_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc2_.setProperties(260,250,440,UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP,0);
         _loc1_.push(_loc2_);
         this._lineContainer.addElement(_loc2_);
         facade.removeMediator(UI_MEDIATOR_NAME);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(_loc1_,this));
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,this.handleButtonClicked);
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.showUIInfoLayer);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.hideUIInfoLayer);
      }
      
      private function handleButtonClicked(param1:CityTreasuryEvent) : void
      {
         var _loc4_:PlayerProxy = null;
         var _loc5_:TimerProxy = null;
         var _loc6_:PlayerPaymentUpsellDTO = null;
         var _loc7_:ConfigPaymentPackUpsellingDTO = null;
         param1.stopPropagation();
         var _loc2_:String = "";
         var _loc3_:Boolean = false;
         if(param1.selectedPack)
         {
            _loc2_ = param1.selectedPack.key;
            _loc4_ = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
            _loc5_ = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            _loc6_ = _loc4_.player.playerPaymentPackInfo.upsellPaymentPack;
            if((_loc6_) && _loc6_.id == param1.selectedPack.id && _loc5_.currentTimeStamp >= _loc6_.startTime && _loc5_.currentTimeStamp <= _loc6_.startTime + _loc6_.duration)
            {
               for each(_loc7_ in param1.selectedPack.upsellPackages)
               {
                  if(_loc7_.category == _loc6_.type)
                  {
                     _loc2_ = _loc7_.key;
                     _loc3_ = true;
                     break;
                  }
               }
            }
         }
         sendNotification(ApplicationNotificationConstants.OPEN_PAYMENT_WITH_ITEM_BYJSCOMMAND,{
            "category":CityTreasuryProxy.PAYMENT_CATEGORY_STARTER,
            "itemKey":_loc2_,
            "deeplink":_loc3_
         });
      }
      
      private function showUIInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":0,
            "pt":_loc3_,
            "type":param1.callerType
         },this.getMediatorName());
      }
      
      private function hideUIInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(CityTreasuryEvent.TREASURY_BUTTON_CLICKED,this.handleButtonClicked);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.showUIInfoLayer);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.hideUIInfoLayer);
      }
      
      private function get container() : CityTreasuryLayer
      {
         return super.viewComponent as CityTreasuryLayer;
      }
      
      private function get component() : CityTreasuryTabView
      {
         return this._component as CityTreasuryTabView;
      }
      
      private function get treasuryProxy() : CityTreasuryProxy
      {
         if(!this._cTP)
         {
            this._cTP = facade.retrieveProxy(CityTreasuryProxy.NAME) as CityTreasuryProxy;
         }
         return this._cTP;
      }
   }
}

