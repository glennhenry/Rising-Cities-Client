package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.needsSystem.GlobalModifiersVo;
   import net.bigpoint.cityrama.model.needsSystem.vo.ResidentialNeedPopupVo;
   
   public class ProductionDetailViewVo
   {
      
      private var _moodEffect:SimpleItemVo;
      
      private var _energyEffect:SimpleItemVo;
      
      private var _currentRunningEventGfxId:Number;
      
      private var _currentRunningEventLocaleId:Number;
      
      private var _gfxId:Number;
      
      private var _localeId:Number;
      
      private var _productionFieldObjectVo:ProductionFieldObjectVo;
      
      private var _globalUserLevel:int;
      
      private var _harvestCycleLength:Number = 0;
      
      private var _harvestCurrentTime:Number = 0;
      
      private var _harvestEndTime:Number = 0;
      
      private var _upgradeCountTotal:Number;
      
      private var _harvestCount:Number;
      
      private var _upgradePrice:Number;
      
      private var _hasEnoughDD:Boolean;
      
      private var _upgradeReady:Boolean;
      
      private var _upgradeNextLevel:int;
      
      private var _upgradeMaxLevel:int;
      
      private var _upgradeCurrentLevel:int;
      
      private var _needs:Vector.<ResidentialNeedPopupVo>;
      
      private var _generalOutput:Number;
      
      private var _boni:Vector.<SimpleItemVo>;
      
      private var _totalOutput:Number;
      
      private var _productionOptions:Vector.<ProductionGoodObjectVo>;
      
      private var _currentProductionIndex:int;
      
      private var _currentProductionPoints:Number;
      
      private var _modifiers:GlobalModifiersVo;
      
      private var _nextProductionDetail:ProductionDetailViewVo;
      
      public function ProductionDetailViewVo(param1:Object)
      {
         super();
         this._productionFieldObjectVo = param1.pfoVo;
         this._gfxId = param1.gfxId;
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
         this._generalOutput = param1.output;
         this._boni = param1.boni;
         this._modifiers = param1.modifiers;
         this._productionOptions = param1.productionOptions;
         this._currentProductionPoints = param1.cpp;
         this._currentProductionIndex = param1.cpi;
         this._globalUserLevel = param1.globalUserLevel;
         this._moodEffect = param1.mood;
         this._energyEffect = param1.energy;
         this._currentRunningEventGfxId = param1.eventGfxId;
         this._currentRunningEventLocaleId = param1.eventLocaleId;
      }
      
      public function get totalOutput() : Number
      {
         return this._totalOutput;
      }
      
      public function get boni() : Vector.<SimpleItemVo>
      {
         return this._boni;
      }
      
      public function get generalOutput() : Number
      {
         return this._generalOutput;
      }
      
      public function get needs() : Vector.<ResidentialNeedPopupVo>
      {
         return this._needs;
      }
      
      public function set needs(param1:Vector.<ResidentialNeedPopupVo>) : void
      {
         this._needs = param1;
      }
      
      public function get upgradeCurrentLevel() : int
      {
         return this._upgradeCurrentLevel;
      }
      
      public function get upgradeMaxLevel() : int
      {
         return this._upgradeMaxLevel;
      }
      
      public function get upgradeNextLevel() : int
      {
         return this._upgradeNextLevel;
      }
      
      public function get upgradeReady() : Boolean
      {
         return this._upgradeReady;
      }
      
      public function set upgradeReady(param1:Boolean) : void
      {
         this._upgradeReady = param1;
      }
      
      public function get hasEnoughDD() : Boolean
      {
         return this._hasEnoughDD;
      }
      
      public function get upgradePrice() : Number
      {
         return this._upgradePrice;
      }
      
      public function get harvestCount() : Number
      {
         return this._harvestCount;
      }
      
      public function get upgradeCountTotal() : Number
      {
         return this._upgradeCountTotal;
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
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function set gfxId(param1:Number) : void
      {
         this._gfxId = param1;
      }
      
      public function get productionFieldObjectVo() : ProductionFieldObjectVo
      {
         return this._productionFieldObjectVo;
      }
      
      public function set productionFieldObjectVo(param1:ProductionFieldObjectVo) : void
      {
         this._productionFieldObjectVo = param1;
      }
      
      public function get productionOptions() : Vector.<ProductionGoodObjectVo>
      {
         return this._productionOptions;
      }
      
      public function get currentProductionIndex() : int
      {
         return this._currentProductionIndex;
      }
      
      public function get modifiers() : GlobalModifiersVo
      {
         return this._modifiers;
      }
      
      public function get localeId() : Number
      {
         return this._localeId;
      }
      
      public function get globalUserLevel() : int
      {
         return this._globalUserLevel;
      }
      
      public function get nextProductionDetail() : ProductionDetailViewVo
      {
         return this._nextProductionDetail;
      }
      
      public function set nextProductionDetail(param1:ProductionDetailViewVo) : void
      {
         this._nextProductionDetail = param1;
      }
      
      public function get currentProductionPoints() : Number
      {
         return this._currentProductionPoints;
      }
      
      public function get energyEffect() : SimpleItemVo
      {
         return this._energyEffect;
      }
      
      public function get moodEffect() : SimpleItemVo
      {
         return this._moodEffect;
      }
      
      public function get currentRunningEventGfxId() : Number
      {
         return this._currentRunningEventGfxId;
      }
      
      public function get currentRunningEventLocaleId() : Number
      {
         return this._currentRunningEventLocaleId;
      }
   }
}

