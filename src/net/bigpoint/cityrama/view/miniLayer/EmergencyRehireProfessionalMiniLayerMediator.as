package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyRehireProfessionalMiniLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyRehireProfessionalMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyRehireProfessionalMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EmergencyRehireProfessionalMiniLayerMediator";
      
      private var _rehireVo:EmergencyRehireProfessionalMiniLayerVo;
      
      public function EmergencyRehireProfessionalMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListeners();
         sendNotification(ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE,ServerResConst.RESOURCE_EDUCATIONPOINTS);
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(EmergencyRehireProfessionalMiniLayer.EP,this.handleOkClick);
         this.component.addEventListener(EmergencyRehireProfessionalMiniLayer.DEXTRO,this.handleDextroClick);
      }
      
      private function handleOkClick(param1:Event) : void
      {
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_RENEW,{
            "pid":this._rehireVo.profId,
            "dextro":false
         });
         this.handleClose();
      }
      
      private function handleDextroClick(param1:Event) : void
      {
         if(!this._rehireVo.hasEnoughDextro)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,{"cat":ServerTagConstants.GOOD_DEXTRO});
         }
         else
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.DEXTRO_SPEND);
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_RENEW,{
               "pid":this._rehireVo.profId,
               "dextro":true
            });
         }
         this.handleClose();
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is EmergencyRehireProfessionalMiniLayerVo)
         {
            this._rehireVo = param1 as EmergencyRehireProfessionalMiniLayerVo;
            this.component.setData(param1 as EmergencyRehireProfessionalMiniLayerVo);
         }
      }
      
      public function get component() : EmergencyRehireProfessionalMiniLayer
      {
         return super.viewComponent as EmergencyRehireProfessionalMiniLayer;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(EmergencyRehireProfessionalMiniLayer.EP,this.handleOkClick);
         this.component.removeEventListener(EmergencyRehireProfessionalMiniLayer.DEXTRO,this.handleDextroClick);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
            case ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED:
               this.setLayerData();
         }
      }
      
      private function setLayerData() : void
      {
         var _loc1_:EmergencyMiniLayerProxy = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
         this.setData(_loc1_.getEmergencyRehireProfessionalVo(this._rehireVo.profId));
      }
   }
}

