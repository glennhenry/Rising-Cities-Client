package net.bigpoint.cityrama.model.detailViews
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.departmentBook.vo.ProfessionalDepartmentSlotVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DepartmentDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.GoodRequireVo;
   import net.bigpoint.cityrama.model.detailViews.vo.OptionsDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentSelectionVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentialDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ShopDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyInfoProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IBillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ShopStockGoodVo;
   import net.bigpoint.cityrama.model.improvement.ImprovementProxy;
   import net.bigpoint.cityrama.model.mastery.BuildingMasteryProxy;
   import net.bigpoint.cityrama.model.needsSystem.vo.ResidentialNeedPopupVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.optionsMenu.vo.OptionsListItemVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentDetailVo;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedRequireDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.NeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MainLayerProxy extends Proxy
   {
      
      public static const NAME:String = "MainLayerProxy";
      
      public static const ENERGY:String = "ENERGY";
      
      public static const MOOD:String = "MOOD";
      
      private static const RENT_OUT:String = "RENT_OUT";
      
      private static const NEED_OUT:String = "NEED_OUT";
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _goStP:PlayerGoodsStockProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _globalStatProxy:GlobalBalanceProxy;
      
      private var _coP:GameConfigProxy;
      
      private var _needMatrixProxy:NeedMatrixProxy;
      
      private var _storage:SharedObject;
      
      private var _eventProxy:EventProxy;
      
      private var _professionalProxy:ProfessionalProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _featureProxy:FeatureProxy;
      
      private var _buildingMasteryProxy:BuildingMasteryProxy;
      
      public function MainLayerProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._storage = SharedObject.getLocal(OptionsMenuProxy.NAME);
      }
      
      public static function sortSecurityGradesOnOrderId(param1:ConfigSecurityGradeDTO, param2:ConfigSecurityGradeDTO) : int
      {
         if(param1.orderId > param2.orderId)
         {
            return 1;
         }
         if(param1.orderId < param2.orderId)
         {
            return -1;
         }
         return 0;
      }
      
      private static function getBillboardEffects(param1:BillboardObjectVo, param2:String, param3:BillboardObjectVo = null) : SimpleItemVo
      {
         var _loc4_:SimpleItemVo = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:ConfigOutputDTO = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         for each(_loc7_ in param1.configPlayfieldItemVo.constructionPhases)
         {
            if(_loc7_.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
            {
               for each(_loc9_ in _loc7_.listEntryOutputs)
               {
                  if(_loc9_.type == ServerOutputConstants.RESOURCE)
                  {
                     if(param2 == ENERGY)
                     {
                        if(_loc9_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_NEGATIVE)
                        {
                           _loc6_ = -1;
                           _loc5_ = _loc9_.outputAmount * -1;
                        }
                        else if(_loc9_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_POSITIVE)
                        {
                           _loc6_ = 1;
                           _loc5_ = _loc9_.outputAmount;
                        }
                     }
                     else if(param2 == MOOD)
                     {
                        if(_loc9_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_NEGATIVE)
                        {
                           _loc6_ = -1;
                           _loc5_ = _loc9_.outputAmount * -1;
                        }
                        else if(_loc9_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_POSITIVE)
                        {
                           _loc6_ = 1;
                           _loc5_ = _loc9_.outputAmount;
                        }
                     }
                  }
               }
            }
         }
         for each(_loc8_ in param1.configPlayfieldItemVo.activePhases)
         {
            if(_loc8_.phaseType == ServerPhaseTypes.ACTIVATION)
            {
               for each(_loc10_ in _loc8_.listEntryOutputs)
               {
                  if(_loc10_.type == ServerOutputConstants.RESOURCE)
                  {
                     if(param2 == ENERGY)
                     {
                        if(_loc10_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_NEGATIVE)
                        {
                           _loc6_ = -1;
                           _loc5_ = _loc10_.outputAmount * -1;
                        }
                        else if(_loc10_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_POSITIVE)
                        {
                           _loc6_ = 1;
                           _loc5_ = _loc10_.outputAmount;
                        }
                     }
                     else if(param2 == MOOD)
                     {
                        if(_loc10_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_NEGATIVE)
                        {
                           _loc6_ = -1;
                           _loc5_ = _loc10_.outputAmount * -1;
                        }
                        else if(_loc10_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_POSITIVE)
                        {
                           _loc6_ = 1;
                           _loc5_ = _loc10_.outputAmount;
                        }
                     }
                  }
               }
            }
         }
         switch(param2)
         {
            case ENERGY:
               _loc5_ += _loc5_ * ImprovementProxy.getCompletePercentValueForTag(param1,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY);
               if(param1.buildingDTO != null)
               {
                  _loc5_ += Math.ceil(_loc5_ * BuildingMasteryProxy.getCompletePercentValueForTag(param1 as BillboardObjectVo,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY));
               }
               else if(param3 != null)
               {
                  _loc5_ += Math.ceil(_loc5_ * BuildingMasteryProxy.getCompletePercentValueForTag(param3 as BillboardObjectVo,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY));
               }
               _loc5_ = Math.ceil(_loc5_);
               _loc11_ = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.energy");
               _loc4_ = new SimpleItemVo(null,_loc5_,0,"energy_icon","gui_resources_icons",_loc11_,null,_loc6_);
               break;
            case MOOD:
               if(param1.buildingDTO != null)
               {
                  _loc5_ += Math.ceil(_loc5_ * BuildingMasteryProxy.getCompletePercentValueForTag(param1 as BillboardObjectVo,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY));
               }
               else if(param3 != null)
               {
                  _loc5_ += Math.ceil(_loc5_ * BuildingMasteryProxy.getCompletePercentValueForTag(param3 as BillboardObjectVo,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY));
               }
               _loc5_ += _loc5_ * ImprovementProxy.getCompletePercentValueForTag(param1,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY);
               _loc5_ = Math.ceil(_loc5_);
               _loc12_ = "layer_sad_icon";
               _loc13_ = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.mood");
               if(_loc6_ > 0)
               {
                  _loc12_ = "layer_happyness_icon";
               }
               _loc4_ = new SimpleItemVo(null,_loc5_,0,_loc12_,"gui_resources_icons",_loc13_,null,_loc6_);
         }
         return _loc4_;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._playerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         this._globalStatProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         this._needMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         this._professionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         this._buildingMasteryProxy = facade.retrieveProxy(BuildingMasteryProxy.NAME) as BuildingMasteryProxy;
      }
      
      public function getResidentialDetailViewVo(param1:ResidentialFieldObjectVo) : ResidentialDetailViewVo
      {
         var _loc4_:Number = NaN;
         var _loc2_:Object = new Object();
         _loc2_.gfxId = param1.buildingDTO.config.gfxId;
         _loc2_.libName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(param1.buildingDTO.config);
         _loc2_.localeId = param1.configPlayfieldItemVo.localeId;
         _loc2_.upgradePrice = param1.getUpgradeInstantFinishCost() + this.getNextUpgradeInstantFinishCost(param1.configPlayfieldItemVo.nextConfigId);
         _loc2_.hasEnoughDD = this._playerResourceProxy.realCurrency >= _loc2_.upgradePrice;
         _loc2_.upgradeCurrentLevel = param1.currentLevel;
         if(param1.maxLevel > param1.currentLevel)
         {
            _loc2_.upgradeNextLevel = param1.currentLevel + 1;
         }
         else
         {
            _loc2_.upgradeNextLevel = param1.currentLevel;
         }
         _loc2_.upgradeMaxLevel = param1.maxLevel;
         _loc2_.upgradeCountTotal = param1.maxHarvestUpgradeCount;
         _loc2_.harvestCount = param1.harvestUpgradeCount > param1.maxHarvestUpgradeCount ? param1.maxHarvestUpgradeCount : param1.harvestUpgradeCount;
         if(!param1.isInBuildMode && Boolean(param1.residentialPhase))
         {
            _loc4_ = param1.residentialPhase.config.durationConfig.duration;
            _loc4_ = _loc4_ + Math.ceil(_loc4_ * BuildingMasteryProxy.getCompletePercentValueForTag(param1,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY,ServerTagConstants.TIME));
            _loc4_ += _loc4_ * ImprovementProxy.getCompletePercentValueForTag(param1,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY);
            _loc4_ = Math.ceil(_loc4_);
            _loc2_.cycleLength = _loc4_;
            _loc2_.endTime = param1.residentialPhase.expirationTime;
            _loc2_.currentTime = this._timerProxy.currentTimeStamp;
         }
         _loc2_.needs = this.getNeeds(param1);
         _loc2_.residents = this.getCurrentResidentInfos(param1.configPlayfieldItemVo,param1);
         _loc2_.residentChange = this._featureProxy.residentChangeUnlocked;
         _loc2_.residentChangeLevel = this._featureProxy.residentChangeUnlockLevel;
         _loc2_.rentIncome = this.getActualResidentialOutcome(param1.configPlayfieldItemVo,param1,RENT_OUT);
         _loc2_.needIncome = this.getActualResidentialOutcome(param1.configPlayfieldItemVo,param1,NEED_OUT);
         _loc2_.ep = this.goodStockProxy.hasEnoughPermits();
         _loc2_.mood = getBillboardEffects(param1,MOOD);
         _loc2_.energy = getBillboardEffects(param1,ENERGY);
         _loc2_.masteryChallenge = this._buildingMasteryProxy.getMasteryComponentVo(param1.buildingDTO);
         var _loc3_:ResidentialDetailViewVo = new ResidentialDetailViewVo(_loc2_,param1);
         if(param1.configPlayfieldItemVo.nextConfigId != 0)
         {
            _loc3_.nextResidentialDetail = this.createNextResidential(param1);
         }
         return _loc3_;
      }
      
      public function getProductionDetailViewVo(param1:ProductionFieldObjectVo) : ProductionDetailViewVo
      {
         var _loc3_:ProductionGoodObjectVo = null;
         var _loc4_:ProductionGoodObjectVo = null;
         var _loc5_:ProductionDetailViewVo = null;
         var _loc6_:ProductionGoodObjectVo = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc8_:Boolean = false;
         var _loc9_:ProductionGoodObjectVo = null;
         var _loc10_:int = 0;
         var _loc11_:GoodRequireVo = null;
         ConfigFactory.buildProductionFieldObjectVo(param1);
         var _loc2_:Object = new Object();
         _loc2_.globalUserLevel = this._playerResourceProxy.userLevel;
         _loc2_.pfoVo = param1;
         _loc2_.gfxId = param1.buildingDTO.config.gfxId;
         _loc2_.localeId = param1.configPlayfieldItemVo.localeId;
         _loc2_.upgradePrice = param1.getUpgradeInstantFinishCost() + this.getNextUpgradeInstantFinishCost(param1.configPlayfieldItemVo.nextConfigId);
         _loc2_.hasEnoughDD = this._playerResourceProxy.realCurrency >= _loc2_.upgradePrice;
         _loc2_.upgradeCurrentLevel = param1.currentLevel;
         if(param1.maxLevel > param1.currentLevel)
         {
            _loc2_.upgradeNextLevel = param1.currentLevel + 1;
         }
         else
         {
            _loc2_.upgradeNextLevel = param1.currentLevel;
         }
         _loc2_.upgradeMaxLevel = param1.maxLevel;
         _loc2_.upgradeCountTotal = param1.maxHarvestUpgradeCount;
         _loc2_.harvestCount = param1.harvestUpgradeCount > param1.maxHarvestUpgradeCount ? param1.maxHarvestUpgradeCount : param1.harvestUpgradeCount;
         _loc2_.currentTime = this._timerProxy.currentTimeStamp;
         _loc2_.productionOptions = this.getProductionOptions(param1);
         for each(_loc3_ in _loc2_.productionOptions)
         {
            _loc3_.productionIncome = this.getActualProductionOutcome(_loc3_);
         }
         if(!param1.isIdle)
         {
            _loc2_.endTime = param1.currentProductionPhase.expirationTime;
            for each(_loc6_ in _loc2_.productionOptions)
            {
               for each(_loc7_ in param1.currentProductionPhase.config.listEntryOutputs)
               {
                  if(Boolean(_loc7_.goodConfig) && _loc7_.goodConfig == _loc6_.config)
                  {
                     _loc2_.cpi = _loc2_.productionOptions.indexOf(_loc6_);
                  }
               }
            }
         }
         else
         {
            _loc8_ = false;
            for each(_loc9_ in _loc2_.productionOptions)
            {
               if(_loc9_.config.isEventGood)
               {
                  _loc8_ = true;
                  break;
               }
            }
            _loc2_.endTime = 0;
            _loc10_ = int(this._storage.data[param1.buildingDTO.id]);
            if((Boolean(_loc10_)) && !_loc8_)
            {
               _loc2_.cpi = _loc10_;
            }
            else
            {
               _loc2_.cpi = -1;
            }
         }
         for each(_loc4_ in ProductionFieldObjectVo(param1).produceAbleGoods)
         {
            for each(_loc11_ in _loc4_.requiredGoods)
            {
               this.goodStockProxy.setCurrentStockForGoodObjectVo(_loc11_.goodObjectVo);
            }
         }
         _loc2_.mood = getBillboardEffects(param1,MOOD);
         _loc2_.energy = getBillboardEffects(param1,ENERGY);
         _loc2_.cpp = this._playerResourceProxy.productionPoints;
         _loc2_.eventGfxId = this._eventProxy.currentRunningEventQuestGfxId;
         _loc2_.eventLocaleId = this._eventProxy.currentRunningEventQuestLocaleId;
         _loc5_ = new ProductionDetailViewVo(_loc2_);
         if(param1.configPlayfieldItemVo.nextConfigId != 0)
         {
            _loc5_.nextProductionDetail = this.createNextProduction(param1);
         }
         return _loc5_;
      }
      
      public function getShopDetailViewVo(param1:ShopFieldObjectVo, param2:Boolean = true) : ShopDetailViewVo
      {
         var _loc7_:ConfigNeedDTO = null;
         var _loc8_:ConfigOutputDTO = null;
         var _loc9_:ConfigNeedStackDTO = null;
         var _loc10_:ConfigGoodDTO = null;
         var _loc11_:GoodObjectVo = null;
         var _loc12_:NeedStackDTO = null;
         var _loc13_:ConfigPlayfieldItemDTO = null;
         var _loc3_:ShopDetailViewVo = new ShopDetailViewVo();
         if(param1.buildingDTO != null)
         {
            _loc3_.buildingID = param1.buildingDTO.id;
         }
         _loc3_.gfxID = param1.configPlayfieldItemVo.gfxId;
         _loc3_.localeId = param1.configPlayfieldItemVo.localeId;
         _loc3_.currentLevel = param1.currentLevel;
         var _loc4_:Vector.<GoodObjectVo> = new Vector.<GoodObjectVo>();
         var _loc5_:Vector.<ShopStockGoodVo> = new Vector.<ShopStockGoodVo>();
         var _loc6_:Boolean = false;
         for each(_loc7_ in param1.configPlayfieldItemVo.needShopConfigs)
         {
            for each(_loc9_ in _loc7_.requiredGoods)
            {
               _loc3_.maxStock = _loc9_.maxStack;
               for each(_loc10_ in this.configProxy.config.goods)
               {
                  if(_loc9_.configOutout.goodConfig != null && _loc10_.id == _loc9_.configOutout.goodConfig.id)
                  {
                     _loc11_ = this.goodStockProxy.getGoodByConfigId(_loc10_.id);
                     _loc4_.push(_loc11_);
                     _loc6_ = false;
                     for each(_loc12_ in param1.sellableNeedStack)
                     {
                        if(_loc12_.configId == _loc9_.id)
                        {
                           _loc5_.push(new ShopStockGoodVo(_loc11_,_loc12_.amount,_loc9_.maxStack,_loc9_.configOutout.outputAmount * this._globalStatProxy.happinessOutputModifier));
                           _loc6_ = true;
                        }
                     }
                     if(!_loc6_)
                     {
                        _loc5_.push(new ShopStockGoodVo(_loc11_,0,_loc9_.maxStack,_loc9_.configOutout.outputAmount * this._globalStatProxy.happinessOutputModifier));
                     }
                  }
               }
            }
         }
         for each(_loc8_ in param1.configPlayfieldItemVo.globalBuffs)
         {
            if(_loc8_.type == ServerOutputConstants.RESOURCE)
            {
               if(_loc8_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_NEGATIVE || _loc8_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_POSITIVE)
               {
                  _loc3_.currentEnergy = _loc8_.outputAmount * (_loc8_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_NEGATIVE ? -1 : 1);
               }
               if(_loc8_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_NEGATIVE || _loc8_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_POSITIVE)
               {
                  _loc3_.currentMood = _loc8_.outputAmount * (_loc8_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_NEGATIVE ? -1 : 1);
               }
            }
         }
         if(param1.maxLevel > param1.currentLevel)
         {
            _loc3_.nextLevel = param1.currentLevel + 1;
         }
         else
         {
            _loc3_.nextLevel = param1.currentLevel;
         }
         _loc3_.radiusX = param1.satisfyRange.width;
         _loc3_.radiusY = param1.satisfyRange.height;
         _loc3_.storageInterests = _loc4_;
         _loc3_.storeStock = _loc5_;
         _loc3_.upgradeMaxLevel = param1.maxLevel;
         if(param2)
         {
            _loc13_ = this.configProxy.config.items[param1.configPlayfieldItemVo.nextConfigId];
            if(_loc13_)
            {
               _loc3_.nextLevelData = this.getShopDetailViewVo(new ShopFieldObjectVo(_loc13_),false);
            }
            else
            {
               _loc3_.nextLevelData = null;
            }
         }
         _loc3_.upgradeMMPrice = Math.ceil(param1.instantUpgradeStartCosts + this.getNextUpgradeInstantFinishCost(param1.configPlayfieldItemVo.nextConfigId));
         _loc3_.hasEnoughDD = this._playerResourceProxy.realCurrency >= _loc3_.upgradeMMPrice;
         return _loc3_;
      }
      
      public function getDepartmentDetailViewVo(param1:String) : DepartmentDetailViewVo
      {
         var _loc6_:String = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:Object = new Object();
         var _loc4_:Vector.<InfrastructureBuildingFieldObject> = _loc2_.getInfrastructureBuildingByDepartmentTag(param1);
         if(_loc4_ == null || _loc4_.length == 0)
         {
            throw new ArgumentError("invalid department: " + param1);
         }
         var _loc5_:InfrastructureBuildingFieldObjectVo = _loc4_[0].emergencyFieldObjectVo as InfrastructureBuildingFieldObjectVo;
         _loc3_.id = _loc5_.id;
         _loc3_.type = param1;
         _loc3_.gfxId = _loc5_.configPlayfieldItemVo.gfxId;
         _loc3_.libName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc5_.configPlayfieldItemVo);
         _loc3_.departmentGfxId = EmergencyLayerProxy.getGfxIdByDepartment(param1);
         _loc3_.localeId = _loc5_.configPlayfieldItemVo.localeId;
         _loc3_.upgradeCurrentLevel = _loc5_.currentLevel;
         _loc3_.emergencyCount = _loc5_.emergenciesUpgradeCount > _loc5_.maxEmergenciesUpgradeCount ? _loc5_.maxEmergenciesUpgradeCount : _loc5_.emergenciesUpgradeCount;
         _loc3_.upgradeCountTotal = _loc5_.maxEmergenciesUpgradeCount;
         _loc3_.upgradeMaxLevel = _loc5_.maxUpgradeLevel;
         if(_loc5_.maxUpgradeLevel > _loc5_.currentLevel)
         {
            _loc3_.upgradeNextLevel = _loc5_.currentLevel + 1;
         }
         else
         {
            _loc3_.upgradeNextLevel = _loc5_.currentLevel;
         }
         switch(param1)
         {
            case ServerTagConstants.FIRE_DEPARTMENT:
               _loc6_ = "icon_fire";
               break;
            case ServerTagConstants.POLICE_DEPARTMENT:
               _loc6_ = "icon_police";
               break;
            case ServerTagConstants.HOSPITAL:
               _loc6_ = "icon_hospital";
         }
         _loc3_.headerIcon = _loc6_;
         _loc3_.maxSlots = _loc5_.configPlayfieldItemVo.maxProfessionalAmount;
         _loc3_.slotList = this.getDepartmentProfessionals(_loc5_,_loc3_.maxSlots);
         var _loc7_:Vector.<ProfessionalDTO> = this._professionalProxy.getProfessionalsByDepartment(param1);
         _loc3_.currentSlots = _loc7_.length;
         _loc3_.configSecurityGrades = _loc5_.configPlayfieldItemVo.configSecurityGrades.sort(sortSecurityGradesOnOrderId);
         _loc3_.attributePoints = this.getAttributePoints(_loc7_,ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
         _loc3_.maxAttributePoints = this.getMaxAttributePoints(ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
         _loc3_.buildingSizeX = _loc5_.objectSize.x;
         _loc3_.buildingSizeY = _loc5_.objectSize.y;
         var _loc8_:Vector.<String> = new Vector.<String>();
         _loc8_.push(ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
         _loc3_.thresholds = this.getThresholds(_loc8_);
         if(_loc5_.maxUpgradeLevel > _loc5_.currentLevel)
         {
            _loc3_.upgradeNextLevel = _loc5_.currentLevel + 1;
         }
         else
         {
            _loc3_.upgradeNextLevel = _loc5_.currentLevel;
         }
         var _loc9_:DepartmentDetailViewVo = new DepartmentDetailViewVo(_loc3_);
         _loc9_.userRcStock = this._playerResourceProxy.realCurrency;
         _loc9_.upgradeInstaFinishRCCost = _loc5_.getUpgradeInstantFinishCost();
         if(_loc5_.configPlayfieldItemVo.nextConfigId != 0)
         {
            _loc9_.nextDepartmentDetail = this.createNextDepartment(_loc5_);
         }
         return _loc9_;
      }
      
      public function getOptionsDetails() : OptionsDetailViewVo
      {
         var _loc1_:Object = {};
         var _loc2_:Array = [];
         var _loc3_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_SPARSE_TRAFFIC,_loc3_.uiDataDTO.lowTraffic));
         _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS,_loc3_.uiDataDTO.lowGraphicsQuality));
         _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS,_loc3_.uiDataDTO.increasingTips));
         _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS,_loc3_.uiDataDTO.increasingSimbols));
         _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION,_loc3_.uiDataDTO.rcVerification));
         _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION,_loc3_.uiDataDTO.fasterNotification));
         _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE,_loc3_.uiDataDTO.fullscreenActive));
         _loc1_.list = _loc2_;
         _loc1_.sso = this._flashVarsProxy.isSsoUser;
         return new OptionsDetailViewVo(_loc1_);
      }
      
      public function getResidentSelectionVo(param1:ResidentialFieldObject, param2:Boolean = false) : ResidentSelectionVo
      {
         var _loc7_:ResidentVo = null;
         var _loc8_:ResidentVo = null;
         var _loc9_:ResidentDetailVo = null;
         var _loc3_:ResidentSelectionVo = new ResidentSelectionVo(param2);
         if(param2)
         {
            _loc3_.currentResidents = param1.residentialFieldObjectVo.currentResidentType;
         }
         if(param1.billboardObjectVo.configPlayfieldItemVo.residents.length > 1)
         {
            param1.billboardObjectVo.configPlayfieldItemVo.residents.sort(ArchitecturalBookProxy.sortResidents);
         }
         var _loc4_:Vector.<ResidentDetailVo> = new Vector.<ResidentDetailVo>();
         var _loc6_:uint = 0;
         for each(_loc7_ in param1.billboardObjectVo.configPlayfieldItemVo.residents)
         {
            if(this._playerResourceProxy.userLevel >= _loc7_.minUserLevel)
            {
               var _loc5_:ResidentDetailVo = new ResidentDetailVo(_loc7_);
               _loc5_.movePossible = _loc7_.buildingLevel <= param1.billboardObjectVo.currentLevel;
               _loc4_.push(null);
            }
            else
            {
               _loc6_++;
            }
         }
         if(_loc6_ > 0)
         {
            _loc8_ = new ResidentVo("",int.MAX_VALUE,int.MAX_VALUE);
            while(_loc6_ > 0)
            {
               _loc9_ = new ResidentDetailVo(_loc8_);
               _loc9_.locked = true;
               _loc9_.movePossible = false;
               _loc4_.push(_loc9_);
               _loc6_--;
            }
         }
         _loc3_.residential = param1;
         _loc3_.residents = _loc4_;
         return _loc3_;
      }
      
      public function getProductionOptions(param1:ProductionFieldObjectVo) : Vector.<ProductionGoodObjectVo>
      {
         var _loc5_:ProductionGoodObjectVo = null;
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc2_:Vector.<ProductionGoodObjectVo> = ProductionFieldObjectVo(param1).produceAbleGoods;
         var _loc3_:Vector.<ProductionGoodObjectVo> = new Vector.<ProductionGoodObjectVo>();
         var _loc4_:Array = [];
         for each(_loc5_ in _loc2_)
         {
            if(_loc5_.config.isEventGood)
            {
               if(param1.currentGoodInProduction != null && param1.currentGoodInProduction.id == _loc5_.config.id)
               {
                  _loc4_.push({
                     "obj":_loc5_,
                     "level":_loc5_.config.userLevelRequired
                  });
               }
               else
               {
                  for each(_loc7_ in this._eventProxy.currentListOfAvailableEventQuestGoodIds)
                  {
                     if(_loc7_ == _loc5_.config.id)
                     {
                        _loc4_.push({
                           "obj":_loc5_,
                           "level":_loc5_.config.userLevelRequired
                        });
                        break;
                     }
                  }
               }
            }
            else
            {
               _loc4_.push({
                  "obj":_loc5_,
                  "level":_loc5_.config.userLevelRequired
               });
            }
         }
         _loc4_.sortOn("level",Array.NUMERIC);
         for each(_loc6_ in _loc4_)
         {
            _loc3_.push(_loc6_["obj"]);
         }
         return _loc3_;
      }
      
      private function getDepartmentProfessionals(param1:InfrastructureBuildingFieldObjectVo, param2:int) : Vector.<ProfessionalDepartmentSlotVo>
      {
         var _loc9_:Object = null;
         var _loc10_:ProfessionalDepartmentSlotVo = null;
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:Vector.<ProfessionalDTO> = this._professionalProxy.getProfessionalsByDepartment(param1.department[0]);
         var _loc5_:Vector.<ProfessionalDepartmentSlotVo> = new Vector.<ProfessionalDepartmentSlotVo>();
         var _loc6_:* = false;
         var _loc7_:* = _loc3_.getAcademyList().length > 0;
         if(_loc7_)
         {
            _loc7_ = !_loc3_.getAcademyList()[0].academyFieldObjectVo.isUnderConstruction();
         }
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            _loc6_ = _loc8_ >= _loc4_.length;
            _loc9_ = new Object();
            _loc9_.slotNr = _loc8_;
            _loc9_.departmentGfx = EmergencyLayerProxy.getGfxIdByDepartment(param1.department[0]);
            _loc9_.activeAcademy = _loc7_;
            if(!_loc6_)
            {
               var _loc11_:ProfessionalDTO = _loc4_[_loc8_];
               if(_loc11_.configSpecialisation != null)
               {
                  _loc9_.profDep = null.configSpecialisation.department;
                  _loc9_.profSpec = null.configSpecialisation.rank;
                  _loc9_.profSpecGfx = null.configSpecialisation.gfxId;
                  _loc9_.profSpecLoca = null.configSpecialisation.locaId;
               }
               _loc9_.operationsLeft = null.lifetime;
               var _loc12_:String = null.gender ? "male" : "female";
               _loc9_.lib = "gui_professionals_" + null;
               _loc9_.img = "small_" + null.gfxId;
               var _loc13_:String = LocaUtils.getString("rcl.professions.nameconvention","rcl.professions.nameconvention.fistnamelastname");
               var _loc14_:String = LocaUtils.getString("rcl.professions.firstnames." + null,"rcl.professions.firstnames." + null + "." + null.name);
               var _loc15_:String = LocaUtils.getString("rcl.professions.surnames." + null,"rcl.professions.surnames." + null + "." + null.surname);
               _loc9_.name = StringUtil.substitute(null,null,null);
               _loc9_.id = null.id;
               _loc9_.canLevelUp = null.canLevelUp;
            }
            _loc10_ = new ProfessionalDepartmentSlotVo(_loc9_,_loc6_);
            _loc5_.push(_loc10_);
            _loc8_++;
         }
         return _loc5_;
      }
      
      private function getAttributePoints(param1:Vector.<ProfessionalDTO>, param2:String) : Number
      {
         var _loc4_:ProfessionalDTO = null;
         var _loc3_:Number = 0;
         for each(_loc4_ in param1)
         {
            _loc3_ += this._professionalProxy.getAttributePointsByType(_loc4_,param2);
         }
         return _loc3_;
      }
      
      private function getMaxAttributePoints(param1:String) : Number
      {
         var _loc3_:ConfigProfessionalAttributeDTO = null;
         for each(_loc3_ in this.configProxy.config.professionalAttributes)
         {
            if(_loc3_.attributeType == param1)
            {
               var _loc2_:Number = _loc3_.attributeThresholds.length * _loc3_.maxCap;
               break;
            }
         }
         return 0;
      }
      
      private function getThresholds(param1:Vector.<String>) : Dictionary
      {
         var _loc4_:String = null;
         var _loc5_:ConfigProfessionalAttributeDTO = null;
         var _loc6_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:EmergencyInfoProxy = facade.retrieveProxy(EmergencyInfoProxy.NAME) as EmergencyInfoProxy;
         for each(_loc5_ in this.configProxy.config.professionalAttributes)
         {
            for each(_loc4_ in param1)
            {
               if(_loc5_.attributeType == _loc4_)
               {
                  for each(_loc6_ in _loc5_.attributeThresholds)
                  {
                     if(_loc2_[_loc4_] == null)
                     {
                        _loc2_[_loc4_] = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
                     }
                     _loc2_[_loc4_].push(_loc6_);
                  }
               }
            }
         }
         for(_loc4_ in _loc2_)
         {
            _loc2_[_loc4_].sort(_loc3_.sortThresholds);
         }
         return _loc2_;
      }
      
      private function createNextResidential(param1:ResidentialFieldObjectVo) : ResidentialDetailViewVo
      {
         var _loc5_:Object = null;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:Number = NaN;
         var _loc2_:ConfigPlayfieldItemDTO = this.configProxy.getConfigPlayfieldItemById(param1.configPlayfieldItemVo.nextConfigId);
         var _loc3_:ResidentialFieldObjectVo = new ResidentialFieldObjectVo(_loc2_);
         IBillboardObjectVo(_loc3_).currentTimeStamp = this._timerProxy.currentTimeStamp;
         _loc3_.configPlayfieldItemVo = _loc2_;
         var _loc4_:ResidentialFieldObjectVo = ConfigFactory.buildResidentialFieldObjectVo(_loc3_);
         _loc4_.matrixCoordinates = param1.matrixCoordinates;
         _loc4_.currentResidents = param1.currentResidentType;
         _loc4_.currentImprovements = param1.currentImprovements;
         this.needMatrixProxy.updateNeedsForSingleResidential(_loc4_);
         if(_loc2_ != null && _loc4_ != null)
         {
            _loc5_ = new Object();
            _loc5_.gfxId = _loc2_.gfxId;
            _loc5_.libName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc2_);
            _loc5_.localeId = _loc2_.localeId;
            _loc5_.needs = this.getNeeds(_loc4_);
            _loc5_.residents = this.getCurrentResidentInfos(_loc2_,_loc4_);
            _loc5_.rentIncome = this.getActualResidentialOutcome(_loc2_,_loc4_,RENT_OUT,param1);
            _loc5_.needIncome = this.getActualResidentialOutcome(_loc2_,_loc4_,NEED_OUT,param1);
            _loc5_.mood = getBillboardEffects(_loc4_,MOOD,param1);
            _loc5_.energy = getBillboardEffects(_loc4_,ENERGY,param1);
            for each(_loc7_ in _loc4_.configPlayfieldItemVo.activePhases)
            {
               if(_loc7_.phaseType == ServerPhaseTypes.RESIDENTIAL)
               {
                  _loc6_ = _loc7_;
                  break;
               }
            }
            if(!_loc6_)
            {
               _loc6_ = param1.residentialPhase.config;
            }
            _loc8_ = _loc6_.durationConfig.duration;
            _loc8_ += _loc8_ * ImprovementProxy.getCompletePercentValueForTag(_loc4_,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY);
            _loc8_ = Math.ceil(_loc8_);
            _loc5_.cycleLength = _loc8_;
            return new ResidentialDetailViewVo(_loc5_,null);
         }
         return null;
      }
      
      private function createNextProduction(param1:ProductionFieldObjectVo) : ProductionDetailViewVo
      {
         var _loc5_:Object = null;
         var _loc6_:ProductionGoodObjectVo = null;
         var _loc2_:ConfigPlayfieldItemDTO = this.configProxy.getConfigPlayfieldItemById(param1.configPlayfieldItemVo.nextConfigId);
         var _loc3_:ProductionFieldObjectVo = new ProductionFieldObjectVo(_loc2_);
         IBillboardObjectVo(_loc3_).currentTimeStamp = this._timerProxy.currentTimeStamp;
         _loc3_.configPlayfieldItemVo = _loc2_;
         var _loc4_:ProductionFieldObjectVo = ConfigFactory.buildProductionFieldObjectVo(_loc3_);
         _loc4_.matrixCoordinates = param1.matrixCoordinates;
         if(_loc2_ != null && _loc4_ != null)
         {
            _loc5_ = new Object();
            _loc5_.gfxId = _loc2_.gfxId;
            _loc5_.localeId = _loc2_.localeId;
            _loc5_.productionOptions = this.getProductionOptions(_loc4_);
            for each(_loc6_ in _loc5_.productionOptions)
            {
               _loc6_.productionIncome = this.getActualProductionOutcome(_loc6_);
            }
            _loc5_.mood = getBillboardEffects(_loc4_,MOOD);
            _loc5_.energy = getBillboardEffects(_loc4_,ENERGY);
            return new ProductionDetailViewVo(_loc5_);
         }
         return null;
      }
      
      private function createNextDepartment(param1:InfrastructureBuildingFieldObjectVo) : DepartmentDetailViewVo
      {
         var _loc3_:Object = null;
         var _loc4_:Vector.<ProfessionalDTO> = null;
         var _loc5_:Vector.<String> = null;
         var _loc2_:ConfigPlayfieldItemDTO = this.configProxy.getConfigPlayfieldItemById(param1.configPlayfieldItemVo.nextConfigId);
         if(_loc2_ != null)
         {
            _loc3_ = new Object();
            _loc3_.type = param1.department[0];
            _loc3_.gfxId = _loc2_.gfxId;
            _loc3_.departmentGfxId = EmergencyLayerProxy.getGfxIdByDepartment(param1.department[0]);
            _loc3_.maxSlots = _loc2_.maxProfessionalAmount;
            _loc3_.slotList = this.getDepartmentProfessionals(param1,_loc3_.maxSlots);
            _loc4_ = this._professionalProxy.getProfessionalsByDepartment(param1.department[0]);
            _loc3_.currentSlots = _loc4_.length;
            _loc3_.configSecurityGrades = _loc2_.configSecurityGrades.sort(sortSecurityGradesOnOrderId);
            _loc3_.attributePoints = this.getAttributePoints(_loc4_,ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
            _loc3_.maxAttributePoints = this.getMaxAttributePoints(ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
            _loc3_.buildingSizeX = _loc2_.sizeX;
            _loc3_.buildingSizeY = _loc2_.sizeY;
            _loc5_ = new Vector.<String>();
            _loc5_.push(ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
            _loc3_.thresholds = this.getThresholds(_loc5_);
            return new DepartmentDetailViewVo(_loc3_);
         }
         return null;
      }
      
      private function getCurrentResidentInfos(param1:ConfigPlayfieldItemDTO, param2:ResidentialFieldObjectVo) : SimpleItemVo
      {
         var _loc3_:SimpleItemVo = null;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:String = param2.currentResidentType;
         switch(_loc11_)
         {
            case ServerResConst.RESOURCE_WORKERS:
               _loc4_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.worker");
               _loc7_ = "postit_icon_worker";
               _loc8_ = "gui_popups_residentialPopupNEW";
               _loc9_ = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.residents.icon.worker");
               break;
            case ServerResConst.RESOURCE_ACADEMICS:
               _loc4_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.academics");
               _loc7_ = "resident_icon_prof";
               _loc8_ = "gui_popups_residentialPopupNEW";
               _loc9_ = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.residents.icon.academics");
               break;
            case ServerResConst.RESOURCE_RICHMEN:
               _loc4_ = LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.richmen");
               _loc7_ = "resident_icon_richman";
               _loc8_ = "gui_popups_residentialPopupNEW";
               _loc9_ = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.residents.icon.richmen");
         }
         _loc10_ = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.residents.numbers");
         _loc6_ = param1.maxResidents;
         _loc5_ = _loc6_ * this._globalStatProxy.happinessOutputModifier;
         return new SimpleItemVo(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_);
      }
      
      private function getActualResidentialOutcome(param1:ConfigPlayfieldItemDTO, param2:ResidentialFieldObjectVo, param3:String, param4:ResidentialFieldObjectVo = null) : SimpleItemVo
      {
         var _loc5_:SimpleItemVo = null;
         var _loc6_:String = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:ConfigOutputDTO = null;
         var _loc14_:ResidentialNeedPopupVo = null;
         switch(param3)
         {
            case RENT_OUT:
               _loc6_ = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.income.rent");
               _loc8_ = 0;
               for each(_loc13_ in param1.getAllPhasesByType(ServerPhaseTypes.RESIDENTIAL)[0].listEntryOutputs)
               {
                  if(_loc13_.type == ServerOutputConstants.RESOURCE)
                  {
                     if(_loc13_.resourceConfig.type != ServerResConst.RESOURCE_EXPERIENCE)
                     {
                        _loc8_ = Math.abs(_loc13_.outputAmount);
                        _loc12_ = _loc13_.resourceConfig.type;
                     }
                  }
               }
               _loc7_ = Math.ceil(_loc8_ * this._globalStatProxy.happinessOutputModifier);
               if(param2.buildingDTO != null)
               {
                  _loc7_ += Math.ceil(_loc7_ * BuildingMasteryProxy.getCompletePercentValueForTag(param2,ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,_loc12_));
               }
               else if(param4 != null)
               {
                  _loc7_ += Math.ceil(_loc7_ * BuildingMasteryProxy.getCompletePercentValueForTag(param4,ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,_loc12_));
               }
               _loc7_ += _loc7_ * ImprovementProxy.getCompletePercentValueForTag(param2,ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY);
               _loc7_ = Math.ceil(_loc7_);
               switch(_loc12_)
               {
                  case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                     _loc9_ = "postit_icon_productionpoints";
                     _loc10_ = "gui_popups_residentialPopupNEW";
                     break;
                  case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                     _loc9_ = "ui_mainbar_educationpoint_icon_small";
                     _loc10_ = "gui_main_hud";
                     break;
                  case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                     _loc9_ = "layer_cc_icon";
                     _loc10_ = "gui_resources_icons";
               }
               _loc11_ = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.income.rent");
               break;
            case NEED_OUT:
               _loc6_ = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.income.needs");
               _loc8_ = 0;
               _loc7_ = 0;
               for each(_loc14_ in this.getNeeds(param2))
               {
                  if(!_loc14_.locked)
                  {
                     switch(param2.currentResidentType)
                     {
                        case ServerResConst.RESOURCE_RICHMEN:
                           _loc8_ += _loc14_.vcBonus;
                           break;
                        case ServerResConst.RESOURCE_WORKERS:
                           _loc8_ += _loc14_.ppBonus;
                           break;
                        case ServerResConst.RESOURCE_ACADEMICS:
                           _loc8_ += _loc14_.epBonus;
                     }
                  }
                  if(!_loc14_.fulfilled)
                  {
                     continue;
                  }
                  switch(param2.currentResidentType)
                  {
                     case ServerResConst.RESOURCE_RICHMEN:
                        _loc7_ += _loc14_.vcBonus;
                        _loc12_ = ServerResConst.RESOURCE_VIRTUALCURRENCY;
                        break;
                     case ServerResConst.RESOURCE_WORKERS:
                        _loc7_ += _loc14_.ppBonus;
                        _loc12_ = ServerResConst.RESOURCE_PRODUCTIONPOINTS;
                        break;
                     case ServerResConst.RESOURCE_ACADEMICS:
                        _loc7_ += _loc14_.epBonus;
                        _loc12_ = ServerResConst.RESOURCE_EDUCATIONPOINTS;
                  }
               }
               _loc8_ = Math.ceil(_loc8_);
               _loc7_ = Math.ceil(_loc7_ * this._globalStatProxy.happinessOutputModifier);
               if(param2.buildingDTO != null)
               {
                  _loc7_ += Math.ceil(_loc7_ * BuildingMasteryProxy.getCompletePercentValueForTag(param2,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,_loc12_));
               }
               else if(param4 != null)
               {
                  _loc7_ += Math.ceil(_loc7_ * BuildingMasteryProxy.getCompletePercentValueForTag(param4,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,_loc12_));
               }
               _loc7_ += _loc7_ * ImprovementProxy.getCompletePercentValueForTag(param2,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
               _loc7_ = Math.ceil(_loc7_);
               switch(param2.currentResidentType)
               {
                  case ServerResConst.RESOURCE_RICHMEN:
                     _loc9_ = "layer_cc_icon";
                     _loc10_ = "gui_resources_icons";
                     break;
                  case ServerResConst.RESOURCE_ACADEMICS:
                     _loc9_ = "ui_mainbar_educationpoint_icon_small";
                     _loc10_ = "gui_main_hud";
                     break;
                  case ServerResConst.RESOURCE_WORKERS:
                  default:
                     _loc9_ = "postit_icon_productionpoints";
                     _loc10_ = "gui_popups_residentialPopupNEW";
               }
               _loc11_ = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.income.needs");
         }
         return new SimpleItemVo(_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_);
      }
      
      private function getActualProductionOutcome(param1:ProductionGoodObjectVo) : SimpleItemVo
      {
         var _loc2_:String = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.units");
         var _loc3_:Number = param1.productionYeld * this._globalStatProxy.energyOutputModifier;
         var _loc4_:Number = param1.productionYeld;
         var _loc7_:String = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.income.base");
         _loc4_ = Math.ceil(_loc4_);
         _loc3_ = Math.ceil(_loc3_);
         return new SimpleItemVo(_loc2_,_loc3_,_loc4_,"icon_product","gui_popups_productionPopup_new",_loc7_);
      }
      
      private function getNeeds(param1:ResidentialFieldObjectVo) : Vector.<ResidentialNeedPopupVo>
      {
         var _loc6_:NeedVo = null;
         var _loc7_:ResidentialNeedPopupVo = null;
         var _loc8_:NeedVo = null;
         var _loc9_:Boolean = false;
         var _loc10_:ConfigNeedRequireDTO = null;
         var _loc11_:ResidentialNeedPopupVo = null;
         var _loc2_:Vector.<ResidentialNeedPopupVo> = new Vector.<ResidentialNeedPopupVo>();
         var _loc3_:ConfigPlayfieldItemDTO = this.configProxy.getFirstLevelConfigOfBuilding(param1.configPlayfieldItemVo.id);
         var _loc4_:int = 1;
         var _loc5_:Boolean = false;
         for each(_loc6_ in param1.residentialNeeds)
         {
            _loc7_ = new ResidentialNeedPopupVo(LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + _loc6_.shopLocaleId),true,_loc6_.shopGfxId,_loc6_.shopLocaleId,_loc6_.isSatisfied,"FieldItem_" + _loc6_.shopGfxId + "_small",ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc6_.levelOneConfig),false,0,_loc6_.vcBoost,_loc6_.ppBoost,_loc6_.epBoost);
            _loc2_.push(_loc7_);
         }
         do
         {
            if(_loc3_.nextConfigId == 0)
            {
               _loc5_ = true;
            }
            for each(_loc10_ in _loc3_.needRequireConfigs)
            {
               _loc8_ = ConfigFactory.buildNeedVo(_loc10_,this.configProxy);
               _loc9_ = false;
               for each(_loc11_ in _loc2_)
               {
                  if(_loc11_.parentBuildingGfxId == _loc8_.shopGfxId)
                  {
                     _loc9_ = true;
                  }
               }
               if(!_loc9_)
               {
                  _loc2_.push(new ResidentialNeedPopupVo(LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + _loc8_.shopLocaleId),true,_loc8_.shopGfxId,_loc8_.shopLocaleId,false,"FieldItem_" + _loc8_.shopGfxId + "_small",ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc3_),true,_loc4_,_loc8_.vcBoost,_loc8_.ppBoost,_loc8_.epBoost));
               }
            }
            _loc3_ = this.configProxy.config.items[_loc3_.nextConfigId];
            _loc4_++;
         }
         while(!_loc5_);
         
         return _loc2_;
      }
      
      private function getNextUpgradeInstantFinishCost(param1:Number) : Number
      {
         var _loc4_:ConfigPhaseDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc2_:Number = 0;
         var _loc3_:ConfigPlayfieldItemDTO = this.configProxy.getConfigPlayfieldItemById(param1);
         if(_loc3_)
         {
            for each(_loc4_ in _loc3_.constructionPhases)
            {
               if(_loc4_.phaseType != ServerPhaseTypes.CREATE_PLACE_NORMAL && _loc4_.phaseType != ServerPhaseTypes.CREATE_PLACE_PERMISSION && _loc4_.phaseType != ServerPhaseTypes.CREATE_ACTIVATE && _loc4_.phaseType != ServerPhaseTypes.INSTANT_CONSTRUCTION)
               {
                  for each(_loc5_ in _loc4_.instantFinshOutput)
                  {
                     if(_loc5_.resourceConfig != null)
                     {
                        if(_loc5_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
                        {
                           _loc2_ += _loc5_.outputAmount;
                        }
                     }
                  }
               }
            }
         }
         return Math.floor(Math.abs(_loc2_ * 2));
      }
      
      private function get goodStockProxy() : PlayerGoodsStockProxy
      {
         if(this._goStP == null)
         {
            this._goStP = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         }
         return this._goStP;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(this._coP == null)
         {
            this._coP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._coP;
      }
      
      private function get needMatrixProxy() : NeedMatrixProxy
      {
         if(this._needMatrixProxy == null)
         {
            this._needMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         }
         return this._needMatrixProxy;
      }
   }
}

