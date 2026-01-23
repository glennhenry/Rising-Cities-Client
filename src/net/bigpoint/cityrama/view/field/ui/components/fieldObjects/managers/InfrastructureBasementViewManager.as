package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   
   public class InfrastructureBasementViewManager extends BasementViewManager
   {
      
      public function InfrastructureBasementViewManager()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override protected function get targetFrame() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:IEmergencyInfrastructureVO = _billboardObjVo as IEmergencyInfrastructureVO;
         §§push(_loc1_.department[0] + "_");
         if(!_loc3_)
         {
            §§push(§§pop() + _billboardObjVo.configPlayfieldItemVo.sizeX);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§goto(addr0051);
            }
            §§goto(addr005a);
         }
         addr0051:
         §§push(§§pop() + "_");
         if(!_loc3_)
         {
            addr005a:
            return §§pop() + _billboardObjVo.configPlayfieldItemVo.sizeY;
         }
      }
   }
}

