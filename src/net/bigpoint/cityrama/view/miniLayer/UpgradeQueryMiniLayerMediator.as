package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.core.IFlexDisplayObject;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.*;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class UpgradeQueryMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "UpgradeQueryMiniLayerMediator";
      
      private var _soundProxy:SoundProxy;
      
      private var _billboardObjVo:BillboardObjectVo;
      
      private var _parentViewComponent:IFlexDisplayObject;
      
      public function UpgradeQueryMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      private function setLayerData() : void
      {
         var _loc1_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         this.component.setData(_loc1_.getUpgradeVo(this._billboardObjVo));
      }
      
      private function addListener() : void
      {
         this.component.confirmUpgrade.addEventListener(MouseEvent.CLICK,this.handleConfirm);
         this.component.denyUpgrade.addEventListener(MouseEvent.CLICK,this.handleAbort);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
      }
      
      private function handleClose(param1:Event) : void
      {
         this.finalCall();
      }
      
      private function handleAbort(param1:MouseEvent) : void
      {
         this._soundProxy.playButtonClick();
         this.finalCall();
      }
      
      private function handleConfirm(param1:MouseEvent) : void
      {
         this._soundProxy.playButtonClick();
         if(this._billboardObjVo.isHarvestReady)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{
               "vo":this._billboardObjVo,
               "silent":true
            });
         }
         facade.sendNotification(ApplicationNotificationConstants.UPGRADE_BILLBOARD_BUILDING,this._billboardObjVo);
         this.finalCall(true);
         sendNotification(ApplicationNotificationConstants.CELEBRATING_CITIZEN,this._billboardObjVo);
      }
      
      override public function onRemove() : void
      {
         this.component.confirmUpgrade.removeEventListener(MouseEvent.CLICK,this.handleConfirm);
         this.component.denyUpgrade.removeEventListener(MouseEvent.CLICK,this.handleAbort);
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         super.onRemove();
      }
      
      private function finalCall(param1:Boolean = false) : void
      {
         this.component.confirmUpgrade.removeEventListener(MouseEvent.CLICK,this.handleConfirm);
         this.component.denyUpgrade.removeEventListener(MouseEvent.CLICK,this.handleAbort);
         if(param1)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      public function get component() : UpgradeQueryMiniLayer
      {
         return super.viewComponent as UpgradeQueryMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1.billboardVo is BillboardObjectVo)
         {
            this._billboardObjVo = BillboardObjectVo(param1.billboardVo);
            if(param1.viewComponent)
            {
               this._parentViewComponent = param1.viewComponent;
            }
            this.setLayerData();
            this.addListener();
         }
      }
   }
}

