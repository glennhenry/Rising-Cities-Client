package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MoveBlockedByEmergencyMiniLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "MoveBlockedByEmergencyMiniLayerMediator";
      
      public function MoveBlockedByEmergencyMiniLayerMediator(param1:String, param2:Object)
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
         this.component.addEventListener(QueryMiniLayer.ACCEPT_CLICKED,this.handleClose);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         if(param1)
         {
            param1.stopPropagation();
         }
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      private function setLayerData() : void
      {
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_ACCEPT);
         _loc1_.title = LocaUtils.getString("rcl.miniLayer.moveBlockedByEmergency","rcl.miniLayer.moveBlockedByEmergency.title.capital");
         _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.moveBlockedByEmergency","rcl.miniLayer.moveBlockedByEmergency.flavourText");
         _loc1_.acceptBtnLabel = LocaUtils.getString("rcl.miniLayer.moveBlockedByEmergency","rcl.miniLayer.moveBlockedByEmergency.button.capital");
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
         this.component.removeEventListener(QueryMiniLayer.ACCEPT_CLICKED,this.handleClose);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
   }
}

