package net.bigpoint.cityrama.model.architecturalBook.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   
   public interface IBlueprintVo
   {
      
      function get baseOutPutType() : String;
      
      function get configObj() : ConfigPlayfieldItemDTO;
      
      function get unlockLvl() : int;
      
      function get price() : Number;
      
      function get buildPermissionAmount() : int;
      
      function get permission() : PlayfieldItemPermissionDTO;
      
      function get permissionBuyable() : Boolean;
      
      function get output() : Number;
      
      function get runtime() : Number;
      
      function get restrictions() : Vector.<ConfigGroundRestrictionDTO>;
      
      function get material() : Vector.<ConfigOutputDTO>;
      
      function get consequences() : Vector.<ConfigOutputDTO>;
      
      function get products() : Vector.<ConfigGoodDTO>;
      
      function get state() : String;
   }
}

