package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.EventStreamProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class LogoutMiniLayerMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "LogoutMiniLayerMediator";
      
      public function LogoutMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setLayerData();
         this.addListener();
      }
      
      private function setLayerData() : void
      {
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         _loc1_.title = LocaUtils.getString("rcl.miniLayer.logout","rcl.miniLayer.logout.title");
         _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.logout","rcl.miniLayer.logout.flavour");
         _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.logout","rcl.miniLayer.logout.buttonOk");
         _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.logout","rcl.miniLayer.logout.buttonAbort");
         this.component.data = _loc1_;
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.onConfirmLogout);
         this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
      }
      
      private function onConfirmLogout(param1:Event) : void
      {
         EventStreamProxy(facade.retrieveProxy(EventStreamProxy.NAME)).onClientLogout();
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.APPLICATION_LOGOUT);
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
         this.component.removeEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.onConfirmLogout);
         this.component.removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
   }
}

