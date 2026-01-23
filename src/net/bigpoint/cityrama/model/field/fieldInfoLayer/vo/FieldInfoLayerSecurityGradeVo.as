package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class FieldInfoLayerSecurityGradeVo extends FieldInfoLayerHeaderVo
   {
      
      public var securityGrades:Vector.<SecurityStatusComponentVo>;
      
      public var infoText:String;
      
      public function FieldInfoLayerSecurityGradeVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
   }
}

