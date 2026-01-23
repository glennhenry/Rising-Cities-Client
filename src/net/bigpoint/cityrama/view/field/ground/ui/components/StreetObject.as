package net.bigpoint.cityrama.view.field.ground.ui.components
{
   import flash.display.DisplayObject;
   import net.bigpoint.cityrama.model.field.ground.vo.StreetObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IStreetObject;
   
   public class StreetObject extends PlaneObject implements IStreetObject
   {
      
      private var _streetObjectVo:StreetObjectVo;
      
      public function StreetObject(param1:DisplayObject, param2:StreetObjectVo)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               addr002c:
               this._streetObjectVo = param2;
            }
            return;
         }
         §§goto(addr002c);
      }
      
      public function get streetObjectVo() : StreetObjectVo
      {
         return this._streetObjectVo as StreetObjectVo;
      }
   }
}

