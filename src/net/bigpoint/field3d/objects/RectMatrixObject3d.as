package net.bigpoint.field3d.objects
{
   import flash.display.DisplayObject;
   import net.bigpoint.field3d.interfaces.IMatrixObject3D;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class RectMatrixObject3d extends RectObject3d implements IMatrixObject3D
   {
      
      public function RectMatrixObject3d(param1:DisplayObject, param2:MatrixObject3dVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            super(param1,param2);
            if(!_loc3_)
            {
               addr0038:
               this.setSize(param2.matrixCoordinates.width,param2.matrixCoordinates.height,1);
            }
            return;
         }
         §§goto(addr0038);
      }
      
      public function updateIndex(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.fieldMatrixObject3dVo);
            if(!_loc3_)
            {
               §§pop().matrixCoordinates.x = param1;
               if(_loc4_)
               {
                  addr0045:
                  this.fieldMatrixObject3dVo.matrixCoordinates.y = param2;
               }
               §§goto(addr004b);
            }
            §§goto(addr0045);
         }
         addr004b:
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

