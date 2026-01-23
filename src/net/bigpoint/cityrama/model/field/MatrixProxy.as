package net.bigpoint.cityrama.model.field
{
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MatrixProxy extends Proxy
   {
      
      public static const NAME:String = "MatrixProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         NAME = "MatrixProxy";
      }
      
      private var _matrix:Matrix3D;
      
      private var _tempVector:Vector3D;
      
      public function MatrixProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
            if(_loc3_ || _loc3_)
            {
               addr003d:
               this._tempVector = new Vector3D();
            }
            return;
         }
         §§goto(addr003d);
      }
      
      public function get matrix() : Matrix3D
      {
         return this._matrix;
      }
      
      public function set matrix(param1:Matrix3D) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._matrix = param1;
         }
      }
      
      public function getPositionVector(param1:int, param2:int) : Vector3D
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            this._tempVector.x = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               this._tempVector.y = param2;
               if(!(_loc3_ && _loc3_))
               {
                  addr0061:
                  this._tempVector.z = 0;
               }
               §§goto(addr006a);
            }
            §§goto(addr0061);
         }
         addr006a:
         return this._matrix.transformVector(this._tempVector);
      }
   }
}

