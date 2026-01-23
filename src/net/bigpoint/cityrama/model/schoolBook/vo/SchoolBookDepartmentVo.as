package net.bigpoint.cityrama.model.schoolBook.vo
{
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentThresholdBarVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   
   public class SchoolBookDepartmentVo
   {
      
      public var infrastructureBuildings:Vector.<InfrastructureBuildingFieldObject>;
      
      public var departmentThresholdBarVo:Vector.<DepartmentThresholdBarVo>;
      
      public var departmentGfxIds:Vector.<String>;
      
      public function SchoolBookDepartmentVo()
      {
         super();
         this.departmentGfxIds = new Vector.<String>();
      }
   }
}

