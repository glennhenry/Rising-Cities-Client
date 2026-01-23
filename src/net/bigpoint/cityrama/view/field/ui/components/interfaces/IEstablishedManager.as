package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.display.DisplayObjectContainer;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public interface IEstablishedManager
   {
      
      function invalidate() : void;
      
      function prepare(param1:MatrixObject3dVo = null, param2:DisplayObjectContainer = null, param3:* = null) : void;
   }
}

