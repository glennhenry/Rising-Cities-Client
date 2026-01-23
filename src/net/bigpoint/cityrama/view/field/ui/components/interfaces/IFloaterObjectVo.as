package net.bigpoint.cityrama.view.field.ui.components.interfaces
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   
   public interface IFloaterObjectVo
   {
      
      function get informationFloaterPhase() : ConfigPhaseDTO;
      
      function set informationFloaterPhase(param1:ConfigPhaseDTO) : void;
      
      function get informationFloaterCustomText() : String;
      
      function set informationFloaterCustomText(param1:String) : void;
   }
}

