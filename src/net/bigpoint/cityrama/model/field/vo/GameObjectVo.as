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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super();
            if(!_loc3_)
            {
               addr001f:
               this._configPlayfieldItemVo = param1;
            }
            return;
         }
         §§goto(addr001f);
      }
      
      public function get configPlayfieldItemVo() : ConfigPlayfieldItemDTO
      {
         return this._configPlayfieldItemVo;
      }
      
      public function set configPlayfieldItemVo(param1:ConfigPlayfieldItemDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._configPlayfieldItemVo = param1;
         }
      }
      
      public function get matrix3dCoordinates() : Cuboid
      {
         return matrixCoordinates as Cuboid;
      }
      
      public function set matrix3dCoordinates(param1:Cuboid) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            matrixCoordinates = param1;
         }
      }
   }
}

