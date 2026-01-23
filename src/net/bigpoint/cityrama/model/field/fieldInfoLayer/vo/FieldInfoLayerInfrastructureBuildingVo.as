package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class FieldInfoLayerInfrastructureBuildingVo extends FieldInfoLayerHeaderVo
   {
      
      public var modifierValueVo:ModifierValueVo;
      
      public var infoText:String;
      
      public var departmentProfessionalData:Vector.<DepartmentProfessionalComponentVo>;
      
      public function FieldInfoLayerInfrastructureBuildingVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
   }
}

