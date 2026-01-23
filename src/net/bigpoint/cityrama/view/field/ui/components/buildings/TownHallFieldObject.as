package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.TownHallAnimationManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class TownHallFieldObject extends ActivatorFieldObject implements IBuildUpManagerImplementation
   {
      
      public function TownHallFieldObject(param1:BillboardAssetsReferenceHolder, param2:TownHallFieldObjectVo)
      {
         super(param1,param2);
         _hasBasement = true;
         this.prepareBuildUpManager();
         this.changeInteractionstate(true);
      }
      
      public function prepareBuildUpManager() : void
      {
         if(_buildUpManager == null)
         {
            _buildUpManager = new BuildUpManagerDefault();
         }
         _buildUpManager.prepare(billboardObjectVo,super._billbordObjectContainer,super._assetCollection.buildUpAssets);
      }
      
      public function invalidateBuildUpManager() : void
      {
         _buildUpManager.invalidate();
         if(_basementViewManager != null)
         {
            invalidateBasementViewManager(true);
         }
         if(_iconStateManager != null)
         {
            invalidateIconStateManager();
         }
      }
      
      override public function prepareAnimationSlotManager() : void
      {
         if(_animationSlotManager == null)
         {
            _animationSlotManager = new TownHallAnimationManager();
         }
         _animationSlotManager.prepareAnimationSlotManager(billboardObjectVo,super._billbordObjectContainer,super._productionAnimationContainer);
      }
      
      public function get townHallFieldObjectVo() : TownHallFieldObjectVo
      {
         return _data as TownHallFieldObjectVo;
      }
      
      override public function changeInteractionstate(param1:Boolean) : void
      {
         _hitzoneContainer.mouseEnabled = param1;
         _iconContainer.mouseEnabled = param1;
      }
   }
}

