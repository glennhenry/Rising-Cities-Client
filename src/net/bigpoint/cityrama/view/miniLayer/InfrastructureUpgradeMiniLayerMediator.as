package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.InfraUpgradeMiniLayerVo;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.InfrastructureUpgradeMiniLayer;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class InfrastructureUpgradeMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "InfrastructureUpgradeMiniLayerMediator";
      
      private var _data:InfraUpgradeMiniLayerVo;
      
      public function InfrastructureUpgradeMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this.component.addEventListener(Event.CLOSE,this.finalCall);
         this.component.addEventListener(InfrastructureUpgradeMiniLayer.START_UPGRADE,this.onUpgrade);
         this.component.addEventListener(InfrastructureUpgradeMiniLayer.START_INSTA_UPGRADE,this.component_START_INSTA_UPGRADEHandler);
         this.component.addEventListener(InfrastructureUpgradeMiniLayer.OPEN_RC_REBUY,this.component_OPEN_RC_REBUYHandler);
      }
      
      private function component_OPEN_RC_REBUYHandler(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,[ServerResConst.RESOURCE_REALCURRENCY]);
      }
      
      private function component_START_INSTA_UPGRADEHandler(param1:Event) : void
      {
         StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         facade.sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._data.billboardObjVo.buildingDTO.id);
         this.finalCall();
      }
      
      private function onUpgrade(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         facade.sendNotification(ApplicationNotificationConstants.UPGRADE_BILLBOARD_BUILDING,this._data.billboardObjVo);
         this.finalCall();
      }
      
      private function finalCall(param1:Event = null) : void
      {
         if(param1)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
         }
      }
      
      override public function onRemove() : void
      {
         RandomUtilities.removestackCall(this.updateData);
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(InfrastructureUpgradeMiniLayer.START_INSTA_UPGRADE,this.component_START_INSTA_UPGRADEHandler);
         this.component.removeEventListener(InfrastructureUpgradeMiniLayer.OPEN_RC_REBUY,this.component_OPEN_RC_REBUYHandler);
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.removeEventListener(InfrastructureUpgradeMiniLayer.START_UPGRADE,this.onUpgrade);
      }
      
      public function get component() : InfrastructureUpgradeMiniLayer
      {
         return super.viewComponent as InfrastructureUpgradeMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is InfraUpgradeMiniLayerVo)
         {
            this._data = param1 as InfraUpgradeMiniLayerVo;
            this.component.data = this._data;
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               RandomUtilities.addstackCall(this.updateData);
         }
      }
      
      private function updateData() : void
      {
         var _loc1_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         this.setData(_loc1_.getInfraUpgradeVo(this._data.billboardObjVo));
      }
   }
}

