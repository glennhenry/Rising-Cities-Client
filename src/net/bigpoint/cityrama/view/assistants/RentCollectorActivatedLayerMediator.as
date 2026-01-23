package net.bigpoint.cityrama.view.assistants
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.assistants.AssistViewProxy;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorActivatedVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorActivatedLayer;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class RentCollectorActivatedLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "RentCollectorActivatedLayerMediator";
      
      private var _assiViewProxy:AssistViewProxy;
      
      public function RentCollectorActivatedLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._assiViewProxy = facade.retrieveProxy(AssistViewProxy.NAME) as AssistViewProxy;
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(RentCollectorActivatedLayer.EVENT_MORE_OFFER,this.handleMoreOffer);
      }
      
      private function handleMoreOffer(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         sendNotification(ApplicationNotificationConstants.OPEN_RENTCOLLECTOR_LAYER);
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(RentCollectorActivatedLayer.EVENT_MORE_OFFER,this.handleMoreOffer);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is RentCollectorActivatedVo)
         {
            this.component.data = param1 as RentCollectorActivatedVo;
         }
      }
      
      public function get component() : RentCollectorActivatedLayer
      {
         return super.viewComponent as RentCollectorActivatedLayer;
      }
   }
}

