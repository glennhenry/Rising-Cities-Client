package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   
   public interface IBasementViewManager
   {
      
      function prepareBasementViewManager(param1:BillboardObjectVo, param2:SmartObjectContainer, param3:BillboardAssetsReferenceHolder) : void;
      
      function invalidateBasementViewManager(param1:Boolean = false) : void;
   }
}

