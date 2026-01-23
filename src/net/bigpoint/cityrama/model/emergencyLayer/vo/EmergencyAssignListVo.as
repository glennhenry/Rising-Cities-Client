package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   public class EmergencyAssignListVo
   {
      
      private var _assignVo:EmergencyAssignVo;
      
      private var _professionalList:Vector.<ProfessionalListInfoVo>;
      
      private var _slotIndex:int;
      
      public function EmergencyAssignListVo(param1:EmergencyAssignVo, param2:Vector.<ProfessionalListInfoVo>, param3:int)
      {
         super();
         this._assignVo = param1;
         this._professionalList = param2;
         this._professionalList.sort(this.sortOnDept);
         this._slotIndex = param3;
      }
      
      private function sortOnDept(param1:ProfessionalListInfoVo, param2:ProfessionalListInfoVo) : int
      {
         if(param1.department == this.requiredSlotDepartment)
         {
            return -1;
         }
         return 1;
      }
      
      public function get professionalList() : Vector.<ProfessionalListInfoVo>
      {
         return this._professionalList;
      }
      
      public function get requiredSlotDepartment() : String
      {
         return this._assignVo.professionalSlots[this._slotIndex].reqDepartment;
      }
      
      public function get requiredSlotSpecialisationRank() : int
      {
         return this._assignVo.professionalSlots[this._slotIndex].reqSpecialisationrank;
      }
      
      public function get requiredSlotSpecialisationId() : Number
      {
         return this._assignVo.professionalSlots[this._slotIndex].reqSpecialisationId;
      }
      
      public function get assignVo() : EmergencyAssignVo
      {
         return this._assignVo;
      }
      
      public function get slotIndex() : int
      {
         return this._slotIndex;
      }
   }
}

