package net.bigpoint.cityrama.model.server.vo.server
{
   public class DepartmentRequirementDTO
   {
      
      private var _emergencyCode:int;
      
      private var _departmentType:String;
      
      private var _mainDept:Boolean;
      
      public function DepartmentRequirementDTO(param1:Object)
      {
         super();
         this._emergencyCode = param1.e;
         this._departmentType = param1.d;
         this._mainDept = param1.m;
      }
      
      public function get emergencyCode() : int
      {
         return this._emergencyCode;
      }
      
      public function get departmentType() : String
      {
         return this._departmentType;
      }
      
      public function get mainDept() : Boolean
      {
         return this._mainDept;
      }
   }
}

