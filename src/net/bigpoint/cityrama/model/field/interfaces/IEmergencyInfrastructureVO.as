package net.bigpoint.cityrama.model.field.interfaces
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   
   public interface IEmergencyInfrastructureVO extends IBillboardObjectVo
   {
      
      function get listOfGrades() : Vector.<ConfigSecurityGradeDTO>;
      
      function get listOfModifiedGrades() : Vector.<ConfigSecurityGradeDTO>;
      
      function get objectSize() : Point;
      
      function get id() : Number;
      
      function get department() : Vector.<String>;
      
      function set emergencyIsRunning(param1:Boolean) : void;
   }
}

