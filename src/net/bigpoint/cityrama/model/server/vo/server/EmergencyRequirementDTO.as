package net.bigpoint.cityrama.model.server.vo.server
{
   public class EmergencyRequirementDTO
   {
      
      private var _configProfSpecializationId:Number;
      
      private var _slotNumber:int;
      
      private var _configSpecialization:ConfigProfessionalSpecializationDTO;
      
      public function EmergencyRequirementDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super();
            if(!_loc2_)
            {
               addr0021:
               this._configProfSpecializationId = param1.pr;
               if(_loc3_)
               {
                  this._slotNumber = param1.nr;
               }
            }
            return;
         }
         §§goto(addr0021);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._configSpecialization = param1;
         }
      }
   }
}

