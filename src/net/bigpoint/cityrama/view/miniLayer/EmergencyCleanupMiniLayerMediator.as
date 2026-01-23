package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyCleanupMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.EmergencyCleanupMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class EmergencyCleanupMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "EmergencyCleanupMiniLayerMediator";
      
      private var _soundProxy:SoundProxy;
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _cleanupVo:EmergencyCleanupMiniLayerVo;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      public function EmergencyCleanupMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListeners();
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this._playerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         sendNotification(VirtualTaskNotificationInterest.BUILDING_REPAIR_LAYER_OPENED);
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(EmergencyCleanupMiniLayer.OK,this.handleOkClick);
         this.component.addEventListener(EmergencyCleanupMiniLayer.RC,this.handleRcClick);
      }
      
      private function handleOkClick(param1:Event) : void
      {
         this._playfieldObjectsProxy.getBillboardById(this._cleanupVo.damagedBuildingId).billboardObjectVo.userInteractionLocked = true;
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REPAIR_BUILDING,{
            "bid":this._cleanupVo.damagedBuildingId,
            "rc":false
         });
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         this.handleClose(new Event("CLOSE"));
      }
      
      private function handleRcClick(param1:Event) : void
      {
         if(this._playerResourceProxy.realCurrency < this._cleanupVo.instantRCCosts)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         }
         else
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
            this._playfieldObjectsProxy.getBillboardById(this._cleanupVo.damagedBuildingId).billboardObjectVo.userInteractionLocked = true;
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REPAIR_BUILDING,{
               "bid":this._cleanupVo.damagedBuildingId,
               "rc":true
            });
            this.handleClose(new Event("CLOSE"));
         }
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is EmergencyCleanupMiniLayerVo)
         {
            this._cleanupVo = param1 as EmergencyCleanupMiniLayerVo;
            this.component.setData(param1 as EmergencyCleanupMiniLayerVo);
         }
      }
      
      public function get component() : EmergencyCleanupMiniLayer
      {
         return super.viewComponent as EmergencyCleanupMiniLayer;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         sendNotification(VirtualTaskNotificationInterest.BUILDING_REPAIR_LAYER_CLOSED);
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
      }
   }
}

