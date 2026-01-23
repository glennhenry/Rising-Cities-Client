package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryChallengeDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class SpecificPlayfieldItemUiInfolayerContentVo extends PlayfieldItemUiInfolayerContentVo
   {
      
      private var _modifiedValues:SpecificPlayfieldItemModifiedValueVo;
      
      private var _emergencyFeatureDisabled:Boolean;
      
      private var _emergencyRunning:Boolean;
      
      public function SpecificPlayfieldItemUiInfolayerContentVo(param1:uint, param2:Point, param3:ConfigPlayfieldItemDTO, param4:MasteryChallengeDTO = null, param5:String = "", param6:Number = 0, param7:SpecificPlayfieldItemModifiedValueVo = null)
      {
         super(param1,param2,param3,param4,param5,param6);
         this._modifiedValues = param7;
      }
      
      public function set emergencyFeatureDisabled(param1:Boolean) : void
      {
         this._emergencyFeatureDisabled = param1;
      }
      
      public function set emergencyRunning(param1:Boolean) : void
      {
         this._emergencyRunning = param1;
      }
      
      public function get baseharvestOutput() : ConfigOutputDTO
      {
         if(this._modifiedValues)
         {
            return this._modifiedValues.modBaseHarvestOutput;
         }
         return super.infoLayerConfigPlayfieldItemVo.baseharvestOutput;
      }
      
      public function get timerCycle() : Number
      {
         if(this._modifiedValues)
         {
            return this._modifiedValues.modTimerCycle;
         }
         return super.infoLayerConfigPlayfieldItemVo.timerCycle;
      }
      
      override public function get isReward() : Boolean
      {
         return true;
      }
      
      public function get moodValue() : Number
      {
         if(this._modifiedValues)
         {
            return this._modifiedValues.modMoodValue;
         }
         return super.infoLayerConfigPlayfieldItemVo.moodValue;
      }
      
      public function get energyValue() : Number
      {
         if(this._modifiedValues)
         {
            return this._modifiedValues.modEnergyValue;
         }
         return super.infoLayerConfigPlayfieldItemVo.energyValue;
      }
      
      override public function get headerIconDynaVo() : BriskDynaVo
      {
         this.setHeaderIconType();
         return super.headerIconDynaVo;
      }
      
      override public function get configSecurityGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         return new Vector.<ConfigSecurityGradeDTO>();
      }
      
      override public function get specialText() : String
      {
         if(this.isEmergencyItem && this._emergencyRunning)
         {
            return LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.emergencyDevice.blocked");
         }
         if(this.isEmergencyItem && this._emergencyFeatureDisabled)
         {
            return LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.emergencyDevice.deactivated");
         }
         return super.specialText;
      }
      
      public function get isHarvestReady() : Boolean
      {
         if(this._modifiedValues)
         {
            return this._modifiedValues.harvestReady;
         }
         return false;
      }
      
      private function get isEmergencyItem() : Boolean
      {
         var _loc1_:String = null;
         for each(_loc1_ in _data.tags)
         {
            if(_loc1_ == ServerTagConstants.FIRE_DEPARTMENT || _loc1_ == ServerTagConstants.POLICE_DEPARTMENT || _loc1_ == ServerTagConstants.HOSPITAL || _loc1_ == ServerTagConstants.SCHOOL || _loc1_ == ServerTagConstants.SECURITY_DEVICE)
            {
               return true;
            }
         }
         return false;
      }
      
      private function setHeaderIconType() : void
      {
         if(this.isEmergencyItem && (this._emergencyFeatureDisabled || this._emergencyRunning))
         {
            headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
            return;
         }
         if(this.isHarvestReady)
         {
            headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_ALERT;
         }
      }
   }
}

