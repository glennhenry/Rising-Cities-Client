package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.emergencyLayer.vo.SlotProfessionalVo;
   
   public class EmergencyCitizenSpawnVo
   {
      
      public var slotProfessionalVos:Vector.<SlotProfessionalVo>;
      
      public var billboardObjectVo:BillboardObjectVo;
      
      public function EmergencyCitizenSpawnVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
   }
}

