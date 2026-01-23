package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   
   public class VoComposer
   {
      
      public function VoComposer()
      {
         super();
      }
      
      public static function getBuildingVo(param1:Object, param2:GameConfigProxy) : BuildingDTO
      {
         var _loc3_:BuildingDTO = new BuildingDTO(param1,param2.getConfigPlayfieldItemById(param1.c));
         _loc3_.config = param2.config.items[_loc3_.configId];
         return _loc3_;
      }
      
      public static function getGroundgVo(param1:Object, param2:GameConfigProxy) : GroundDTO
      {
         return new GroundDTO(param1,param2.getConfigPlayfieldItemById(param1.c));
      }
      
      public static function getDecorationVo(param1:Object, param2:GameConfigProxy) : DecorationVo
      {
         return new DecorationVo(param1,param2.getConfigPlayfieldItemById(param1.c));
      }
   }
}

