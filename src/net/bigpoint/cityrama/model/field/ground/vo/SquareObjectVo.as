package net.bigpoint.cityrama.model.field.ground.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class SquareObjectVo extends PlaneObjectVo
   {
      
      public function SquareObjectVo(param1:ConfigPlayfieldItemDTO, param2:Number)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            super(param1,param2);
         }
      }
   }
}

