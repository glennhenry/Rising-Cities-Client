package net.bigpoint.cityrama.model.field.interfaces
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   
   public interface IBillboardObjectVo extends IGameObjectVo
   {
      
      function get buildingDTO() : BuildingDTO;
      
      function set buildingDTO(param1:BuildingDTO) : void;
      
      function set currentTimeStamp(param1:Number) : void;
      
      function get currentTimeStamp() : Number;
      
      function set iconOffset(param1:Point) : void;
      
      function get iconOffset() : Point;
      
      function set baseIconOffset(param1:Point) : void;
      
      function get baseIconOffset() : Point;
      
      function set constructionIconOffset(param1:Point) : void;
      
      function get constructionIconOffset() : Point;
      
      function set placementIconOffset(param1:Point) : void;
      
      function get placementIconOffset() : Point;
   }
}

