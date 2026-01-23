package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ConstructionMiniLayer;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ConstructionMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ConstructionMiniLayerMediator";
      
      private var _miniLayerProxy:MiniLayerProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _billboardObject:BillboardObject;
      
      private var _layerData:ConstructionMiniLayerVo;
      
      private var _configProxy:GameConfigProxy;
      
      private var _waitingForPhaseUpdate:Boolean = false;
      
      public function ConstructionMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._miniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
      }
      
      private function setLayerData() : void
      {
         if(this._layerData)
         {
            this.component.setData(this._layerData);
         }
      }
      
      private function setListener() : void
      {
         this.component.startConstruction.addEventListener(MouseEvent.CLICK,this.onStartConstruction);
         this.component.ddButton.addEventListener(MouseEvent.CLICK,this.onDDClicked);
         this.component.ddButton.addEventListener(MouseEvent.MOUSE_OVER,this.onInstantMouseOver);
         this.component.ddButton.addEventListener(MouseEvent.MOUSE_OUT,this.onInstantMouseOut);
         this.component.addEventListener(TimerBarComponent.EVENT_TIMER_UP,this.handleTimeUp);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function onInstantMouseOut(param1:MouseEvent) : void
      {
         if(this.component.ddButton.enabled)
         {
            this.component.instantDDText.visible = false;
            this.component.startConstruction.visible = true;
         }
      }
      
      private function onInstantMouseOver(param1:MouseEvent) : void
      {
         if(this.component.ddButton.enabled)
         {
            this.component.startConstruction.visible = false;
            this.component.instantDDText.visible = true;
         }
      }
      
      private function handleTimeUp(param1:Event) : void
      {
         param1.stopPropagation();
         this.finalCall();
      }
      
      private function onStartConstruction(param1:MouseEvent) : void
      {
         this._soundProxy.playButtonClick();
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_PROCESS,{
            "boost":false,
            "vo":this._billboardObject.billboardObjectVo
         });
         this._soundProxy.playConstruction();
         var _loc2_:ConfigPhaseDTO = this._billboardObject.billboardObjectVo.informationFloaterPhase;
         this._billboardObject.invalidateInformationFloaterManager();
         if(OptionsGlobalVariables.getInstance().showDropIcons)
         {
            if(_loc2_ != null)
            {
               facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                  "tO":this._billboardObject,
                  "cP":_loc2_
               });
            }
         }
         this.finalCall();
      }
      
      private function onDDClicked(param1:MouseEvent) : void
      {
         if(this.component.ddButton.showPlus)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         }
         else
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
            this._soundProxy.playConstruction();
            sendNotification(ApplicationNotificationConstants.INSTANT_FINISH_CONSTRUCTION_REQUEST,this._billboardObject.billboardObjectVo);
            this.finalCall();
         }
      }
      
      private function finalCall(param1:Event = null) : void
      {
         this.component.removeEventListener(MouseEvent.CLICK,this.onStartConstruction);
         this.component.ddButton.removeEventListener(MouseEvent.CLICK,this.onDDClicked);
         this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OVER,this.onInstantMouseOver);
         this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OUT,this.onInstantMouseOut);
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRemove() : void
      {
         RandomUtilities.removestackCall(this.updateLayerData);
         this.component.removeEventListener(MouseEvent.CLICK,this.onStartConstruction);
         this.component.ddButton.removeEventListener(MouseEvent.CLICK,this.onDDClicked);
         this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OVER,this.onInstantMouseOver);
         this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OUT,this.onInstantMouseOut);
         super.onRemove();
         facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_CLOSED);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is BillboardObject)
         {
            this._billboardObject = BillboardObject(param1);
            this._layerData = this._miniLayerProxy.getConstructionVo(this._billboardObject);
            this.setLayerData();
            this.setListener();
            facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_OPENED);
         }
      }
      
      public function get component() : ConstructionMiniLayer
      {
         return super.viewComponent as ConstructionMiniLayer;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED:
               this._waitingForPhaseUpdate = false;
               RandomUtilities.addstackCall(this.updateLayerData);
               break;
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
            case ApplicationNotificationConstants.INGAMECURRENCY_CHANGED:
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
               if(!this._waitingForPhaseUpdate)
               {
                  RandomUtilities.addstackCall(this.updateLayerData);
               }
         }
      }
      
      private function updateLayerData() : void
      {
         this._layerData = this._miniLayerProxy.getConstructionVo(this._billboardObject);
         if(this._layerData.hasStarted)
         {
            if(this._layerData.constructionStepEndTime - this._layerData.constructionCurrentTime <= 0)
            {
               this.finalCall();
            }
            else
            {
               this.setLayerData();
            }
         }
         else if(this._layerData.constructionStepLength == 0)
         {
            this.finalCall();
         }
         else
         {
            this.setLayerData();
         }
      }
   }
}

