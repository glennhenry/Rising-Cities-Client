package net.bigpoint.cityrama.model.miniLayer.vo
{
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   
   public class ImprovementReplacementMiniLayerVo extends ImprovementMiniLayerVo
   {
      
      public static const STATE_REPLACE:String = "STATE_REPLACE";
      
      public static const STATE_REPLACE_EXPIRED:String = "STATE_REPLACE_EXPIRED";
      
      private var _newImprovement:ImprovementVo;
      
      private var _state:String;
      
      public function ImprovementReplacementMiniLayerVo(param1:ImprovementMiniLayerVo)
      {
         super();
         improvementVo = param1.improvementVo;
         slotId = param1.slotId;
         buildingId = param1.buildingId;
         currentTime = param1.currentTime;
         realCurrency = param1.realCurrency;
      }
      
      public function get newImprovement() : ImprovementVo
      {
         return this._newImprovement;
      }
      
      public function set newImprovement(param1:ImprovementVo) : void
      {
         this._newImprovement = param1;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
      }
      
      public function get oldImproData() : BriskDynaVo
      {
         if(improvementVo)
         {
            return ImprovementLayerProxy.improvementGfx(improvementVo.config);
         }
         return null;
      }
      
      public function get newImproData() : BriskDynaVo
      {
         if(this._newImprovement)
         {
            return ImprovementLayerProxy.improvementGfx(this._newImprovement.config);
         }
         return null;
      }
      
      public function get oldImproBackground() : BriskDynaVo
      {
         if(improvementVo)
         {
            return ImprovementLayerProxy.improvementBackground(improvementVo.config.quality);
         }
         return null;
      }
      
      public function get newImproBackground() : BriskDynaVo
      {
         if(this._newImprovement)
         {
            return ImprovementLayerProxy.improvementBackground(this._newImprovement.config.quality);
         }
         return null;
      }
      
      public function get newImproBadge() : BriskDynaVo
      {
         if(this._newImprovement)
         {
            return ImprovementLayerProxy.improvementQualityBadge(this._newImprovement.config.quality);
         }
         return null;
      }
      
      public function get oldImproBadge() : BriskDynaVo
      {
         if(improvementVo)
         {
            return ImprovementLayerProxy.improvementQualityBadge(improvementVo.config.quality);
         }
         return null;
      }
      
      public function get oldImproName() : String
      {
         if(improvementVo)
         {
            return ImprovementLayerProxy.improvementName(improvementVo.config);
         }
         return "";
      }
      
      public function get newImproName() : String
      {
         if(this._newImprovement)
         {
            return ImprovementLayerProxy.improvementName(this._newImprovement.config);
         }
         return "";
      }
   }
}

