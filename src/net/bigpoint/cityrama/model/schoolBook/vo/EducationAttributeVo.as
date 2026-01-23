package net.bigpoint.cityrama.model.schoolBook.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   
   public class EducationAttributeVo
   {
      
      private var _professionalAttributeDTO:ProfessionalAttributeDTO;
      
      private var _tempMod:int;
      
      public function EducationAttributeVo(param1:ProfessionalAttributeDTO)
      {
         super();
         this._professionalAttributeDTO = param1;
      }
      
      public function get attributeType() : String
      {
         return this.config.attributeType;
      }
      
      public function get attributePoints() : uint
      {
         return this._professionalAttributeDTO.attributePoints;
      }
      
      private function get config() : ConfigProfessionalAttributeDTO
      {
         return this._professionalAttributeDTO.config;
      }
      
      public function get maxCap() : uint
      {
         return this.config.maxCap;
      }
      
      public function get configId() : Number
      {
         return this.config.id;
      }
      
      public function get attributeThresholds() : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         return this._professionalAttributeDTO.config.attributeThresholds;
      }
      
      public function get tempMod() : int
      {
         return this._tempMod;
      }
      
      public function set tempMod(param1:int) : void
      {
         this._tempMod = param1;
      }
      
      public function get traitThresholds() : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         return this._professionalAttributeDTO.config.attributeThresholds;
      }
      
      public function get amount() : uint
      {
         return this._professionalAttributeDTO.attributePoints;
      }
   }
}

