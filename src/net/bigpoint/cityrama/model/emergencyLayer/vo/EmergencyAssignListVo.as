package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   public class EmergencyAssignListVo
   {
      
      private var _assignVo:EmergencyAssignVo;
      
      private var _professionalList:Vector.<ProfessionalListInfoVo>;
      
      private var _slotIndex:int;
      
      public function EmergencyAssignListVo(param1:EmergencyAssignVo, param2:Vector.<ProfessionalListInfoVo>, param3:int)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_)
         {
            super();
            if(!(_loc4_ && Boolean(param3)))
            {
               this._assignVo = param1;
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._professionalList = param2;
                  if(_loc5_ || Boolean(this))
                  {
                     §§goto(addr006c);
                  }
                  §§goto(addr007f);
               }
               addr006c:
               this._professionalList.sort(this.sortOnDept);
               if(_loc5_)
               {
                  addr007f:
                  this._slotIndex = param3;
               }
               return;
            }
         }
         §§goto(addr007f);
      }
      
      private function sortOnDept(param1:ProfessionalListInfoVo, param2:ProfessionalListInfoVo) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            if(param1.department == this.requiredSlotDepartment)
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(-1);
                  if(_loc3_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0059:
                  return 1;
               }
               return §§pop();
            }
         }
         §§goto(addr0059);
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

