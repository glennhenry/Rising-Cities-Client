package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.professionals.ProfessionalLevelUpLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ProfessionalLevelUpMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProfessionalLevelUpMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProfessionalLevelUpMiniLayerMediator";
      
      private var _data:ProfessionalLevelUpLayerVo;
      
      public function ProfessionalLevelUpMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function listNotificationInterests() : Array
      {
         return super.listNotificationInterests();
      }
      
      override public function onRegister() : void
      {
         this.component.addEventListener(Event.CLOSE,this.finalCall);
         this.component.addEventListener(ProfessionalLevelUpMiniLayer.EVENT_ACCEPT,this.accept);
         this.component.addEventListener(ProfessionalLevelUpMiniLayer.EVENT_DECLINE,this.decline);
      }
      
      private function accept(param1:Event) : void
      {
         var _loc2_:Boolean = this._data.possibleSpecialisations.length == 0 ? false : true;
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_LEVEL_UP,{
            "id":this._data.profId,
            "accept":_loc2_
         });
         this.finalCall(param1);
      }
      
      private function decline(param1:Event) : void
      {
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_LEVEL_UP,{
            "id":this._data.profId,
            "accept":false
         });
         this.finalCall(param1);
      }
      
      private function finalCall(param1:Event) : void
      {
         if(param1)
         {
            if(param1.type == ProfessionalLevelUpMiniLayer.EVENT_ACCEPT || param1.type == ProfessionalLevelUpMiniLayer.EVENT_DECLINE)
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            }
         }
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.removeEventListener(ProfessionalLevelUpMiniLayer.EVENT_ACCEPT,this.accept);
         this.component.removeEventListener(ProfessionalLevelUpMiniLayer.EVENT_DECLINE,this.decline);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         super.handleNotification(param1);
      }
      
      public function setData(param1:Object) : void
      {
         this._data = param1 as ProfessionalLevelUpLayerVo;
         this.component.data = this._data;
      }
      
      private function get component() : ProfessionalLevelUpMiniLayer
      {
         return super.viewComponent as ProfessionalLevelUpMiniLayer;
      }
   }
}

