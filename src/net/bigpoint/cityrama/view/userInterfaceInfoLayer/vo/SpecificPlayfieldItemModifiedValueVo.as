package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   
   public class SpecificPlayfieldItemModifiedValueVo
   {
      
      private var _modEnergyValue:Number;
      
      private var _modMoodValue:Number;
      
      private var _modBaseHarvestOutput:ConfigOutputDTO;
      
      private var _modTimerCycle:Number;
      
      private var _harvestReady:Boolean = false;
      
      public function SpecificPlayfieldItemModifiedValueVo()
      {
         super();
      }
      
      public function get modEnergyValue() : Number
      {
         return this._modEnergyValue;
      }
      
      public function set modEnergyValue(param1:Number) : void
      {
         this._modEnergyValue = param1;
      }
      
      public function get modMoodValue() : Number
      {
         return this._modMoodValue;
      }
      
      public function set modMoodValue(param1:Number) : void
      {
         this._modMoodValue = param1;
      }
      
      public function get modBaseHarvestOutput() : ConfigOutputDTO
      {
         return this._modBaseHarvestOutput;
      }
      
      public function set modBaseHarvestOutput(param1:ConfigOutputDTO) : void
      {
         this._modBaseHarvestOutput = param1;
      }
      
      public function get modTimerCycle() : Number
      {
         return this._modTimerCycle;
      }
      
      public function set modTimerCycle(param1:Number) : void
      {
         this._modTimerCycle = param1;
      }
      
      public function get harvestReady() : Boolean
      {
         return this._harvestReady;
      }
      
      public function set harvestReady(param1:Boolean) : void
      {
         this._harvestReady = param1;
      }
   }
}

