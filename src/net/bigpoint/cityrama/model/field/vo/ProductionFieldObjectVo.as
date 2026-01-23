package net.bigpoint.cityrama.model.field.vo
{
   import flash.events.Event;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   
   public class ProductionFieldObjectVo extends BillboardObjectVo implements IEventDrop
   {
      
      public static const EVENT_PRODUCTION_TERM_CHANGED:String = "EVENT_PRODUCTION_TERM_CHANGED";
      
      private var _playProductionAinimation:Boolean = false;
      
      private var _produceAbleGoods:Vector.<ProductionGoodObjectVo>;
      
      private var _productionBuild:Boolean;
      
      private var _productionTerm:uint = 0;
      
      private var _productionInterval:uint;
      
      private var _productionTimeLeft:Number;
      
      private var _totalProductionTime:Number;
      
      private var _playEventAnimation:Boolean;
      
      private var _currentRunningEventGFXId:Number = 0;
      
      private var _currentEventLocaleId:String;
      
      public function ProductionFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      public function getUpgradeInstantFinishCost() : Number
      {
         var _loc1_:Number = NaN;
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:int = 0;
         var _loc4_:ConfigOutputDTO = null;
         for each(_loc2_ in configPlayfieldItemVo.activePhases)
         {
            if(_loc2_.phaseType == ServerPhaseTypes.INSTANT_UPGRADE)
            {
               for each(_loc4_ in _loc2_.listEntryOutputs)
               {
                  if(_loc4_.resourceConfig)
                  {
                     if(_loc4_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
                     {
                        _loc1_ = Math.abs(_loc4_.outputAmount);
                        break;
                     }
                  }
               }
            }
         }
         _loc3_ = this.maxHarvestUpgradeCount - this.harvestUpgradeCount;
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         return Math.ceil(_loc1_ * Math.pow(_loc3_,0.73));
      }
      
      public function get produceAbleGoods() : Vector.<ProductionGoodObjectVo>
      {
         if(!this._produceAbleGoods)
         {
            throw new RamaCityError("Use Factory to build");
         }
         return this._produceAbleGoods;
      }
      
      public function get maxLevel() : int
      {
         return buildingDTO.config.upgradeable ? currentLevel + 1 : currentLevel;
      }
      
      public function set produceAbleGoods(param1:Vector.<ProductionGoodObjectVo>) : void
      {
         this._produceAbleGoods = param1;
      }
      
      public function get isIdle() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(_buildingDTO)
         {
            for each(_loc1_ in _buildingDTO.activePhases)
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.PRODUCTION)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public function get isInBuildMode() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         for each(_loc1_ in buildingDTO.activePhases)
         {
            if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_ACTIVATE || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL)
            {
               return true;
            }
         }
         return false;
      }
      
      public function get upgradeReady() : Boolean
      {
         if(buildingDTO.config.nextConfigId != 0)
         {
            return Boolean(buildingDTO.upgradeCount >= buildingDTO.config.maxHarvestCount);
         }
         return false;
      }
      
      public function get upgradeReadyOnNextHarvest() : Boolean
      {
         if(buildingDTO.config.nextConfigId != 0)
         {
            return Boolean(buildingDTO.upgradeCount + 1 >= buildingDTO.config.maxHarvestCount);
         }
         return false;
      }
      
      public function get activePhaseHasUpgrade() : PhaseDTO
      {
         var _loc1_:PhaseDTO = null;
         for each(_loc1_ in _buildingDTO.activePhases)
         {
            if(_loc1_.config.phaseType == ServerPhaseTypes.UPGRADE && _loc1_.expirationTime != 0 || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_ACTIVATE || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function get maxHarvestUpgradeCount() : int
      {
         return buildingDTO.config.maxHarvestCount;
      }
      
      public function get harvestUpgradeCount() : int
      {
         return buildingDTO.upgradeCount;
      }
      
      public function get currentProductionPhase() : PhaseDTO
      {
         var _loc1_:PhaseDTO = null;
         if(_buildingDTO)
         {
            for each(_loc1_ in _buildingDTO.activePhases)
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.PRODUCTION)
               {
                  return _loc1_;
               }
            }
         }
         return null;
      }
      
      public function get currentGoodInProduction() : ConfigGoodDTO
      {
         var _loc1_:ConfigOutputDTO = null;
         if(Boolean(_buildingDTO) && Boolean(this.currentProductionPhase))
         {
            for each(_loc1_ in this.currentProductionPhase.config.listEntryOutputs)
            {
               if(_loc1_.goodConfig)
               {
                  return _loc1_.goodConfig;
               }
            }
         }
         return null;
      }
      
      public function get productionBuild() : Boolean
      {
         return this._productionBuild;
      }
      
      public function set productionBuild(param1:Boolean) : void
      {
         this._productionBuild = param1;
      }
      
      public function get productionTerm() : uint
      {
         return this._productionTerm;
      }
      
      public function get playProductionAinimation() : Boolean
      {
         return this._playProductionAinimation;
      }
      
      public function set playProductionAinimation(param1:Boolean) : void
      {
         this._playProductionAinimation = param1;
      }
      
      public function startProductionTime() : void
      {
         if(this.currentProductionPhase != null)
         {
            clearInterval(this._productionInterval);
            this._productionTerm = 0;
            this._totalProductionTime = Math.floor(this.currentProductionPhase.config.durationConfig.duration / 1000);
            this._productionTimeLeft = this.currentProductionPhase.timeLeft;
            this._productionTimeLeft = Math.floor(this._productionTimeLeft / 1000);
            this.checkProductionTerm();
            this._productionInterval = setInterval(this.handleProductionInterval,1000);
         }
      }
      
      private function handleProductionInterval() : void
      {
         --this._productionTimeLeft;
         this.checkProductionTerm();
      }
      
      private function checkProductionTerm() : void
      {
         var _loc1_:uint = this.productionTerm;
         var _loc2_:Boolean = false;
         if(this._productionTimeLeft <= 1 || isHarvestReady)
         {
            if(_loc1_ != 3)
            {
               _loc2_ = true;
               this._productionTerm = 3;
               this.stopProductionTime();
            }
         }
         else if(this._productionTimeLeft <= this._totalProductionTime / 2 || this.halfDone())
         {
            if(_loc1_ != 2)
            {
               _loc2_ = true;
               this._productionTerm = 2;
            }
         }
         else if(_loc1_ != 1)
         {
            _loc2_ = true;
            this._productionTerm = 1;
         }
         if(_loc2_)
         {
            dispatchEvent(new Event(EVENT_PRODUCTION_TERM_CHANGED,true,true));
         }
      }
      
      private function halfDone() : Boolean
      {
         if(this.currentProductionPhase)
         {
            if(this.currentProductionPhase.expirationTime - this.currentProductionPhase.config.durationConfig.duration / 2 <= currentTimeStamp)
            {
               return true;
            }
         }
         return false;
      }
      
      public function stopProductionTime() : void
      {
         clearInterval(this._productionInterval);
         this._totalProductionTime = 0;
         this._productionTimeLeft = 0;
      }
      
      public function updateProductionTime() : void
      {
         this._productionTimeLeft = this.currentProductionPhase.timeLeft;
         this._productionTimeLeft = Math.floor(this._productionTimeLeft / 1000);
         this.checkProductionTerm();
      }
      
      override public function get percentageOfRemainingTimer() : Number
      {
         var _loc1_:PhaseDTO = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(isConnectedToStreet && !isUnderConstruction() && !isHarvestReady)
         {
            for each(_loc1_ in activePhases)
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.PRODUCTION)
               {
                  _loc2_ = _loc1_.expirationTime - currentTimeStamp;
                  return _loc2_ / _loc1_.config.durationConfig.duration;
               }
            }
         }
         return super.percentageOfRemainingTimer;
      }
      
      public function get currentRunningEventGFXId() : Number
      {
         return this._currentRunningEventGFXId;
      }
      
      public function set playEventAnimation(param1:Boolean) : void
      {
         this._playEventAnimation = param1;
      }
      
      public function get playEventAnimation() : Boolean
      {
         return this._playEventAnimation;
      }
      
      public function set currentRunningEventGFXId(param1:Number) : void
      {
         if(this._currentRunningEventGFXId != param1)
         {
            this._currentRunningEventGFXId = param1;
            dispatchEvent(new Event("REQUIRED_LIB_CHANGED",true,true));
         }
      }
      
      public function get currentEventLocaleId() : String
      {
         return this._currentEventLocaleId;
      }
      
      public function set currentEventLocaleId(param1:String) : void
      {
         this._currentEventLocaleId = param1;
      }
   }
}

