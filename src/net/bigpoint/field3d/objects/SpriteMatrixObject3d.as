package net.bigpoint.field3d.objects
{
   import flash.display.DisplayObject;
   import net.bigpoint.field3d.interfaces.IMatrixObject3D;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   import net.bigpoint.util.as3isolib.BinaryTree;
   import net.bigpoint.util.as3isolib.ISortable;
   
   public class SpriteMatrixObject3d extends SpriteObject3d implements IMatrixObject3D, ISortable
   {
      
      private var _node:BinaryTree;
      
      public function SpriteMatrixObject3d(param1:DisplayObject, param2:MatrixObject3dVo)
      {
         super(param1,param2);
      }
      
      override public function moveTo(param1:Number, param2:Number, param3:Number) : void
      {
         super.moveTo(param1,param2,param3);
         if(this._node)
         {
            this._node.handleValueInvalidated();
         }
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
      
      public function get node() : BinaryTree
      {
         return this._node;
      }
      
      public function set node(param1:BinaryTree) : void
      {
         this._node = param1;
      }
   }
}

