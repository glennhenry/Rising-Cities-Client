package net.bigpoint.cityrama.model.field.vo
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.interfaces.IBillboardObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryBonusDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   
   public class BillboardObjectVo extends GameObjectVo implements IBillboardObjectVo, IFloaterObjectVo, IIcondataVo
   {
      
      public static const INVALIDATED:String = "INVALIDATED";
      
      public static const EMERGENCY_PROGRESS_CHANGED:String = "EMERGENCY_PROGRESS_CHANGED";
      
      protected var _currentTimestamp:Number;
      
      protected var _buildingDTO:BuildingDTO;
      
      private var _showPlacementPreview:Boolean;
      
      private var _showFinalAsset:Boolean;
      
      private var _isInBaseMode:Boolean;
      
      private var _isConnectedToStreet:Boolean;
      
      private var _isRestrictedByGround:Boolean;
      
      private var _terrainTypeNeeded:String;
      
      private var _isBlockedByBoulder:Boolean;
      
      private var _isBlockedByObject:Boolean;
      
      private var _informationFloaterPhase:ConfigPhaseDTO;
      
      private var _informationFloaterCustomText:String;
      
      private var _useIcons:Boolean = true;
      
      private var _hideIconsForMoveMode:Boolean;
      
      private var _userInteractionLocked:Boolean;
      
      private var _iconOffset:Point;
      
      private var _baseIconOffset:Point;
      
      private var _constructionIconOffset:Point;
      
      private var _placementIconOffset:Point;
      
      private var _currentApplicationMode:String = "";
      
      private var _emergencyInProgress:Boolean;
      
      private var _emergencyProgressInterval:uint;
      
      private var _happinessModifier:Number = 1;
      
      private var _energyModifier:Number = 1;
      
      private var _doubleBonusDayModifier:Number = 0;
      
      private var _isExpansionObject:Boolean = false;
      
      private var _expansionObject:ExpansionFieldObject;
      
      private var _currentLevel:int = 1;
      
      public function BillboardObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
         this._iconOffset = new Point();
         this._baseIconOffset = new Point();
         this._constructionIconOffset = new Point();
         this._placementIconOffset = new Point();
      }
      
      public function get currentLevel() : int
      {
         if(this.buildingDTO == null)
         {
            return this._currentLevel;
         }
         return this.buildingDTO.buildingLevel + 1;
      }
      
      public function set currentLevel(param1:int) : void
      {
         this._currentLevel = param1;
      }
      
      public function get buildingDTO() : BuildingDTO
      {
         return this._buildingDTO;
      }
      
      public function set buildingDTO(param1:BuildingDTO) : void
      {
         this._buildingDTO = param1;
         this._isConnectedToStreet = this._buildingDTO.active;
         this.invalidate();
      }
      
      public function set currentTimeStamp(param1:Number) : void
      {
         this._currentTimestamp = param1;
      }
      
      public function get currentTimeStamp() : Number
      {
         return this._currentTimestamp;
      }
      
      public function get useConstructionAsset() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         var _loc2_:ConfigPhaseDTO = null;
         if(this._showPlacementPreview)
         {
            return true;
         }
         if(this._showFinalAsset)
         {
            return false;
         }
         if(this._buildingDTO != null)
         {
            for each(_loc1_ in this._buildingDTO.activePhases)
            {
               if(_loc1_)
               {
                  if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION || _loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
                  {
                     return true;
                  }
               }
            }
            return false;
         }
         if(this is DecorationFieldObjectVo || this is CitySquareFieldObjectVo || this is CinemaFieldObjectVo || this is ScheduledDropFieldObjectVo)
         {
            return false;
         }
         if(configPlayfieldItemVo)
         {
            for each(_loc2_ in configPlayfieldItemVo.constructionPhases)
            {
               if(_loc2_)
               {
                  if(_loc2_.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc2_.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
                  {
                     return true;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public function get openConstructionLayer() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(this._buildingDTO != null)
         {
            var _loc2_:int = 0;
            var _loc3_:* = this._buildingDTO.activePhases;
            for each(_loc1_ in _loc3_)
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION)
               {
                  return true;
               }
               if(_loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION && !this.isHarvestReady)
               {
                  return true;
               }
               return false;
            }
         }
         return false;
      }
      
      public function set showPlacementPreview(param1:Boolean) : void
      {
         this._showPlacementPreview = param1;
      }
      
      public function set showFinalAsset(param1:Boolean) : void
      {
         this._showFinalAsset = param1;
      }
      
      public function get currentBuildAsset() : int
      {
         var _loc1_:PhaseDTO = null;
         if(this._buildingDTO != null)
         {
            for each(_loc1_ in this._buildingDTO.activePhases)
            {
               if((_loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION) && this._buildingDTO.buildingLevel == 0)
               {
                  return 1;
               }
               if((_loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION) && this._buildingDTO.buildingLevel > 0)
               {
                  return 2;
               }
               if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION)
               {
                  return 2;
               }
            }
            return -1;
         }
         return 1;
      }
      
      public function get activePhases() : Vector.<PhaseDTO>
      {
         var _loc1_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         if(this._buildingDTO)
         {
            _loc1_ = this._buildingDTO.activePhases;
         }
         return _loc1_;
      }
      
      public function get isInBaseMode() : Boolean
      {
         return this._isInBaseMode;
      }
      
      public function set isInBaseMode(param1:Boolean) : void
      {
         this._isInBaseMode = param1;
      }
      
      public function invalidate() : void
      {
         dispatchEvent(new Event(INVALIDATED));
      }
      
      public function resetHarvestTimer() : void
      {
         var _loc1_:PhaseDTO = null;
         if(this._buildingDTO)
         {
            for each(_loc1_ in this._buildingDTO.activePhases)
            {
               if(_loc1_)
               {
                  if(_loc1_.config.phaseType == ServerPhaseTypes.RESIDENTIAL || _loc1_.config.phaseType == ServerPhaseTypes.PRODUCTION)
                  {
                     _loc1_.expirationTime = Number.MAX_VALUE;
                     _loc1_.timeLeft = Number.MAX_VALUE;
                  }
               }
            }
         }
      }
      
      public function get isHarvestReady() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(this._buildingDTO)
         {
            for each(_loc1_ in this._buildingDTO.activePhases)
            {
               if(_loc1_)
               {
                  if(_loc1_.config.phaseType == ServerPhaseTypes.RESIDENTIAL || _loc1_.config.phaseType == ServerPhaseTypes.PRODUCTION)
                  {
                     if(_loc1_.timeLeft == 0 || _loc1_.expirationTime <= this.currentTimeStamp && this.isConnectedToStreet)
                     {
                        return true;
                     }
                  }
               }
            }
         }
         return false;
      }
      
      public function userCanAffordPlacement(param1:ConfigPlayfieldItemDTO, param2:Number, param3:Number, param4:Boolean) : Boolean
      {
         var _loc5_:ConfigOutputDTO = null;
         if(!param4)
         {
            for each(_loc5_ in param1.constructionPhases[0].listEntryOutputs)
            {
               if(_loc5_.resourceConfig)
               {
                  if(_loc5_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                  {
                     if(Math.abs(_loc5_.outputAmount) > param2)
                     {
                        return false;
                     }
                  }
               }
            }
         }
         return true;
      }
      
      public function set activePhases(param1:Vector.<PhaseDTO>) : void
      {
         this.buildingDTO.activePhases = param1;
         this.invalidate();
      }
      
      public function get isConnectedToStreet() : Boolean
      {
         return this._isConnectedToStreet;
      }
      
      public function set isConnectedToStreet(param1:Boolean) : void
      {
         this._isConnectedToStreet = param1;
         this.invalidate();
      }
      
      public function get uprgadePhase() : PhaseDTO
      {
         var _loc1_:PhaseDTO = null;
         for each(_loc1_ in this.activePhases)
         {
            if(_loc1_.config.phaseType == ServerPhaseTypes.UPGRADE)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function get inaugurationPhase() : ConfigPhaseDTO
      {
         var _loc1_:ConfigPhaseDTO = null;
         for each(_loc1_ in configPlayfieldItemVo.constructionPhases)
         {
            if(_loc1_.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function get isReadyToInaugurate() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(this.buildingDTO != null)
         {
            for each(_loc1_ in this.activePhases)
            {
               if(_loc1_)
               {
                  if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function isReadyForNextConstructionStep() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(this.buildingDTO != null)
         {
            var _loc2_:int = 0;
            var _loc3_:* = this.activePhases;
            for each(_loc1_ in _loc3_)
            {
               if(_loc1_ == null)
               {
                  throw new RamaCityError("Phase is null in item id:" + this.buildingDTO.id + " cid:" + this.buildingDTO.configId + " gfxid:" + this.buildingDTO.config.gfxId + " localename:" + LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this.buildingDTO.config.localeId));
               }
               if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
               {
                  if(_loc1_.timeLeft == 0 || _loc1_.expirationTime <= this.currentTimeStamp)
                  {
                     return true;
                  }
                  return false;
               }
               if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION)
               {
                  return true;
               }
               return false;
            }
         }
         return false;
      }
      
      public function get isReadyForMasteryTraitSelection() : Boolean
      {
         var _loc1_:MasteryBonusDTO = null;
         if(this is ResidentialFieldObjectVo)
         {
            if(this.buildingDTO != null)
            {
               if((this as ResidentialFieldObjectVo).currentLevel == (this as ResidentialFieldObjectVo).maxLevel)
               {
                  _loc1_ = this.buildingDTO.currentMasteryBonus;
                  if(_loc1_)
                  {
                     if(_loc1_.highestUnlockedBonusGroup == 5 && _loc1_.selectedBonus == 0)
                     {
                        return true;
                     }
                  }
               }
            }
         }
         return false;
      }
      
      public function get informationFloaterPhase() : ConfigPhaseDTO
      {
         return this._informationFloaterPhase;
      }
      
      public function set informationFloaterPhase(param1:ConfigPhaseDTO) : void
      {
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         if(param1 != null)
         {
            if(param1.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
            {
               for each(_loc2_ in configPlayfieldItemVo.activePhases)
               {
                  if(_loc2_.phaseType == ServerPhaseTypes.ACTIVATION)
                  {
                     _loc3_ = param1.clone();
                     for each(_loc4_ in _loc2_.listEntryOutputs)
                     {
                        _loc3_.listEntryOutputs.push(_loc4_);
                     }
                     this._informationFloaterPhase = _loc3_;
                     return;
                  }
               }
               this._informationFloaterPhase = param1;
            }
            else
            {
               this._informationFloaterPhase = param1;
            }
         }
         else
         {
            this._informationFloaterPhase = null;
         }
      }
      
      public function get informationFloaterCustomText() : String
      {
         return this._informationFloaterCustomText;
      }
      
      public function set informationFloaterCustomText(param1:String) : void
      {
         this._informationFloaterCustomText = param1;
      }
      
      public function get useIcons() : Boolean
      {
         if(this.buildingDTO != null && this.buildingDTO.emergencyDTO != null)
         {
            return false;
         }
         return this._useIcons;
      }
      
      public function set useIcons(param1:Boolean) : void
      {
         this._useIcons = param1;
      }
      
      public function getConstructionInstantFinishCost() : Number
      {
         var _loc1_:PhaseDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         for each(_loc1_ in this.activePhases)
         {
            if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
            {
               for each(_loc2_ in _loc1_.config.instantFinshOutput)
               {
                  if(_loc2_.resourceConfig != null)
                  {
                     if(_loc2_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
                     {
                        return Math.abs(_loc2_.outputAmount);
                     }
                  }
               }
            }
         }
         return 0;
      }
      
      public function isUnderConstruction() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         for each(_loc1_ in this.activePhases)
         {
            if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION || _loc1_.config.phaseType == ServerPhaseTypes.CREATE_ACTIVATE || _loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
            {
               return true;
            }
         }
         return false;
      }
      
      public function set hideIconsForMoveMode(param1:Boolean) : void
      {
         this._hideIconsForMoveMode = param1;
      }
      
      public function get currentMode() : String
      {
         return this._currentApplicationMode;
      }
      
      public function get hideIconsForMoveMode() : Boolean
      {
         return this._hideIconsForMoveMode;
      }
      
      public function get userInteractionLocked() : Boolean
      {
         return this._userInteractionLocked;
      }
      
      public function set userInteractionLocked(param1:Boolean) : void
      {
         this._userInteractionLocked = param1;
      }
      
      public function set iconOffset(param1:Point) : void
      {
         this._iconOffset = param1;
      }
      
      public function get iconOffset() : Point
      {
         return this._iconOffset;
      }
      
      public function set baseIconOffset(param1:Point) : void
      {
         this._baseIconOffset = param1;
      }
      
      public function get baseIconOffset() : Point
      {
         return this._baseIconOffset;
      }
      
      public function set constructionIconOffset(param1:Point) : void
      {
         this._constructionIconOffset = param1;
      }
      
      public function get constructionIconOffset() : Point
      {
         return this._constructionIconOffset;
      }
      
      public function set placementIconOffset(param1:Point) : void
      {
         this._placementIconOffset = param1;
      }
      
      public function get placementIconOffset() : Point
      {
         return this._placementIconOffset;
      }
      
      public function get percentageOfRemainingTimer() : Number
      {
         var _loc1_:PhaseDTO = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(this.isConnectedToStreet && this.isUnderConstruction())
         {
            for each(_loc1_ in this.activePhases)
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION || _loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
               {
                  _loc2_ = _loc1_.expirationTime - this.currentTimeStamp;
                  return _loc2_ / _loc1_.config.durationConfig.duration;
               }
            }
         }
         return -1;
      }
      
      public function set currentApplicationMode(param1:String) : void
      {
         this._currentApplicationMode = param1;
      }
      
      public function get emergencyState() : String
      {
         if(this.buildingDTO)
         {
            if(this.buildingDTO.emergencyDTO != null)
            {
               return this.buildingDTO.emergencyDTO.status;
            }
         }
         return null;
      }
      
      public function get emergencyInProgress() : Boolean
      {
         return this._emergencyInProgress;
      }
      
      public function set emergencyInProgress(param1:Boolean) : void
      {
         clearInterval(this._emergencyProgressInterval);
         if(!RandomUtilities.isEqual(param1,this._emergencyInProgress))
         {
            this._emergencyInProgress = param1;
            dispatchEvent(new Event(EMERGENCY_PROGRESS_CHANGED));
         }
         if(this._emergencyInProgress)
         {
            this._emergencyProgressInterval = setInterval(this.onEmergencyProgressDone,10000);
         }
      }
      
      private function onEmergencyProgressDone() : void
      {
         this.emergencyInProgress = false;
      }
      
      public function hasEmergency() : Boolean
      {
         return this.emergencyState != null;
      }
      
      public function interactionBlockedByEmergency() : Boolean
      {
         return this.emergencyState == EmergencyConstants.EMERGENCY_STATUS_STARTED;
      }
      
      public function get isRestrictedByGround() : Boolean
      {
         return this._isRestrictedByGround;
      }
      
      public function set isRestrictedByGround(param1:Boolean) : void
      {
         this._isRestrictedByGround = param1;
      }
      
      public function get isBlockedByBoulder() : Boolean
      {
         return this._isBlockedByBoulder;
      }
      
      public function set isBlockedByBoulder(param1:Boolean) : void
      {
         this._isBlockedByBoulder = param1;
      }
      
      public function get isBlockedByObject() : Boolean
      {
         return this._isBlockedByObject;
      }
      
      public function set isBlockedByObject(param1:Boolean) : void
      {
         this._isBlockedByObject = param1;
      }
      
      public function get terrainTypeNeeded() : String
      {
         return this._terrainTypeNeeded;
      }
      
      public function set terrainTypeNeeded(param1:String) : void
      {
         this._terrainTypeNeeded = param1;
      }
      
      public function get happinessModifier() : Number
      {
         return this._happinessModifier;
      }
      
      public function set happinessModifier(param1:Number) : void
      {
         this._happinessModifier = param1;
      }
      
      public function get energyModifier() : Number
      {
         return this._energyModifier;
      }
      
      public function set energyModifier(param1:Number) : void
      {
         this._energyModifier = param1;
      }
      
      public function get doubleBonusDayModifier() : Number
      {
         return this._doubleBonusDayModifier;
      }
      
      public function set doubleBonusDayModifier(param1:Number) : void
      {
         this._doubleBonusDayModifier = param1;
      }
      
      public function get isExpansionObject() : Boolean
      {
         return this._isExpansionObject;
      }
      
      public function set isExpansionObject(param1:Boolean) : void
      {
         this._isExpansionObject = param1;
      }
      
      public function set expansionObject(param1:ExpansionFieldObject) : void
      {
         this._expansionObject = param1;
      }
      
      public function get expansionObject() : ExpansionFieldObject
      {
         return this._expansionObject;
      }
   }
}

