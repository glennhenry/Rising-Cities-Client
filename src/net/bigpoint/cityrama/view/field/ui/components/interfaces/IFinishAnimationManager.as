package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   
   public interface IFinishAnimationManager
   {
      
      function prepareFinishAnimationManager(param1:MysteryBuildingObjectVo, param2:SmartObjectContainer, param3:Sprite, param4:DisplayObject) : void;
      
      function invalidateFinishAnimationManager() : void;
   }
}

