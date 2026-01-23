package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class RemoveInventoryItemMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "RemoveInventoryItemMiniLayerMediator";
      
      private var _data:PlayfieldItemInventoryListItemVo;
      
      public function RemoveInventoryItemMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setLayerData();
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.onConfirm);
         this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
      }
      
      private function setLayerData() : void
      {
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         _loc1_.title = LocaUtils.getString("rcl.miniLayer.inventory","rcl.miniLayer.inventory.title.capital");
         _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.inventory","rcl.miniLayer.inventory.flavour.specifics");
         _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.inventory","rcl.miniLayer.inventory.buttonOk");
         _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.inventory","rcl.miniLayer.inventory.buttonAbort");
         this.component.data = _loc1_;
      }
      
      private function onConfirm(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         if(this._data)
         {
            if(this._data.item.itemId != -1)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_REMOVE_ITEM_FROM_INVENTORY,{
                  "itemId":this._data.item.itemId,
                  "bagId":this._data.configBagId
               });
            }
         }
         this.handleClose();
      }
      
      private function handleClose(param1:Event = null) : void
      {
         if(param1)
         {
            param1.stopPropagation();
            if(param1.type == QueryMiniLayer.DENY_CLICKED)
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            }
         }
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.onConfirm);
         this.component.removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is PlayfieldItemInventoryListItemVo)
         {
            this._data = param1 as PlayfieldItemInventoryListItemVo;
         }
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
   }
}

