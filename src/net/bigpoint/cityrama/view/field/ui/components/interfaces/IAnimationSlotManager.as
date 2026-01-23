package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   
   public interface IAnimationSlotManager
   {
      
      function prepareAnimationSlotManager(param1:BillboardObjectVo, param2:SmartObjectContainer, param3:*) : void;
      
      function invalidateAnimationSlotManager() : void;
   }
}

