package net.bigpoint.cityrama.model.field
{
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MatrixProxy extends Proxy
   {
      
      public static const NAME:String = "MatrixProxy";
      
      private var _matrix:Matrix3D;
      
      private var _tempVector:Vector3D;
      
      public function MatrixProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._tempVector = new Vector3D();
      }
      
      public function get matrix() : Matrix3D
      {
         return this._matrix;
      }
      
      public function set matrix(param1:Matrix3D) : void
      {
         this._matrix = param1;
      }
      
      public function getPositionVector(param1:int, param2:int) : Vector3D
      {
         this._tempVector.x = param1;
         this._tempVector.y = param2;
         this._tempVector.z = 0;
         return this._matrix.transformVector(this._tempVector);
      }
   }
}

