package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   
   public class SlotProfessionalVo
   {
      
      private var _professional:ProfessionalDTO;
      
      private var _slotNo:Number;
      
      private var _isTemporary:Boolean = false;
      
      public function SlotProfessionalVo()
      {
         super();
      }
      
      public function get professional() : ProfessionalDTO
      {
         return this._professional;
      }
      
      public function get slotNo() : Number
      {
         return this._slotNo;
      }
      
      public function set slotNo(param1:Number) : void
      {
         this._slotNo = param1;
      }
      
      public function set professional(param1:ProfessionalDTO) : void
      {
         this._professional = param1;
      }
      
      public function get isTemporary() : Boolean
      {
         return this._isTemporary;
      }
      
      public function set isTemporary(param1:Boolean) : void
      {
         this._isTemporary = param1;
      }
   }
}

