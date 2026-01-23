package net.bigpoint.cityrama.model.field.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   
   public class InfrastructureBuildingFieldObjectVo extends BillboardObjectVo implements IEmergencyInfrastructureVO
   {
      
      private var _emergencyIsRunning:Boolean;
      
      public function InfrastructureBuildingFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         super(param1);
      }
      
      public function get id() : Number
      {
         return buildingDTO.id;
      }
      
      public function get objectSize() : Point
      {
         return new Point(configPlayfieldItemVo.sizeX,configPlayfieldItemVo.sizeY);
      }
      
      public function get department() : Vector.<String>
      {
         var _loc2_:ConfigSecurityGradeDTO = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in configPlayfieldItemVo.configSecurityGrades)
         {
            if(_loc1_.indexOf(_loc2_.type) == -1)
            {
               _loc1_.push(_loc2_.type);
            }
         }
         return _loc1_;
      }
      
      public function getUpgradeInstantFinishCost() : Number
      {
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:ConfigOutputDTO = null;
         var _loc1_:Number = 0;
         for each(_loc2_ in configPlayfieldItemVo.activePhases)
         {
            if(_loc2_.phaseType == ServerPhaseTypes.INSTANT_DEPARTMENT_UPGRADE)
            {
               for each(_loc3_ in _loc2_.listEntryOutputs)
               {
                  if(_loc3_.resourceConfig)
                  {
                     if(_loc3_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
                     {
                        _loc1_ = Math.abs(_loc3_.outputAmount);
                        break;
                     }
                  }
               }
            }
         }
         return Math.ceil(_loc1_);
      }
      
      public function get maxEmergenciesUpgradeCount() : int
      {
         return buildingDTO.config.maxHarvestCount;
      }
      
      public function get emergenciesUpgradeCount() : int
      {
         return buildingDTO.upgradeCount;
      }
      
      public function get maxUpgradeLevel() : int
      {
         return buildingDTO.config.upgradeable ? currentLevel + 1 : currentLevel;
      }
      
      public function get listOfModifiedGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         var _loc2_:ConfigSecurityGradeDTO = null;
         var _loc3_:Number = NaN;
         var _loc5_:ProfessionalDTO = null;
         var _loc6_:ProfessionalAttributeDTO = null;
         var _loc7_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc1_:Vector.<ConfigSecurityGradeDTO> = new Vector.<ConfigSecurityGradeDTO>();
         if(this.listOfGrades.length == 0 || buildingDTO == null || buildingDTO.professionals.length == 0)
         {
            return this.listOfGrades;
         }
         for each(_loc2_ in this.listOfGrades)
         {
            _loc3_ = 0;
            for each(_loc5_ in buildingDTO.professionals)
            {
               for each(_loc6_ in _loc5_.attributes)
               {
                  if(_loc6_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_PERCEPTION)
                  {
                     _loc3_ += _loc6_.attributePoints;
                     for each(_loc7_ in _loc6_.config.attributeThresholds)
                     {
                        if(_loc7_.optionalConfigId == _loc2_.id)
                        {
                           if(_loc3_ > _loc7_.threshold)
                           {
                              var _loc4_:ConfigProfessionalAttributeThresholdDTO = _loc7_;
                           }
                        }
                     }
                  }
               }
            }
            _loc1_.push(new ConfigSecurityGradeDTO({
               "rx":_loc2_.rangeX,
               "ry":_loc2_.rangeY,
               "v":_loc2_.value,
               "dt":_loc2_.type,
               "cid":_loc2_.id,
               "o":_loc2_.orderId
            }));
         }
         return _loc1_;
      }
      
      public function get listOfGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         if(!isConnectedToStreet || isUnderConstruction())
         {
            return new Vector.<ConfigSecurityGradeDTO>();
         }
         return configPlayfieldItemVo.configSecurityGrades;
      }
      
      override public function interactionBlockedByEmergency() : Boolean
      {
         return this._emergencyIsRunning;
      }
      
      public function set emergencyIsRunning(param1:Boolean) : void
      {
         this._emergencyIsRunning = param1;
      }
      
      public function get professionalCanLevelUp() : Boolean
      {
         var _loc1_:ProfessionalDTO = null;
         if(buildingDTO)
         {
            for each(_loc1_ in buildingDTO.professionals)
            {
               if(_loc1_.canLevelUp)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}

