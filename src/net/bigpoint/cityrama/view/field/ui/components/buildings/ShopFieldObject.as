package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class ShopFieldObject extends BillboardObject implements IBuildUpManagerImplementation, ITimerInterest
   {
      
      public function ShopFieldObject(param1:BillboardAssetsReferenceHolder, param2:ShopFieldObjectVo)
      {
         super(param1,param2);
         this.prepareBuildUpManager();
      }
      
      public function tick(param1:Number) : void
      {
         this.billboardObjectVo.currentTimeStamp = param1;
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
      
      public function get shopFieldObjectVo() : ShopFieldObjectVo
      {
         return ShopFieldObjectVo(_data);
      }
   }
}

