package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.display.DisplayObjectContainer;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   
   public interface IBuildUpManager
   {
      
      function prepare(param1:BillboardObjectVo = null, param2:DisplayObjectContainer = null, param3:DisplayObjectContainer = null) : void;
      
      function invalidate(param1:String = "", param2:Boolean = true) : void;
   }
}

