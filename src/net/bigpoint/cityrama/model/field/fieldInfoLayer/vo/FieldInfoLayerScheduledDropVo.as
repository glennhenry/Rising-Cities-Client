package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FieldInfoLayerScheduledDropVo extends FieldInfoLayerHeaderVo
   {
      
      private var _flavourText:String;
      
      private var _levelText:String;
      
      private var _harvestProgress:TimerBarComponentVo;
      
      private var _showHarvestProgress:Boolean;
      
      public function FieldInfoLayerScheduledDropVo()
      {
         super();
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function set flavourText(param1:String) : void
      {
         this._flavourText = param1;
      }
      
      public function get levelText() : String
      {
         return this._levelText;
      }
      
      public function set levelText(param1:String) : void
      {
         this._levelText = param1;
      }
      
      public function get harvestProgress() : TimerBarComponentVo
      {
         return this._harvestProgress;
      }
      
      public function set harvestProgress(param1:TimerBarComponentVo) : void
      {
         this._harvestProgress = param1;
      }
      
      public function get showHarvestProgress() : Boolean
      {
         return this._showHarvestProgress;
      }
      
      public function set showHarvestProgress(param1:Boolean) : void
      {
         this._showHarvestProgress = param1;
      }
   }
}

