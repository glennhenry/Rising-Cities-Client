package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import flash.display.DisplayObject;
   import net.bigpoint.cityrama.model.field.ground.vo.SquareObjectVo;
   
   public class SquareObject extends PlaneObject
   {
      
      private var _squareObjectVo:SquareObjectVo;
      
      public function SquareObject(param1:DisplayObject, param2:SquareObjectVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
            if(_loc4_ || Boolean(param1))
            {
               this._squareObjectVo = param2;
            }
         }
      }
      
      public function get squareObjectVo() : SquareObjectVo
      {
         return this._squareObjectVo as SquareObjectVo;
      }
   }
}

