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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function moveTo(param1:Number, param2:Number, param3:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param2)))
         {
            super.moveTo(param1,param2,param3);
            if(_loc4_)
            {
               addr003b:
               §§push(this._node);
               if(_loc4_ || Boolean(param3))
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr005b:
                        this._node.handleValueInvalidated();
                        addr0057:
                     }
                  }
                  return;
               }
               §§goto(addr005b);
            }
            §§goto(addr0057);
         }
         §§goto(addr003b);
      }
      
      public function updateIndex(param1:int, param2:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this.fieldMatrixObject3dVo);
            if(_loc4_ || Boolean(this))
            {
               §§pop().matrixCoordinates.x = param1;
               if(!(_loc3_ && _loc3_))
               {
                  addr0056:
                  this.fieldMatrixObject3dVo.matrixCoordinates.y = param2;
               }
               §§goto(addr005c);
            }
            §§goto(addr0056);
         }
         addr005c:
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._node = param1;
         }
      }
   }
}

