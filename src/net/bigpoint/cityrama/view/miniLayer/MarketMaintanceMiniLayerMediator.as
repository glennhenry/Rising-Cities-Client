package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MarketMaintanceMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MarketMaintanceMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "MarketMaintanceMiniLayerMediator";
      
      private var _soundProxy:SoundProxy;
      
      public function MarketMaintanceMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      private function finalCall(param1:Event = null) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.acceptButton.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         this.resetMode();
      }
      
      override public function onRegister() : void
      {
         this.component.acceptButton.addEventListener(MouseEvent.CLICK,this.handleButtonClick);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function handleButtonClick(param1:MouseEvent) : void
      {
         this._soundProxy.playButtonClick();
         this.finalCall();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.component.acceptButton.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
         this.resetMode();
      }
      
      private function resetMode() : void
      {
         var _loc1_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         _loc1_.mode = ApplicationModeProxy.MODE_NORMAL;
      }
      
      public function get component() : MarketMaintanceMiniLayer
      {
         return super.viewComponent as MarketMaintanceMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
      }
   }
}

