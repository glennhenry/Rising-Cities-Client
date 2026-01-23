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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(!(_loc3_ && _loc2_))
            {
               this._professionalAttributeDTO = param1;
            }
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._tempMod = param1;
         }
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

