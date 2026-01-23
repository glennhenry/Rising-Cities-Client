package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FieldInfoLayerConstructionVo extends FieldInfoLayerHeaderVo
   {
      
      public var constructionMode:Boolean;
      
      public var moveInMode:Boolean;
      
      public var harvestProgressVo:TimerBarComponentVo;
      
      public var stepLabel:String = "";
      
      public var miniLayerVo:ConstructionMiniLayerVo;
      
      public function FieldInfoLayerConstructionVo()
      {
         super();
      }
   }
}

