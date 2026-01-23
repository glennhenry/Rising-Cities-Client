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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
   }
}

