package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FieldInfoLayerEmergencyVo extends FieldInfoLayerHeaderVo
   {
      
      public var emergencyStatus:String;
      
      public var infoText:String;
      
      public var securityData:Vector.<SecurityStatusComponentVo>;
      
      public var timerVo:TimerBarComponentVo;
      
      public var damageData:ConstructionMiniLayerVo;
      
      public function FieldInfoLayerEmergencyVo()
      {
         super();
      }
   }
}

