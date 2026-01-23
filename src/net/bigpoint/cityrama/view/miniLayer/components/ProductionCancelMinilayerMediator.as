package net.bigpoint.cityrama.view.miniLayer.components
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProductionCancelMinilayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProductionCancelMinilayerMediator";
      
      private var _pfoVo:ProductionFieldObjectVo;
      
      public function ProductionCancelMinilayerMediator(param1:String, param2:Object)
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
         _loc1_.title = LocaUtils.getString("rcl.miniLayer.productioncancel","rcl.miniLayer.productioncancel.title");
         _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.productioncancel","rcl.miniLayer.productioncancel.flavour");
         _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.productioncancel","rcl.miniLayer.productioncancel.buttonOk");
         _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.productioncancel","rcl.miniLayer.productioncancel.buttonAbort");
         this.component.data = _loc1_;
      }
      
      private function handleClose(param1:Event = null) : void
      {
         if(param1)
         {
            param1.stopPropagation();
         }
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      private function onConfirm(param1:Event) : void
      {
         param1.stopPropagation();
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_CANCEL_PRODUCTION,this._pfoVo);
         this.handleClose();
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
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is ProductionFieldObjectVo)
         {
            this._pfoVo = ProductionFieldObjectVo(param1);
         }
      }
   }
}

