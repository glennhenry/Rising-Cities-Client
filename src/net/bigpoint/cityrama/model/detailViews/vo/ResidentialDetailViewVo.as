package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.mastery.MasteryComponentVo;
   import net.bigpoint.cityrama.model.needsSystem.vo.ResidentialNeedPopupVo;
   
   public class ResidentialDetailViewVo
   {
      
      private var _gfxId:Number;
      
      private var _libName:String;
      
      private var _localeId:Number;
      
      private var _upgradeCountTotal:Number;
      
      private var _harvestCount:Number;
      
      private var _upgradePrice:Number;
      
      private var _hasEnoughDD:Boolean;
      
      private var _upgradeReady:Boolean;
      
      private var _upgradeNextLevel:int;
      
      private var _upgradeMaxLevel:int;
      
      private var _upgradeCurrentLevel:int;
      
      private var _needs:Vector.<ResidentialNeedPopupVo>;
      
      private var _harvestCycleLength:Number = 0;
      
      private var _harvestCurrentTime:Number = 0;
      
      private var _harvestEndTime:Number = 0;
      
      private var _rentalIncomeVo:SimpleItemVo;
      
      private var _needIncomeVo:SimpleItemVo;
      
      private var _residentInfo:SimpleItemVo;
      
      private var _residentChangePossible:Boolean;
      
      private var _moodEffect:SimpleItemVo;
      
      private var _energyEffect:SimpleItemVo;
      
      private var _residentialFieldObjectVo:ResidentialFieldObjectVo;
      
      private var _nextResidentialDetail:ResidentialDetailViewVo;
      
      private var _hasEnoughPermits:Boolean;
      
      private var _exprossoUseMutipleTimesOn:Boolean;
      
      private var _residentChangeLevel:int;
      
      private var _currentMasteryChallenge:MasteryComponentVo;
      
      public function ResidentialDetailViewVo(param1:Object, param2:ResidentialFieldObjectVo)
      {
         super();
         this._gfxId = param1.gfxId;
         this._libName = param1.libName;
         this._localeId = param1.localeId;
         this._upgradeCountTotal = param1.upgradeCountTotal;
         this._harvestCount = param1.harvestCount;
         this._upgradePrice = param1.upgradePrice;
         this._hasEnoughDD = param1.hasEnoughDD;
         this._upgradeCurrentLevel = param1.upgradeCurrentLevel;
         this._upgradeNextLevel = param1.upgradeNextLevel;
         this._upgradeMaxLevel = param1.upgradeMaxLevel;
         this._needs = param1.needs;
         this._harvestCycleLength = param1.cycleLength;
         this._harvestCurrentTime = param1.currentTime;
         this._harvestEndTime = param1.endTime;
         this._rentalIncomeVo = param1.rentIncome;
         this._needIncomeVo = param1.needIncome;
         this._residentInfo = param1.residents;
         this._residentChangePossible = param1.residentChange;
         this._residentChangeLevel = param1.residentChangeLevel;
         this._moodEffect = param1.mood;
         this._energyEffect = param1.energy;
         this._exprossoUseMutipleTimesOn = param1.exprossoUseMutipleTimesOn;
         this._residentialFieldObjectVo = param2;
         this._hasEnoughPermits = param1.ep;
         this._currentMasteryChallenge = param1.masteryChallenge;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get upgradeCountTotal() : Number
      {
         return this._upgradeCountTotal;
      }
      
      public function get harvestCount() : Number
      {
         return this._harvestCount;
      }
      
      public function get upgradeReady() : Boolean
      {
         this._upgradeReady = this._upgradeCountTotal <= this._harvestCount;
         return this._upgradeReady;
      }
      
      public function get needs() : Vector.<ResidentialNeedPopupVo>
      {
         return this._needs;
      }
      
      public function get upgradePrice() : Number
      {
         return this._upgradePrice;
      }
      
      public function get upgradeMaxLevel() : int
      {
         return this._upgradeMaxLevel;
      }
      
      public function get upgradeNextLevel() : int
      {
         return this._upgradeNextLevel;
      }
      
      public function get hasEnoughDD() : Boolean
      {
         return this._hasEnoughDD;
      }
      
      public function get upgradeCurrentLevel() : int
      {
         return this._upgradeCurrentLevel;
      }
      
      public function get harvestEndTime() : Number
      {
         return this._harvestEndTime;
      }
      
      public function get harvestCurrentTime() : Number
      {
         return this._harvestCurrentTime;
      }
      
      public function get harvestCycleLength() : Number
      {
         return this._harvestCycleLength;
      }
      
      public function get residentialFieldObjectVo() : ResidentialFieldObjectVo
      {
         return this._residentialFieldObjectVo;
      }
      
      public function get localeId() : Number
      {
         return this._localeId;
      }
      
      public function get nextResidentialDetail() : ResidentialDetailViewVo
      {
         return this._nextResidentialDetail;
      }
      
      public function set nextResidentialDetail(param1:ResidentialDetailViewVo) : void
      {
         this._nextResidentialDetail = param1;
      }
      
      public function get rentalIncomeVo() : SimpleItemVo
      {
         return this._rentalIncomeVo;
      }
      
      public function get needIncomeVo() : SimpleItemVo
      {
         return this._needIncomeVo;
      }
      
      public function get moodEffect() : SimpleItemVo
      {
         return this._moodEffect;
      }
      
      public function get energyEffect() : SimpleItemVo
      {
         return this._energyEffect;
      }
      
      public function get residentInfo() : SimpleItemVo
      {
         return this._residentInfo;
      }
      
      public function get hasEnoughPermits() : Boolean
      {
         return this._hasEnoughPermits;
      }
      
      public function get exprossoUseMutipleTimesOn() : Boolean
      {
         return this._exprossoUseMutipleTimesOn;
      }
      
      public function get libName() : String
      {
         return this._libName;
      }
      
      public function get residentChangePossible() : Boolean
      {
         return this._residentChangePossible;
      }
      
      public function get residentChangeLevel() : int
      {
         return this._residentChangeLevel;
      }
      
      public function get restrictionForPolaroid() : String
      {
         var _loc1_:String = null;
         for each(_loc1_ in this._residentialFieldObjectVo.configPlayfieldItemVo.tags)
         {
            if(_loc1_ == ServerRestrictionConstants.SEA_WHITELIST || _loc1_ == ServerRestrictionConstants.SNOW_WHITELIST || _loc1_ == ServerRestrictionConstants.MOUNTAIN_WHITELIST)
            {
               return _loc1_;
            }
            if(_loc1_ == ServerRestrictionConstants.COAST_WHITELIST || _loc1_ == ServerRestrictionConstants.FISHINGGROUND_WHITELIST)
            {
               return ServerRestrictionConstants.COAST_WHITELIST;
            }
         }
         return "";
      }
      
      public function get currentMasteryChallenge() : MasteryComponentVo
      {
         return this._currentMasteryChallenge;
      }
   }
}

