package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class ConfigEmergencyDTO
   {
      
      private var _lifetime:Number;
      
      private var _gfxId:Number;
      
      private var _locaId:Number;
      
      private var _departmentRequirements:Vector.<DepartmentRequirementDTO>;
      
      private var _emergencyRequirements:Vector.<EmergencyRequirementDTO>;
      
      public function ConfigEmergencyDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         super();
         this._lifetime = param1.l;
         this._gfxId = param1.gid;
         this._locaId = param1.lid;
         this._departmentRequirements = new Vector.<DepartmentRequirementDTO>();
         for each(_loc2_ in param1.d)
         {
            this._departmentRequirements.push(new DepartmentRequirementDTO(_loc2_));
         }
         this._emergencyRequirements = new Vector.<EmergencyRequirementDTO>();
         for each(_loc3_ in param1.er)
         {
            this._emergencyRequirements.push(ConfigFactory.buildEmergencyRequirementDTO(_loc3_));
         }
      }
      
      public function get lifetime() : Number
      {
         return this._lifetime;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get locaId() : Number
      {
         return this._locaId;
      }
      
      public function get departmentRequirements() : Vector.<DepartmentRequirementDTO>
      {
         return this._departmentRequirements;
      }
      
      public function get emergencyRequirements() : Vector.<EmergencyRequirementDTO>
      {
         return this._emergencyRequirements;
      }
      
      public function get mainDepeartment() : String
      {
         var _loc1_:DepartmentRequirementDTO = null;
         for each(_loc1_ in this.departmentRequirements)
         {
            if(_loc1_.mainDept)
            {
               return _loc1_.departmentType;
            }
         }
         return _loc1_.departmentType;
      }
   }
}

