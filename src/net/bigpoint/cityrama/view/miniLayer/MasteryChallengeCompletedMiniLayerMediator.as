package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.mastery.MasteryChallengeCompletedMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MasteryChallengeCompletedMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MasteryChallengeCompletedMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "MasteryChallengeCompletedMiniLayerMediator";
      
      private var _data:MasteryChallengeCompletedMiniLayerVo;
      
      public function MasteryChallengeCompletedMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function handleClose(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         sendNotification(ApplicationNotificationConstants.RESIDENTIAL_BUILDING_STATE_CHANGED);
      }
      
      private function get component() : MasteryChallengeCompletedMiniLayer
      {
         return super.viewComponent as MasteryChallengeCompletedMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is MasteryChallengeCompletedMiniLayerVo)
         {
            this._data = param1 as MasteryChallengeCompletedMiniLayerVo;
            this.setComponentData();
         }
      }
      
      private function setComponentData() : void
      {
         this.component.data = this._data;
      }
   }
}

