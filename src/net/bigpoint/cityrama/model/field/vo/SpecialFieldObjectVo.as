package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   
   public class SpecialFieldObjectVo extends BillboardObjectVo implements ILoggableObject
   {
      
      public function SpecialFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function isReadyForUpgrade() : Boolean
      {
         var _loc1_:PhaseDTO = null;
         if(activePhases.length > 0)
         {
            for each(_loc1_ in activePhases)
            {
               if(_loc1_ != null)
               {
                  if(_loc1_.config.phaseType == ServerPhaseTypes.UPGRADE)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      override public function get isHarvestReady() : Boolean
      {
         return false;
      }
   }
}

