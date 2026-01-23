package net.bigpoint.cityrama.model.field.ground.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class PierObjectVo extends PlaneObjectVo
   {
      
      public function PierObjectVo(param1:ConfigPlayfieldItemDTO, param2:Number)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            super(param1,param2);
         }
      }
   }
}

