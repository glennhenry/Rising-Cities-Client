package net.bigpoint.cityrama.model.server.vo.server
{
   public class DepartmentRequirementDTO
   {
      
      private var _emergencyCode:int;
      
      private var _departmentType:String;
      
      private var _mainDept:Boolean;
      
      public function DepartmentRequirementDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super();
            if(!_loc2_)
            {
               this._emergencyCode = param1.e;
               if(_loc3_)
               {
                  §§goto(addr003e);
               }
            }
            §§goto(addr0054);
         }
         addr003e:
         this._departmentType = param1.d;
         if(!(_loc2_ && _loc2_))
         {
            addr0054:
            this._mainDept = param1.m;
         }
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

