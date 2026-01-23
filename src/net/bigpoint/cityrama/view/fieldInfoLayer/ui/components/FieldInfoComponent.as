package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import flash.geom.Point;
   import mx.collections.ArrayList;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerAcademyVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerBoulderVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerCinemaVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerCitySquareVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerConfigPlayfieldItemVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerConstructionVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerDecorationVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerEmergencyVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerExpansionVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerHeaderVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerInfrastructureBuildingVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerInfrastructureDecorationVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerPowerPlantVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerProductionVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerResidentialVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerScheduledDropVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerSecurityGradeVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerShopVo;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerTownHallVo;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.SeparatorList;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerEnergyMoodComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerProductionComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerResidentialComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfoLayerShopComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.InfoLayerConfigPlayfieldItemVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.SkinnableContainer;
   
   public class FieldInfoComponent extends SkinnableContainer
   {
      
      private static var _skinParts:Object = {
         "productionComponent":false,
         "masteryComponent":false,
         "flavourText":false,
         "residentIcon":false,
         "departmentProfessionalsComponent":false,
         "infoAcademicLabel":false,
         "harvestProgress":false,
         "modifierValueComponent":false,
         "contentGroup":false,
         "outcomeList":false,
         "needsList":false,
         "securityStatus":false,
         "departmentList":false,
         "headerComponent":true,
         "splitter":false,
         "residentialComponent":false,
         "levelNumberLabel":false,
         "infoLabel":false,
         "shopComponent":false,
         "moodEnergyComponent":false,
         "buildCostsComponent":false,
         "improvementIcons":false,
         "expansionComponent":false
      };
      
      private var _position:Point;
      
      private var _data:FieldInfoLayerHeaderVo;
      
      private var _dataIsDirty:Boolean;
      
      public var headerComponent:InfoLayerHeaderComponent;
      
      public var outcomeList:List;
      
      public var residentIcon:BriskImageDynaLib;
      
      public var harvestProgress:TimerBarComponent;
      
      public var improvementIcons:ImprovementIconComponent;
      
      public var masteryComponent:FieldInfoLayerMasteryComponent;
      
      public var securityStatus:SecurityStatusComponent;
      
      public var modifierValueComponent:ModifierValueComponent;
      
      public var needsList:SeparatorList;
      
      public var splitter:BriskImageDynaLib;
      
      public var expansionComponent:ExpansionComponent;
      
      public var infoLabel:LocaLabel;
      
      public var buildCostsComponent:BuildCostsComponent;
      
      public var flavourText:LocaLabel;
      
      public var infoAcademicLabel:LocaLabel;
      
      public var departmentList:List;
      
      public var departmentProfessionalsComponent:DepartmentProfessionalComponent;
      
      public var residentialComponent:InfoLayerResidentialComponent;
      
      public var productionComponent:InfoLayerProductionComponent;
      
      public var shopComponent:InfoLayerShopComponent;
      
      public var moodEnergyComponent:InfoLayerEnergyMoodComponent;
      
      public var levelNumberLabel:LocaLabel;
      
      public function FieldInfoComponent()
      {
         super();
      }
      
      public function set position(param1:Point) : void
      {
         if(!RandomUtilities.isEqual(param1,this._position))
         {
            this._position = param1;
            invalidateDisplayList();
         }
      }
      
      public function set data(param1:FieldInfoLayerHeaderVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            invalidateProperties();
            this._dataIsDirty = true;
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.headerComponent.data = this._data;
            if(this._data is FieldInfoLayerResidentialVo)
            {
               this.updateResidential(this._data as FieldInfoLayerResidentialVo);
            }
            else if(this._data is FieldInfoLayerProductionVo)
            {
               this.updateProduction(this._data as FieldInfoLayerProductionVo);
            }
            else if(this._data is FieldInfoLayerShopVo)
            {
               this.updateShop(this._data as FieldInfoLayerShopVo);
            }
            else if(this._data is FieldInfoLayerDecorationVo)
            {
               this.updateDecoration(this._data as FieldInfoLayerDecorationVo);
            }
            else if(this._data is FieldInfoLayerPowerPlantVo)
            {
               this.updatePowerPlant(this._data as FieldInfoLayerPowerPlantVo);
            }
            else if(this._data is FieldInfoLayerExpansionVo)
            {
               this.updateExpansion(this._data as FieldInfoLayerExpansionVo);
            }
            else if(this._data is FieldInfoLayerCitySquareVo)
            {
               this.updateCitySquare(this._data as FieldInfoLayerCitySquareVo);
            }
            else if(this._data is FieldInfoLayerBoulderVo)
            {
               this.updateBoulder(this._data as FieldInfoLayerBoulderVo);
            }
            else if(this._data is FieldInfoLayerConstructionVo)
            {
               this.updateConstruction(this._data as FieldInfoLayerConstructionVo);
            }
            else if(this._data is FieldInfoLayerTownHallVo)
            {
               this.updateTownHall(this._data as FieldInfoLayerTownHallVo);
            }
            else if(this._data is FieldInfoLayerEmergencyVo)
            {
               this.updateEmergency(this._data as FieldInfoLayerEmergencyVo);
            }
            else if(this._data is FieldInfoLayerSecurityGradeVo)
            {
               this.updateSecurityGrade(this._data as FieldInfoLayerSecurityGradeVo);
            }
            else if(this._data is FieldInfoLayerInfrastructureDecorationVo)
            {
               this.updateInfrastructureDecoration(this._data as FieldInfoLayerInfrastructureDecorationVo);
            }
            else if(this._data is FieldInfoLayerInfrastructureBuildingVo)
            {
               this.updateInfrastructureBuilding(this._data as FieldInfoLayerInfrastructureBuildingVo);
            }
            else if(this._data is FieldInfoLayerAcademyVo)
            {
               this.updateAcademy(this._data as FieldInfoLayerAcademyVo);
            }
            else if(this._data is FieldInfoLayerCinemaVo)
            {
               this.updateCinema(this._data as FieldInfoLayerCinemaVo);
            }
            else if(this._data is FieldInfoLayerScheduledDropVo)
            {
               this.updateScheduledDrop(this._data as FieldInfoLayerScheduledDropVo);
            }
            else if(this._data is FieldInfoLayerConfigPlayfieldItemVo)
            {
               this.updateConfigPlayfieldItem(this._data as FieldInfoLayerConfigPlayfieldItemVo);
            }
         }
      }
      
      private function updateInfrastructureBuilding(param1:FieldInfoLayerInfrastructureBuildingVo) : void
      {
         if(this.infoLabel)
         {
            this.infoLabel.text = param1.infoText;
            this.infoLabel.includeInLayout = this.infoLabel.visible = true;
         }
         if(this.splitter)
         {
            this.splitter.includeInLayout = this.splitter.visible = true;
         }
         if(this.modifierValueComponent)
         {
            this.modifierValueComponent.data = param1.modifierValueVo;
            this.modifierValueComponent.includeInLayout = this.modifierValueComponent.visible = true;
         }
         if(this.departmentProfessionalsComponent)
         {
            this.departmentProfessionalsComponent.data = param1.departmentProfessionalData;
            this.departmentProfessionalsComponent.visible = this.departmentProfessionalsComponent.includeInLayout = true;
         }
         invalidateDisplayList();
      }
      
      private function updateCinema(param1:FieldInfoLayerCinemaVo) : void
      {
         if(this.infoLabel)
         {
            this.infoLabel.text = param1.infoText;
         }
         if(this.modifierValueComponent)
         {
            this.modifierValueComponent.data = param1.moodEnergyModifierValueVo;
         }
         invalidateDisplayList();
      }
      
      private function updateScheduledDrop(param1:FieldInfoLayerScheduledDropVo) : void
      {
         if(this.infoLabel)
         {
            if(param1.flavourText != null && param1.flavourText != "" && param1.flavourText != " ")
            {
               this.infoLabel.text = param1.flavourText;
               this.infoLabel.includeInLayout = this.infoLabel.visible = true;
               invalidateDisplayList();
            }
            else
            {
               this.infoLabel.includeInLayout = this.infoLabel.visible = false;
               invalidateDisplayList();
            }
         }
         if(this.harvestProgress)
         {
            this.harvestProgress.data = param1.harvestProgress;
            this.harvestProgress.includeInLayout = this.harvestProgress.visible = false;
            if(param1.showHarvestProgress && param1.harvestProgress.targetTime && Boolean(param1.harvestProgress.cycleLength))
            {
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = true;
               this.harvestProgress.activeTimer = true;
               if(this.splitter)
               {
                  this.splitter.includeInLayout = this.splitter.visible = true;
               }
            }
            else if(this.splitter)
            {
               this.splitter.includeInLayout = this.splitter.visible = false;
            }
         }
         invalidateDisplayList();
      }
      
      private function updateConfigPlayfieldItem(param1:FieldInfoLayerConfigPlayfieldItemVo) : void
      {
         if(this.residentialComponent)
         {
            this.residentialComponent.data = new InfoLayerConfigPlayfieldItemVo(param1.config);
         }
         if(this.productionComponent)
         {
            this.productionComponent.data = new InfoLayerConfigPlayfieldItemVo(param1.config);
         }
         if(this.shopComponent)
         {
            this.shopComponent.data = new InfoLayerConfigPlayfieldItemVo(param1.config);
         }
         if(this.moodEnergyComponent)
         {
            this.moodEnergyComponent.data = new InfoLayerConfigPlayfieldItemVo(param1.config);
         }
         if(this.levelNumberLabel)
         {
            this.levelNumberLabel.text = (param1.config.upgradeLevel + 1).toString();
         }
      }
      
      private function updateAcademy(param1:FieldInfoLayerAcademyVo) : void
      {
         if(this.infoLabel)
         {
            this.infoLabel.text = param1.infoText;
            this.infoLabel.includeInLayout = this.infoLabel.visible = true;
         }
         if(this.modifierValueComponent)
         {
            this.modifierValueComponent.data = param1.modifier;
            this.modifierValueComponent.includeInLayout = this.modifierValueComponent.visible = true;
         }
         if(this.infoAcademicLabel)
         {
            this.infoAcademicLabel.text = param1.traineeName;
            this.infoAcademicLabel.includeInLayout = this.infoAcademicLabel.visible = true;
         }
         switch(param1.layerMode)
         {
            case FieldInfoLayerProxy.INFOLAYER_HARVEST_WAIT:
               if(this.harvestProgress)
               {
                  this.harvestProgress.revertFlow = false;
                  this.harvestProgress.activeTimer = true;
                  this.harvestProgress.includeInLayout = this.harvestProgress.visible = true;
                  this.harvestProgress.data = param1.harvestProgressVo;
               }
               break;
            case FieldInfoLayerProxy.INFOLAYER_HARVEST_READY:
               if(this.harvestProgress)
               {
                  this.harvestProgress.revertFlow = false;
                  this.harvestProgress.includeInLayout = this.harvestProgress.visible = false;
               }
         }
         invalidateDisplayList();
      }
      
      private function updateInfrastructureDecoration(param1:FieldInfoLayerInfrastructureDecorationVo) : void
      {
         if(this.infoLabel)
         {
            this.infoLabel.text = param1.infoText;
            this.infoLabel.includeInLayout = this.infoLabel.visible = true;
         }
         if(this.splitter)
         {
            this.splitter.includeInLayout = this.splitter.visible = true;
         }
         if(this.departmentList)
         {
            this.departmentList.dataProvider = param1.departmentList;
            this.departmentList.includeInLayout = this.departmentList.visible = true;
         }
         if(this.modifierValueComponent)
         {
            this.modifierValueComponent.data = param1.modifierValueVo;
            this.modifierValueComponent.includeInLayout = this.modifierValueComponent.visible = true;
         }
         invalidateDisplayList();
      }
      
      private function updateSecurityGrade(param1:FieldInfoLayerSecurityGradeVo) : void
      {
         if(this.infoLabel)
         {
            this.infoLabel.text = param1.infoText;
            this.infoLabel.includeInLayout = this.infoLabel.visible = true;
         }
         if(this.splitter)
         {
            this.splitter.includeInLayout = this.splitter.visible = true;
         }
         if(this.securityStatus)
         {
            this.securityStatus.data = param1.securityGrades;
            this.securityStatus.includeInLayout = this.securityStatus.visible = true;
         }
         invalidateDisplayList();
      }
      
      private function updateEmergency(param1:FieldInfoLayerEmergencyVo) : void
      {
         if(this.infoLabel)
         {
            this.infoLabel.text = param1.infoText;
            this.infoLabel.includeInLayout = this.infoLabel.visible = true;
            if(param1.emergencyStatus == EmergencyConstants.EMERGENCY_STATUS_FAIL && param1.damageData.amountNeeded == 0)
            {
               this.infoLabel.includeInLayout = this.infoLabel.visible = false;
            }
         }
         if(this.splitter)
         {
            this.splitter.includeInLayout = this.splitter.visible = true;
            if(param1.emergencyStatus == EmergencyConstants.EMERGENCY_STATUS_SUCCESS || param1.emergencyStatus == EmergencyConstants.EMERGENCY_STATUS_FAIL && param1.damageData.amountNeeded == 0)
            {
               this.splitter.includeInLayout = this.splitter.visible = false;
            }
         }
         if(this.harvestProgress)
         {
            this.harvestProgress.revertFlow = true;
            this.harvestProgress.includeInLayout = this.harvestProgress.visible = false;
            if(param1.emergencyStatus == EmergencyConstants.EMERGENCY_STATUS_STARTED)
            {
               this.harvestProgress.activeTimer = true;
               this.harvestProgress.data = param1.timerVo;
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = true;
            }
         }
         if(this.buildCostsComponent)
         {
            this.buildCostsComponent.includeInLayout = this.buildCostsComponent.visible = false;
            if(param1.emergencyStatus == EmergencyConstants.EMERGENCY_STATUS_FAIL && param1.damageData.amountNeeded > 0)
            {
               this.buildCostsComponent.data = param1.damageData;
               this.buildCostsComponent.includeInLayout = this.buildCostsComponent.visible = true;
            }
         }
         if(this.securityStatus)
         {
            this.securityStatus.includeInLayout = this.securityStatus.visible = false;
            if(param1.emergencyStatus == EmergencyConstants.EMERGENCY_STATUS_STARTED)
            {
               this.securityStatus.data = param1.securityData;
               this.securityStatus.includeInLayout = this.securityStatus.visible = true;
            }
         }
         invalidateDisplayList();
      }
      
      private function updateTownHall(param1:FieldInfoLayerTownHallVo) : void
      {
         if(Boolean(this.infoLabel) && Boolean(this.splitter))
         {
            if(param1.levelText != null && param1.levelText != "" && param1.levelText != " ")
            {
               this.infoLabel.text = param1.levelText;
               this.infoLabel.includeInLayout = this.infoLabel.visible = true;
               this.splitter.includeInLayout = this.splitter.visible = true;
               invalidateDisplayList();
            }
            else
            {
               this.infoLabel.includeInLayout = this.infoLabel.visible = false;
               this.splitter.includeInLayout = this.splitter.visible = false;
               invalidateDisplayList();
            }
         }
         if(this.flavourText)
         {
            if(param1.flavourText != null && param1.flavourText != "" && param1.flavourText != " ")
            {
               this.flavourText.text = param1.flavourText;
               this.flavourText.includeInLayout = this.flavourText.visible = true;
               invalidateDisplayList();
            }
            else
            {
               this.flavourText.includeInLayout = this.flavourText.visible = false;
               invalidateDisplayList();
            }
         }
         if(this.harvestProgress)
         {
            this.harvestProgress.data = param1.harvestProgress;
            this.harvestProgress.includeInLayout = this.harvestProgress.visible = false;
            if(param1.showHarvestProgress && param1.harvestProgress.targetTime && Boolean(param1.harvestProgress.cycleLength))
            {
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = true;
               this.harvestProgress.activeTimer = true;
            }
         }
      }
      
      private function updateConstruction(param1:FieldInfoLayerConstructionVo) : void
      {
         if(this.infoLabel)
         {
            this.infoLabel.text = param1.stepLabel;
         }
         if(this.harvestProgress)
         {
            if(param1.harvestProgressVo)
            {
               this.harvestProgress.data = param1.harvestProgressVo;
            }
            if(!param1.harvestProgressVo.waitingForStart && param1.harvestProgressVo.targetTime && Boolean(param1.harvestProgressVo.cycleLength))
            {
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = true;
               invalidateDisplayList();
            }
            else
            {
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = false;
               invalidateDisplayList();
            }
         }
         if(this.buildCostsComponent)
         {
            if(param1.miniLayerVo)
            {
               this.buildCostsComponent.data = param1.miniLayerVo;
               this.buildCostsComponent.visible = this.buildCostsComponent.includeInLayout = true;
            }
            else
            {
               this.buildCostsComponent.visible = this.buildCostsComponent.includeInLayout = true;
            }
            if(this.harvestProgress.visible)
            {
               this.buildCostsComponent.includeInLayout = this.buildCostsComponent.visible = false;
            }
         }
         if(this.splitter)
         {
            if(this.buildCostsComponent && this.buildCostsComponent.visible || Boolean(this.harvestProgress.visible))
            {
               this.splitter.includeInLayout = this.splitter.visible = true;
               invalidateDisplayList();
            }
            else
            {
               this.splitter.includeInLayout = this.splitter.visible = false;
               invalidateDisplayList();
            }
         }
      }
      
      private function updateBoulder(param1:FieldInfoLayerBoulderVo) : void
      {
         if(this.outcomeList)
         {
            this.outcomeList.dataProvider = param1.costData;
            this.outcomeList.includeInLayout = this.outcomeList.visible = true;
         }
      }
      
      private function updateCitySquare(param1:FieldInfoLayerCitySquareVo) : void
      {
         if(this.infoLabel)
         {
            this.infoLabel.text = param1.eventLabel;
         }
         if(this.splitter)
         {
            if(param1.eventState == CitySquareFieldObjectVo.NONE || param1.eventState == null)
            {
               this.splitter.includeInLayout = this.splitter.visible = false;
            }
            else
            {
               this.splitter.includeInLayout = this.splitter.visible = true;
            }
         }
         if(this.harvestProgress)
         {
            if(param1.harvestProgress)
            {
               this.harvestProgress.revertFlow = true;
               this.harvestProgress.data = param1.harvestProgress;
            }
            if(param1.eventState == CitySquareFieldObjectVo.NONE || param1.eventState == null)
            {
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = false;
            }
            else
            {
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = this.harvestProgress.revertFlow = true;
               this.harvestProgress.activeTimer = true;
            }
         }
      }
      
      private function updateExpansion(param1:FieldInfoLayerExpansionVo) : void
      {
         if(this.expansionComponent)
         {
            this.expansionComponent.data = param1;
         }
      }
      
      private function updatePowerPlant(param1:FieldInfoLayerPowerPlantVo) : void
      {
         if(this.modifierValueComponent)
         {
            this.modifierValueComponent.data = param1.modifierValueVo;
         }
      }
      
      private function updateDecoration(param1:FieldInfoLayerDecorationVo) : void
      {
         if(this.modifierValueComponent)
         {
            this.modifierValueComponent.data = param1.modifierValueVo;
         }
      }
      
      private function updateShop(param1:FieldInfoLayerShopVo) : void
      {
         if(this.needsList)
         {
            if(param1.moveInMode)
            {
               this.needsList.visible = this.needsList.includeInLayout = false;
            }
            else
            {
               this.needsList.dataProvider = param1.residentialNeedVoList;
               this.needsList.visible = this.needsList.includeInLayout = true;
            }
            invalidateDisplayList();
         }
         if(this.modifierValueComponent)
         {
            if(param1.moveInMode)
            {
               this.modifierValueComponent.visible = this.modifierValueComponent.includeInLayout = false;
            }
            else
            {
               this.modifierValueComponent.data = param1.modifierValueVo;
               this.modifierValueComponent.visible = this.modifierValueComponent.includeInLayout = true;
            }
            invalidateDisplayList();
         }
         if(this.splitter)
         {
            this.splitter.visible = this.splitter.includeInLayout = !param1.moveInMode;
            invalidateDisplayList();
         }
      }
      
      private function updateProduction(param1:FieldInfoLayerProductionVo) : void
      {
         var _loc2_:ArrayList = null;
         if(this.harvestProgress)
         {
            this.harvestProgress.data = param1.harvestProgressVo;
            if(!param1.harvestProgressVo.waitingForStart && param1.harvestProgressVo.targetTime && Boolean(param1.harvestProgressVo.cycleLength))
            {
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = true;
               this.harvestProgress.activeTimer = true;
               invalidateDisplayList();
            }
            else
            {
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = false;
               invalidateDisplayList();
            }
         }
         if(this.splitter)
         {
            if(!param1.harvestProgressVo.waitingForStart && param1.harvestProgressVo.targetTime && Boolean(param1.harvestProgressVo.cycleLength))
            {
               this.splitter.includeInLayout = this.splitter.visible = true;
               invalidateDisplayList();
            }
            else
            {
               this.splitter.includeInLayout = this.splitter.visible = false;
               invalidateDisplayList();
            }
         }
         if(this.outcomeList)
         {
            _loc2_ = param1.imageTextValueVoArrayList;
            this.outcomeList.dataProvider = _loc2_;
            if(_loc2_)
            {
               this.outcomeList.includeInLayout = this.outcomeList.visible = true;
            }
            else
            {
               this.outcomeList.includeInLayout = this.outcomeList.visible = false;
            }
         }
      }
      
      private function updateResidential(param1:FieldInfoLayerResidentialVo) : void
      {
         if(this.outcomeList)
         {
            this.outcomeList.dataProvider = param1.imageTextValueVoArrayList;
         }
         if(this.harvestProgress)
         {
            this.harvestProgress.data = param1.harvestProgressVo;
            if(!param1.harvestProgressVo.waitingForStart && param1.harvestProgressVo.targetTime && Boolean(param1.harvestProgressVo.cycleLength))
            {
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = true;
               this.harvestProgress.activeTimer = true;
            }
            else
            {
               this.harvestProgress.includeInLayout = this.harvestProgress.visible = false;
            }
         }
         if(this.improvementIcons)
         {
            this.improvementIcons.visible = this.improvementIcons.includeInLayout = false;
            if(param1.improvementIcons.enabled)
            {
               this.improvementIcons.data = param1.improvementIcons;
               this.improvementIcons.visible = this.improvementIcons.includeInLayout = true;
            }
         }
         if(this.masteryComponent)
         {
            if(param1.masteryLevel >= 0)
            {
               this.masteryComponent.visible = this.masteryComponent.includeInLayout = true;
               this.masteryComponent.setData(param1.masteryLevel,param1.masteryProgress);
            }
            else
            {
               this.masteryComponent.visible = this.masteryComponent.includeInLayout = false;
            }
         }
         if(this.residentIcon)
         {
            if(Boolean(param1.residentIconLib) && Boolean(param1.residentIconName))
            {
               this.residentIcon.dynaLibName = param1.residentIconLib;
               this.residentIcon.dynaBmpSourceName = param1.residentIconName;
            }
         }
         if(this.splitter)
         {
            if(!param1.harvestProgressVo.waitingForStart && param1.harvestProgressVo.targetTime && Boolean(param1.harvestProgressVo.cycleLength))
            {
               this.splitter.includeInLayout = this.splitter.visible = true;
            }
            else
            {
               this.splitter.includeInLayout = this.splitter.visible = false;
            }
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         this.x = this._position.x - this.width / 2;
         this.y = this._position.y - this.height;
      }
      
      override protected function measure() : void
      {
         super.measure();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _loc3_:FieldInfoLayerResidentialVo = null;
         var _loc4_:FieldInfoLayerDecorationVo = null;
         var _loc5_:FieldInfoLayerPowerPlantVo = null;
         var _loc6_:FieldInfoLayerProductionVo = null;
         var _loc7_:FieldInfoLayerShopVo = null;
         var _loc8_:FieldInfoLayerConstructionVo = null;
         var _loc9_:FieldInfoLayerTownHallVo = null;
         var _loc10_:FieldInfoLayerEmergencyVo = null;
         var _loc11_:FieldInfoLayerSecurityGradeVo = null;
         var _loc12_:FieldInfoLayerInfrastructureDecorationVo = null;
         var _loc13_:FieldInfoLayerInfrastructureBuildingVo = null;
         super.partAdded(param1,param2);
         if(param2 == this.headerComponent)
         {
            if(this._data)
            {
               this.headerComponent.data = this._data;
            }
         }
         else if(param2 == this.harvestProgress)
         {
            if(this._data is FieldInfoLayerResidentialVo)
            {
               _loc3_ = this._data as FieldInfoLayerResidentialVo;
               this.harvestProgress.data = _loc3_.harvestProgressVo;
            }
            else if(this._data is FieldInfoLayerProductionVo)
            {
               _loc6_ = this._data as FieldInfoLayerProductionVo;
               this.harvestProgress.data = _loc6_.harvestProgressVo;
            }
            else if(this._data is FieldInfoLayerConstructionVo)
            {
               _loc8_ = this._data as FieldInfoLayerConstructionVo;
               this.harvestProgress.data = _loc8_.harvestProgressVo;
            }
            else if(this._data is FieldInfoLayerEmergencyVo)
            {
               _loc10_ = this._data as FieldInfoLayerEmergencyVo;
               if(_loc10_.emergencyStatus == EmergencyConstants.EMERGENCY_STATUS_STARTED)
               {
                  this.harvestProgress.revertFlow = true;
                  this.harvestProgress.data = _loc10_.timerVo;
                  this.harvestProgress.activeTimer = true;
               }
            }
         }
         else if(param2 == this.outcomeList)
         {
            if(this._data is FieldInfoLayerResidentialVo)
            {
               _loc3_ = this._data as FieldInfoLayerResidentialVo;
               this.outcomeList.dataProvider = _loc3_.imageTextValueVoArrayList;
            }
            else if(this._data is FieldInfoLayerProductionVo)
            {
               _loc6_ = this._data as FieldInfoLayerProductionVo;
               this.outcomeList.dataProvider = _loc6_.imageTextValueVoArrayList;
            }
         }
         else if(param2 == this.residentIcon)
         {
            if(this._data is FieldInfoLayerResidentialVo)
            {
               _loc3_ = this._data as FieldInfoLayerResidentialVo;
               if(Boolean(_loc3_.residentIconLib) && Boolean(_loc3_.residentIconName))
               {
                  this.residentIcon.dynaLibName = _loc3_.residentIconLib;
                  this.residentIcon.dynaBmpSourceName = _loc3_.residentIconName;
               }
            }
         }
         else if(param2 == this.modifierValueComponent)
         {
            if(this._data is FieldInfoLayerDecorationVo)
            {
               _loc4_ = this._data as FieldInfoLayerDecorationVo;
               this.modifierValueComponent.data = _loc4_.modifierValueVo;
            }
            else if(this._data is FieldInfoLayerPowerPlantVo)
            {
               _loc5_ = this._data as FieldInfoLayerPowerPlantVo;
               this.modifierValueComponent.data = _loc5_.modifierValueVo;
            }
            else if(this._data is FieldInfoLayerShopVo)
            {
               _loc7_ = this._data as FieldInfoLayerShopVo;
               this.modifierValueComponent.data = _loc7_.modifierValueVo;
            }
            else if(this._data is FieldInfoLayerInfrastructureDecorationVo)
            {
               _loc12_ = this._data as FieldInfoLayerInfrastructureDecorationVo;
               this.modifierValueComponent.data = _loc12_.modifierValueVo;
            }
         }
         else if(param2 == this.needsList)
         {
            if(this._data is FieldInfoLayerShopVo)
            {
               _loc7_ = this._data as FieldInfoLayerShopVo;
               this.needsList.dataProvider = _loc7_.residentialNeedVoList;
            }
         }
         else if(param2 == this.infoLabel)
         {
            if(this._data is FieldInfoLayerConstructionVo)
            {
               _loc8_ = this._data as FieldInfoLayerConstructionVo;
               this.infoLabel.text = _loc8_.stepLabel;
            }
            else if(this._data is FieldInfoLayerTownHallVo)
            {
               _loc9_ = this._data as FieldInfoLayerTownHallVo;
               if(_loc9_.levelText != null && _loc9_.levelText != "" && _loc9_.levelText != " ")
               {
                  this.infoLabel.text = _loc9_.levelText;
               }
            }
            else if(this._data is FieldInfoLayerEmergencyVo)
            {
               _loc10_ = this._data as FieldInfoLayerEmergencyVo;
               this.infoLabel.text = _loc10_.infoText;
            }
            else if(this._data is FieldInfoLayerSecurityGradeVo)
            {
               _loc11_ = this._data as FieldInfoLayerSecurityGradeVo;
               this.infoLabel.text = _loc11_.infoText;
            }
         }
         else if(param2 == this.buildCostsComponent)
         {
            if(this._data is FieldInfoLayerConstructionVo)
            {
               _loc8_ = this._data as FieldInfoLayerConstructionVo;
               this.buildCostsComponent.data = _loc8_.miniLayerVo;
            }
            else if(this._data is FieldInfoLayerEmergencyVo)
            {
               _loc10_ = this._data as FieldInfoLayerEmergencyVo;
               if(_loc10_.damageData)
               {
                  this.buildCostsComponent.data = _loc10_.damageData;
               }
            }
         }
         else if(param2 == this.flavourText)
         {
            if(this._data is FieldInfoLayerTownHallVo)
            {
               _loc9_ = this._data as FieldInfoLayerTownHallVo;
               if(_loc9_.flavourText != null && _loc9_.flavourText != "" && _loc9_.flavourText != " ")
               {
                  this.flavourText.text = _loc9_.flavourText;
               }
            }
         }
         else if(param2 == this.securityStatus)
         {
            if(this._data is FieldInfoLayerEmergencyVo)
            {
               _loc10_ = this._data as FieldInfoLayerEmergencyVo;
               if(_loc10_.securityData)
               {
                  this.securityStatus.data = _loc10_.securityData;
               }
            }
            else if(this._data is FieldInfoLayerSecurityGradeVo)
            {
               _loc11_ = this._data as FieldInfoLayerSecurityGradeVo;
               this.securityStatus.data = _loc11_.securityGrades;
            }
         }
         else if(param2 == this.departmentList)
         {
            if(this._data is FieldInfoLayerInfrastructureDecorationVo)
            {
               _loc12_ = this._data as FieldInfoLayerInfrastructureDecorationVo;
               this.departmentList.dataProvider = _loc12_.departmentList;
            }
         }
         else if(param2 == this.departmentProfessionalsComponent)
         {
            if(this._data is FieldInfoLayerInfrastructureBuildingVo)
            {
               _loc13_ = this._data as FieldInfoLayerInfrastructureBuildingVo;
               this.departmentProfessionalsComponent.data = _loc13_.departmentProfessionalData;
            }
         }
      }
   }
}

