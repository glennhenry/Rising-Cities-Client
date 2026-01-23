package net.bigpoint.cityrama.model.field.interfaces
{
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.field3d.interfaces.IMatrixObject3dVo;
   
   public interface IGameObjectVo extends IMatrixObject3dVo
   {
      
      function get configPlayfieldItemVo() : ConfigPlayfieldItemDTO;
      
      function set configPlayfieldItemVo(param1:ConfigPlayfieldItemDTO) : void;
      
      function get matrix3dCoordinates() : Cuboid;
      
      function set matrix3dCoordinates(param1:Cuboid) : void;
   }
}

