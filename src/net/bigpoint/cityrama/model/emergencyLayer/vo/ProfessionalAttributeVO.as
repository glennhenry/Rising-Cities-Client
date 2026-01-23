package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   
   public class ProfessionalAttributeVO
   {
      
      private var _dto:ProfessionalAttributeDTO;
      
      private var _tempMod:int;
      
      public function ProfessionalAttributeVO()
      {
         super();
      }
      
      public function get progressScalar() : Number
      {
         return (this._dto.attributePoints + this._tempMod) / this._dto.config.maxCap;
      }
      
      public function get configId() : Number
      {
         return this._dto.configId;
      }
      
      public function get amount() : uint
      {
         return this._dto.attributePoints;
      }
      
      public function set dto(param1:ProfessionalAttributeDTO) : void
      {
         this._dto = param1;
      }
      
      public function get attributeType() : String
      {
         return this._dto.config.attributeType;
      }
      
      public function set tempMod(param1:int) : void
      {
         this._tempMod = param1;
      }
      
      public function get tempMod() : int
      {
         return this._tempMod;
      }
      
      public function get traitThresholds() : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         return this._dto.config.attributeThresholds;
      }
   }
}

