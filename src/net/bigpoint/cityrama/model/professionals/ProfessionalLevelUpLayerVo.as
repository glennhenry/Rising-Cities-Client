package net.bigpoint.cityrama.model.professionals
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.DepartmentProfessionalDetailInfoVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalLevelDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalSpecializationDTO;
   
   public class ProfessionalLevelUpLayerVo extends DepartmentProfessionalDetailInfoVo
   {
      
      private var _possibleSpecs:Vector.<ConfigProfessionalSpecializationDTO>;
      
      private var specsSet:Boolean = false;
      
      public function ProfessionalLevelUpLayerVo()
      {
         super();
      }
      
      private function get nextLevelConfig() : ConfigProfessionalLevelDTO
      {
         if(_dto.canLevelUp)
         {
            return levelsConfig[super.currentLevel - 1];
         }
         return levelsConfig[super.currentLevel];
      }
      
      public function get skillPointGain() : uint
      {
         return this.nextLevelConfig.skillpointGain;
      }
      
      public function get possibleSpecialisations() : Vector.<ConfigProfessionalSpecializationDTO>
      {
         if(!this.specsSet)
         {
            throw new RamaCityError(this + "Set the possible Specialisation Configs !");
         }
         return this._possibleSpecs;
      }
      
      public function set possibleSpecs(param1:Vector.<ConfigProfessionalSpecializationDTO>) : void
      {
         this._possibleSpecs = param1;
         this.specsSet = true;
      }
      
      public function get possibleSpecsIds() : Vector.<Number>
      {
         return super._dto.possibleSpecialisationIdsByLevelUp;
      }
      
      public function get gender() : int
      {
         return _dto.gender;
      }
   }
}

