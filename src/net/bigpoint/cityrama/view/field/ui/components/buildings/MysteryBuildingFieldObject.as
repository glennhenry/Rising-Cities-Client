package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.event.BuildingObjectEvent;
   import net.bigpoint.cityrama.view.field.ui.components.event.ManagerEvent;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerMysteryBuilding;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.EstablishedManagerMysteryBuilding;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.FinishAnimationManager;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateMysteryBuildingManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFinishAnimationManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFinishAnimationManagerImplementation;
   
   public class MysteryBuildingFieldObject extends BillboardObject implements IBuildUpManagerImplementation, ITimerInterest, IFinishAnimationManagerImplementation
   {
      
      private var _enableMouseOver:Boolean = true;
      
      private var _finishAnimationManager:IFinishAnimationManager;
      
      public function MysteryBuildingFieldObject(param1:BillboardAssetsReferenceHolder, param2:MysteryBuildingObjectVo)
      {
         super(param1,param2);
         this.prepareBuildUpManager();
         this.prepareFinishAnimationManager();
      }
      
      public function startUnwrap() : void
      {
         this.mysteryBuildingObjectVo.unwrapProgressIsRunning = true;
         invalidateEstablishedManager();
         this.invalidateFinishAnimationManager();
      }
      
      public function invalidateFinishAnimationManager() : void
      {
         this._finishAnimationManager.invalidateFinishAnimationManager();
      }
      
      private function onUnwrapProgressDone(param1:ManagerEvent) : void
      {
         this.mysteryBuildingObjectVo.unwrapProgressIsRunning = false;
         dispatchEvent(new BuildingObjectEvent(BuildingObjectEvent.MYSTERY_UNWRAP_PROGRESS_CHANGED,this));
      }
      
      public function tick(param1:Number) : void
      {
         this.billboardObjectVo.currentTimeStamp = param1;
         if(billboardObjectVo.currentMode != "")
         {
            if(this.mysteryBuildingObjectVo.percentageOfRemainingTimer)
            {
               invalidateIconStateManager();
            }
         }
      }
      
      override public function prepareIconStateManager() : void
      {
         if(_iconStateManager == null)
         {
            _iconStateManager = new IconStateMysteryBuildingManager();
         }
         _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
      }
      
      override public function prepareEstablishedManager() : void
      {
         if(_establishedManager == null)
         {
            if(_hitzoneAssistant == null)
            {
               throw new RamaCityError("Please instantiate _hitzoneAssistant first");
            }
            addContainer(_billbordObjectContainer);
            _establishedManager = new EstablishedManagerMysteryBuilding();
            _establishedManager.prepare(this.mysteryBuildingObjectVo,_billbordObjectContainer,_assetCollection.mainAsset);
         }
      }
      
      public function prepareBuildUpManager() : void
      {
         if(_buildUpManager == null)
         {
            _buildUpManager = new BuildUpManagerMysteryBuilding();
            _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.mainAsset);
         }
      }
      
      public function prepareFinishAnimationManager() : void
      {
         if(this._finishAnimationManager == null)
         {
            this._finishAnimationManager = new FinishAnimationManager();
            this._finishAnimationManager.prepareFinishAnimationManager(this.mysteryBuildingObjectVo,super._billbordObjectContainer,_productionAnimationContainer,_assetCollection.mainAsset);
            super._billbordObjectContainer.addEventListener(ManagerEvent.FINISH_ANIMATION,this.onUnwrapProgressDone);
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
      
      override public function dispatchRollOver(param1:Boolean = false) : void
      {
         if(this._enableMouseOver)
         {
            super.dispatchRollOver(param1);
         }
      }
      
      override public function dispatchRollOut(param1:Boolean = false) : void
      {
         if(this._enableMouseOver)
         {
            super.dispatchRollOut(param1);
         }
      }
      
      public function get mysteryBuildingObjectVo() : MysteryBuildingObjectVo
      {
         return billboardObjectVo as MysteryBuildingObjectVo;
      }
   }
}

