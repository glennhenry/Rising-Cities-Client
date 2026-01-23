package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.FormulaProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.MysteryConstructionMiniLayer;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MysteryConstructionMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "MysteryConstructionMiniLayerMediator";
      
      private var _miniLayerProxy:MiniLayerProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _billboardObject:BillboardObject;
      
      private var _layerData:ConstructionMiniLayerVo;
      
      private var _configProxy:GameConfigProxy;
      
      private var _formulaProxy:FormulaProxy;
      
      private var _intervalId:uint;
      
      private var _intervalRunning:Boolean;
      
      private var _waitingForPhaseUpdate:Boolean = false;
      
      public function MysteryConstructionMiniLayerMediator(param1:String, param2:Object)
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
         this.component.finishConstruction.addEventListener(MouseEvent.CLICK,this.onFinishConstruction);
         this.component.addEventListener(TimerBarComponent.EVENT_TIMER_UP,this.handleTimeUp);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function handleTimeUp(param1:Event) : void
      {
         param1.stopPropagation();
         this.finalCall();
      }
      
      private function onFinishConstruction(param1:MouseEvent) : void
      {
         var _loc4_:PhaseDTO = null;
         this._soundProxy.playButtonClick();
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         if(this._billboardObject && this._billboardObject.billboardObjectVo && Boolean(this._billboardObject.billboardObjectVo.buildingDTO))
         {
            _loc2_ = this._billboardObject.billboardObjectVo.buildingDTO.id;
            for each(_loc4_ in this._billboardObject.billboardObjectVo.activePhases)
            {
               if(_loc4_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc4_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
               {
                  _loc3_ = _loc4_.phaseId;
               }
            }
         }
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_BOOSTPHASE,{
            "buildingId":_loc2_,
            "phaseId":_loc3_,
            "boost":true
         });
         this.finalCall();
      }
      
      private function finalCall(param1:Event = null) : void
      {
         this.component.finishConstruction.removeEventListener(MouseEvent.CLICK,this.onFinishConstruction);
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.clearTimerCostInterval();
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRemove() : void
      {
         RandomUtilities.removestackCall(this.updateLayerData);
         this.component.finishConstruction.removeEventListener(MouseEvent.CLICK,this.onFinishConstruction);
         super.onRemove();
         facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_CLOSED);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is BillboardObject)
         {
            this._billboardObject = BillboardObject(param1);
            this._layerData = this._miniLayerProxy.getConstructionVo(this._billboardObject);
            this._layerData.realCurrencyCosts = this.formulaProxy.getInstantFinishCostForMysteryBuilding(this._billboardObject.billboardObjectVo.activePhases);
            this.setLayerData();
            this.setListener();
            this.startTimerCostInterval();
            facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_OPENED);
         }
      }
      
      public function get component() : MysteryConstructionMiniLayer
      {
         return super.viewComponent as MysteryConstructionMiniLayer;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.MYSTERY_BUILDING_STATE_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.MYSTERY_BUILDING_STATE_CHANGED:
               this._waitingForPhaseUpdate = false;
               RandomUtilities.addstackCall(this.updateLayerData);
               break;
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               if(!this._waitingForPhaseUpdate)
               {
                  RandomUtilities.addstackCall(this.updateLayerData);
               }
         }
      }
      
      private function updateLayerData() : void
      {
         this._layerData = this._miniLayerProxy.getConstructionVo(this._billboardObject);
         if(this._billboardObject.billboardObjectVo.isReadyForNextConstructionStep())
         {
            this.finalCall();
            return;
         }
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
      
      private function get formulaProxy() : FormulaProxy
      {
         if(this._formulaProxy == null)
         {
            this._formulaProxy = facade.retrieveProxy(FormulaProxy.NAME) as FormulaProxy;
         }
         return this._formulaProxy;
      }
      
      private function startTimerCostInterval() : void
      {
         if(!this._intervalRunning)
         {
            this._intervalRunning = true;
            this._intervalId = setInterval(this.setTimerCost,1000);
         }
         else
         {
            this.clearTimerCostInterval();
         }
      }
      
      private function clearTimerCostInterval() : void
      {
         if(this._intervalRunning)
         {
            clearInterval(this._intervalId);
            this._intervalRunning = false;
         }
      }
      
      private function setTimerCost() : void
      {
         if(this._layerData == null)
         {
            this._layerData = this._miniLayerProxy.getConstructionVo(this._billboardObject);
         }
         this._layerData.realCurrencyCosts = this.formulaProxy.getInstantFinishCostForMysteryBuilding(this._billboardObject.billboardObjectVo.activePhases);
         this.setLayerData();
      }
   }
}

