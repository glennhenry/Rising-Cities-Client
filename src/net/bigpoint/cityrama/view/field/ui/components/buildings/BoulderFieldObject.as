package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BoulderDemolitionAssetManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBoulderAssetChange;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBoulderDemolitionAssetManager;
   
   public class BoulderFieldObject extends BillboardObject implements IBoulderAssetChange, ITimerInterest
   {
      
      protected var _boulderAssetManager:IBoulderDemolitionAssetManager;
      
      public function BoulderFieldObject(param1:BillboardAssetsReferenceHolder, param2:BoulderObjectVo)
      {
         super(param1,param2);
         this.prepareBoulderDemolitionAssetManager();
      }
      
      public function tick(param1:Number) : void
      {
         this.billboardObjectVo.currentTimeStamp = param1;
      }
      
      public function prepareBoulderDemolitionAssetManager() : void
      {
         if(this._boulderAssetManager == null)
         {
            this._boulderAssetManager = new BoulderDemolitionAssetManager();
         }
         this._boulderAssetManager.prepare(this.boulderObjectVo,_billbordObjectContainer,_assetCollection.mainAsset);
      }
      
      public function invalidateBoulderDemolitionAssetManager() : void
      {
         this._boulderAssetManager.invalidate();
      }
      
      override public function dispatchRollOver(param1:Boolean = false) : void
      {
         if(!billboardObjectVo.userInteractionLocked)
         {
            super.dispatchRollOver(param1);
         }
      }
      
      public function get boulderObjectVo() : BoulderObjectVo
      {
         return billboardObjectVo as BoulderObjectVo;
      }
      
      override public function prepareBasementViewManager() : void
      {
      }
      
      override public function invalidateBasementViewManager(param1:Boolean = false) : void
      {
      }
      
      override public function prepareIconStateManager() : void
      {
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
      }
      
      override public function prepareAnimationSlotManager() : void
      {
      }
      
      override public function invalidateAnimationSlotManager() : void
      {
      }
      
      override public function invalidateEstablishedManager() : void
      {
         if(this._boulderAssetManager != null)
         {
            this.invalidateBoulderDemolitionAssetManager();
         }
         else
         {
            this.tryAgain();
         }
      }
      
      private function tryAgain() : void
      {
         TweenMax.delayedCall(1,this.invalidateEstablishedManager);
      }
   }
}

