package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.display.DisplayObjectContainer;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   
   public interface IBoulderDemolitionAssetManager
   {
      
      function invalidate() : void;
      
      function prepare(param1:BoulderObjectVo = null, param2:DisplayObjectContainer = null, param3:* = null) : void;
   }
}

