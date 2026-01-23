package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class DemolitionQueryMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "DemolitionQueryMiniLayerMediator";
      
      private var _billboardObject:BillboardObject;
      
      public function DemolitionQueryMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(QueryMiniLayer.ACCEPT_CLICKED,this.handleClose);
         this.component.addEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.onConfirmDemolition);
         this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
      }
      
      private function onConfirmDemolition(param1:Event) : void
      {
         param1.stopPropagation();
         this._billboardObject.billboardObjectVo.userInteractionLocked = true;
         if(this._billboardObject.billboardObjectVo.configPlayfieldItemVo.destructionPhases.length > 0)
         {
            this._billboardObject.billboardObjectVo.informationFloaterPhase = this._billboardObject.billboardObjectVo.configPlayfieldItemVo.destructionPhases[0];
            sendNotification(ApplicationNotificationConstants.SHOW_FLOATER_ON_DESTROY,this._billboardObject);
         }
         else if(this._billboardObject is DecorationFieldObject)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_DELETE,DecorationFieldObjectVo(this._billboardObject.billboardObjectVo).decorationVo.id);
         }
         else
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_DELETE,this._billboardObject.billboardObjectVo.buildingDTO.id);
         }
         this.handleClose();
      }
      
      private function handleClose(param1:Event = null) : void
      {
         if(param1)
         {
            param1.stopPropagation();
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
         this.component.removeEventListener(QueryMiniLayer.ACCEPT_CLICKED,this.handleClose);
         this.component.removeEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.onConfirmDemolition);
         this.component.removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is BillboardObject)
         {
            this._billboardObject = BillboardObject(param1);
            this._billboardObject.billboardObjectVo.userInteractionLocked = false;
            this.setLayerData();
         }
      }
      
      private function setLayerData() : void
      {
         var _loc2_:QueryMiniLayerVo = null;
         var _loc1_:Boolean = this._billboardObject.billboardObjectVo.configPlayfieldItemVo.destroyable;
         var _loc3_:String = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.title");
         if(_loc1_)
         {
            _loc2_ = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
            _loc2_.layerText = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.flavour.improvements");
            _loc2_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.buttonOk");
            _loc2_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.buttonAbort");
         }
         else
         {
            _loc2_ = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_ACCEPT);
            _loc2_.layerText = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.flavour.indestructible");
            _loc2_.acceptBtnLabel = LocaUtils.getString("rcl.miniLayer.demolition","rcl.miniLayer.demolition.button.indestructible.capital");
         }
         _loc2_.title = _loc3_;
         this.component.data = _loc2_;
      }
   }
}

