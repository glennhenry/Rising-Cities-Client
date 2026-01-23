package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cinema.vo.CinemaRewardMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CinemaRewardMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CinemaRewardMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CinemaRewardMiniLayerMediator";
      
      public function CinemaRewardMiniLayerMediator(param1:String, param2:Object)
      {
         super(NAME,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(CinemaRewardMiniLayer.EVENT_WATCH_MORE,this.handleWatchMore);
      }
      
      private function handleWatchMore(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CINEMA_LAYER);
         this.handleClose();
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is CinemaRewardMiniLayerVo)
         {
            this.component.data = CinemaRewardMiniLayerVo(param1);
         }
      }
      
      private function get component() : CinemaRewardMiniLayer
      {
         return super.viewComponent as CinemaRewardMiniLayer;
      }
   }
}

