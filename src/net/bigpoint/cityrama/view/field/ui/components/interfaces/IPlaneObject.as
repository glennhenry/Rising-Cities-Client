package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   
   public interface IPlaneObject
   {
      
      function updateIndex(param1:int, param2:int) : void;
      
      function get presentation() : DisplayObject;
      
      function get objectVo() : IPlaneObjectVo;
      
      function moveTo(param1:Number, param2:Number, param3:Number) : void;
      
      function get container() : Sprite;
   }
}

