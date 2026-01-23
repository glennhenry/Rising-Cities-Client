package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import flash.display.DisplayObjectContainer;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.EstablishedManagerCitySquare;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateCitySquareManager;
   
   public class CitySquareFieldObject extends SpecialFieldObject
   {
      
      private var _billboardContainerAdded:Boolean;
      
      public function CitySquareFieldObject(param1:BillboardAssetsReferenceHolder, param2:SpecialFieldObjectVo)
      {
         super(param1,param2);
      }
      
      override public function invalidateEstablishedManager() : void
      {
         _establishedManager.invalidate();
         if(_basementViewManager != null)
         {
            invalidateBasementViewManager(true);
         }
      }
      
      override public function prepareEstablishedManager() : void
      {
         if(_establishedManager == null)
         {
            if(_hitzoneAssistant == null)
            {
               throw new RamaCityError("Please instantiate _hitzoneAssistant first");
            }
            if(!this._billboardContainerAdded)
            {
               this._billboardContainerAdded = true;
               addContainer(_billbordObjectContainer);
            }
            _establishedManager = new EstablishedManagerCitySquare();
            _establishedManager.prepare(billboardObjectVo,_billbordObjectContainer,_assetCollection.mainAsset);
         }
      }
      
      override public function prepareIconStateManager() : void
      {
         if(_iconStateManager == null)
         {
            _iconStateManager = new IconStateCitySquareManager();
         }
         _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
      }
      
      override public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         super.invalidateIconStateManager(param1);
      }
      
      public function get citySquareFieldObjectVo() : CitySquareFieldObjectVo
      {
         return CitySquareFieldObjectVo(_data);
      }
      
      public function changeInfieldAsset(param1:DisplayObjectContainer) : void
      {
         _assetCollection.mainAsset = param1;
         _establishedManager = null;
         this.prepareEstablishedManager();
      }
   }
}

