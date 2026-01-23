package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   
   public interface IInformationFloaterManager
   {
      
      function prepareInformationFloaterManager(param1:IFloaterObjectVo, param2:SmartObjectContainer) : void;
      
      function invalidateInformationFloaterManager(param1:Boolean = false) : void;
   }
}

