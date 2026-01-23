package net.bigpoint.field3d.interfaces
{
   import flash.geom.Rectangle;
   
   public interface IMatrixObject3dVo extends IObject3dVo
   {
      
      function get matrixCoordinates() : Rectangle;
      
      function set matrixCoordinates(param1:Rectangle) : void;
   }
}

