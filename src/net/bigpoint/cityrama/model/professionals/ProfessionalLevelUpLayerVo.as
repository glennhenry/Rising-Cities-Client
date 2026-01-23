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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      private function get nextLevelConfig() : ConfigProfessionalLevelDTO
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(_dto.canLevelUp)
            {
               if(!(_loc1_ && _loc1_))
               {
                  return levelsConfig[super.currentLevel - 1];
               }
            }
         }
         return levelsConfig[super.currentLevel];
      }
      
      public function get skillPointGain() : uint
      {
         return this.nextLevelConfig.skillpointGain;
      }
      
      public function get possibleSpecialisations() : Vector.<ConfigProfessionalSpecializationDTO>
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(!this.specsSet)
            {
               if(_loc1_)
               {
                  throw new RamaCityError(this + "Set the possible Specialisation Configs !");
               }
            }
         }
         return this._possibleSpecs;
      }
      
      public function set possibleSpecs(param1:Vector.<ConfigProfessionalSpecializationDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._possibleSpecs = param1;
            if(_loc3_ || _loc2_)
            {
               this.specsSet = true;
            }
         }
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

