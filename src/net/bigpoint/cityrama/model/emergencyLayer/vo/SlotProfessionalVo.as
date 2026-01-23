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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._slotNo = param1;
         }
      }
      
      public function set professional(param1:ProfessionalDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._professional = param1;
         }
      }
      
      public function get isTemporary() : Boolean
      {
         return this._isTemporary;
      }
      
      public function set isTemporary(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._isTemporary = param1;
         }
      }
   }
}

