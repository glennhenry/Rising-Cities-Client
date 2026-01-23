package net.bigpoint.cityrama.model.server.vo.server
{
   public class EmergencyRequirementDTO
   {
      
      private var _configProfSpecializationId:Number;
      
      private var _slotNumber:int;
      
      private var _configSpecialization:ConfigProfessionalSpecializationDTO;
      
      public function EmergencyRequirementDTO(param1:Object)
      {
         super();
         this._configProfSpecializationId = param1.pr;
         this._slotNumber = param1.nr;
      }
      
      public function get configProfSpecializationId() : Number
      {
         return this._configProfSpecializationId;
      }
      
      public function get slotNumber() : int
      {
         return this._slotNumber;
      }
      
      public function get configSpecialization() : ConfigProfessionalSpecializationDTO
      {
         return this._configSpecialization;
      }
      
      public function set configSpecialization(param1:ConfigProfessionalSpecializationDTO) : void
      {
         this._configSpecialization = param1;
      }
   }
}

