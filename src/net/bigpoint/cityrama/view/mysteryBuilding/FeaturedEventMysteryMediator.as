package net.bigpoint.cityrama.view.mysteryBuilding
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedMysteryBuildingVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.featuredEvent.FeaturedEventLayerMediator;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventLayer;
   import net.bigpoint.cityrama.view.mysteryBuilding.components.ImprovedMysteryBuildingTab;
   import net.bigpoint.cityrama.view.mysteryBuilding.components.MysteryOutcomeRenderer;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class FeaturedEventMysteryMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FeaturedEventMysteryMediator";
      
      private var _component:ImprovedMysteryBuildingTab;
      
      private var _data:FeaturedMysteryBuildingVo;
      
      private var _fEP:FeaturedEventProxy;
      
      public function FeaturedEventMysteryMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      public function init() : void
      {
         if(!this.component)
         {
            this._component = new ImprovedMysteryBuildingTab();
         }
         if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
         {
            facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
         }
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
         this.setLayerData();
         this.container.contentGroup.addElement(this.component);
         this.addListener();
      }
      
      private function setLayerData() : void
      {
         this._data = this.featuredEventProxy.featuredMysteryBuildingVo;
         if(this._data)
         {
            this.component.data = this._data;
         }
         else
         {
            this.closeMainLayer();
         }
      }
      
      private function closeMainLayer() : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,FeaturedEventLayerMediator.NAME);
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(ImprovedMysteryBuildingTab.BUILD_NOW,this.handleBuild);
         this.component.addEventListener(ImprovedMysteryBuildingTab.BUY_PERMISSION,this.handleBuyPermission);
         this.component.addEventListener(ImprovedMysteryBuildingTab.GET_RC,this.handleGetRealCurrency);
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.handleShowUIInfoLayer);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.handleHideUIInfoLayer);
      }
      
      private function handleBuild(param1:Event) : void
      {
         if(this._data)
         {
            sendNotification(ApplicationNotificationConstants.BLUEPRINT_SELECTED,{"config":this._data.mysteryConfigPlayfieldItem});
         }
      }
      
      private function handleBuyPermission(param1:Event) : void
      {
         if(this._data)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELDITEM_BUY_PERMISSION,this._data.mysteryConfigPlayfieldItem.permissionConfigId);
         }
      }
      
      private function handleGetRealCurrency(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleHideUIInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function handleShowUIInfoLayer(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Point = null;
         if(param1.target is MysteryOutcomeRenderer)
         {
            _loc2_ = param1.target.localToGlobal(new Point());
            _loc2_.x += param1.target.width / 2;
            sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
               "cid":param1.cid,
               "lineId":0,
               "pt":_loc2_,
               "type":param1.callerType
            },NAME);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_PERMISSIONS_CHANGED,ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED:
            case ApplicationNotificationConstants.INVENTORY_PERMISSIONS_CHANGED:
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               this.setLayerData();
         }
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(ImprovedMysteryBuildingTab.BUILD_NOW,this.handleBuild);
         this.component.removeEventListener(ImprovedMysteryBuildingTab.BUY_PERMISSION,this.handleBuyPermission);
         this.component.removeEventListener(ImprovedMysteryBuildingTab.GET_RC,this.handleGetRealCurrency);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.handleShowUIInfoLayer);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.handleHideUIInfoLayer);
      }
      
      private function get container() : FeaturedEventLayer
      {
         return super.viewComponent as FeaturedEventLayer;
      }
      
      private function get component() : ImprovedMysteryBuildingTab
      {
         return this._component as ImprovedMysteryBuildingTab;
      }
      
      private function get featuredEventProxy() : FeaturedEventProxy
      {
         if(!this._fEP)
         {
            this._fEP = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
         }
         return this._fEP;
      }
   }
}

