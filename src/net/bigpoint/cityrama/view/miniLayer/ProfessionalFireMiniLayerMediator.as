package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProfessionalFireMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProfessionalFireMiniLayerMediator";
      
      private var _data:Number;
      
      public function ProfessionalFireMiniLayerMediator(param1:String, param2:Object)
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
         this.component.addEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.onConfirm);
         this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
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
         var _loc2_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_FIRE,{
            "pid":this._data,
            "bid":_loc2_.getProfessionalById(this._data).buildingId
         });
         this.handleClose();
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is Number)
         {
            this._data = param1 as Number;
            this.setLayerData();
         }
      }
      
      private function setLayerData() : void
      {
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         _loc1_.title = LocaUtils.getString("rcl.miniLayer.fireprofressional","rcl.miniLayer.fireprofressional.title");
         _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.fireprofressional","rcl.miniLayer.fireprofressional.flavour");
         _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.fireprofressional","rcl.miniLayer.fireprofressional.buttonOk");
         _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.fireprofressional","rcl.miniLayer.fireprofressional.buttonAbort");
         this.component.data = _loc1_;
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
   }
}

