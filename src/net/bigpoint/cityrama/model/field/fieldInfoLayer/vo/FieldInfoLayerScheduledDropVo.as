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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function get flavourText() : String
      {
         return this._flavourText;
      }
      
      public function set flavourText(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._flavourText = param1;
         }
      }
      
      public function get levelText() : String
      {
         return this._levelText;
      }
      
      public function set levelText(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._levelText = param1;
         }
      }
      
      public function get harvestProgress() : TimerBarComponentVo
      {
         return this._harvestProgress;
      }
      
      public function set harvestProgress(param1:TimerBarComponentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._harvestProgress = param1;
         }
      }
      
      public function get showHarvestProgress() : Boolean
      {
         return this._showHarvestProgress;
      }
      
      public function set showHarvestProgress(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._showHarvestProgress = param1;
         }
      }
   }
}

