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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super(param1);
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function isReadyForUpgrade() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         if(!(_loc4_ && _loc2_))
         {
            if(activePhases.length > 0)
            {
               §§goto(addr0034);
            }
            return false;
         }
         addr0034:
         var _loc2_:int = 0;
         var _loc3_:* = activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_ && Boolean(this))
               {
                  break;
               }
               if(_loc1_ != null)
               {
                  if(_loc5_)
                  {
                     if(_loc1_.config.phaseType == ServerPhaseTypes.UPGRADE)
                     {
                        if(_loc5_ || Boolean(this))
                        {
                           break;
                        }
                     }
                  }
               }
               continue;
            }
         }
         return true;
      }
      
      override public function get isHarvestReady() : Boolean
      {
         return false;
      }
   }
}

