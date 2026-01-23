package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FieldInfoLayerCitySquareVo extends FieldInfoLayerHeaderVo
   {
      
      public var eventLabel:String;
      
      public var eventState:String;
      
      public var harvestProgress:TimerBarComponentVo;
      
      public function FieldInfoLayerCitySquareVo()
      {
         super();
      }
   }
}

