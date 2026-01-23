package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ProfessionalUnspentSkillpointsMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProfessionalUnspentSkillpointsMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProfessionalUnspentSkillpointsMiniLayerMediator";
      
      private var _soundProxy:SoundProxy;
      
      public function ProfessionalUnspentSkillpointsMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      override public function onRegister() : void
      {
         this.component.acceptButton.addEventListener(MouseEvent.CLICK,this.handleButtonClick);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.acceptButton.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
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
      }
      
      public function get component() : ProfessionalUnspentSkillpointsMiniLayer
      {
         return super.viewComponent as ProfessionalUnspentSkillpointsMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
      }
   }
}

