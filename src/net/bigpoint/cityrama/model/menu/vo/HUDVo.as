package net.bigpoint.cityrama.model.menu.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.util.LocaUtils;
   
   public class HUDVo
   {
      
      private var _virtualCurrency:Number;
      
      private var _realCurrency:Number;
      
      private var _level:Number;
      
      private var _happiness:Number;
      
      private var _energy:Number;
      
      private var _energyModifier:Number;
      
      private var _happinessModifier:Number;
      
      private var _population:Vector.<PopulationTypeVo>;
      
      private var _specialCurrencies:Vector.<SpecialCurrencyVo>;
      
      private var _xp:Number;
      
      private var _xpCap:Number;
      
      private var _xpNextSubLevelCap:Number;
      
      private var _xpLastSubLevelCap:Number;
      
      private var _maxPopulation:Number;
      
      private var _producedEnergy:Number;
      
      private var _usedEnergy:Number;
      
      private var _producedHappiness:Number;
      
      private var _usedHappiness:Number;
      
      public function HUDVo()
      {
         super();
      }
      
      public function get virtualCurrency() : Number
      {
         return this._virtualCurrency;
      }
      
      public function set virtualCurrency(param1:Number) : void
      {
         this._virtualCurrency = param1;
      }
      
      public function get realCurrency() : Number
      {
         return this._realCurrency;
      }
      
      public function set realCurrency(param1:Number) : void
      {
         this._realCurrency = param1;
      }
      
      public function get level() : Number
      {
         return this._level;
      }
      
      public function set level(param1:Number) : void
      {
         this._level = param1;
      }
      
      public function get happiness() : Number
      {
         return this._happiness;
      }
      
      public function set happiness(param1:Number) : void
      {
         this._happiness = param1;
      }
      
      public function get energy() : Number
      {
         return this._energy;
      }
      
      public function set energy(param1:Number) : void
      {
         this._energy = param1;
      }
      
      public function get population() : Vector.<PopulationTypeVo>
      {
         return this._population;
      }
      
      public function set population(param1:Vector.<PopulationTypeVo>) : void
      {
         this._population = param1;
      }
      
      public function get xpCap() : Number
      {
         return this._xpCap;
      }
      
      public function set xpCap(param1:Number) : void
      {
         this._xpCap = param1;
      }
      
      public function get xp() : Number
      {
         return this._xp;
      }
      
      public function set xp(param1:Number) : void
      {
         this._xp = param1;
      }
      
      public function get specialCurrencies() : Vector.<SpecialCurrencyVo>
      {
         return this._specialCurrencies;
      }
      
      public function set specialCurrencies(param1:Vector.<SpecialCurrencyVo>) : void
      {
         this._specialCurrencies = param1;
      }
      
      public function get maxPopulation() : Number
      {
         return this._maxPopulation;
      }
      
      public function set maxPopulation(param1:Number) : void
      {
         this._maxPopulation = param1;
      }
      
      public function get energyModifier() : Number
      {
         return this._energyModifier;
      }
      
      public function set energyModifier(param1:Number) : void
      {
         this._energyModifier = param1;
      }
      
      public function get happinessModifier() : Number
      {
         return this._happinessModifier;
      }
      
      public function set happinessModifier(param1:Number) : void
      {
         this._happinessModifier = param1;
      }
      
      public function get producedEnergy() : Number
      {
         return this._producedEnergy;
      }
      
      public function set producedEnergy(param1:Number) : void
      {
         this._producedEnergy = param1;
      }
      
      public function get usedEnergy() : Number
      {
         return this._usedEnergy;
      }
      
      public function set usedEnergy(param1:Number) : void
      {
         this._usedEnergy = param1;
      }
      
      public function get producedHappiness() : Number
      {
         return this._producedHappiness;
      }
      
      public function set producedHappiness(param1:Number) : void
      {
         this._producedHappiness = param1;
      }
      
      public function get usedHappiness() : Number
      {
         return this._usedHappiness;
      }
      
      public function set usedHappiness(param1:Number) : void
      {
         this._usedHappiness = param1;
      }
      
      public function get xpNextSubLevelCap() : Number
      {
         return this._xpNextSubLevelCap;
      }
      
      public function set xpNextSubLevelCap(param1:Number) : void
      {
         this._xpNextSubLevelCap = param1;
      }
      
      public function get xpToNextFullLevel() : Number
      {
         return this.xpCap - this._xpLastSubLevelCap - this.xp;
      }
      
      public function get xpToNextSubLevel() : Number
      {
         return this.xpNextSubLevelCap - this._xpLastSubLevelCap - this.xp;
      }
      
      public function get levelProgress() : Number
      {
         return (this.xp + this._xpLastSubLevelCap) / this.xpCap;
      }
      
      public function get populationData() : ArrayCollection
      {
         var _loc2_:PopulationTypeVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this.population)
         {
            _loc1_.addItem(_loc2_);
         }
         return _loc1_;
      }
      
      public function get specialCurrencyData() : ArrayCollection
      {
         var _loc2_:SpecialCurrencyVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this.specialCurrencies)
         {
            _loc1_.addItem(_loc2_);
         }
         return _loc1_;
      }
      
      public function get showMultipleCurrencyResources() : Boolean
      {
         return this.specialCurrencies.length > 1;
      }
      
      public function get populationTooltip() : String
      {
         var _loc2_:PopulationTypeVo = null;
         var _loc1_:String = "0";
         for each(_loc2_ in this.population)
         {
            if(_loc2_.type == ServerResConst.RESOURCE_WORKERS && this.population.length == 1)
            {
               _loc1_ = _loc2_.amountString;
            }
            if(_loc2_.type == ServerResConst.RESOURCE_POPULATION)
            {
               _loc1_ = _loc2_.amountString;
            }
         }
         return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.popBar",[_loc1_,this.maxPopulation]);
      }
      
      public function get energyBarTooltip() : String
      {
         if(this.energy < 0.25)
         {
            return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.energyLow",[this.producedEnergy,this.usedEnergy,this.energyModifier * 100]);
         }
         if(this.energy >= 0.25 && this.energy < 0.5)
         {
            return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.energyMedium",[this.producedEnergy,this.usedEnergy,this.energyModifier * 100]);
         }
         if(this.energy >= 0.5 && this.energy < 0.75)
         {
            return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.energyHigh",[this.producedEnergy,this.usedEnergy,this.energyModifier * 100]);
         }
         return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.energyVeryHigh",[this.producedEnergy,this.usedEnergy,this.energyModifier * 100]);
      }
      
      public function get happinessBarTooltip() : String
      {
         if(this.happiness < 0.25)
         {
            return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.moodLow",[this.producedHappiness,this.usedHappiness,25]);
         }
         if(this.happiness >= 0.25 && this.happiness < 0.5)
         {
            return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.moodMedium",[this.producedHappiness,this.usedHappiness,50]);
         }
         if(this.happiness >= 0.5 && this.happiness < 0.75)
         {
            return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.moodHigh",[this.producedHappiness,this.usedHappiness,75]);
         }
         return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.moodVeryHigh",[this.producedHappiness,this.usedHappiness,100]);
      }
      
      public function get levelBarTooltip() : String
      {
         if(this.xpToNextFullLevel <= 0)
         {
            return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.xpBar.maxReached");
         }
         if(this.xpNextSubLevelCap == UserLevelProxy.NO_NEXT_SUBLEVEL)
         {
            return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.xpBar",[this.xpToNextFullLevel]);
         }
         return LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.xpBar.sublevel",[this.xpToNextSubLevel,this.xpToNextFullLevel]);
      }
      
      public function get xpLastSubLevelCap() : Number
      {
         return this._xpLastSubLevelCap;
      }
      
      public function set xpLastSubLevelCap(param1:Number) : void
      {
         this._xpLastSubLevelCap = param1;
      }
   }
}

