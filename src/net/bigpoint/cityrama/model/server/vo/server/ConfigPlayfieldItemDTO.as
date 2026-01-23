package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.errors.IllegalOperationError;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentVo;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.util.RandomUtilities;
   
   public class ConfigPlayfieldItemDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _gfxId:Number;
      
      private var _buildMode:Number;
      
      private var _itemType:Number;
      
      private var _preload:Boolean;
      
      private var _levelId:Number;
      
      private var _sellable:Boolean;
      
      private var _buyable:Boolean;
      
      private var _giftable:Boolean;
      
      private var _walkable:Boolean;
      
      private var _driveable:Boolean;
      
      private var _moveable:Boolean;
      
      private var _destroyable:Boolean;
      
      private var _sizeX:Number;
      
      private var _sizeY:Number;
      
      private var _zLevels:Vector.<Number>;
      
      private var _constructionPhases:Vector.<ConfigPhaseDTO>;
      
      private var _activePhases:Vector.<ConfigPhaseDTO>;
      
      private var _globalBuffs:Vector.<ConfigOutputDTO>;
      
      private var _upgradeConfig:ConfigUpgradeVo;
      
      private var _needShopConfigs:Vector.<ConfigNeedDTO>;
      
      private var _destructionPhases:Vector.<ConfigPhaseDTO>;
      
      private var _animatedSwfName:String;
      
      private var _animatedSwfPath:String;
      
      private var _unlockLevel:Number;
      
      private var _upgradeable:Boolean;
      
      private var _maxHarvestCount:int;
      
      private var _nextConfigId:Number;
      
      private var _permissionConfigId:Number;
      
      private var _permissionConfig:ConfigPlayfieldItemPermissionDTO;
      
      private var _playfieldRestrictions:Vector.<ConfigPlayfieldItemPlayfieldRestrictionDTO>;
      
      private var _needRequireConfigs:Vector.<ConfigNeedRequireDTO>;
      
      private var _tagIds:Vector.<Number>;
      
      private var _localeId:String;
      
      private var _specialHighlighting:Boolean;
      
      private var _isPremium:Boolean;
      
      private var _maxResidents:Number;
      
      private var _residents:Vector.<ResidentVo>;
      
      private var _configSecurityGrades:Vector.<ConfigSecurityGradeDTO>;
      
      private var _maxProfessionalAmount:int;
      
      private var _isUpgrade:Boolean = false;
      
      private var _upgradeLevel:int = -1;
      
      private var _virtualObjectOverride:String;
      
      private var _educationSteps:Vector.<ConfigEducationStepDTO>;
      
      private var _tags:Vector.<String>;
      
      private var _educationBasicTime:uint;
      
      private var _configInventoryBagId:int;
      
      private var _improvementSlots:Vector.<ConfigPlayfieldItemImprovementSlotDTO>;
      
      private var _configMasteryChallengeDTO:ConfigMasteryChallengeDTO;
      
      private var _mysteryOutputPossiblities:Vector.<ConfigOutputDTO>;
      
      public function ConfigPlayfieldItemDTO(param1:Object = null)
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Number = NaN;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:Object = null;
         var _loc14_:Object = null;
         super();
         if(param1 == null)
         {
            return;
         }
         this._id = param1.id;
         this._gfxId = param1.gf;
         this._buildMode = param1.bm;
         this._itemType = param1.it;
         this._preload = param1.fp;
         this._levelId = param1.l;
         this._sellable = param1.s;
         this._buyable = param1.b;
         this._giftable = param1.g;
         this._moveable = param1.m;
         this._localeId = param1.fl;
         this._maxHarvestCount = param1.upc;
         this._nextConfigId = param1.uic;
         this._upgradeable = param1.up;
         this._destroyable = param1.d;
         this._walkable = param1.w;
         this._driveable = param1.dr;
         this._sizeX = param1.x;
         this._sizeY = param1.y;
         this._permissionConfigId = param1.cpi;
         this._maxProfessionalAmount = param1.ps;
         this._configSecurityGrades = new Vector.<ConfigSecurityGradeDTO>();
         for each(_loc2_ in param1.csg)
         {
            this._configSecurityGrades.push(new ConfigSecurityGradeDTO(_loc2_));
         }
         this._zLevels = new Vector.<Number>();
         for each(_loc3_ in param1.z)
         {
            this._zLevels.push(_loc3_);
         }
         this._constructionPhases = new Vector.<ConfigPhaseDTO>();
         if(param1.cph != null)
         {
            for each(_loc4_ in param1.cph)
            {
               this._constructionPhases.push(new ConfigPhaseDTO(_loc4_));
            }
         }
         this._activePhases = new Vector.<ConfigPhaseDTO>();
         if(param1.aph != null)
         {
            for each(_loc5_ in param1.aph)
            {
               this._activePhases.push(new ConfigPhaseDTO(_loc5_));
            }
         }
         this._destructionPhases = new Vector.<ConfigPhaseDTO>();
         if(param1.dph != null)
         {
            for each(_loc6_ in param1.dph)
            {
               this._destructionPhases.push(new ConfigPhaseDTO(_loc6_));
            }
         }
         this._globalBuffs = new Vector.<ConfigOutputDTO>();
         if(param1.gbu != null)
         {
            for each(_loc7_ in param1.gbu)
            {
               this._globalBuffs.push(new ConfigOutputDTO(_loc7_));
            }
         }
         this._upgradeConfig = new ConfigUpgradeVo(param1.ug);
         this._needShopConfigs = new Vector.<ConfigNeedDTO>();
         if(param1.nd != null)
         {
            for each(_loc8_ in param1.nd)
            {
               this._needShopConfigs.push(new ConfigNeedDTO(_loc8_));
            }
         }
         this._needRequireConfigs = new Vector.<ConfigNeedRequireDTO>();
         if(param1.nq != null)
         {
            for each(_loc9_ in param1.nq)
            {
               this._needRequireConfigs.push(new ConfigNeedRequireDTO(_loc9_));
            }
         }
         this._tags = new Vector.<String>();
         this._tagIds = new Vector.<Number>();
         if(param1.tag != null)
         {
            for each(_loc10_ in param1.tag)
            {
               this._tagIds.push(_loc10_);
            }
         }
         this._maxResidents = this.getMaxResidents();
         if(param1.edc)
         {
            this._educationSteps = new Vector.<ConfigEducationStepDTO>();
            for each(_loc11_ in param1.edc)
            {
               this._educationSteps.push(new ConfigEducationStepDTO(_loc11_));
            }
         }
         this._educationBasicTime = param1.et;
         this._configInventoryBagId = param1.cibi;
         this._improvementSlots = new Vector.<ConfigPlayfieldItemImprovementSlotDTO>();
         if(param1.sl)
         {
            for each(_loc12_ in param1.sl)
            {
               this._improvementSlots.push(new ConfigPlayfieldItemImprovementSlotDTO(_loc12_));
            }
            this._improvementSlots.sort(this.sortOrder);
         }
         this._playfieldRestrictions = new Vector.<ConfigPlayfieldItemPlayfieldRestrictionDTO>();
         if(param1.cpr)
         {
            for each(_loc13_ in param1.cpr)
            {
               this._playfieldRestrictions.push(new ConfigPlayfieldItemPlayfieldRestrictionDTO(_loc13_));
            }
         }
         if(param1.ma)
         {
            this._configMasteryChallengeDTO = new ConfigMasteryChallengeDTO(param1.ma);
         }
         this._mysteryOutputPossiblities = new Vector.<ConfigOutputDTO>();
         if(param1.myst)
         {
            for each(_loc14_ in param1.myst)
            {
               this._mysteryOutputPossiblities.push(new ConfigOutputDTO(_loc14_));
            }
         }
      }
      
      private function getMaxResidents() : Number
      {
         var _loc1_:Vector.<ConfigPhaseDTO> = this.getAllPhasesByType(ServerPhaseTypes.RESIDENT);
         if(_loc1_ != null && _loc1_.length > 0)
         {
            if(_loc1_[0].listEntryOutputs[0])
            {
               return _loc1_[0].listEntryOutputs[0].outputAmount;
            }
         }
         return 0;
      }
      
      private function sortOrder(param1:ConfigPlayfieldItemImprovementSlotDTO, param2:ConfigPlayfieldItemImprovementSlotDTO) : int
      {
         if(param1.orderId > param2.orderId)
         {
            return 1;
         }
         if(param1.orderId < param2.orderId)
         {
            return -1;
         }
         return 0;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:Number) : void
      {
         this._gfxId = param1;
      }
      
      public function get itemType() : Number
      {
         throw new IllegalOperationError("Deprecated use class or tags instead");
      }
      
      public function set itemType(param1:Number) : void
      {
         throw new IllegalOperationError("Deprecated use class or tags instead");
      }
      
      public function get preload() : Boolean
      {
         return this._preload;
      }
      
      public function set preload(param1:Boolean) : void
      {
         this._preload = param1;
      }
      
      public function get buildMode() : Number
      {
         return this._buildMode;
      }
      
      public function set buildMode(param1:Number) : void
      {
         this._buildMode = param1;
      }
      
      public function get levelId() : Number
      {
         return this._levelId;
      }
      
      public function set levelId(param1:Number) : void
      {
         this._levelId = param1;
      }
      
      public function get sellable() : Boolean
      {
         return this._sellable;
      }
      
      public function set sellable(param1:Boolean) : void
      {
         this._sellable = param1;
      }
      
      public function get buyable() : Boolean
      {
         return this._buyable;
      }
      
      public function set buyable(param1:Boolean) : void
      {
         this._buyable = param1;
      }
      
      public function get giftable() : Boolean
      {
         return this._giftable;
      }
      
      public function set giftable(param1:Boolean) : void
      {
         this._giftable = param1;
      }
      
      public function get moveable() : Boolean
      {
         return this._moveable;
      }
      
      public function set moveable(param1:Boolean) : void
      {
         this._moveable = param1;
      }
      
      public function get destroyable() : Boolean
      {
         return this._destroyable;
      }
      
      public function set destroyable(param1:Boolean) : void
      {
         this._destroyable = param1;
      }
      
      public function get walkable() : Boolean
      {
         return this._walkable;
      }
      
      public function set walkable(param1:Boolean) : void
      {
         this._walkable = param1;
      }
      
      public function get driveable() : Boolean
      {
         return this._driveable;
      }
      
      public function set driveable(param1:Boolean) : void
      {
         this._driveable = param1;
      }
      
      public function get sizeX() : Number
      {
         return this._sizeX;
      }
      
      public function set sizeX(param1:Number) : void
      {
         this._sizeX = param1;
      }
      
      public function get sizeY() : Number
      {
         return this._sizeY;
      }
      
      public function set sizeY(param1:Number) : void
      {
         this._sizeY = param1;
      }
      
      public function get zLevels() : Vector.<Number>
      {
         return this._zLevels;
      }
      
      public function set zLevels(param1:Vector.<Number>) : void
      {
         this._zLevels = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get destructionPhases() : Vector.<ConfigPhaseDTO>
      {
         return this._destructionPhases;
      }
      
      public function get needShopConfigs() : Vector.<ConfigNeedDTO>
      {
         return this._needShopConfigs;
      }
      
      public function get upgradeConfig() : ConfigUpgradeVo
      {
         return this._upgradeConfig;
      }
      
      public function get globalBuffs() : Vector.<ConfigOutputDTO>
      {
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:Boolean = false;
         var _loc6_:ConfigOutputDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc8_:Boolean = false;
         var _loc9_:ConfigOutputDTO = null;
         var _loc1_:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>();
         for each(_loc2_ in this.constructionPhases)
         {
            for each(_loc4_ in _loc2_.listEntryOutputs)
            {
               if(_loc4_.resourceConfig == null)
               {
                  continue;
               }
               switch(_loc4_.resourceConfig.type)
               {
                  case ServerResConst.RESOURCE_ENERGY_NEGATIVE:
                  case ServerResConst.RESOURCE_ENERGY_POSITIVE:
                  case ServerResConst.RESOURCE_HAPPINESS_NEGATIVE:
                  case ServerResConst.RESOURCE_HAPPINESS_POSITIVE:
                  case ServerResConst.RESOURCE_POPULATION:
                     _loc5_ = false;
                     for each(_loc6_ in _loc1_)
                     {
                        if(_loc6_.configId == _loc4_.configId)
                        {
                           _loc5_ = true;
                           break;
                        }
                     }
                     if(!_loc5_)
                     {
                        _loc1_.push(_loc4_);
                     }
               }
            }
         }
         for each(_loc3_ in this.activePhases)
         {
            if(_loc3_.phaseType == ServerPhaseTypes.ACTIVATION)
            {
               for each(_loc7_ in _loc3_.listEntryOutputs)
               {
                  if(_loc7_.resourceConfig == null)
                  {
                     continue;
                  }
                  switch(_loc7_.resourceConfig.type)
                  {
                     case ServerResConst.RESOURCE_ENERGY_NEGATIVE:
                     case ServerResConst.RESOURCE_ENERGY_POSITIVE:
                     case ServerResConst.RESOURCE_HAPPINESS_NEGATIVE:
                     case ServerResConst.RESOURCE_HAPPINESS_POSITIVE:
                     case ServerResConst.RESOURCE_POPULATION:
                        for each(_loc9_ in _loc1_)
                        {
                           if(RandomUtilities.isEqual(_loc9_,_loc7_))
                           {
                              _loc8_ = true;
                              break;
                           }
                           _loc8_ = false;
                        }
                        if(!_loc8_)
                        {
                           _loc1_.push(_loc7_);
                        }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function get activePhases() : Vector.<ConfigPhaseDTO>
      {
         return this._activePhases;
      }
      
      public function getActivePhaseByOrderId(param1:int) : ConfigPhaseDTO
      {
         var _loc2_:ConfigPhaseDTO = null;
         for each(_loc2_ in this._activePhases)
         {
            if(_loc2_.phaseOrderId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get constructionPhases() : Vector.<ConfigPhaseDTO>
      {
         return this._constructionPhases;
      }
      
      public function getConstructionPhaseByOrderId(param1:int) : ConfigPhaseDTO
      {
         var _loc2_:ConfigPhaseDTO = null;
         for each(_loc2_ in this._constructionPhases)
         {
            if(_loc2_.phaseOrderId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function set animatedSwfPath(param1:String) : void
      {
         this._animatedSwfPath = param1;
      }
      
      public function get animatedSwfPath() : String
      {
         return this._animatedSwfPath;
      }
      
      public function get animatedSwfName() : String
      {
         return this._animatedSwfName;
      }
      
      public function set animatedSwfName(param1:String) : void
      {
         this._animatedSwfName = param1;
      }
      
      public function set unlockLevel(param1:Number) : void
      {
         this._unlockLevel = param1;
      }
      
      public function get unlockLevel() : Number
      {
         return this._unlockLevel;
      }
      
      public function getFirstPhaseByType(param1:String) : ConfigPhaseDTO
      {
         var _loc2_:ConfigPhaseDTO = null;
         for each(_loc2_ in this._activePhases)
         {
            if(_loc2_.phaseType == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc2_ in this._constructionPhases)
         {
            if(_loc2_.phaseType == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc2_ in this._destructionPhases)
         {
            if(_loc2_.phaseType == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getAllPhasesByType(param1:String) : Vector.<ConfigPhaseDTO>
      {
         var _loc3_:ConfigPhaseDTO = null;
         var _loc2_:Vector.<ConfigPhaseDTO> = new Vector.<ConfigPhaseDTO>();
         for each(_loc3_ in this._activePhases)
         {
            if(_loc3_.phaseType == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc3_ in this._constructionPhases)
         {
            if(_loc3_.phaseType == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc3_ in this._destructionPhases)
         {
            if(_loc3_.phaseType == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function get upgradeable() : Boolean
      {
         return this._upgradeable;
      }
      
      public function get maxHarvestCount() : int
      {
         return this._maxHarvestCount;
      }
      
      public function get permissionConfigId() : Number
      {
         return this._permissionConfigId;
      }
      
      public function get nextConfigId() : Number
      {
         return this._nextConfigId;
      }
      
      public function set nextConfigId(param1:Number) : void
      {
         this._nextConfigId = param1;
      }
      
      public function get needRequireConfigs() : Vector.<ConfigNeedRequireDTO>
      {
         return this._needRequireConfigs;
      }
      
      public function set needRequireConfigs(param1:Vector.<ConfigNeedRequireDTO>) : void
      {
         this._needRequireConfigs = param1;
      }
      
      public function get tagIds() : Vector.<Number>
      {
         return this._tagIds;
      }
      
      public function get tags() : Vector.<String>
      {
         return this._tags;
      }
      
      public function set tags(param1:Vector.<String>) : void
      {
         this._tags = param1;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get permissionConfig() : ConfigPlayfieldItemPermissionDTO
      {
         return this._permissionConfig;
      }
      
      public function set permissionConfig(param1:ConfigPlayfieldItemPermissionDTO) : void
      {
         this._permissionConfig = param1;
      }
      
      public function get specialHighlighting() : Boolean
      {
         return this._specialHighlighting;
      }
      
      public function set specialHighlighting(param1:Boolean) : void
      {
         this._specialHighlighting = param1;
      }
      
      public function get isPremium() : Boolean
      {
         return this._isPremium;
      }
      
      public function set isPremium(param1:Boolean) : void
      {
         this._isPremium = param1;
      }
      
      public function get maxResidents() : Number
      {
         return this._maxResidents;
      }
      
      public function get residents() : Vector.<ResidentVo>
      {
         return this._residents;
      }
      
      public function set residents(param1:Vector.<ResidentVo>) : void
      {
         this._residents = param1;
      }
      
      public function get isUpgrade() : Boolean
      {
         return this._isUpgrade;
      }
      
      public function set isUpgrade(param1:Boolean) : void
      {
         this._isUpgrade = param1;
      }
      
      public function get configSecurityGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         return this._configSecurityGrades;
      }
      
      public function get maxProfessionalAmount() : int
      {
         return this._maxProfessionalAmount;
      }
      
      public function get virtualObjectOverride() : String
      {
         return this._virtualObjectOverride;
      }
      
      public function set virtualObjectOverride(param1:String) : void
      {
         this._virtualObjectOverride = param1;
      }
      
      public function get educationSteps() : Vector.<ConfigEducationStepDTO>
      {
         return this._educationSteps;
      }
      
      public function get educationBasicTime() : uint
      {
         return this._educationBasicTime;
      }
      
      public function get configInventoryBagId() : int
      {
         return this._configInventoryBagId;
      }
      
      public function get improvementSlots() : Vector.<ConfigPlayfieldItemImprovementSlotDTO>
      {
         return this._improvementSlots;
      }
      
      public function get playfieldRestrictions() : Vector.<ConfigPlayfieldItemPlayfieldRestrictionDTO>
      {
         return this._playfieldRestrictions;
      }
      
      public function get configMasteryChallengeDTO() : ConfigMasteryChallengeDTO
      {
         return this._configMasteryChallengeDTO;
      }
      
      public function get mysteryOutputPossiblities() : Vector.<ConfigOutputDTO>
      {
         return this._mysteryOutputPossiblities;
      }
      
      public function get upgradeLevel() : int
      {
         return this._upgradeLevel;
      }
      
      public function set upgradeLevel(param1:int) : void
      {
         this._upgradeLevel = param1;
      }
      
      public function get baseValueForRCConstructionCost() : Number
      {
         var _loc2_:ConfigOutputDTO = null;
         var _loc1_:Vector.<ConfigPhaseDTO> = this.getAllPhasesByType(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
         if(_loc1_ != null && _loc1_.length > 0)
         {
            _loc2_ = _loc1_[0].getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_REALCURRENCY);
            if(_loc2_ != null)
            {
               return _loc2_.outputAmount;
            }
         }
         return -1;
      }
   }
}

