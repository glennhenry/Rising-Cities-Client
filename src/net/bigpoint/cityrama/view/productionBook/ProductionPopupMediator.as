package net.bigpoint.cityrama.view.productionBook
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.FormulaProxy;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionDetailViewVo;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.UpgradeProgressComponent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.productionBook.ui.components.ProductionPopup;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ProductionPopupMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ProductionPopupMediator";
      
      private var _productionData:ProductionDetailViewVo;
      
      private var _billboardDetailViewProxy:MainLayerProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _storage:SharedObject;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _formulaProxy:FormulaProxy;
      
      private var _intervalId:uint;
      
      private var _intervalRunning:Boolean;
      
      private var _instantFinishCosts:Array;
      
      public function ProductionPopupMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._storage = SharedObject.getLocal(OptionsMenuProxy.NAME);
         this._billboardDetailViewProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         sendNotification(VirtualTaskNotificationInterest.PRODUCTIONLAYER_OPENED);
         sendNotification(ApplicationNotificationConstants.HUD_SWITCH_RESCOURCE,ServerResConst.RESOURCE_PRODUCTIONPOINTS);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(ProductionPopup.START_PRODUCTION,this.handleStartProduction);
         this.component.addEventListener(ProductionPopup.INSTANT_PRODUCTION,this.handleInstantProduction);
         this.component.addEventListener(ProductionPopup.STOP_PRODUCTION,this.handleStopProduction);
         this.component.addEventListener(UpgradeProgressComponent.UPGRADE_BUILDING,this.handleUpgradeBuilding);
         this.component.addEventListener(UpgradeProgressComponent.BUY_DD,this.handleBuyDD);
         this.component.addEventListener(UpgradeProgressComponent.BUY_UPGRADE,this.handleBuyUpgrade);
         this.component.addEventListener(TimerBarComponent.EVENT_TIMER_UP,this.handleClose);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener("openBalanceFeature",this.handleOpenBalanceFeature);
         this.component.addEventListener("openCurrencyFeature",this.handleOpenCurrencyFeature);
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
      }
      
      private function handleClose(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      private function handleOpenBalanceFeature(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:Object = {};
         _loc2_.feature = FeatureScreenProxy.FEATURE_BALANCE;
         _loc2_.quest = false;
         sendNotification(ApplicationNotificationConstants.OPEN_FEATURESCREEN,_loc2_);
      }
      
      private function handleOpenCurrencyFeature(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:Object = {};
         _loc2_.feature = QuestGFXIDLayerConstants.BIG_FEATURE_PRODUCTION_POINTS;
         _loc2_.quest = false;
         sendNotification(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN,_loc2_);
      }
      
      private function handleUpgradeBuilding(param1:Event) : void
      {
         param1.stopPropagation();
         this._soundProxy.playButtonClick();
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:BillboardObject = _loc2_.getObjectByVo(this._productionData.productionFieldObjectVo) as BillboardObject;
         facade.sendNotification(ApplicationNotificationConstants.OPEN_CONSTRUCTION_LAYER,_loc3_);
      }
      
      private function handleBuyDD(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleBuyUpgrade(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         sendNotification(ApplicationNotificationConstants.INSTANT_UPGRADE_REQUEST,this._productionData.productionFieldObjectVo.buildingDTO.id);
         this.handleClose();
      }
      
      private function handleStartProduction(param1:Event) : void
      {
         this._soundProxy.playButtonClick();
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REQUEST_PRODUCTION,{
            "building":this._productionData.productionFieldObjectVo,
            "good":this.component.data.productionOptions[this.component.currentGoodIndex],
            "boost":false
         });
         sendNotification(ApplicationNotificationConstants.SHOW_PRODUCTION_FLOATER,{
            "pro":this._productionData.productionFieldObjectVo,
            "good":this.component.data.productionOptions[this.component.currentGoodIndex]
         });
         sendNotification(ApplicationNotificationConstants.SHOW_PRODUCTION_ANIMATION,{
            "buildingId":this._productionData.productionFieldObjectVo.buildingDTO.id,
            "isEvent":this.component.data.productionOptions[this.component.currentGoodIndex].config.isEventGood
         });
         this.handleClose();
      }
      
      private function handleInstantProduction(param1:Event) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:Object = null;
         var _loc7_:PhaseDTO = null;
         var _loc2_:FormulaProxy = facade.retrieveProxy(FormulaProxy.NAME) as FormulaProxy;
         var _loc3_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(this._productionData.harvestEndTime == 0)
         {
            _loc5_ = this.getConfigPhase(this.component.data.currentProductionIndex);
            if(_loc5_)
            {
               _loc4_ = _loc2_.getInstantFinishCostForProductionPhase(_loc5_);
            }
            if(_loc4_ != -1 && _loc3_.realCurrency >= _loc4_)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REQUEST_PRODUCTION,{
                  "building":this._productionData.productionFieldObjectVo,
                  "good":this.component.data.productionOptions[this.component.currentGoodIndex],
                  "boost":true
               });
               this.clearTimerCostInterval();
            }
            else
            {
               facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
         else
         {
            _loc6_ = {};
            _loc6_.buildingId = this._productionData.productionFieldObjectVo.buildingDTO.id;
            _loc6_.boost = true;
            _loc7_ = this.getRunningPhase();
            if(_loc7_)
            {
               _loc6_.phaseId = _loc7_.config.phaseId;
               _loc4_ = _loc2_.getInstantFinishCostForProductionPhase(_loc7_.config,_loc7_);
            }
            else
            {
               _loc5_ = this.getConfigPhase(this.component.data.currentProductionIndex);
               if(_loc5_)
               {
                  _loc4_ = _loc2_.getInstantFinishCostForProductionPhase(_loc5_);
               }
            }
            if(_loc4_ != -1 && _loc3_.realCurrency >= _loc4_)
            {
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_BOOSTPHASE,_loc6_);
               this.clearTimerCostInterval();
            }
            else
            {
               facade.sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
         this.handleClose();
      }
      
      private function handleStopProduction(param1:Event) : void
      {
         this._soundProxy.playButtonClick();
         this.clearTimerCostInterval();
         facade.sendNotification(MiniLayerConstants.OPEN_MINI_PRODUCTION_CANCEL,this._productionData.productionFieldObjectVo);
      }
      
      override public function getMediatorName() : String
      {
         return super.mediatorName;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.PRODUCTION_BUILDING_STATE_CHANGED,ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.PRODUCTIONPOINTS_CHANGED,ApplicationNotificationConstants.ENERGY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.PRODUCTION_BUILDING_STATE_CHANGED:
            case ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED:
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
            case ApplicationNotificationConstants.PRODUCTIONPOINTS_CHANGED:
            case ApplicationNotificationConstants.ENERGY_CHANGED:
               this.saveCurrentGoodIndex();
               this.setData(this._billboardDetailViewProxy.getProductionDetailViewVo(this._productionData.productionFieldObjectVo));
         }
      }
      
      public function setData(param1:Object) : void
      {
         this._productionData = param1 as ProductionDetailViewVo;
         this.component.data = this._productionData;
         this.setTimerCost();
         this.startTimerCostInterval();
      }
      
      override public function onRemove() : void
      {
         this.saveCurrentGoodIndex();
         this.removeListener();
         this.clearTimerCostInterval();
         super.onRemove();
         facade.sendNotification(VirtualTaskNotificationInterest.PRODUCTIONLAYER_CLOSED);
      }
      
      private function saveCurrentGoodIndex() : void
      {
         if(Boolean(this._productionData) && Boolean(this._storage))
         {
            this._storage.data[this._productionData.productionFieldObjectVo.buildingDTO.id] = this.component.currentGoodIndex;
         }
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
         this.component.removeEventListener(ProductionPopup.START_PRODUCTION,this.handleStartProduction);
         this.component.removeEventListener(ProductionPopup.INSTANT_PRODUCTION,this.handleInstantProduction);
         this.component.removeEventListener(ProductionPopup.STOP_PRODUCTION,this.handleStopProduction);
         this.component.removeEventListener(UpgradeProgressComponent.UPGRADE_BUILDING,this.handleUpgradeBuilding);
         this.component.removeEventListener(UpgradeProgressComponent.BUY_DD,this.handleBuyDD);
         this.component.removeEventListener(UpgradeProgressComponent.BUY_UPGRADE,this.handleBuyUpgrade);
         this.component.removeEventListener(TimerBarComponent.EVENT_TIMER_UP,this.handleClose);
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener("openBalanceFeature",this.handleOpenBalanceFeature);
         this.component.removeEventListener("openCurrencyFeature",this.handleOpenCurrencyFeature);
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":0,
            "pt":_loc3_,
            "type":param1.callerType
         },NAME);
      }
      
      private function component_HIDE_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      public function get component() : ProductionPopup
      {
         return super.viewComponent as ProductionPopup;
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         if(this._resourceProxy == null)
         {
            this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._resourceProxy;
      }
      
      private function get formulaProxy() : FormulaProxy
      {
         if(this._formulaProxy == null)
         {
            this._formulaProxy = facade.retrieveProxy(FormulaProxy.NAME) as FormulaProxy;
         }
         return this._formulaProxy;
      }
      
      private function setTimerCost() : void
      {
         var _loc3_:int = 0;
         var _loc4_:ConfigPhaseDTO = null;
         var _loc1_:Object = {};
         _loc1_.rcStock = this.resourceProxy.realCurrency;
         if(this._instantFinishCosts == null)
         {
            this._instantFinishCosts = [];
            _loc3_ = 0;
            while(_loc3_ < this.component.data.productionOptions.length)
            {
               _loc4_ = this.getConfigPhase(_loc3_);
               if(_loc4_)
               {
                  this._instantFinishCosts[_loc3_] = this.formulaProxy.getInstantFinishCostForProductionPhase(_loc4_);
               }
               else
               {
                  this._instantFinishCosts[_loc3_] = -1;
               }
               _loc3_++;
            }
         }
         var _loc2_:PhaseDTO = this.getRunningPhase();
         if(_loc2_)
         {
            this._instantFinishCosts[this.component.data.currentProductionIndex] = this.formulaProxy.getInstantFinishCostForProductionPhase(_loc2_.config,_loc2_);
         }
         _loc1_.cost = this._instantFinishCosts;
         this.component.instantFinishData = _loc1_;
      }
      
      private function getRunningPhase() : PhaseDTO
      {
         var _loc3_:PhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         var _loc1_:int = this.component.data.currentProductionIndex;
         if(_loc1_ == -1)
         {
            _loc1_ = 0;
         }
         var _loc2_:ProductionGoodObjectVo = this.component.data.productionOptions[_loc1_];
         for each(_loc3_ in this._productionData.productionFieldObjectVo.activePhases)
         {
            for each(_loc4_ in _loc3_.config.listEntryOutputs)
            {
               if(Boolean(_loc4_.goodConfig) && _loc4_.goodConfig.id == _loc2_.config.id)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      private function getConfigPhase(param1:int) : ConfigPhaseDTO
      {
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         if(param1 == -1)
         {
            param1 = 0;
         }
         var _loc2_:ProductionGoodObjectVo = this.component.data.productionOptions[param1];
         if(this._productionData.productionFieldObjectVo.buildingDTO.config)
         {
            for each(_loc3_ in this._productionData.productionFieldObjectVo.buildingDTO.config.activePhases)
            {
               for each(_loc4_ in _loc3_.listEntryOutputs)
               {
                  if(Boolean(_loc4_.goodConfig) && _loc4_.goodConfig.id == _loc2_.config.id)
                  {
                     return _loc3_;
                  }
               }
            }
         }
         return null;
      }
      
      private function startTimerCostInterval() : void
      {
         var _loc1_:PhaseDTO = this.getRunningPhase();
         if(_loc1_ == null)
         {
            this.clearTimerCostInterval();
            return;
         }
         if(!this._intervalRunning)
         {
            this._intervalRunning = true;
            this._intervalId = setInterval(this.setTimerCost,1000);
         }
      }
      
      private function clearTimerCostInterval() : void
      {
         if(this._intervalRunning)
         {
            this._instantFinishCosts = null;
            clearInterval(this._intervalId);
            this._intervalRunning = false;
         }
      }
   }
}

