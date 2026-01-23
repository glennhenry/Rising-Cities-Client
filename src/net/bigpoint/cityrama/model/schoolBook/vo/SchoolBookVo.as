package net.bigpoint.cityrama.model.schoolBook.vo
{
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class SchoolBookVo
   {
      
      public var student:ProfessionalSlotVo;
      
      public var skillPointsLeft:int;
      
      public var skillPointsToAdd:int;
      
      public var duration:String;
      
      public var educationPointsAvailable:Boolean;
      
      public var dextroAvailable:Boolean;
      
      public var dextroCost:int;
      
      public var pointCost:int;
      
      public var progressInfo:TimerBarComponentVo;
      
      public var departmentData:SchoolBookDepartmentVo;
      
      public var educationIsFinished:Boolean = false;
      
      public var assignedProfessional:ProfessionalDTO;
      
      public var emergencyFeatureDisabled:Boolean;
      
      private var _attributes:Vector.<EducationAttributeVo>;
      
      public function SchoolBookVo()
      {
         super();
      }
      
      private static function sortAttributes(param1:EducationAttributeVo, param2:EducationAttributeVo) : int
      {
         if(param1.configId > param2.configId)
         {
            return 1;
         }
         if(param1.configId < param2.configId)
         {
            return -1;
         }
         return 0;
      }
      
      public function get attributes() : Vector.<EducationAttributeVo>
      {
         return this._attributes;
      }
      
      public function set attributes(param1:Vector.<EducationAttributeVo>) : void
      {
         this._attributes = param1;
         this._attributes.sort(sortAttributes);
      }
   }
}

