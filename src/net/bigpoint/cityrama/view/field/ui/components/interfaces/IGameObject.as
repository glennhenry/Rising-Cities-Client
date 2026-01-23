package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.field3d.interfaces.IMatrixObject3D;
   
   public interface IGameObject extends IMatrixObject3D
   {
      
      function get gameObjectVo() : IGameObjectVo;
      
      function onDataChanged(param1:Event) : void;
   }
}

