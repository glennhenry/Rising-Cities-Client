package net.bigpoint.cityrama.model.emergencyLayer
{
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.DepartmentProfessionalDetailInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignListVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyZoneLayerVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalAttributeVO;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProgressThresholdVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.SlotProfessionalVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyRequirementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EmergencyLayerProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "EmergencyLayerProxy";
      
      public static const SHOW_ZONE_LAYER:String = "SHOW_ZONE_LAYER";
      
      private var _timerProxy:TimerProxy;
      
      private var _storageProxy:LocalStorageProxy;
      
      private var _professionalProxy:ProfessionalProxy;
      
      private var _emergencyProxy:EmergencyInfoProxy;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _configProxy:GameConfigProxy;
      
      public function EmergencyLayerProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      public static function getGfxIdByDepartment(param1:String) : int
      {
         switch(param1)
         {
            case ServerTagConstants.FIRE_DEPARTMENT:
               return 1100001;
            case ServerTagConstants.POLICE_DEPARTMENT:
               return 1110001;
            case ServerTagConstants.HOSPITAL:
               return 1120001;
            default:
               return 1100001;
         }
      }
      
      private static function buildAttributes(param1:Vector.<ProfessionalAttributeDTO>) : Vector.<ProfessionalAttributeVO>
      {
         var _loc3_:ProfessionalAttributeDTO = null;
         var _loc4_:ProfessionalAttributeVO = null;
         var _loc2_:Vector.<ProfessionalAttributeVO> = new Vector.<ProfessionalAttributeVO>(0);
         for each(_loc3_ in param1)
         {
            _loc4_ = new ProfessionalAttributeVO();
            _loc4_.dto = _loc3_;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public static function getPLIVOfromPDTO(param1:ProfessionalDTO) : ProfessionalListInfoVo
      {
         var _loc2_:ProfessionalListInfoVo = null;
         if(param1)
         {
            _loc2_ = new ProfessionalListInfoVo();
            _loc2_.profId = param1.id;
            return _loc2_;
         }
         return null;
      }
      
      private static function getLocalizedNameOfProfessional(param1:ProfessionalDTO) : String
      {
         var _loc2_:String = ResourceManager.getInstance().getString("rcl.professions.nameconvention" + "","rcl.professions.nameconvention.fistnamelastname" + "");
         var _loc3_:String = param1.gender ? "male" : "female";
         var _loc4_:String = ResourceManager.getInstance().getString("rcl.professions.firstnames." + _loc3_,"rcl.professions.firstnames." + _loc3_ + "." + param1.name);
         var _loc5_:String = ResourceManager.getInstance().getString("rcl.professions.surnames." + _loc3_,"rcl.professions.surnames." + _loc3_ + "." + param1.surname);
         return StringUtil.substitute(_loc2_,_loc4_,_loc5_);
      }
      
      private static function sortSlots(param1:ProfessionalSlotVo, param2:ProfessionalSlotVo) : int
      {
         if(param1.slotNumber > param2.slotNumber)
         {
            return 1;
         }
         if(param1.slotNumber < param2.slotNumber)
         {
            return -1;
         }
         return 0;
      }
      
      override public function onRegister() : void
      {
         facade.registerProxy(new EmergencyInfoProxy(EmergencyInfoProxy.NAME));
         this._emergencyProxy = facade.retrieveProxy(EmergencyInfoProxy.NAME) as EmergencyInfoProxy;
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         this._storageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         this._professionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
      }
      
      override public function onRemove() : void
      {
         facade.removeProxy(EmergencyInfoProxy.NAME);
      }
      
      public function getEmergencyZoneLayerVo(param1:BillboardObjectVo) : EmergencyZoneLayerVo
      {
         var _loc2_:Object = new Object();
         if(param1)
         {
            if(param1.hasEmergency())
            {
               var _loc3_:EmergencyInfoVo = this._emergencyProxy.getEmergencyInfo(param1);
               _loc2_.flavour = ResourceManager.getInstance().getString(String("rcl.emergencies.selection"),String("rcl.emergencies.selection." + null.emergencyDTO.config.locaId));
               _loc2_.reqPolice = null.requiredPoliceGrade;
               _loc2_.reqFire = null.requiredFireGrade;
               _loc2_.reqHospital = null.requiredHospitalGrade;
               _loc2_.police = null.currentPoliceGrade;
               _loc2_.fire = null.currentFireGrade;
               _loc2_.hospital = null.currentHospitalGrade;
               _loc2_.max = null.maxSuccessPercent;
               _loc2_.buildingLib = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(param1.configPlayfieldItemVo);
               _loc2_.buildingImage = "FieldItem_" + param1.configPlayfieldItemVo.gfxId + "_small";
               _loc2_.emergencyLib = null.emergencyDTO.config.gfxId.toString() + "_layer_renderings";
               _loc2_.emergencyImage = "emergency_big";
               _loc2_.emergencySWF = null.emergencyDTO.config.gfxId.toString();
               _loc2_.timer = this.getEmergencyTimerVo(null);
               _loc2_.show = null.showZoneLayer;
            }
         }
         return new EmergencyZoneLayerVo(_loc2_);
      }
      
      public function getEmergencyAssignVo(param1:BillboardObjectVo, param2:Boolean = false) : EmergencyAssignVo
      {
         var _loc3_:EmergencyInfoVo = this._emergencyProxy.getEmergencyInfo(param1,param2);
         var _loc4_:Object = new Object();
         _loc4_.flavour = ResourceManager.getInstance().getString(String("rcl.emergencies.selection"),String("rcl.emergencies.selection." + _loc3_.emergencyDTO.config.locaId));
         _loc4_.max = _loc3_.maxSuccessPercent;
         _loc4_.poss = _loc3_.currentSuccessPercent;
         _loc4_.renderLib = _loc3_.emergencyDTO.config.gfxId + "_layer_renderings";
         _loc4_.renderImg = "emergency_small";
         _loc4_.renderSwf = _loc3_.emergencyDTO.config.gfxId.toString();
         _loc4_.rewardGfx = _loc3_.currentReward.gfxId;
         _loc4_.rewardLoca = _loc3_.currentReward.localeId;
         _loc4_.rewardAmount = _loc3_.currentRewardAmount;
         this.addThresholdVos(_loc4_,_loc3_);
         _loc4_.timer = this.getEmergencyTimerVo(_loc3_);
         _loc4_.slots = this.getSlots(_loc3_);
         return new EmergencyAssignVo(_loc4_);
      }
      
      private function addThresholdVos(param1:Object, param2:EmergencyInfoVo) : void
      {
         var _loc5_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc6_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc3_:ProgressThresholdVo = new ProgressThresholdVo();
         var _loc4_:Vector.<Number> = new Vector.<Number>();
         for each(_loc5_ in param2.rewardAmountThresholds)
         {
            _loc4_.push(_loc5_.threshold);
         }
         _loc3_.thresholds = _loc4_;
         _loc3_.progress = param2.efficiencyPercent;
         _loc3_.maxValue = param2.efficiencyMaxPoints;
         param1.effVo = _loc3_;
         _loc3_ = new ProgressThresholdVo();
         _loc4_ = new Vector.<Number>();
         for each(_loc6_ in param2.rewardTypeThresholds)
         {
            _loc4_.push(_loc6_.threshold);
         }
         _loc3_.thresholds = _loc4_;
         _loc3_.progress = param2.luckPercent;
         _loc3_.maxValue = param2.luckMaxPoints;
         param1.luckVo = _loc3_;
      }
      
      public function getSlotProfessionalIdsForServer(param1:BillboardObjectVo) : Vector.<Object>
      {
         var _loc4_:Object = null;
         var _loc5_:SlotProfessionalVo = null;
         var _loc2_:EmergencyInfoVo = this._emergencyProxy.getEmergencyInfo(param1);
         var _loc3_:Vector.<Object> = new Vector.<Object>();
         for each(_loc5_ in _loc2_.slotVector)
         {
            if(_loc5_.professional)
            {
               _loc4_ = new Object();
               _loc4_.sid = _loc5_.slotNo;
               _loc4_.pid = _loc5_.professional.id;
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function getActiveSlotProfessionals(param1:BillboardObjectVo) : Vector.<SlotProfessionalVo>
      {
         var _loc4_:SlotProfessionalVo = null;
         var _loc2_:EmergencyInfoVo = this._emergencyProxy.getEmergencyInfo(param1);
         var _loc3_:Vector.<SlotProfessionalVo> = new Vector.<SlotProfessionalVo>();
         for each(_loc4_ in _loc2_.slotVector)
         {
            if(_loc4_.professional)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function getEmergencyAssignListVo(param1:BillboardObjectVo, param2:int) : EmergencyAssignListVo
      {
         var _loc3_:EmergencyAssignVo = this.getEmergencyAssignVo(param1);
         return new EmergencyAssignListVo(_loc3_,this.getProfessionalListInfoVo(param1,param2),param2);
      }
      
      public function showZoneLayer(param1:Boolean) : void
      {
         this._storageProxy.userdata.showEmergencyZoneLayer = param1;
      }
      
      public function assignProfToSlot(param1:BillboardObjectVo, param2:int) : void
      {
         this._emergencyProxy.assignProfessionalToSlot(param1,param2);
      }
      
      public function assignTemporaryProfToSlot(param1:BillboardObjectVo, param2:int, param3:Number) : void
      {
         this._emergencyProxy.assignTemporaryProfessionalToSlot(param1,param2,param3);
      }
      
      public function removeProfFromSlot(param1:BillboardObjectVo, param2:int) : void
      {
         this._emergencyProxy.removeProfessionalFromSlot(param1,param2);
      }
      
      public function removeTemporaryProfessionals(param1:BillboardObjectVo) : void
      {
         this._emergencyProxy.removeTemporaryProfessionals(param1);
      }
      
      public function removeEmergencyInfo(param1:Number) : void
      {
         this._emergencyProxy.removeEmergency(param1);
      }
      
      public function getDepartmentProfessionalDetailVoById(param1:Number) : DepartmentProfessionalDetailInfoVo
      {
         var _loc2_:DepartmentProfessionalDetailInfoVo = new DepartmentProfessionalDetailInfoVo();
         this.professionalBuilder(_loc2_,param1);
         return _loc2_;
      }
      
      public function professionalBuilder(param1:DepartmentProfessionalDetailInfoVo, param2:Number) : void
      {
         var _loc3_:ProfessionalDTO = this._professionalProxy.getProfessionalById(param2);
         param1.dto = _loc3_;
         param1.attributes = buildAttributes(_loc3_.attributes);
         param1.setLevelsConfig(this._configProxy.config.configProfessionalLevel);
         param1.dismissIsUnlocked = this.dismissIsUnlocked();
         param1.name = getLocalizedNameOfProfessional(_loc3_);
      }
      
      private function dismissIsUnlocked() : Boolean
      {
         return this._playfieldObjectsProxy.getAcademyList().length > 0;
      }
      
      private function getProfessionalListInfoVo(param1:BillboardObjectVo, param2:int) : Vector.<ProfessionalListInfoVo>
      {
         var _loc5_:ConfigGoodDTO = null;
         var _loc6_:ProfessionalDTO = null;
         var _loc7_:String = null;
         var _loc8_:ProfessionalListInfoVo = null;
         var _loc3_:EmergencyInfoVo = this._emergencyProxy.getEmergencyInfo(param1);
         var _loc4_:Vector.<ProfessionalListInfoVo> = new Vector.<ProfessionalListInfoVo>();
         if(_loc3_.possibleProfessionals.length)
         {
            for each(_loc6_ in _loc3_.possibleProfessionals)
            {
               _loc7_ = _loc6_.gender ? "male" : "female";
               _loc8_ = new ProfessionalListInfoVo();
               _loc8_.name = getLocalizedNameOfProfessional(_loc6_);
               _loc8_.department = _loc6_.configSpecialisation.department;
               _loc8_.specialisationRank = _loc6_.configSpecialisation.rank;
               _loc8_.specialisationId = _loc6_.configSpecialisation.id;
               _loc8_.specialisationLocaId = _loc6_.configSpecialisation.locaId;
               _loc8_.specialisationGfxId = _loc6_.configSpecialisation.gfxId;
               _loc8_.operationsLeft = _loc6_.lifetime;
               _loc8_.profId = _loc6_.id;
               _loc8_.step = 0;
               switch(_loc6_.configSpecialisation.department)
               {
                  case ServerTagConstants.FIRE_DEPARTMENT:
                     _loc8_.securityGrade = _loc3_.currentFireGrade;
                     break;
                  case ServerTagConstants.POLICE_DEPARTMENT:
                     _loc8_.securityGrade = _loc3_.currentPoliceGrade;
                     break;
                  case ServerTagConstants.HOSPITAL:
                     _loc8_.securityGrade = _loc3_.currentHospitalGrade;
               }
               _loc8_.picLib = "gui_professionals_" + _loc7_;
               _loc8_.picImage = "small_" + _loc6_.gfxId;
               _loc8_.efficiency = this._emergencyProxy.calculateTempAttribute(_loc3_,_loc6_,ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
               _loc8_.luck = this._emergencyProxy.calculateTempAttribute(_loc3_,_loc6_,ServerProfessionalConstants.ATTRIBUTE_LUCK);
               _loc8_.goofiness = this._emergencyProxy.calculateTempAttribute(_loc3_,_loc6_,ServerProfessionalConstants.ATTRIBUTE_GOOFINESS);
               _loc8_.successChance = this._emergencyProxy.calculateTempSuccessRate(_loc3_,_loc6_,param2);
               _loc5_ = this._emergencyProxy.calculateTempReward(_loc3_,_loc6_);
               _loc8_.rewardGfxId = _loc5_.gfxId;
               _loc8_.rewardLocaId = _loc5_.localeId;
               _loc8_.rewardAmount = this._emergencyProxy.calculateTempRewardAmount(_loc3_,_loc6_);
               _loc4_.push(_loc8_);
            }
         }
         return _loc4_;
      }
      
      private function getEmergencyTimerVo(param1:EmergencyInfoVo = null) : TimerBarComponentVo
      {
         var _loc2_:TimerBarComponentVo = new TimerBarComponentVo();
         if(param1)
         {
            _loc2_.startTime = param1.emergencyDTO.endTime - param1.emergencyDTO.config.lifetime;
            _loc2_.cycleLength = param1.emergencyDTO.config.lifetime;
            _loc2_.targetTime = _loc2_.startTime + _loc2_.cycleLength;
            _loc2_.currentTime = this._timerProxy.currentTimeStamp;
         }
         return _loc2_;
      }
      
      private function getSlots(param1:EmergencyInfoVo) : Vector.<ProfessionalSlotVo>
      {
         var _loc3_:Object = null;
         var _loc4_:EmergencyRequirementDTO = null;
         var _loc5_:ProfessionalDTO = null;
         var _loc6_:SlotProfessionalVo = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc2_:Vector.<ProfessionalSlotVo> = new Vector.<ProfessionalSlotVo>();
         if(param1)
         {
            for each(_loc4_ in param1.emergencyDTO.config.emergencyRequirements)
            {
               _loc3_ = new Object();
               _loc3_.reqDep = _loc4_.configSpecialization.department;
               _loc3_.reqSpec = _loc4_.configSpecialization.rank;
               _loc3_.reqSpecGfx = _loc4_.configSpecialization.gfxId;
               _loc3_.reqSpecLoca = _loc4_.configSpecialization.locaId;
               _loc3_.reqSpecId = _loc4_.configSpecialization.id;
               _loc3_.slotNr = _loc4_.slotNumber;
               switch(_loc4_.configSpecialization.department)
               {
                  case ServerTagConstants.FIRE_DEPARTMENT:
                     _loc3_.reqSecGrade = param1.requiredFireGrade;
                     break;
                  case ServerTagConstants.POLICE_DEPARTMENT:
                     _loc3_.reqSecGrade = param1.requiredPoliceGrade;
                     break;
                  case ServerTagConstants.HOSPITAL:
                     _loc3_.reqSecGrade = param1.requiredHospitalGrade;
               }
               for each(_loc6_ in param1.slotVector)
               {
                  _loc5_ = null;
                  if(_loc6_.slotNo == _loc4_.slotNumber)
                  {
                     _loc5_ = _loc6_.professional;
                     break;
                  }
               }
               if(_loc5_)
               {
                  _loc3_.profDep = _loc5_.configSpecialisation.department;
                  _loc3_.profSpec = _loc5_.configSpecialisation.rank;
                  _loc3_.profSpecGfx = _loc5_.configSpecialisation.gfxId;
                  _loc3_.proSpecId = _loc5_.configSpecialisation.id;
                  _loc3_.profSpecLoca = _loc5_.configSpecialisation.locaId;
                  _loc7_ = _loc5_.gender ? "male" : "female";
                  _loc3_.lib = "gui_professionals_" + _loc7_;
                  _loc3_.img = "small_" + _loc5_.gfxId;
                  _loc8_ = ResourceManager.getInstance().getString("rcl.professions.nameconvention" + "","rcl.professions.nameconvention.fistnamelastname" + "");
                  _loc9_ = ResourceManager.getInstance().getString("rcl.professions.firstnames." + _loc7_,"rcl.professions.firstnames." + _loc7_ + "." + _loc5_.name);
                  _loc10_ = ResourceManager.getInstance().getString("rcl.professions.surnames." + _loc7_,"rcl.professions.surnames." + _loc7_ + "." + _loc5_.surname);
                  _loc3_.name = StringUtil.substitute(_loc8_,_loc9_,_loc10_);
                  _loc3_.id = _loc5_.id;
                  switch(_loc5_.configSpecialisation.department)
                  {
                     case ServerTagConstants.FIRE_DEPARTMENT:
                        _loc3_.secGrade = param1.currentFireGrade;
                        break;
                     case ServerTagConstants.POLICE_DEPARTMENT:
                        _loc3_.secGrade = param1.currentPoliceGrade;
                        break;
                     case ServerTagConstants.HOSPITAL:
                        _loc3_.secGrade = param1.currentHospitalGrade;
                  }
                  _loc2_.push(new ProfessionalSlotVo(_loc3_,false));
               }
               else
               {
                  _loc2_.push(new ProfessionalSlotVo(_loc3_));
               }
            }
         }
         _loc2_.sort(sortSlots);
         return _loc2_;
      }
   }
}

