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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               this._configId = param1.cpa;
               if(!_loc3_)
               {
                  addr0042:
                  this._attributePoints = param1.ap;
                  if(!_loc3_)
                  {
                     this._professionalID = param1.prof;
                  }
               }
               return;
            }
         }
         §§goto(addr0042);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._config = param1;
         }
      }
      
      public function get professionalID() : Number
      {
         return this._professionalID;
      }
   }
}

