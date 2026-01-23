package net.bigpoint.cityrama.view.field.ui.components.factory
{
   import net.bigpoint.cityrama.model.field.factorys.InfrastructureDecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InfrastructureBasementViewManager;
   
   public class InfrastructureDecorationFieldObject extends DecorationFieldObject implements IEmergencyInfrastructure
   {
      
      public function InfrastructureDecorationFieldObject(param1:BillboardAssetsReferenceHolder, param2:InfrastructureDecorationFieldObjectVo)
      {
         super(param1,param2);
      }
      
      override public function prepareBasementViewManager() : void
      {
         if(_basementViewManager == null)
         {
            _basementViewManager = new InfrastructureBasementViewManager();
         }
         _basementViewManager.prepareBasementViewManager(billboardObjectVo,_billbordObjectContainer,_assetCollection);
      }
      
      public function get emergencyFieldObjectVo() : IEmergencyInfrastructureVO
      {
         return billboardObjectVo as InfrastructureDecorationFieldObjectVo;
      }
   }
}

