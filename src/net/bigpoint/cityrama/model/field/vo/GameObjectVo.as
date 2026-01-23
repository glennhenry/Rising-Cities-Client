package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.field3d.vo.MatrixObject3dVo;
   
   public class GameObjectVo extends MatrixObject3dVo implements IGameObjectVo
   {
      
      private var _configPlayfieldItemVo:ConfigPlayfieldItemDTO;
      
      public function GameObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super();
         this._configPlayfieldItemVo = param1;
      }
      
      public function get configPlayfieldItemVo() : ConfigPlayfieldItemDTO
      {
         return this._configPlayfieldItemVo;
      }
      
      public function set configPlayfieldItemVo(param1:ConfigPlayfieldItemDTO) : void
      {
         this._configPlayfieldItemVo = param1;
      }
      
      public function get matrix3dCoordinates() : Cuboid
      {
         return matrixCoordinates as Cuboid;
      }
      
      public function set matrix3dCoordinates(param1:Cuboid) : void
      {
         matrixCoordinates = param1;
      }
   }
}

