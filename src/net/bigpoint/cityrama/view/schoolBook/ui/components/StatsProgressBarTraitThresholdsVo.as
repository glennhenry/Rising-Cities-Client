package net.bigpoint.cityrama.view.schoolBook.ui.components
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   
   public class StatsProgressBarTraitThresholdsVo
   {
      
      public static const TIER_BRONZE:uint = 1;
      
      public static const TIER_SILVER:uint = 2;
      
      public static const TIER_GOLD:uint = 3;
      
      private const validTiers:Vector.<uint> = new <uint>[TIER_BRONZE,TIER_SILVER,TIER_GOLD];
      
      private var _tier:uint;
      
      private var _thresholdScalar:Number;
      
      public function StatsProgressBarTraitThresholdsVo()
      {
         super();
      }
      
      public function get tier() : uint
      {
         return this._tier;
      }
      
      public function set tier(param1:uint) : void
      {
         this._tier = param1;
         if(this.validTiers.indexOf(param1) == -1)
         {
            throw new RamaCityError(this + "non valid tier " + param1);
         }
      }
      
      public function get localeId() : String
      {
         switch(this.tier)
         {
            case TIER_BRONZE:
               return "rcl.tooltips.schoolBook.trait.bronze";
            case TIER_SILVER:
               return "rcl.tooltips.schoolBook.trait.silver";
            case TIER_GOLD:
               return "rcl.tooltips.schoolBook.trait.gold";
            default:
               return "";
         }
      }
      
      public function get thresholdScalar() : Number
      {
         return this._thresholdScalar;
      }
      
      public function set thresholdScalar(param1:Number) : void
      {
         this._thresholdScalar = param1;
      }
   }
}

