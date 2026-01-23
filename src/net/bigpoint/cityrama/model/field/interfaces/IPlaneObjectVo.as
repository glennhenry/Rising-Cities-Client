package net.bigpoint.cityrama.model.field.interfaces
{
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   
   public interface IPlaneObjectVo extends IGameObjectVo
   {
      
      function get groundDTO() : GroundDTO;
      
      function set groundDTO(param1:GroundDTO) : void;
      
      function get isConnectedToStreet() : Boolean;
      
      function set isConnectedToStreet(param1:Boolean) : void;
   }
}

