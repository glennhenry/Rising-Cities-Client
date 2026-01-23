package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import mx.collections.ArrayCollection;
   
   public class FieldInfoLayerInfrastructureDecorationVo extends FieldInfoLayerHeaderVo
   {
      
      public var infoText:String;
      
      public var departmentList:ArrayCollection;
      
      public var modifierValueVo:ModifierValueVo;
      
      public function FieldInfoLayerInfrastructureDecorationVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
   }
}

