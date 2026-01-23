package net.bigpoint.cityrama.model.improvement.vo
{
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEffectDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   
   public class ImprovementVo
   {
      
      private var _config:ConfigImprovementDTO;
      
      private var _dto:ImprovementDTO;
      
      private var _listOfEfficiencies:Vector.<ImprovementEfficiencyVo>;
      
      private var _tags:Vector.<String>;
      
      public function ImprovementVo(param1:ImprovementDTO, param2:ConfigImprovementDTO)
      {
         var _loc3_:ConfigEffectDTO = null;
         super();
         this._dto = param1;
         this._config = param2;
         this._listOfEfficiencies = new Vector.<ImprovementEfficiencyVo>(0);
         for each(_loc3_ in this._config.effects)
         {
            this._listOfEfficiencies.push(new ImprovementEfficiencyVo(_loc3_));
         }
      }
      
      public function get listOfEfficiencies() : Vector.<ImprovementEfficiencyVo>
      {
         return this._listOfEfficiencies;
      }
      
      public function getEfficiencyByTag(param1:String) : ImprovementEfficiencyVo
      {
         var _loc2_:ImprovementEfficiencyVo = null;
         for each(_loc2_ in this._listOfEfficiencies)
         {
            if(_loc2_.tag == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get config() : ConfigImprovementDTO
      {
         return this._config;
      }
      
      public function get currentSlotId() : Number
      {
         return this._dto.slotId;
      }
      
      public function get equippedBuildingId() : Number
      {
         return this._dto.buildingId;
      }
      
      public function get gfxId() : Number
      {
         return this._config.gfxId;
      }
      
      public function get localeId() : String
      {
         return this._config.locaId;
      }
      
      public function get runtime() : Number
      {
         return this._config.lifetime;
      }
      
      public function get renewalPrice() : Number
      {
         return Math.abs(this._config.renewCost);
      }
      
      public function get quality() : String
      {
         return this._config.quality;
      }
      
      public function get qualityAsInt() : int
      {
         switch(this.quality)
         {
            case ServerImprovementConstants.QUALITY_COMMON:
               return 1;
            case ServerImprovementConstants.QUALITY_RARE:
               return 2;
            case ServerImprovementConstants.QUALITY_EPIC:
               return 3;
            case ServerImprovementConstants.QUALITY_LEGENDARY:
               return 4;
            default:
               return 0;
         }
      }
      
      public function get startTime() : Number
      {
         if(this._dto.expirationTime - this.runtime < 0)
         {
            return -1;
         }
         return this._dto.expirationTime - this.runtime;
      }
      
      public function get expirationTime() : Number
      {
         return this._dto.expirationTime;
      }
      
      public function get dto() : ImprovementDTO
      {
         return this._dto;
      }
      
      public function set tags(param1:Vector.<String>) : void
      {
         this._tags = param1;
      }
      
      public function get tags() : Vector.<String>
      {
         return this._tags;
      }
   }
}

