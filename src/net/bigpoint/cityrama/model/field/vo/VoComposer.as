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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function getBuildingVo(param1:Object, param2:GameConfigProxy) : BuildingDTO
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:BuildingDTO = new BuildingDTO(param1,param2.getConfigPlayfieldItemById(param1.c));
         if(!(_loc5_ && Boolean(param2)))
         {
            _loc3_.config = param2.config.items[_loc3_.configId];
         }
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

