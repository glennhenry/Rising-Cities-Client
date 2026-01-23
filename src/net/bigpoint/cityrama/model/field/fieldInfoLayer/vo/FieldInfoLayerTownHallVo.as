package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FieldInfoLayerTownHallVo extends FieldInfoLayerHeaderVo
   {
      
      public var flavourText:String;
      
      public var levelText:String;
      
      public var harvestProgress:TimerBarComponentVo;
      
      public var showHarvestProgress:Boolean;
      
      public function FieldInfoLayerTownHallVo()
      {
         super();
      }
   }
}

