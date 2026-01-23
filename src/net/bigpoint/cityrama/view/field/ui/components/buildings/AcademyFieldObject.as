package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.field.vo.AcademyFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.BuildUpManagerDefault;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateAcademyManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   
   public class AcademyFieldObject extends SpecialFieldObject implements IBuildUpManagerImplementation, ITimerInterest
   {
      
      public function AcademyFieldObject(param1:BillboardAssetsReferenceHolder, param2:AcademyFieldObjectVo)
      {
         super(param1,param2);
         this.prepareBuildUpManager();
      }
      
      override public function prepareIconStateManager() : void
      {
         if(_iconStateManager == null)
         {
            _iconStateManager = new IconStateAcademyManager();
         }
         _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         _iconStateManager.invalidateIconStateManager(param1);
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
      
      public function get academyFieldObjectVo() : AcademyFieldObjectVo
      {
         return _data as AcademyFieldObjectVo;
      }
      
      override public function tick(param1:Number) : void
      {
         this.academyFieldObjectVo.currentTimeStamp = param1;
      }
   }
}

