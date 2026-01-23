package net.bigpoint.cityrama.model.emergencyLayer
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.SlotProfessionalVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DepartmentRequirementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyRequirementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EmergencyInfoProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "EmergencyInfoProxy";
      
      private var _configProxy:GameConfigProxy;
      
      private var _securityMatrixProxy:SecurityMatrixProxy;
      
      private var _professionalProxy:ProfessionalProxy;
      
      private var _storageProxy:LocalStorageProxy;
      
      private var _emergencyDictionary:Dictionary;
      
      public function EmergencyInfoProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._securityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         this._professionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         this._storageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         this._emergencyDictionary = new Dictionary();
      }
      
      public function getEmergencyInfo(param1:BillboardObjectVo, param2:Boolean = false) : EmergencyInfoVo
      {
         if(this._emergencyDictionary[param1.buildingDTO.id])
         {
            return this._emergencyDictionary[param1.buildingDTO.id];
         }
         return this.addEmergency(param1);
      }
      
      public function removeEmergency(param1:Number) : void
      {
         delete this._emergencyDictionary[param1];
      }
      
      public function calculateTempAttribute(param1:EmergencyInfoVo, param2:ProfessionalDTO, param3:String) : Number
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         switch(param3)
         {
            case ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY:
               _loc4_ = param1.efficiencyPoints;
               _loc5_ = param1.efficiencyMaxPoints;
               break;
            case ServerProfessionalConstants.ATTRIBUTE_LUCK:
               _loc4_ = param1.luckPoints;
               _loc5_ = param1.luckMaxPoints;
               break;
            case ServerProfessionalConstants.ATTRIBUTE_GOOFINESS:
               _loc4_ = param1.goofyPoints;
               _loc5_ = param1.goofyMaxPoints;
         }
         _loc4_ += this._professionalProxy.getAttributePointsByType(param2,param3);
         return Math.round(_loc4_ / (_loc5_ / 100));
      }
      
      public function calculateTempSuccessRate(param1:EmergencyInfoVo, param2:ProfessionalDTO, param3:int) : Number
      {
         var _loc7_:Number = NaN;
         var _loc4_:Number = param1.currentSuccessPoints;
         if(param1.slotVector.length)
         {
            if(param1.slotVector.length - 1 <= param3)
            {
               for each(var _loc6_ in param1.emergencyDTO.config.emergencyRequirements)
               {
                  if(_loc6_.slotNumber == param3)
                  {
                     var _loc5_:EmergencyRequirementDTO = null;
                     break;
                  }
               }
               _loc4_ += _loc7_;
            }
         }
         return Math.round(_loc4_ / (param1.maxSuccessPoints / 100));
      }
      
      public function calculateTempReward(param1:EmergencyInfoVo, param2:ProfessionalDTO) : ConfigGoodDTO
      {
         var _loc3_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc5_:ProfessionalAttributeDTO = null;
         var _loc6_:int = 0;
         var _loc4_:Number = param1.luckPoints;
         for each(_loc5_ in param2.attributes)
         {
            if(_loc5_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_LUCK)
            {
               _loc4_ += _loc5_.attributePoints;
               break;
            }
         }
         if(_loc4_ == 0)
         {
            _loc3_ = param1.rewardTypeThresholds[0];
         }
         else if(_loc4_ > param1.luckMaxPoints)
         {
            _loc3_ = param1.rewardTypeThresholds[param1.rewardTypeThresholds.length - 1];
         }
         else
         {
            _loc6_ = 0;
            while(_loc6_ < param1.rewardTypeThresholds.length)
            {
               if(_loc4_ > param1.rewardTypeThresholds[_loc6_].threshold)
               {
                  _loc3_ = param1.rewardTypeThresholds[_loc6_];
               }
               _loc6_++;
            }
         }
         if(_loc3_)
         {
            return this._configProxy.config.goods[_loc3_.value];
         }
         return null;
      }
      
      public function calculateTempRewardAmount(param1:EmergencyInfoVo, param2:ProfessionalDTO) : Number
      {
         var _loc3_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc5_:ProfessionalAttributeDTO = null;
         var _loc6_:int = 0;
         var _loc4_:Number = param1.efficiencyPoints;
         for each(_loc5_ in param2.attributes)
         {
            if(_loc5_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY)
            {
               _loc4_ += _loc5_.attributePoints;
               break;
            }
         }
         if(_loc4_ == 0)
         {
            _loc3_ = param1.rewardAmountThresholds[0];
         }
         else if(_loc4_ >= param1.efficiencyMaxPoints)
         {
            _loc3_ = param1.rewardAmountThresholds[param1.rewardAmountThresholds.length - 1];
         }
         else
         {
            _loc6_ = 0;
            while(_loc6_ < param1.rewardAmountThresholds.length)
            {
               if(_loc4_ >= param1.rewardAmountThresholds[_loc6_].threshold)
               {
                  _loc3_ = param1.rewardAmountThresholds[_loc6_];
               }
               _loc6_++;
            }
         }
         if(_loc3_)
         {
            return _loc3_.value;
         }
         return 0;
      }
      
      public function assignProfessionalToSlot(param1:BillboardObjectVo, param2:int) : void
      {
         var _loc4_:SlotProfessionalVo = null;
         var _loc3_:EmergencyInfoVo = this.getEmergencyInfo(param1);
         for each(_loc4_ in _loc3_.slotVector)
         {
            if(_loc4_.slotNo == param2 && _loc4_.isTemporary)
            {
               _loc4_.isTemporary = false;
               break;
            }
         }
         this.updateEmergencyAfterSlotChange(_loc3_);
      }
      
      public function assignTemporaryProfessionalToSlot(param1:BillboardObjectVo, param2:int, param3:Number) : void
      {
         var _loc5_:ProfessionalDTO = null;
         var _loc6_:ProfessionalDTO = null;
         var _loc7_:SlotProfessionalVo = null;
         var _loc4_:EmergencyInfoVo = this.getEmergencyInfo(param1);
         for each(_loc6_ in _loc4_.possibleProfessionals)
         {
            if(_loc6_.id == param3)
            {
               _loc5_ = _loc6_;
               break;
            }
         }
         for each(_loc7_ in _loc4_.slotVector)
         {
            if(_loc7_.slotNo == param2)
            {
               _loc7_.professional = _loc5_;
               _loc7_.isTemporary = true;
               break;
            }
         }
         this.updateEmergencyAfterSlotChange(_loc4_);
      }
      
      public function removeProfessionalFromSlot(param1:BillboardObjectVo, param2:int) : void
      {
         var _loc4_:SlotProfessionalVo = null;
         var _loc3_:EmergencyInfoVo = this.getEmergencyInfo(param1);
         for each(_loc4_ in _loc3_.slotVector)
         {
            if(_loc4_.slotNo == param2)
            {
               _loc4_.professional = null;
               break;
            }
         }
         this.updateEmergencyAfterSlotChange(_loc3_);
      }
      
      public function removeTemporaryProfessionals(param1:BillboardObjectVo) : void
      {
         var _loc3_:SlotProfessionalVo = null;
         var _loc2_:EmergencyInfoVo = this.getEmergencyInfo(param1);
         for each(_loc3_ in _loc2_.slotVector)
         {
            if(_loc3_.isTemporary)
            {
               _loc3_.professional = null;
               _loc3_.isTemporary = false;
               break;
            }
         }
         this.updateEmergencyAfterSlotChange(_loc2_);
      }
      
      private function addEmergency(param1:BillboardObjectVo) : EmergencyInfoVo
      {
         var _loc4_:SlotProfessionalVo = null;
         var _loc5_:EmergencyRequirementDTO = null;
         var _loc2_:EmergencyInfoVo = new EmergencyInfoVo(param1);
         _loc2_.requiredFireGrade = this.getRequiredSecurityGrade(_loc2_.emergencyDTO,ServerTagConstants.FIRE_DEPARTMENT);
         _loc2_.requiredPoliceGrade = this.getRequiredSecurityGrade(_loc2_.emergencyDTO,ServerTagConstants.POLICE_DEPARTMENT);
         _loc2_.requiredHospitalGrade = this.getRequiredSecurityGrade(_loc2_.emergencyDTO,ServerTagConstants.HOSPITAL);
         _loc2_.currentFireGrade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.FIRE_DEPARTMENT);
         _loc2_.currentPoliceGrade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.POLICE_DEPARTMENT);
         _loc2_.currentHospitalGrade = this._securityMatrixProxy.getCurrentSecGradeByDepartment(param1.buildingDTO.id,ServerTagConstants.HOSPITAL);
         _loc2_.maxSuccessPercent = this.calculateMaxSuccess(_loc2_);
         _loc2_.currentSuccessPercent = this.calculateCurrentSuccess(_loc2_);
         _loc2_.possibleProfessionals = this.getAvailableProfessionals(_loc2_);
         var _loc3_:Vector.<SlotProfessionalVo> = new Vector.<SlotProfessionalVo>();
         for each(_loc5_ in _loc2_.emergencyDTO.config.emergencyRequirements)
         {
            _loc4_ = new SlotProfessionalVo();
            _loc4_.slotNo = _loc5_.slotNumber;
            _loc3_.push(_loc4_);
         }
         _loc2_.slotVector = _loc3_;
         _loc2_.efficiencyPercent = this.calculateAttributes(_loc2_,ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
         _loc2_.luckPercent = this.calculateAttributes(_loc2_,ServerProfessionalConstants.ATTRIBUTE_LUCK);
         _loc2_.goofyPercent = this.calculateAttributes(_loc2_,ServerProfessionalConstants.ATTRIBUTE_GOOFINESS);
         _loc2_.rewardAmountThresholds = this.getThresholds(_loc2_,ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
         _loc2_.rewardTypeThresholds = this.getThresholds(_loc2_,ServerProfessionalConstants.ATTRIBUTE_LUCK);
         _loc2_.currentReward = this.calculateCurrentReward(_loc2_);
         _loc2_.currentRewardAmount = this.calculateCurrentCoinAmount(_loc2_);
         _loc2_.showZoneLayer = this._storageProxy.userdata.showEmergencyZoneLayer;
         this._emergencyDictionary[param1.buildingDTO.id] = _loc2_;
         return _loc2_;
      }
      
      public function renewProfessionalsInAllEmergencies() : void
      {
         var _loc1_:EmergencyInfoVo = null;
         for each(_loc1_ in this._emergencyDictionary)
         {
            if(_loc1_)
            {
               _loc1_.possibleProfessionals = this.getAvailableProfessionals(_loc1_);
            }
         }
      }
      
      private function getAvailableProfessionals(param1:EmergencyInfoVo) : Vector.<ProfessionalDTO>
      {
         var _loc3_:SlotProfessionalVo = null;
         var _loc4_:ProfessionalDTO = null;
         var _loc2_:Vector.<ProfessionalDTO> = this._professionalProxy.allAvailableProfessionals;
         if(param1.slotVector.length)
         {
            for each(_loc3_ in param1.slotVector)
            {
               if(_loc3_.professional)
               {
                  for each(_loc4_ in _loc2_)
                  {
                     if(_loc3_.professional.id == _loc4_.id)
                     {
                        _loc2_.splice(_loc2_.indexOf(_loc4_),1);
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function getThresholds(param1:EmergencyInfoVo, param2:String) : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         var _loc4_:String = null;
         var _loc5_:ConfigProfessionalAttributeDTO = null;
         var _loc6_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc3_:Vector.<ConfigProfessionalAttributeThresholdDTO> = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
         switch(param2)
         {
            case ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY:
               _loc4_ = ServerProfessionalConstants.REWARD_AMOUNT;
               break;
            case ServerProfessionalConstants.ATTRIBUTE_LUCK:
               _loc4_ = ServerProfessionalConstants.REWARD_TIER;
         }
         for each(_loc5_ in this._configProxy.config.professionalAttributes)
         {
            if(_loc5_.attributeType == param2)
            {
               for each(_loc6_ in _loc5_.attributeThresholds)
               {
                  if(_loc6_.type == _loc4_)
                  {
                     _loc3_.push(_loc6_);
                  }
               }
            }
         }
         _loc3_.sort(this.sortThresholds);
         return _loc3_;
      }
      
      public function sortThresholds(param1:ConfigProfessionalAttributeThresholdDTO, param2:ConfigProfessionalAttributeThresholdDTO) : int
      {
         if(param1.threshold > param2.threshold)
         {
            return 1;
         }
         if(param1.threshold < param2.threshold)
         {
            return -1;
         }
         return 0;
      }
      
      private function calculateAttributes(param1:EmergencyInfoVo, param2:String) : Number
      {
         var _loc5_:SlotProfessionalVo = null;
         var _loc6_:ConfigProfessionalAttributeDTO = null;
         var _loc7_:ProfessionalAttributeDTO = null;
         for each(_loc5_ in param1.slotVector)
         {
            if(_loc5_.professional)
            {
               for each(_loc7_ in _loc5_.professional.attributes)
               {
                  if(_loc7_.config.attributeType == param2)
                  {
                     var _loc4_:Number = 0 + _loc7_.attributePoints;
                  }
               }
            }
         }
         for each(_loc6_ in this._configProxy.config.professionalAttributes)
         {
            if(_loc6_.attributeType == param2)
            {
               var _loc3_:int = _loc6_.attributeThresholds.length * _loc6_.maxCap;
               break;
            }
         }
         if(param2 == ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY)
         {
            param1.efficiencyMaxPoints = 0;
            param1.efficiencyPoints = 0;
         }
         else if(param2 == ServerProfessionalConstants.ATTRIBUTE_LUCK)
         {
            param1.luckMaxPoints = 0;
            param1.luckPoints = 0;
         }
         else if(param2 == ServerProfessionalConstants.ATTRIBUTE_GOOFINESS)
         {
            param1.goofyMaxPoints = 0;
            param1.goofyPoints = 0;
         }
         return 0 / 0;
      }
      
      private function calculateCurrentSuccess(param1:EmergencyInfoVo) : Number
      {
         var _loc5_:Number = NaN;
         var _loc6_:ProfessionalDTO = null;
         var _loc7_:EmergencyRequirementDTO = null;
         var _loc8_:SlotProfessionalVo = null;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         for each(_loc7_ in param1.emergencyDTO.config.emergencyRequirements)
         {
            _loc6_ = null;
            _loc5_ = 0;
            if(param1.slotVector.length)
            {
               for each(_loc8_ in param1.slotVector)
               {
                  if(_loc8_.slotNo == _loc7_.slotNumber)
                  {
                     _loc6_ = _loc8_.professional;
                     break;
                  }
               }
               if(_loc6_)
               {
                  if(_loc6_.configSpecialisation.department == _loc7_.configSpecialization.department)
                  {
                     if(_loc7_.configSpecialization.rank - _loc6_.configSpecialisation.rank <= 0)
                     {
                        if(_loc7_.configSpecialization.rank == _loc6_.configSpecialisation.rank)
                        {
                           if(_loc7_.configSpecialization.id != _loc6_.configSpecialisation.id)
                           {
                              _loc5_ = _loc7_.configSpecialization.slotMaxValue * 0.5;
                           }
                           else
                           {
                              _loc5_ = _loc7_.configSpecialization.slotMaxValue;
                           }
                        }
                        else if(_loc7_.configSpecialization.rank < _loc6_.configSpecialisation.rank)
                        {
                           _loc5_ = _loc7_.configSpecialization.slotMaxValue;
                        }
                     }
                     else if(_loc7_.configSpecialization.rank - _loc6_.configSpecialisation.rank == 1)
                     {
                        _loc5_ = _loc7_.configSpecialization.slotMaxValue * 0.5;
                     }
                     else if(_loc7_.configSpecialization.rank - _loc6_.configSpecialisation.rank == 2)
                     {
                        _loc5_ = _loc7_.configSpecialization.slotMaxValue * 0.25;
                     }
                  }
                  switch(_loc7_.configSpecialization.department)
                  {
                     case ServerTagConstants.FIRE_DEPARTMENT:
                        _loc3_ = param1.currentFireGrade;
                        _loc4_ = param1.requiredFireGrade;
                        break;
                     case ServerTagConstants.POLICE_DEPARTMENT:
                        _loc3_ = param1.currentPoliceGrade;
                        _loc4_ = param1.requiredPoliceGrade;
                        break;
                     case ServerTagConstants.HOSPITAL:
                        _loc3_ = param1.currentHospitalGrade;
                        _loc4_ = param1.requiredHospitalGrade;
                  }
                  if(_loc3_ == -1)
                  {
                     _loc3_ = 0;
                  }
                  if(_loc4_ - _loc3_ <= 0)
                  {
                     _loc5_ = _loc5_;
                  }
                  else if(_loc4_ - _loc3_ == 1)
                  {
                     _loc5_ *= 0.5;
                  }
                  else if(_loc4_ - _loc3_ == 2)
                  {
                     _loc5_ *= 0.25;
                  }
               }
            }
            _loc2_ += _loc5_;
            if(_loc6_)
            {
               _loc6_ = null;
            }
         }
         param1.currentSuccessPoints = _loc2_;
         return Math.round(_loc2_ / (param1.maxSuccessPoints / 100));
      }
      
      private function calculateMaxSuccess(param1:EmergencyInfoVo) : Number
      {
         var _loc6_:EmergencyRequirementDTO = null;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         for each(_loc6_ in param1.emergencyDTO.config.emergencyRequirements)
         {
            _loc2_ += _loc6_.configSpecialization.slotMaxValue;
            switch(_loc6_.configSpecialization.department)
            {
               case ServerTagConstants.FIRE_DEPARTMENT:
                  _loc4_ = param1.currentFireGrade;
                  _loc5_ = param1.requiredFireGrade;
                  break;
               case ServerTagConstants.POLICE_DEPARTMENT:
                  _loc4_ = param1.currentPoliceGrade;
                  _loc5_ = param1.requiredPoliceGrade;
                  break;
               case ServerTagConstants.HOSPITAL:
                  _loc4_ = param1.currentHospitalGrade;
                  _loc5_ = param1.requiredHospitalGrade;
            }
            if(_loc4_ == 0)
            {
               _loc3_ += _loc6_.configSpecialization.slotMaxValue * 0.1;
            }
            else if(_loc5_ - _loc4_ <= 0)
            {
               _loc3_ += _loc6_.configSpecialization.slotMaxValue;
            }
            else if(_loc5_ - _loc4_ == 1)
            {
               _loc3_ += _loc6_.configSpecialization.slotMaxValue * 0.5;
            }
            else if(_loc5_ - _loc4_ == 2)
            {
               _loc3_ += _loc6_.configSpecialization.slotMaxValue * 0.25;
            }
         }
         param1.maxSuccessPoints = _loc2_;
         param1.maxPossibleSuccessPoints = _loc3_;
         return Math.round(_loc3_ / (_loc2_ / 100));
      }
      
      private function getRequiredSecurityGrade(param1:EmergencyDTO, param2:String) : int
      {
         var _loc3_:DepartmentRequirementDTO = null;
         for each(_loc3_ in param1.config.departmentRequirements)
         {
            if(_loc3_.departmentType == param2)
            {
               return _loc3_.emergencyCode;
            }
         }
         return 0;
      }
      
      private function calculateCurrentCoinAmount(param1:EmergencyInfoVo) : int
      {
         var _loc2_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc3_:int = 0;
         if(param1.efficiencyPoints == 0)
         {
            _loc2_ = param1.rewardAmountThresholds[0];
         }
         else if(param1.efficiencyPoints >= param1.efficiencyMaxPoints)
         {
            _loc2_ = param1.rewardAmountThresholds[param1.rewardAmountThresholds.length - 1];
         }
         else
         {
            _loc3_ = 0;
            while(_loc3_ < param1.rewardAmountThresholds.length)
            {
               if(param1.efficiencyPoints >= param1.rewardAmountThresholds[_loc3_].threshold)
               {
                  _loc2_ = param1.rewardAmountThresholds[_loc3_];
               }
               _loc3_++;
            }
         }
         if(_loc2_)
         {
            return _loc2_.value;
         }
         return 0;
      }
      
      private function calculateCurrentReward(param1:EmergencyInfoVo) : ConfigGoodDTO
      {
         var _loc2_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc3_:int = 0;
         if(param1.luckPoints == 0)
         {
            _loc2_ = param1.rewardTypeThresholds[0];
         }
         else if(param1.luckPoints > param1.luckMaxPoints)
         {
            _loc2_ = param1.rewardTypeThresholds[param1.rewardTypeThresholds.length - 1];
         }
         else
         {
            _loc3_ = 0;
            while(_loc3_ < param1.rewardTypeThresholds.length)
            {
               if(param1.luckPoints >= param1.rewardTypeThresholds[_loc3_].threshold)
               {
                  _loc2_ = param1.rewardTypeThresholds[_loc3_];
               }
               _loc3_++;
            }
         }
         if(_loc2_)
         {
            return this._configProxy.config.goods[_loc2_.value];
         }
         return null;
      }
      
      private function updateEmergencyAfterSlotChange(param1:EmergencyInfoVo) : void
      {
         param1.possibleProfessionals = this.getAvailableProfessionals(param1);
         param1.currentSuccessPercent = this.calculateCurrentSuccess(param1);
         param1.efficiencyPercent = this.calculateAttributes(param1,ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
         param1.luckPercent = this.calculateAttributes(param1,ServerProfessionalConstants.ATTRIBUTE_LUCK);
         param1.goofyPercent = this.calculateAttributes(param1,ServerProfessionalConstants.ATTRIBUTE_GOOFINESS);
         param1.currentReward = this.calculateCurrentReward(param1);
         param1.currentRewardAmount = this.calculateCurrentCoinAmount(param1);
         this._emergencyDictionary[param1.billboardObjVo.buildingDTO.id] = param1;
         sendNotification(ApplicationNotificationConstants.EMERGENCY_VALUES_CHANGED,param1.billboardObjVo.buildingDTO.id);
      }
   }
}

