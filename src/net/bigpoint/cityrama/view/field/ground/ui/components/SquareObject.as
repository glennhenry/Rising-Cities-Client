package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import flash.display.DisplayObject;
   import net.bigpoint.cityrama.model.field.ground.vo.SquareObjectVo;
   
   public class SquareObject extends PlaneObject
   {
      
      private var _squareObjectVo:SquareObjectVo;
      
      public function SquareObject(param1:DisplayObject, param2:SquareObjectVo)
      {
         super(param1,param2);
         this._squareObjectVo = param2;
      }
      
      public function get squareObjectVo() : SquareObjectVo
      {
         return this._squareObjectVo as SquareObjectVo;
      }
   }
}

