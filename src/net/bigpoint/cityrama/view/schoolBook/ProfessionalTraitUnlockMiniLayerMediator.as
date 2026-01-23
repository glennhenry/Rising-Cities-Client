package net.bigpoint.cityrama.view.schoolBook
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.schoolBook.ui.ProfessionalTraitUnlockMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProfessionalTraitUnlockMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProfessionalLevelUpMiniLayerMediator";
      
      private var _data:ProfessionalTraitUnlockMiniLayerVo;
      
      public function ProfessionalTraitUnlockMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this.component.addEventListener(ProfessionalTraitUnlockMiniLayer.EVENT_ACCEPT,this.handleAccept);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function handleAccept(param1:Event) : void
      {
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         this.finalCall();
      }
      
      private function finalCall(param1:Event = null) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.removeEventListener(ProfessionalTraitUnlockMiniLayer.EVENT_ACCEPT,this.finalCall);
         sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      private function get component() : ProfessionalTraitUnlockMiniLayer
      {
         return super.viewComponent as ProfessionalTraitUnlockMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         this._data = param1 as ProfessionalTraitUnlockMiniLayerVo;
         this.component.data = this._data;
      }
   }
}

