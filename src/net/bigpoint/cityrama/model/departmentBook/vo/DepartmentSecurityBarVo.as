package net.bigpoint.cityrama.model.departmentBook.vo
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   
   public class DepartmentSecurityBarVo
   {
      
      public var gfxId:int;
      
      public var type:String;
      
      public var currentAttributePoints:Number;
      
      public var buildingSizeX:Number;
      
      public var buildingSizeY:Number;
      
      public var maxAttributePoints:Number;
      
      public var configSecurityGrades:Vector.<ConfigSecurityGradeDTO>;
      
      public var thresholds:Dictionary;
      
      public function DepartmentSecurityBarVo(param1:Number, param2:Number, param3:String, param4:int, param5:Vector.<ConfigSecurityGradeDTO>, param6:Dictionary, param7:Number, param8:Number)
      {
         super();
         this.type = param3;
         this.maxAttributePoints = param2;
         this.currentAttributePoints = param1;
         this.gfxId = param4;
         this.configSecurityGrades = param5;
         this.thresholds = param6;
         this.buildingSizeX = param7;
         this.buildingSizeY = param8;
      }
   }
}

