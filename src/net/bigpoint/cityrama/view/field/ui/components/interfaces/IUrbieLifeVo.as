package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import flash.display.DisplayObject;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeConfigVo;
   
   public interface IUrbieLifeVo
   {
      
      function get id() : String;
      
      function set id(param1:String) : void;
      
      function get config() : UrbieLifeConfigVo;
      
      function get icon() : DisplayObject;
      
      function set icon(param1:DisplayObject) : void;
   }
}

