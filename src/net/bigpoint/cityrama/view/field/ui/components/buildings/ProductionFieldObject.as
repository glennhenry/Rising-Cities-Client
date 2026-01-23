package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.ProductionSlotManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IProductionSlot;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IProductionSlotManager;
   
   public class ProductionFieldObject extends BillboardObject implements IBuildUpManagerImplementation, IProductionSlot, ITimerInterest
   {
      
      protected var _productionSlotManager:IProductionSlotManager;
      
      private var _currenEventGfxIdForInformationFloater:Number;
      
      public function ProductionFieldObject(param1:BillboardAssetsReferenceHolder, param2:ProductionFieldObjectVo)
      {
         super(param1,param2);
         this.prepareProductionSlotManager();
         this.prepareBuildUpManager();
         prepareAnimationSlotManager();
      }
      
      public function prepareBuildUpManager() : void
      {
         if(_buildUpManager == null)
         {
            _buildUpManager = new BuildUpManagerDefault();
            _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.buildUpAssets);
         }
      }
      
      public function prepareProductionSlotManager() : void
      {
         if(this._productionSlotManager == null)
         {
            this._productionSlotManager = new ProductionSlotManager();
         }
         this._productionSlotManager.prepareProductionSlotManager(this.productionFieldObjectVo,super._billbordObjectContainer,super._assetCollection.mainAsset);
      }
      
      public function invalidateBuildUpManager() : void
      {
         _buildUpManager.invalidate();
         if(_basementViewManager != null)
         {
            invalidateBasementViewManager(true);
         }
      }
      
      public function invalidateProductionSlotManager() : void
      {
         this._productionSlotManager.invalidateProductionSlotManager();
      }
      
      public function get productionFieldObjectVo() : ProductionFieldObjectVo
      {
         return super.billboardObjectVo as ProductionFieldObjectVo;
      }
      
      public function tick(param1:Number) : void
      {
         this.billboardObjectVo.currentTimeStamp = param1;
         if(billboardObjectVo.currentMode != "")
         {
            if(this.productionFieldObjectVo.percentageOfRemainingTimer)
            {
               invalidateIconStateManager();
            }
         }
      }
   }
}

