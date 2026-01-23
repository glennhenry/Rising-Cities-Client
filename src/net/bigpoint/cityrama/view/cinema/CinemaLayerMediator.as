package net.bigpoint.cityrama.view.cinema
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaLayerVo;
   import net.bigpoint.cityrama.model.externalInterface.ExternalInterfaceProxy;
   import net.bigpoint.cityrama.view.cinema.ui.CinemaLayer;
   import net.bigpoint.cityrama.view.cinema.ui.CinemaVideoAvailableComponent;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CinemaLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CinemaLayerMediator";
      
      private var _cP:CinemaProxy;
      
      public function CinemaLayerMediator(param1:String, param2:Object)
      {
         super(NAME,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListener();
      }
      
      private function setupListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(CinemaVideoAvailableComponent.EVENT_PLAY_CLICKED,this.handlePlayVideo);
      }
      
      private function handlePlayVideo(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:ExternalInterfaceProxy = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
         _loc2_.openExternalCinema();
         this.handleClose();
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.CINEMA_DATA_CHANGED,ApplicationNotificationConstants.CINEMA_MAINTENANCE_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:Boolean = false;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.CINEMA_DATA_CHANGED:
               this.setData(this.cinemaProxy.cinemaLayerVo);
               break;
            case ApplicationNotificationConstants.CINEMA_MAINTENANCE_CHANGED:
               _loc2_ = Boolean(param1.getBody());
               if(_loc2_)
               {
                  this.handleClose();
               }
         }
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(CinemaVideoAvailableComponent.EVENT_PLAY_CLICKED,this.handlePlayVideo);
      }
      
      private function get component() : CinemaLayer
      {
         return super.viewComponent as CinemaLayer;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is CinemaLayerVo)
         {
            this.component.data = param1 as CinemaLayerVo;
         }
      }
      
      private function get cinemaProxy() : CinemaProxy
      {
         if(!this._cP)
         {
            this._cP = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
         }
         return this._cP;
      }
   }
}

