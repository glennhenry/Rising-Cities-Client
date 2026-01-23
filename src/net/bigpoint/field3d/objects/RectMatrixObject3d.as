package net.bigpoint.field3d.objects
{
   import flash.display.DisplayObject;
   import net.bigpoint.field3d.interfaces.IMatrixObject3D;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class RectMatrixObject3d extends RectObject3d implements IMatrixObject3D
   {
      
      public function RectMatrixObject3d(param1:DisplayObject, param2:MatrixObject3dVo)
      {
         super(param1,param2);
         this.setSize(param2.matrixCoordinates.width,param2.matrixCoordinates.height,1);
      }
      
      public function updateIndex(param1:int, param2:int) : void
      {
         this.fieldMatrixObject3dVo.matrixCoordinates.x = param1;
         this.fieldMatrixObject3dVo.matrixCoordinates.y = param2;
      }
      
      public function get xIndex() : int
      {
         return this.fieldMatrixObject3dVo.matrixCoordinates.x;
      }
      
      public function get yIndex() : int
      {
         return this.fieldMatrixObject3dVo.matrixCoordinates.y;
      }
      
      public function get fieldMatrixObject3dVo() : MatrixObject3dVo
      {
         return _data as MatrixObject3dVo;
      }
   }
}

