package net.bigpoint.cityrama.model.schoolBook
{
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.ServerBalanceParameterConstants;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentThresholdBarVo;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DepartmentDetailViewVo;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.schoolBook.vo.EducationAttributeVo;
   import net.bigpoint.cityrama.model.schoolBook.vo.SchoolBookDepartmentVo;
   import net.bigpoint.cityrama.model.schoolBook.vo.SchoolBookVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEducationStepDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EducationPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalTraitDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SchoolBookProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SchoolBookProxy";
      
      private var _academyFieldObject:AcademyFieldObject;
      
      private var _configProxy:GameConfigProxy;
      
      private var _playfieldObjProxy:PlayfieldObjectsProxy;
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      public function SchoolBookProxy(param1:Object = null)
      {
         super(NAME,param1);
      }
      
      private static function buildTraits(param1:ProfessionalDTO) : Vector.<CharacteristicsEntryVo>
      {
         var _loc3_:ProfessionalTraitDTO = null;
         var _loc4_:Boolean = false;
         var _loc5_:CharacteristicsEntryVo = null;
         var _loc6_:String = null;
         var _loc2_:Vector.<CharacteristicsEntryVo> = new Vector.<CharacteristicsEntryVo>(0);
         for each(_loc3_ in param1.traits)
         {
            _loc4_ = false;
            for each(_loc5_ in _loc2_)
            {
               if(_loc5_.localeId == _loc3_.config.localeid)
               {
                  _loc5_.amountSum += _loc3_.config.value * _loc3_.stacks;
                  _loc4_ = true;
               }
            }
            if(!_loc4_)
            {
               _loc6_ = param1.gender ? "male" : "female";
               _loc2_.push(new CharacteristicsEntryVo(_loc3_.config.localeid,_loc3_.config.value * _loc3_.stacks,_loc6_));
            }
         }
         return _loc2_;
      }
      
      override public function onRegister() : void
      {
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._playfieldObjProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         this._goodStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
      }
      
      public function getSchoolBookVo(param1:BillboardObject) : SchoolBookVo
      {
         var _loc6_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc2_:SchoolBookVo = new SchoolBookVo();
         if(param1 is AcademyFieldObject)
         {
            this._academyFieldObject = param1 as AcademyFieldObject;
            var _loc3_:ProfessionalDTO = this._academyFieldObject.billboardObjectVo.buildingDTO.professionals[0];
            _loc2_.student = this.getProfessionalSlotVo(null);
            _loc2_.assignedProfessional = null;
            _loc2_.skillPointsLeft = null.unspentSkillPoints;
            var _loc4_:Vector.<EducationAttributeVo> = new Vector.<EducationAttributeVo>(0);
            for each(var _loc5_ in null.attributes)
            {
               null.push(new EducationAttributeVo(null));
            }
            _loc2_.attributes = null;
            _loc6_ = Number(this._configProxy.config.balanceParameters[ServerBalanceParameterConstants.EDUCATION_EXTENSION_TIME].value);
            var _loc7_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            var _loc8_:TimerBarComponentVo = new TimerBarComponentVo();
            var _loc9_:EducationPhaseDTO = this._academyFieldObject.academyFieldObjectVo.educationPhase;
            null.currentTime = null.currentTimeStamp;
            null.waitingForStart = null.behaviourEndTime == 0 || null.behaviourEndTime == -1 || null.behaviourEndTime <= null.currentTimeStamp;
            _loc10_ = this._academyFieldObject.billboardObjectVo.buildingDTO.config.educationBasicTime;
            _loc10_ = _loc10_ + _loc6_ * null.educationStep;
            null.cycleLength = _loc10_;
            null.startTime = null.behaviourEndTime - _loc10_;
            null.targetTime = null.behaviourEndTime;
            _loc2_.progressInfo = null;
            for each(var _loc12_ in this._academyFieldObject.billboardObjectVo.buildingDTO.config.educationSteps)
            {
               if(_loc12_.step == this._academyFieldObject.academyFieldObjectVo.educationPhase.educationStep)
               {
                  var _loc11_:ConfigEducationStepDTO = null;
                  break;
               }
            }
            _loc2_.skillPointsToAdd = 0;
            _loc2_.duration = LocaUtils.getDuration(0);
            _loc2_.pointCost = 0;
            _loc2_.dextroCost = 0;
            _loc2_.dextroAvailable = true;
            _loc2_.educationPointsAvailable = true;
            if(null.behaviourEndTime <= null.currentTimeStamp && null.behaviourEndTime > 0)
            {
               _loc2_.educationIsFinished = true;
               var _loc13_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
               _loc2_.departmentData = new SchoolBookDepartmentVo();
               _loc2_.departmentData.infrastructureBuildings = null.infrastructureBuildingList;
               _loc2_.departmentData.departmentThresholdBarVo = this.getDepartmentThresholdBarVo(null.infrastructureBuildingList);
               for each(var _loc15_ in _loc2_.departmentData.infrastructureBuildings)
               {
                  var _loc14_:String = _loc15_.emergencyFieldObjectVo.department[0];
                  _loc2_.departmentData.departmentGfxIds.push(EmergencyLayerProxy.getGfxIdByDepartment(null));
               }
            }
            _loc2_.emergencyFeatureDisabled = this._playfieldObjProxy.infrastructureBuildingList.length == 0;
         }
         return _loc2_;
      }
      
      private function getDepartmentThresholdBarVo(param1:Vector.<InfrastructureBuildingFieldObject>) : Vector.<DepartmentThresholdBarVo>
      {
         var _loc5_:InfrastructureBuildingFieldObject = null;
         var _loc6_:DepartmentThresholdBarVo = null;
         var _loc7_:DepartmentDetailViewVo = null;
         var _loc8_:Vector.<ConfigProfessionalAttributeThresholdDTO> = null;
         var _loc9_:Number = NaN;
         var _loc10_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc11_:Number = NaN;
         var _loc12_:ProfessionalDTO = null;
         var _loc2_:Vector.<DepartmentThresholdBarVo> = new Vector.<DepartmentThresholdBarVo>(0);
         var _loc3_:MainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
         var _loc4_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         for each(_loc5_ in param1)
         {
            _loc6_ = new DepartmentThresholdBarVo();
            _loc7_ = _loc3_.getDepartmentDetailViewVo(_loc5_.emergencyFieldObjectVo.department[0]);
            _loc8_ = this.getThresholdDTOsBySecurityReference(_loc7_);
            if(_loc8_ == null)
            {
               _loc2_.push(_loc6_);
            }
            _loc9_ = 0;
            for each(_loc10_ in _loc8_)
            {
               if(_loc10_)
               {
                  _loc6_.thresholds.push(_loc10_.copy);
                  if(_loc9_ <= _loc10_.threshold)
                  {
                     _loc9_ = _loc10_.threshold;
                  }
               }
            }
            _loc11_ = 0;
            for each(_loc12_ in _loc5_.billboardObjectVo.buildingDTO.professionals)
            {
               _loc11_ += _loc4_.getAttributePointsByType(_loc12_,ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
            }
            _loc6_.currentValue = _loc11_;
            _loc6_.maxRange = _loc9_;
            _loc6_.showBubbles = true;
            _loc6_.showPreview = true;
            _loc2_.push(_loc6_);
         }
         return _loc2_;
      }
      
      private function getThresholdDTOsBySecurityReference(param1:DepartmentDetailViewVo) : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         var _loc4_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc2_:Vector.<ConfigProfessionalAttributeThresholdDTO> = param1.thresholds[ServerProfessionalConstants.ATTRIBUTE_PERCEPTION];
         var _loc3_:Vector.<ConfigProfessionalAttributeThresholdDTO> = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
         for each(_loc4_ in _loc2_)
         {
            if(param1.configSecurityGrades[0].id == _loc4_.optionalConfigId)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      private function getProfessionalSlotVo(param1:ProfessionalDTO) : ProfessionalSlotVo
      {
         var _loc2_:Object = new Object();
         var _loc3_:String = "fire";
         if(param1.configSpecialisation)
         {
            switch(param1.configSpecialisation.department)
            {
               case ServerTagConstants.FIRE_DEPARTMENT:
                  _loc3_ = "fire";
                  break;
               case ServerTagConstants.POLICE_DEPARTMENT:
                  _loc3_ = "police";
                  break;
               case ServerTagConstants.HOSPITAL:
                  _loc3_ = "hospital";
            }
            _loc2_.profDep = param1.configSpecialisation.department;
            _loc2_.profSpec = param1.configSpecialisation.rank;
            _loc2_.profSpecGfx = param1.configSpecialisation.gfxId;
            _loc2_.profSpecLoca = param1.configSpecialisation.locaId;
         }
         _loc2_.traits = buildTraits(param1);
         var _loc4_:String = param1.gender ? "male" : "female";
         _loc2_.lib = "gui_professionals_" + _loc4_;
         _loc2_.img = "small_" + param1.gfxId;
         var _loc5_:String = ResourceManager.getInstance().getString("rcl.professions.nameconvention" + "","rcl.professions.nameconvention.fistnamelastname" + "");
         var _loc6_:String = ResourceManager.getInstance().getString("rcl.professions.firstnames." + _loc4_,"rcl.professions.firstnames." + _loc4_ + "." + param1.name);
         var _loc7_:String = ResourceManager.getInstance().getString("rcl.professions.surnames." + _loc4_,"rcl.professions.surnames." + _loc4_ + "." + param1.surname);
         _loc2_.operationsLeft = param1.lifetime;
         _loc2_.name = StringUtil.substitute(_loc5_,_loc6_,_loc7_);
         _loc2_.id = param1.id;
         return new ProfessionalSlotVo(_loc2_,false);
      }
   }
}

