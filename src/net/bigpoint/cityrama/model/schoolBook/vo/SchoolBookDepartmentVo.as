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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               this.departmentGfxIds = new Vector.<String>();
            }
         }
      }
   }
}

