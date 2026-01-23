package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class BuildingDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _posX:Number;
      
      private var _posY:Number;
      
      private var _created:Number;
      
      private var _buildingLevel:Number;
      
      private var _condition:Number;
      
      private var _dirty:Number;
      
      private var _active:Boolean;
      
      private var _upgradeCount:int;
      
      private var _activePhases:Vector.<PhaseDTO>;
      
      private var _needProductStock:Vector.<NeedStackDTO>;
      
      private var _emergencyDTO:EmergencyDTO;
      
      private var _professionals:Vector.<ProfessionalDTO>;
      
      private var _improvementSlotIds:Vector.<Number>;
      
      private var _improvements:Vector.<ImprovementDTO>;
      
      private var _lastUpdatedTimeStamp:Number;
      
      private var _config:ConfigPlayfieldItemDTO;
      
      private var _isCorrupt:Boolean = false;
      
      private var _corruptServerObject:Object;
      
      private var _currentMasteryChallenge:MasteryChallengeDTO;
      
      private var _currentMasteryBonus:MasteryBonusDTO;
      
      public function BuildingDTO(param1:Object, param2:ConfigPlayfieldItemDTO)
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         super();
         this._id = param1.id;
         this._configId = param1.c;
         this._posX = param1.x;
         this._posY = param1.y;
         this._created = param1.cr;
         this._buildingLevel = param1.l;
         this._condition = param1.co;
         this._dirty = param1.d;
         this._active = param1.a;
         this._upgradeCount = param1.upc;
         this._lastUpdatedTimeStamp = param1.lu;
         if(param1.e)
         {
            this._emergencyDTO = ConfigFactory.buildEmergencyDTO(param1.e);
         }
         this._activePhases = new Vector.<PhaseDTO>();
         if(param1.ph)
         {
            for each(_loc3_ in param1.ph)
            {
               if(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc3_,param2) == null)
               {
                  this._isCorrupt = true;
                  this._corruptServerObject = param1;
               }
               else
               {
                  this._activePhases.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc3_,param2));
               }
            }
         }
         this._needProductStock = new Vector.<NeedStackDTO>();
         if(param1.n)
         {
            for each(_loc4_ in param1.n)
            {
               this._needProductStock.push(new NeedStackDTO(_loc4_));
            }
         }
         this._professionals = new Vector.<ProfessionalDTO>();
         if(param1.pr)
         {
            for each(_loc5_ in param1.pr)
            {
               this._professionals.push(ConfigFactory.buildProfessionalDTO(_loc5_));
            }
         }
         this._improvementSlotIds = new Vector.<Number>();
         if(param1.sl)
         {
            for each(_loc6_ in param1.sl)
            {
               this._improvementSlotIds.push(_loc6_);
            }
         }
         this._improvements = new Vector.<ImprovementDTO>();
         if(param1.imp)
         {
            for each(_loc7_ in param1.imp)
            {
               this._improvements.push(new ImprovementDTO(_loc7_));
            }
         }
         if(param1.mb)
         {
            this._currentMasteryBonus = ConfigFactory.getMasterBonusDTO(param1.mb);
         }
         this._config = param2;
         if(param1.m)
         {
            if(this._currentMasteryBonus == null || this._currentMasteryBonus.highestUnlockedBonusGroup < 5)
            {
               this.currentMasteryChallenge = new MasteryChallengeDTO(param1.m);
            }
         }
      }
      
      public function get config() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigPlayfieldItemDTO) : void
      {
         this._config = param1;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get posY() : Number
      {
         return this._posY;
      }
      
      public function set posY(param1:Number) : void
      {
         this._posY = param1;
      }
      
      public function get posX() : Number
      {
         return this._posX;
      }
      
      public function set posX(param1:Number) : void
      {
         this._posX = param1;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function get activePhases() : Vector.<PhaseDTO>
      {
         return this._activePhases;
      }
      
      public function set activePhases(param1:Vector.<PhaseDTO>) : void
      {
         this._activePhases = param1;
      }
      
      public function get upgradeCount() : int
      {
         return this._upgradeCount;
      }
      
      public function get buildingLevel() : Number
      {
         return this._buildingLevel;
      }
      
      public function set upgradeCount(param1:int) : void
      {
         this._upgradeCount = param1;
      }
      
      public function get needProductStock() : Vector.<NeedStackDTO>
      {
         return this._needProductStock;
      }
      
      public function get isCorrupt() : Boolean
      {
         return this._isCorrupt;
      }
      
      public function get corruptServerObject() : Object
      {
         return this._corruptServerObject;
      }
      
      public function get emergencyDTO() : EmergencyDTO
      {
         return this._emergencyDTO;
      }
      
      public function set emergencyDTO(param1:EmergencyDTO) : void
      {
         this._emergencyDTO = param1;
      }
      
      public function get professionals() : Vector.<ProfessionalDTO>
      {
         return this._professionals;
      }
      
      public function get improvementSlotIds() : Vector.<Number>
      {
         return this._improvementSlotIds;
      }
      
      public function get improvements() : Vector.<ImprovementDTO>
      {
         return this._improvements;
      }
      
      public function set improvements(param1:Vector.<ImprovementDTO>) : void
      {
         this._improvements = param1;
      }
      
      public function get lastUpdatedTimeStamp() : Number
      {
         return this._lastUpdatedTimeStamp;
      }
      
      public function get currentMasteryChallenge() : MasteryChallengeDTO
      {
         return this._currentMasteryChallenge;
      }
      
      public function set currentMasteryChallenge(param1:MasteryChallengeDTO) : void
      {
         this._currentMasteryChallenge = param1;
         if(this._currentMasteryChallenge)
         {
            this._currentMasteryChallenge.config = ConfigFactory.getConfigMasteryChallenge(this._currentMasteryChallenge,this._config);
         }
      }
      
      public function get currentMasteryBonus() : MasteryBonusDTO
      {
         return this._currentMasteryBonus;
      }
      
      public function set currentMasteryBonus(param1:MasteryBonusDTO) : void
      {
         this._currentMasteryBonus = param1;
      }
      
      public function get indexOfCurrentMasteryChallenge() : int
      {
         if(this.currentMasteryChallenge == null)
         {
            return -1;
         }
         var _loc1_:int = 0;
         var _loc2_:ConfigMasteryChallengeDTO = this.config.configMasteryChallengeDTO;
         while(_loc2_ != null)
         {
            if(_loc2_.id == this.currentMasteryChallenge.id)
            {
               return _loc1_;
            }
            _loc2_ = _loc2_.nextChallenge;
            _loc1_++;
         }
         return -1;
      }
   }
}

