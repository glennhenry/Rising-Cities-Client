package net.bigpoint.cityrama.model.construction
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.constructionLayer.ConstructionLayer;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ConstructionLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const START_STEP_NORMAL:String = "START_STEP_NORMAL";
      
      public static const INSTANT_FINISH_STEP:String = "INSTANT_FINISH_STEP";
      
      public static const INSTANT_FINISH_ALL:String = "INSTANT_FINISH_ALL";
      
      public static const NAME:String = "ConstructionlayerMediator";
      
      private var _data:ConstructionLayerVo;
      
      private var _waitingForUpdate:Boolean;
      
      private var _soundProxy:SoundProxy;
      
      public function ConstructionLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED:
               this.updateData();
               break;
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
            case ApplicationNotificationConstants.INGAMECURRENCY_CHANGED:
               this.updateResources();
         }
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is ConstructionLayerVo)
         {
            this._data = param1 as ConstructionLayerVo;
            this.component.data = this._data;
         }
      }
      
      private function updateData() : void
      {
         var _loc1_:ConstructionLayerDataProxy = null;
         if(this._data)
         {
            _loc1_ = facade.retrieveProxy(ConstructionLayerDataProxy.NAME) as ConstructionLayerDataProxy;
            this.setData(_loc1_.CreateConstructionLayerVo(this._data.billboardObject,this._data.isUpgrade));
            this._waitingForUpdate = false;
         }
      }
      
      private function updateResources() : void
      {
         var _loc1_:ConstructionLayerDataProxy = null;
         if(!this._waitingForUpdate)
         {
            _loc1_ = facade.retrieveProxy(ConstructionLayerDataProxy.NAME) as ConstructionLayerDataProxy;
            _loc1_.UpdateConstructionLayerVoResources(this._data);
            this.component.updateData();
         }
      }
      
      private function get component() : ConstructionLayer
      {
         return this.viewComponent as ConstructionLayer;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this.component.addEventListener(START_STEP_NORMAL,this.startStepNormal);
         this.component.addEventListener(INSTANT_FINISH_STEP,this.instantFinishStep);
         this.component.addEventListener(INSTANT_FINISH_ALL,this.instantFinishAll);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
         facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_OPENED);
      }
      
      private function startStepNormal(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
         this._soundProxy.playButtonClick();
         if(!this._data.isUpgrade || this._data.constructionSteps.length > 0 && this._data.constructionSteps[0].state == ConstructionLayerStepVo.STATE_DONE)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_PROCESS,{
               "boost":false,
               "vo":this._data.billboardObject.billboardObjectVo
            });
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.UPGRADE_BILLBOARD_BUILDING,this._data.billboardObject.billboardObjectVo);
         }
         this._soundProxy.playConstruction();
         this._waitingForUpdate = true;
      }
      
      private function instantFinishStep(param1:Event) : void
      {
         var _loc3_:ConstructionLayerStepVo = null;
         var _loc4_:TimerProxy = null;
         var _loc5_:int = 0;
         var _loc6_:PlayerResourceProxy = null;
         var _loc2_:Number = -1;
         for each(_loc3_ in this._data.constructionSteps)
         {
            if(_loc3_.state == ConstructionLayerStepVo.STATE_RUNNING || _loc3_.state == ConstructionLayerStepVo.STATE_AVAILABLE)
            {
               _loc4_ = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
               _loc3_.currentTime = _loc4_.currentTimeStamp;
               _loc5_ = _loc3_.instantFinishCost;
               _loc6_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
               if(_loc6_.realCurrency < _loc5_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
                  return;
               }
               if(_loc3_.state == ConstructionLayerStepVo.STATE_RUNNING)
               {
                  _loc2_ = _loc3_.phaseID;
                  this._waitingForUpdate = true;
                  facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_BOOSTPHASE,{
                     "buildingId":this._data.billboardObject.billboardObjectVo.buildingDTO.id,
                     "phaseId":_loc2_,
                     "boost":true
                  });
                  return;
               }
               if(_loc3_.state == ConstructionLayerStepVo.STATE_AVAILABLE)
               {
                  this._waitingForUpdate = true;
                  facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_PROCESS,{
                     "boost":true,
                     "vo":this._data.billboardObject.billboardObjectVo
                  });
               }
               return;
            }
         }
      }
      
      private function instantFinishAll(param1:Event) : void
      {
         var _loc3_:ConstructionLayerStepVo = null;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc2_:Number = -1;
         var _loc4_:int = 0;
         var _loc5_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         for each(_loc3_ in this._data.constructionSteps)
         {
            if(_loc3_.state == ConstructionLayerStepVo.STATE_AVAILABLE || _loc3_.state == ConstructionLayerStepVo.STATE_RUNNING || _loc3_.state == ConstructionLayerStepVo.STATE_UNAVAILABLE)
            {
               _loc3_.currentTime = _loc5_.currentTimeStamp;
               _loc4_ += _loc3_.instantFinishCost;
            }
         }
         for each(_loc6_ in this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.constructionPhases)
         {
            if(_loc6_.phaseType == ServerPhaseTypes.INSTANT_CONSTRUCTION)
            {
               _loc2_ = _loc6_.phaseId;
               break;
            }
         }
         if(_loc2_ == -1 && this._data.isUpgrade && this._data.billboardObject is TownHallFieldObject)
         {
            for each(_loc6_ in this._data.billboardObject.billboardObjectVo.configPlayfieldItemVo.activePhases)
            {
               if(_loc6_.phaseType == ServerPhaseTypes.INSTANT_UPGRADE)
               {
                  _loc2_ = _loc6_.phaseId;
                  break;
               }
            }
         }
         var _loc7_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(_loc7_.realCurrency < _loc4_)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            return;
         }
         if(_loc4_ > 0 && _loc2_ != -1)
         {
            if(!this._data.isUpgrade || this._data.constructionSteps.length > 0 && this._data.constructionSteps[0].state == ConstructionLayerStepVo.STATE_DONE)
            {
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REQUEST_INSTANTFINISH,{
                  "buildingId":this._data.billboardObject.billboardObjectVo.buildingDTO.id,
                  "configId":_loc2_
               });
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._data.billboardObject.billboardObjectVo.buildingDTO.id);
            }
         }
         this.finalCall();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.removeEventListener(START_STEP_NORMAL,this.startStepNormal);
         this.component.removeEventListener(INSTANT_FINISH_STEP,this.instantFinishStep);
         this.component.removeEventListener(INSTANT_FINISH_ALL,this.instantFinishAll);
         facade.sendNotification(VirtualTaskNotificationInterest.MINILAYER_CONSTRUCTION_CLOSED);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
   }
}

