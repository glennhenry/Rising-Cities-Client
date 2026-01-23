package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateDepartmentManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.InfrastructureBasementViewManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class InfrastructureBuildingFieldObject extends BillboardObject implements IEmergencyInfrastructure, IBuildUpManagerImplementation
   {
      
      public function InfrastructureBuildingFieldObject(param1:BillboardAssetsReferenceHolder, param2:InfrastructureBuildingFieldObjectVo)
      {
         super(param1,param2);
         this.prepareBuildUpManager();
      }
      
      override public function prepareIconStateManager() : void
      {
         if(_iconStateManager == null)
         {
            _iconStateManager = new IconStateDepartmentManager();
         }
         _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         _iconStateManager.invalidateIconStateManager(param1);
      }
      
      override public function prepareBasementViewManager() : void
      {
         if(_basementViewManager == null)
         {
            _basementViewManager = new InfrastructureBasementViewManager();
         }
         _basementViewManager.prepareBasementViewManager(billboardObjectVo,_billbordObjectContainer,_assetCollection);
      }
      
      public function prepareBuildUpManager() : void
      {
         if(_buildUpManager == null)
         {
            _buildUpManager = new BuildUpManagerDefault();
            _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.buildUpAssets);
         }
      }
      
      public function invalidateBuildUpManager() : void
      {
         _buildUpManager.invalidate();
         if(_basementViewManager != null)
         {
            invalidateBasementViewManager(true);
         }
      }
      
      public function tick(param1:Number) : void
      {
         this.billboardObjectVo.currentTimeStamp = param1;
      }
      
      public function get emergencyFieldObjectVo() : IEmergencyInfrastructureVO
      {
         return billboardObjectVo as InfrastructureBuildingFieldObjectVo;
      }
   }
}

