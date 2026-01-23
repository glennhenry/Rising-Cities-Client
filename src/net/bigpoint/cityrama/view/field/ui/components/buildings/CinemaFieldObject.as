package net.bigpoint.cityrama.view.field.ui.components.buildings
{
   import net.bigpoint.cityrama.model.field.vo.CinemaFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.IconStateCinemaManager;
   
   public class CinemaFieldObject extends SpecialFieldObject
   {
      
      public function CinemaFieldObject(param1:BillboardAssetsReferenceHolder, param2:SpecialFieldObjectVo)
      {
         super(param1,param2);
      }
      
      override public function prepareIconStateManager() : void
      {
         if(_iconStateManager == null)
         {
            _iconStateManager = new IconStateCinemaManager();
         }
         _iconStateManager.prepareIconStateManager(billboardObjectVo,_iconContainer,_billbordObjectContainer);
      }
      
      public function get cinemaFieldObjectVo() : CinemaFieldObjectVo
      {
         return CinemaFieldObjectVo(_data);
      }
   }
}

