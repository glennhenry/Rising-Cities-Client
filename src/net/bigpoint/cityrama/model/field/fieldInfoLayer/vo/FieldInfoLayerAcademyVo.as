package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FieldInfoLayerAcademyVo extends FieldInfoLayerHeaderVo
   {
      
      public var layerMode:uint;
      
      public var infoText:String;
      
      public var traineeName:String;
      
      public var currentTraineeConfig:ProfessionalDTO;
      
      public var modifier:ModifierValueVo;
      
      public var harvestProgressVo:TimerBarComponentVo;
      
      public function FieldInfoLayerAcademyVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
   }
}

