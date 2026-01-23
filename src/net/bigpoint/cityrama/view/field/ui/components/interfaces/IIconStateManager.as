package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   
   public interface IIconStateManager
   {
      
      function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void;
      
      function invalidateIconStateManager(param1:Boolean = false) : void;
   }
}

