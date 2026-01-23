package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyTimeUpMiniLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyTimeUpMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyTimeUpMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EmergencyTimeUpMiniLayerMediator";
      
      public function EmergencyTimeUpMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener("buttonClose",this.finalCall);
      }
      
      private function finalCall(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         this.handleClose(null);
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is EmergencyTimeUpMiniLayerVo)
         {
            this.component.setData(param1 as EmergencyTimeUpMiniLayerVo);
         }
      }
      
      public function get component() : EmergencyTimeUpMiniLayer
      {
         return super.viewComponent as EmergencyTimeUpMiniLayer;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
      }
   }
}

