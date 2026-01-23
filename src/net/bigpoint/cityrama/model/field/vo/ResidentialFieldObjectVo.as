package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemImprovementSlotDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   
   public class ResidentialFieldObjectVo extends BillboardObjectVo implements IEventDrop, IImprovable
   {
      
      private var _residentialNeeds:Vector.<NeedVo>;
      
      private var _hasThisNeed:Boolean;
      
      private var _shopRollOver:Boolean;
      
      private var _currentResidents:String = "unknown";
      
      private var _currentEventLocaleId:String;
      
      private var _currentImprovements:Vector.<ImprovementVo>;
      
      public function ResidentialFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      public function get maxLevel() : int
      {
         return buildingDTO.config.upgradeable ? currentLevel + 1 : currentLevel;
      }
      
      public function get upgradeReady() : Boolean
      {
         if(buildingDTO.config.nextConfigId != 0)
         {
            return Boolean(buildingDTO.upgradeCount >= buildingDTO.config.maxHarvestCount && buildingDTO.currentMasteryChallenge == null);
         }
         return false;
      }
      
      public function get willBeUpgradeReadyOnNextHarvest() : Boolean
      {
         if(buildingDTO.config.nextConfigId != 0)
         {
            return Boolean(buildingDTO.upgradeCount + 1 >= buildingDTO.config.maxHarvestCount);
         }
         return false;
      }
      
      public function get isInUpgradeMode() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         for each(_loc1_ in buildingDTO.activePhases)
         {
            if(_loc1_.config.phaseType == ServerPhaseTypes.UPGRADE)
            {
               return true;
            }
         }
         return false;
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
      
      public function get maxHarvestUpgradeCount() : int
      {
         return buildingDTO.config.maxHarvestCount;
      }
      
      public function get harvestUpgradeCount() : int
      {
         return buildingDTO.upgradeCount;
      }
      
      public function get residentialNeeds() : Vector.<NeedVo>
      {
         return this._residentialNeeds;
      }
      
      public function set residentialNeeds(param1:Vector.<NeedVo>) : void
      {
         this._residentialNeeds = param1;
      }
      
      public function get residentialPhase() : PhaseDTO
      {
         var _loc1_:PhaseDTO = null;
         for each(_loc1_ in activePhases)
         {
            if(_loc1_.config.phaseType == ServerPhaseTypes.RESIDENTIAL)
            {
               return _loc1_;
            }
         }
         return null;
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
      
      public function get hasThisNeed() : Boolean
      {
         return this._hasThisNeed;
      }
      
      public function setHasThisNeed(param1:Number = 0, param2:Boolean = false) : void
      {
         var _loc3_:NeedVo = null;
         if(param1 != 0)
         {
            this._hasThisNeed = false;
            for each(_loc3_ in this._residentialNeeds)
            {
               if(_loc3_.shopConfigIds.indexOf(param1) != -1)
               {
                  this._hasThisNeed = true;
                  this._shopRollOver = param2;
                  break;
               }
            }
         }
         else
         {
            this._hasThisNeed = false;
            this._shopRollOver = false;
         }
      }
      
      public function get shopRollOver() : Boolean
      {
         return this._shopRollOver;
      }
      
      public function get currentResidentType() : String
      {
         var _loc1_:PhaseDTO = null;
         for each(_loc1_ in this.activePhases)
         {
            if(_loc1_.config.phaseType == ServerPhaseTypes.RESIDENT)
            {
               return this._currentResidents = _loc1_.config.listEntryOutputs[0].resourceConfig.type;
            }
         }
         return this._currentResidents;
      }
      
      public function set currentResidents(param1:String) : void
      {
         this._currentResidents = param1;
      }
      
      public function get currentResidents() : String
      {
         return this._currentResidents;
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
               if(_loc1_.config.phaseType == ServerPhaseTypes.RESIDENTIAL)
               {
                  _loc2_ = _loc1_.expirationTime - currentTimeStamp;
                  return _loc2_ / _loc1_.config.durationConfig.duration;
               }
            }
         }
         return super.percentageOfRemainingTimer;
      }
      
      public function get currentEventLocaleId() : String
      {
         return this._currentEventLocaleId;
      }
      
      public function set currentEventLocaleId(param1:String) : void
      {
         this._currentEventLocaleId = param1;
      }
      
      public function get numFreeImprovementSlots() : int
      {
         if(this.currentImprovements)
         {
            return buildingDTO.improvementSlotIds.length - this.currentImprovements.length;
         }
         return 0;
      }
      
      public function get currentImprovements() : Vector.<ImprovementVo>
      {
         return this._currentImprovements;
      }
      
      public function set currentImprovements(param1:Vector.<ImprovementVo>) : void
      {
         this._currentImprovements = param1;
      }
      
      public function get freeImprovementSlots() : Vector.<ConfigPlayfieldItemImprovementSlotDTO>
      {
         var _loc2_:Number = NaN;
         var _loc3_:ImprovementVo = null;
         var _loc4_:ConfigPlayfieldItemImprovementSlotDTO = null;
         var _loc5_:ConfigPlayfieldItemImprovementSlotDTO = null;
         var _loc1_:Vector.<ConfigPlayfieldItemImprovementSlotDTO> = new Vector.<ConfigPlayfieldItemImprovementSlotDTO>();
         for each(_loc2_ in buildingDTO.improvementSlotIds)
         {
            for each(_loc4_ in configPlayfieldItemVo.improvementSlots)
            {
               if(_loc2_ == _loc4_.id)
               {
                  _loc1_.push(_loc4_);
               }
            }
         }
         for each(_loc3_ in this.currentImprovements)
         {
            for each(_loc5_ in _loc1_)
            {
               if(_loc3_.currentSlotId == _loc5_.id)
               {
                  _loc1_.splice(_loc1_.indexOf(_loc5_),1);
               }
            }
         }
         _loc1_.sort(this.sortSlotsByOrderId);
         return _loc1_;
      }
      
      public function get currentActiveImprovements() : Vector.<ImprovementVo>
      {
         var _loc2_:ImprovementVo = null;
         var _loc1_:Vector.<ImprovementVo> = new Vector.<ImprovementVo>();
         for each(_loc2_ in this.currentImprovements)
         {
            if(_loc2_.expirationTime > currentTimeStamp || _loc2_.runtime == -1)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function sortSlotsByOrderId(param1:ConfigPlayfieldItemImprovementSlotDTO, param2:ConfigPlayfieldItemImprovementSlotDTO) : int
      {
         if(param1.orderId < param2.orderId)
         {
            return -1;
         }
         if(param1.orderId > param2.orderId)
         {
            return 1;
         }
         return 0;
      }
   }
}

