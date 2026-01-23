package net.bigpoint.field3d.vo
{
   import flash.geom.Rectangle;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.field3d.interfaces.IMatrixObject3dVo;
   
   public class MatrixObject3dVo extends Object3dVo implements IMatrixObject3dVo
   {
      
      private var _matrixCoordinates:Rectangle;
      
      private var _lastPositonHistoryPoint:Cuboid;
      
      public function MatrixObject3dVo()
      {
         super();
      }
      
      public function get matrixCoordinates() : Rectangle
      {
         return this._matrixCoordinates;
      }
      
      public function set matrixCoordinates(param1:Rectangle) : void
      {
         this._matrixCoordinates = param1;
      }
      
      public function get lastPositonHistoryPoint() : Cuboid
      {
         return this._lastPositonHistoryPoint;
      }
      
      public function set lastPositonHistoryPoint(param1:Cuboid) : void
      {
         this._lastPositonHistoryPoint = param1;
      }
   }
}

