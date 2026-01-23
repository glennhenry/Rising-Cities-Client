package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   
   public class InfrastructureBasementViewManager extends BasementViewManager
   {
      
      public function InfrastructureBasementViewManager()
      {
         super();
      }
      
      override protected function get targetFrame() : String
      {
         var _loc1_:IEmergencyInfrastructureVO = _billboardObjVo as IEmergencyInfrastructureVO;
         return _loc1_.department[0] + "_" + _billboardObjVo.configPlayfieldItemVo.sizeX + "_" + _billboardObjVo.configPlayfieldItemVo.sizeY;
      }
   }
}

