package net.bigpoint.field3d.interfaces
{
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public interface IMatrixObject3D extends IObject3D
   {
      
      function get xIndex() : int;
      
      function get yIndex() : int;
      
      function updateIndex(param1:int, param2:int) : void;
      
      function get fieldMatrixObject3dVo() : MatrixObject3dVo;
   }
}

