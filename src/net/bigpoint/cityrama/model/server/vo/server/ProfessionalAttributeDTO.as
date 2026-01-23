package net.bigpoint.cityrama.model.server.vo.server
{
   public class ProfessionalAttributeDTO
   {
      
      private var _configId:Number;
      
      private var _attributePoints:int;
      
      private var _config:ConfigProfessionalAttributeDTO;
      
      private var _professionalID:Number;
      
      public function ProfessionalAttributeDTO(param1:Object)
      {
         super();
         this._configId = param1.cpa;
         this._attributePoints = param1.ap;
         this._professionalID = param1.prof;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get attributePoints() : int
      {
         return this._attributePoints;
      }
      
      public function get config() : ConfigProfessionalAttributeDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigProfessionalAttributeDTO) : void
      {
         this._config = param1;
      }
      
      public function get professionalID() : Number
      {
         return this._professionalID;
      }
   }
}

