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
         super(param1,param2);
         this._streetObjectVo = param2;
      }
      
      public function get streetObjectVo() : StreetObjectVo
      {
         return this._streetObjectVo as StreetObjectVo;
      }
   }
}

