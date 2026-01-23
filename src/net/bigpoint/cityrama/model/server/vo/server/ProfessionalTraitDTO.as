package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.ConfigProfessionalTraitDTO;
   
   public class ProfessionalTraitDTO
   {
      
      private var _professionalId:Number;
      
      private var _configId:Number;
      
      private var _stacks:uint;
      
      private var _config:ConfigProfessionalTraitDTO;
      
      public function ProfessionalTraitDTO(param1:Object)
      {
         super();
         this._stacks = param1.s;
         this._configId = param1.cpt;
         this._professionalId = param1.prof;
      }
      
      public function get professionalId() : Number
      {
         return this._professionalId;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get stacks() : uint
      {
         return this._stacks;
      }
      
      public function set config(param1:ConfigProfessionalTraitDTO) : void
      {
         this._config = param1;
      }
      
      public function get config() : ConfigProfessionalTraitDTO
      {
         return this._config;
      }
   }
}

