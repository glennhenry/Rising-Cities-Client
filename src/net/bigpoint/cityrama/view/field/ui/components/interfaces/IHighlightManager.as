package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.display.DisplayObject;
   import net.bigpoint.field3d.interfaces.IMatrixObject3dVo;
   
   public interface IHighlightManager
   {
      
      function prepareHighlightManager(param1:IMatrixObject3dVo, param2:DisplayObject) : void;
      
      function invalidateHighlightManager(param1:String, param2:Boolean = true) : void;
   }
}

