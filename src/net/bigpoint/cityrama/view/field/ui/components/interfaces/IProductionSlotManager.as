package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   
   public interface IProductionSlotManager
   {
      
      function prepareProductionSlotManager(param1:ProductionFieldObjectVo, param2:SmartObjectContainer, param3:*) : void;
      
      function invalidateProductionSlotManager() : void;
   }
}

