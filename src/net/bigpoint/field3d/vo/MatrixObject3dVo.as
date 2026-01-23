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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public function get matrixCoordinates() : Rectangle
      {
         return this._matrixCoordinates;
      }
      
      public function set matrixCoordinates(param1:Rectangle) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._matrixCoordinates = param1;
         }
      }
      
      public function get lastPositonHistoryPoint() : Cuboid
      {
         return this._lastPositonHistoryPoint;
      }
      
      public function set lastPositonHistoryPoint(param1:Cuboid) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._lastPositonHistoryPoint = param1;
         }
      }
   }
}

