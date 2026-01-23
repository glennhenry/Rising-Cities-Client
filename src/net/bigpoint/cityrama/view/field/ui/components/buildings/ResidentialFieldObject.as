package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class ResidentialFieldObject extends BillboardObject implements IBuildUpManagerImplementation, ITimerInterest
   {
      
      public function ResidentialFieldObject(param1:BillboardAssetsReferenceHolder, param2:ResidentialFieldObjectVo)
      {
         super(param1,param2);
         this.prepareBuildUpManager();
      }
      
      public function tick(param1:Number) : void
      {
         this.billboardObjectVo.currentTimeStamp = param1;
         if(billboardObjectVo.currentMode != "")
         {
            if(this.residentialFieldObjectVo.percentageOfRemainingTimer)
            {
               invalidateIconStateManager();
            }
         }
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
      
      public function get residentialFieldObjectVo() : ResidentialFieldObjectVo
      {
         return _data as ResidentialFieldObjectVo;
      }
   }
}

