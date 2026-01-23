package net.bigpoint.cityrama.model.vo
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentVo;
   import net.bigpoint.cityrama.model.server.vo.server.BoulderVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEffectDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventSaleDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryBonusDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryBonusGroupDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedRequireDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalSpecializationDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EducationPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyRequirementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.GoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryBonusDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MysteryBuildingPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalTraitDTO;
   import net.bigpoint.cityrama.model.server.vo.server.RandomHarvestPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ResourceDTO;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.patterns.facade.Facade;
   
   public class ConfigFactory
   {
      
      public function ConfigFactory()
      {
         super();
      }
      
      public static function buildRewardDTO(param1:Object) : ConfigRewardDTO
      {
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc2_:ConfigRewardDTO = new ConfigRewardDTO();
         _loc2_.configId = param1.cid;
         _loc2_.outputAmount = param1.o;
         _loc2_.doubled = param1.db;
         _loc2_.type = param1.t;
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         switch(_loc2_.type)
         {
            case ServerOutputConstants.GOOD:
               _loc2_.goodConfig = _loc3_.config.goods[_loc2_.configId];
               break;
            case ServerOutputConstants.RESOURCE:
               _loc2_.resourceConfig = _loc3_.config.resources[_loc2_.configId];
               break;
            case ServerOutputConstants.PERMISSION:
               for each(_loc4_ in _loc3_.getConfigPlayfieldItemsByPermissionId(_loc2_.configId))
               {
                  if(!_loc4_.isUpgrade)
                  {
                     _loc2_.configPlayfieldItem = _loc4_;
                     break;
                  }
               }
               break;
            case ServerOutputConstants.IMPROVEMENT:
               _loc2_.improvementConfig = _loc3_.config.improvements[_loc2_.configId];
               break;
            case ServerOutputConstants.ASSIST:
               _loc2_.assistConfig = _loc3_.config.assists[_loc2_.configId];
         }
         return _loc2_;
      }
      
      public static function buildResourceDTO(param1:Object) : ResourceDTO
      {
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:ConfigResourceDTO = _loc2_.config.resources[param1.c];
         return new ResourceDTO(param1,_loc3_);
      }
      
      public static function buildConfigPLayfieldItemDTO(param1:Object) : ConfigPlayfieldItemDTO
      {
         return new ConfigPlayfieldItemDTO(param1);
      }
      
      public static function buildGoodDTO(param1:Object) : GoodDTO
      {
         var _loc2_:GoodDTO = new GoodDTO(param1);
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         _loc2_.config = _loc3_.goods[_loc2_.configId];
         return _loc2_;
      }
      
      public static function buildConfigGoodDTO(param1:Object, param2:Dictionary, param3:Dictionary) : ConfigGoodDTO
      {
         var _loc6_:Number = NaN;
         var _loc4_:ConfigGoodDTO = new ConfigGoodDTO(param1);
         var _loc5_:Vector.<ConfigTagDTO> = new Vector.<ConfigTagDTO>();
         for each(_loc6_ in _loc4_.tagIds)
         {
            _loc5_.push(param2[_loc6_]);
         }
         _loc4_.tagConfigs = _loc5_;
         _loc4_.userLevelRequired = param3[_loc4_.levelId].level;
         return _loc4_;
      }
      
      public static function buildPermissionDTO(param1:Object) : PlayfieldItemPermissionDTO
      {
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:ConfigPlayfieldItemPermissionDTO = _loc2_.config.permissions[param1.cid];
         return new PlayfieldItemPermissionDTO(param1,_loc3_);
      }
      
      public static function buildPhaseDTOForConfigPlayfieldItem(param1:Object, param2:ConfigPlayfieldItemDTO) : PhaseDTO
      {
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc3_ in param2.activePhases)
         {
            if(_loc3_.phaseId == param1.pid)
            {
               if(_loc3_.phaseType == ServerPhaseTypes.EDUCATION)
               {
                  return new EducationPhaseDTO(param1,_loc3_);
               }
               if(_loc3_.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST)
               {
                  return new RandomHarvestPhaseDTO(param1,_loc3_);
               }
               return new PhaseDTO(param1,_loc3_);
            }
         }
         for each(_loc3_ in param2.constructionPhases)
         {
            if(_loc3_.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
            {
               return new MysteryBuildingPhaseDTO(param1,_loc3_,_loc4_);
            }
            if(_loc3_.phaseId == param1.pid)
            {
               return new PhaseDTO(param1,_loc3_);
            }
         }
         for each(_loc3_ in param2.destructionPhases)
         {
            if(_loc3_.phaseId == param1.pid)
            {
               return new PhaseDTO(param1,_loc3_);
            }
         }
         return null;
      }
      
      public static function buildProductionFieldObjectVo(param1:ProductionFieldObjectVo) : ProductionFieldObjectVo
      {
         var _loc4_:ConfigPhaseDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:ProductionGoodObjectVo = null;
         var _loc2_:Vector.<ProductionGoodObjectVo> = new Vector.<ProductionGoodObjectVo>();
         var _loc3_:PlayerGoodsStockProxy = Facade.getInstance().retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         for each(_loc4_ in param1.configPlayfieldItemVo.activePhases)
         {
            if(_loc4_.phaseType == ServerPhaseTypes.PRODUCTION)
            {
               for each(_loc5_ in _loc4_.listEntryOutputs)
               {
                  if(_loc5_.goodConfig)
                  {
                     _loc6_ = _loc3_.getProductionGoodByGoodConfigIdAndPlayfieldItemConfigId(_loc5_.goodConfig.id,param1.configPlayfieldItemVo.id);
                     _loc2_.push(_loc6_);
                  }
               }
               _loc6_.productionTime = _loc4_.durationConfig.duration;
            }
         }
         param1.produceAbleGoods = _loc2_;
         param1.productionBuild = true;
         return param1;
      }
      
      public static function buildGoodObjectVo(param1:ConfigGoodDTO) : GoodObjectVo
      {
         var _loc2_:GoodObjectVo = new GoodObjectVo(param1);
         _loc2_.consumer = getConsumerOfGood(param1.id);
         _loc2_.producer = getProducerOfGood(param1.id);
         return _loc2_;
      }
      
      public static function getProducerOfGood(param1:Number) : Vector.<ConfigPlayfieldItemDTO>
      {
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:ConfigOutputDTO = null;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc4_ in _loc3_.config.items)
         {
            for each(_loc5_ in _loc4_.activePhases)
            {
               if(_loc5_.phaseType == ServerPhaseTypes.PRODUCTION)
               {
                  for each(_loc6_ in _loc5_.listEntryOutputs)
                  {
                     if(_loc6_.goodConfig)
                     {
                        if(_loc6_.goodConfig.id == param1 && !isDuplicate(_loc4_,_loc2_))
                        {
                           _loc2_.push(_loc4_);
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private static function isDuplicate(param1:ConfigPlayfieldItemDTO, param2:Vector.<ConfigPlayfieldItemDTO>) : Boolean
      {
         var _loc3_:ConfigPlayfieldItemDTO = null;
         for each(_loc3_ in param2)
         {
            if(RandomUtilities.isEqual(_loc3_,param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public static function getConsumerOfGood(param1:Number) : Vector.<ConfigPlayfieldItemDTO>
      {
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:ConfigNeedDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc8_:ConfigNeedStackDTO = null;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc4_ in _loc3_.config.items)
         {
            for each(_loc5_ in _loc4_.activePhases)
            {
               if(_loc5_.phaseType == ServerPhaseTypes.PRODUCTION_START)
               {
                  for each(_loc7_ in _loc5_.listEntryOutputs)
                  {
                     if(_loc7_.goodConfig)
                     {
                        if(_loc7_.goodConfig.id == param1 && !isDuplicate(_loc4_,_loc2_))
                        {
                           _loc2_.push(_loc4_);
                        }
                     }
                  }
               }
            }
            for each(_loc6_ in _loc4_.needShopConfigs)
            {
               for each(_loc8_ in _loc6_.requiredGoods)
               {
                  if(_loc8_.configOutout.configId == param1 && !isDuplicate(_loc4_,_loc2_))
                  {
                     _loc2_.push(_loc4_);
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function buildShopFieldObjectVo(param1:ShopFieldObjectVo) : ShopFieldObjectVo
      {
         var _loc2_:GlobalBalanceProxy = Facade.getInstance().retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         param1.globalMoodModifier = _loc2_.happinessOutputModifier;
         return param1;
      }
      
      public static function buildResidentialFieldObjectVo(param1:ResidentialFieldObjectVo) : ResidentialFieldObjectVo
      {
         var _loc3_:ConfigNeedRequireDTO = null;
         var _loc4_:Vector.<ImprovementVo> = null;
         var _loc5_:ImprovementVo = null;
         var _loc6_:NeedVo = null;
         var _loc7_:Boolean = false;
         var _loc8_:NeedVo = null;
         var _loc9_:ConfigImprovementDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc3_ in param1.configPlayfieldItemVo.needRequireConfigs)
         {
            if(param1.residentialNeeds == null)
            {
               param1.residentialNeeds = new Vector.<NeedVo>();
            }
            _loc6_ = buildNeedVo(_loc3_,_loc2_) as NeedVo;
            _loc7_ = false;
            for each(_loc8_ in param1.residentialNeeds)
            {
               if(_loc8_.shopGfxId == _loc6_.shopGfxId)
               {
                  _loc7_ = true;
                  break;
               }
            }
            if(!_loc7_)
            {
               param1.residentialNeeds.push(_loc6_);
            }
         }
         _loc4_ = new Vector.<ImprovementVo>();
         for each(_loc5_ in param1.currentImprovements)
         {
            _loc9_ = _loc2_.config.improvements[_loc5_.dto.configId];
            _loc4_.push(new ImprovementVo(_loc5_.dto,_loc9_));
         }
         param1.currentImprovements = _loc4_;
         return param1;
      }
      
      public static function buildNeedVo(param1:ConfigNeedRequireDTO, param2:GameConfigProxy) : NeedVo
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:ConfigOutputDTO = null;
         var _loc3_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         for each(_loc4_ in param1.requiredConfigBuildingIds)
         {
            _loc3_.push(param2.config.items[_loc4_]);
         }
         _loc5_ = 0;
         _loc6_ = 0;
         _loc7_ = 0;
         _loc8_ = 0;
         for each(_loc9_ in param1.configOutputList)
         {
            if(_loc9_.type == ServerResConst.RESOURCE_EXPERIENCE)
            {
               _loc5_ = _loc9_.outputAmount;
            }
            else if(_loc9_.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
            {
               _loc6_ = _loc9_.outputAmount;
            }
            else if(_loc9_.type == ServerResConst.RESOURCE_PRODUCTIONPOINTS)
            {
               _loc7_ = _loc9_.outputAmount;
            }
            else if(_loc9_.type == ServerResConst.RESOURCE_EDUCATIONPOINTS)
            {
               _loc8_ = _loc9_.outputAmount;
            }
         }
         return new NeedVo(_loc3_,_loc6_,_loc7_,_loc5_,_loc8_);
      }
      
      public static function buildBoulderVo(param1:Object) : BoulderVo
      {
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:ConfigPlayfieldItemDTO = _loc2_.getConfigPlayfieldItemById(param1.c);
         return new BoulderVo(param1,_loc3_);
      }
      
      public static function buildConfigDTO(param1:ConfigDTO) : ConfigDTO
      {
         var _loc3_:ConfigOutputDTO = null;
         var _loc4_:ConfigEventDTO = null;
         var _loc5_:ConfigProfessionalSpecializationDTO = null;
         var _loc6_:Vector.<ConfigTagDTO> = null;
         var _loc7_:ConfigPaymentPackDTO = null;
         var _loc8_:ConfigMasteryBonusDTO = null;
         var _loc9_:ConfigPlayfieldItemDTO = null;
         var _loc10_:ConfigImprovementDTO = null;
         var _loc11_:ConfigImprovementDTO = null;
         var _loc12_:ConfigCityWheelBuffDTO = null;
         var _loc13_:ConfigUserLevelDTO = null;
         var _loc14_:ConfigEventSaleDTO = null;
         var _loc15_:ConfigOutputDTO = null;
         var _loc16_:ConfigTagDTO = null;
         var _loc17_:ConfigOutputDTO = null;
         var _loc18_:ConfigOutputDTO = null;
         var _loc19_:Vector.<ConfigPlayfieldItemDTO> = null;
         var _loc20_:ConfigOutputDTO = null;
         var _loc21_:ConfigOutputDTO = null;
         var _loc22_:ConfigOutputDTO = null;
         var _loc23_:Number = NaN;
         var _loc24_:ConfigPlayfieldItemDTO = null;
         var _loc25_:ConfigMasteryBonusGroupDTO = null;
         var _loc26_:ConfigOutputDTO = null;
         var _loc27_:ConfigPhaseDTO = null;
         var _loc28_:ConfigPhaseDTO = null;
         var _loc29_:ConfigPhaseDTO = null;
         var _loc30_:ConfigNeedRequireDTO = null;
         var _loc31_:ConfigNeedDTO = null;
         var _loc32_:Number = NaN;
         var _loc33_:String = null;
         var _loc34_:int = 0;
         var _loc35_:ConfigOutputDTO = null;
         var _loc36_:ConfigOutputDTO = null;
         var _loc37_:ConfigNeedStackDTO = null;
         var _loc38_:ConfigEffectDTO = null;
         var _loc39_:ConfigOutputDTO = null;
         var _loc40_:ConfigEffectDTO = null;
         var _loc41_:ConfigOutputDTO = null;
         var _loc42_:ConfigOutputDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc4_ in param1.runningEvents)
         {
            if(_loc4_ is ConfigEventSaleDTO)
            {
               _loc14_ = _loc4_ as ConfigEventSaleDTO;
               for each(_loc15_ in _loc14_.listOfAffectedResources)
               {
                  buildConfigOutputDTO(_loc15_);
               }
            }
         }
         for each(_loc5_ in _loc2_.config.professionalSpecializations)
         {
            for each(_loc16_ in _loc2_.config.tags)
            {
               if(_loc16_.tagId == _loc5_.departmentTagId)
               {
                  _loc5_.department = _loc16_.tagName;
                  break;
               }
            }
         }
         for each(_loc7_ in _loc2_.config.paymentPacks)
         {
            for each(_loc17_ in _loc7_.resources)
            {
               _loc17_.resourceConfig = _loc2_.config.resources[_loc17_.configId];
            }
            for each(_loc18_ in _loc7_.goods)
            {
               _loc18_.goodConfig = _loc2_.config.goods[_loc18_.configId];
            }
            for each(_loc20_ in _loc7_.permissions)
            {
               _loc19_ = _loc2_.getConfigPlayfieldItemsByPermissionId(_loc20_.configId);
               for each(_loc24_ in _loc19_)
               {
                  if(!_loc24_.isUpgrade)
                  {
                     _loc20_.playfieldItemConfig = _loc24_;
                     break;
                  }
               }
            }
            for each(_loc21_ in _loc7_.assists)
            {
               _loc21_.assistConfig = _loc2_.config.assists[_loc21_.configId];
            }
            for each(_loc22_ in _loc7_.improvements)
            {
               _loc22_.improvementConfig = _loc2_.config.improvements[_loc22_.configId];
            }
            _loc6_ = new Vector.<ConfigTagDTO>();
            for each(_loc23_ in _loc7_.tagIds)
            {
               _loc6_.push(_loc2_.config.tags[_loc23_]);
            }
            _loc7_.configTags = _loc6_;
         }
         for each(_loc8_ in param1.masteryBoni)
         {
            for each(_loc25_ in _loc8_.buffs)
            {
               for each(_loc26_ in _loc25_.configOutputs)
               {
                  _loc26_ = buildConfigOutputDTO(_loc26_);
               }
            }
         }
         for each(_loc9_ in param1.items)
         {
            _loc9_.unlockLevel = _loc2_.config.levels[_loc9_.levelId].level;
            for each(_loc27_ in _loc9_.constructionPhases)
            {
               for each(_loc3_ in _loc27_.listEntryOutputs)
               {
                  if(_loc3_.type == ServerOutputConstants.GOOD)
                  {
                     _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.TAG)
                  {
                     _loc3_.tagConfig = _loc2_.config.tags[_loc3_.configId];
                  }
               }
               for each(_loc3_ in _loc27_.listTriggerOutput)
               {
                  if(_loc3_.type == ServerOutputConstants.GOOD)
                  {
                     _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                  }
               }
               for each(_loc3_ in _loc27_.instantFinshOutput)
               {
                  if(_loc3_.type == ServerOutputConstants.GOOD)
                  {
                     _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                  }
               }
            }
            for each(_loc28_ in _loc9_.destructionPhases)
            {
               for each(_loc3_ in _loc28_.listEntryOutputs)
               {
                  if(_loc3_.type == ServerOutputConstants.GOOD)
                  {
                     _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                  }
               }
               for each(_loc3_ in _loc28_.listTriggerOutput)
               {
                  if(_loc3_.type == ServerOutputConstants.GOOD)
                  {
                     _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                  }
               }
               for each(_loc3_ in _loc28_.instantFinshOutput)
               {
                  if(_loc3_.type == ServerOutputConstants.GOOD)
                  {
                     _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                  }
               }
            }
            for each(_loc29_ in _loc9_.activePhases)
            {
               for each(_loc3_ in _loc29_.listEntryOutputs)
               {
                  if(_loc3_.type == ServerOutputConstants.GOOD)
                  {
                     _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.TAG)
                  {
                     _loc3_.tagConfig = _loc2_.config.tags[_loc3_.configId];
                  }
               }
               for each(_loc3_ in _loc29_.listTriggerOutput)
               {
                  if(_loc3_.type == ServerOutputConstants.GOOD)
                  {
                     _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                  }
               }
               for each(_loc3_ in _loc29_.instantFinshOutput)
               {
                  if(_loc3_.type == ServerOutputConstants.GOOD)
                  {
                     _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                  }
                  else if(_loc3_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                  }
               }
            }
            for each(_loc3_ in _loc9_.globalBuffs)
            {
               if(_loc3_.type == ServerOutputConstants.GOOD)
               {
                  _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
               }
               else if(_loc3_.type == ServerOutputConstants.RESOURCE)
               {
                  _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
               }
            }
            for each(_loc30_ in _loc9_.needRequireConfigs)
            {
               for each(_loc36_ in _loc30_.configOutputList)
               {
                  if(_loc36_.type == ServerOutputConstants.RESOURCE)
                  {
                     _loc36_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                  }
               }
            }
            for each(_loc31_ in _loc9_.needShopConfigs)
            {
               for each(_loc37_ in _loc31_.requiredGoods)
               {
                  if(_loc37_.configOutout.type == ServerOutputConstants.GOOD)
                  {
                     _loc37_.configOutout.goodConfig = _loc2_.config.goods[_loc37_.configOutout.configId];
                  }
               }
            }
            _loc9_.permissionConfig = _loc2_.config.permissions[_loc9_.permissionConfigId];
            for each(_loc32_ in _loc9_.tagIds)
            {
               _loc9_.tags.push(_loc2_.config.tags[_loc32_].tagName);
            }
            for each(_loc33_ in _loc9_.tags)
            {
               if(_loc33_ == ServerTagConstants.PLAYFIELDITEM_HIGHLIGHT)
               {
                  _loc9_.specialHighlighting = true;
               }
               else if(_loc33_ == ServerTagConstants.CLIENT_PLAYFIELDITEM_PREMIUM)
               {
                  _loc9_.isPremium = true;
               }
            }
            _loc34_ = levelOfConfigPlayfieldItem(_loc9_.id,0,param1);
            if(_loc34_ > 0)
            {
               _loc9_.isUpgrade = true;
            }
            _loc9_.upgradeLevel = _loc34_;
            for each(_loc35_ in _loc9_.mysteryOutputPossiblities)
            {
               _loc35_ = buildConfigOutputDTO(_loc35_);
            }
         }
         for each(_loc10_ in param1.improvements)
         {
            for each(_loc38_ in _loc10_.effects)
            {
               for each(_loc39_ in _loc38_.targetOutputList)
               {
                  switch(_loc39_.type)
                  {
                     case ServerOutputConstants.GOOD:
                        _loc39_.goodConfig = _loc2_.config.goods[_loc39_.configId];
                        break;
                     case ServerOutputConstants.RESOURCE:
                        _loc39_.resourceConfig = _loc2_.config.resources[_loc39_.configId];
                        break;
                     case ServerOutputConstants.TAG:
                        _loc39_.tagConfig = _loc2_.config.tags[_loc39_.configId];
                  }
               }
            }
         }
         for each(_loc11_ in param1.cityImprovements)
         {
            for each(_loc40_ in _loc11_.effects)
            {
               for each(_loc41_ in _loc40_.targetOutputList)
               {
                  switch(_loc41_.type)
                  {
                     case ServerOutputConstants.GOOD:
                        _loc41_.goodConfig = _loc2_.config.goods[_loc41_.configId];
                        break;
                     case ServerOutputConstants.RESOURCE:
                        _loc41_.resourceConfig = _loc2_.config.resources[_loc41_.configId];
                        break;
                     case ServerOutputConstants.TAG:
                        _loc41_.tagConfig = _loc2_.config.tags[_loc41_.configId];
                  }
               }
            }
         }
         for each(_loc12_ in param1.configCityWheelDTO.wheelBuffs)
         {
            if(_loc12_.specialOutput)
            {
               buildConfigOutputDTO(_loc12_.specialOutput);
            }
         }
         for each(_loc13_ in param1.levels)
         {
            for each(_loc42_ in _loc13_.levelOutputs)
            {
               buildConfigOutputDTO(_loc42_);
            }
         }
         return fillResidents(_loc2_,param1);
      }
      
      private static function levelOfConfigPlayfieldItem(param1:int, param2:int, param3:ConfigDTO) : int
      {
         var _loc4_:ConfigPlayfieldItemDTO = null;
         for each(_loc4_ in param3.items)
         {
            if(param1 == _loc4_.nextConfigId)
            {
               if(_loc4_.upgradeLevel != -1)
               {
                  return param2 + _loc4_.upgradeLevel + 1;
               }
               return levelOfConfigPlayfieldItem(_loc4_.id,param2 + 1,param3);
            }
         }
         return param2;
      }
      
      private static function fillResidents(param1:GameConfigProxy, param2:ConfigDTO) : ConfigDTO
      {
         var _loc3_:ConfigPlayfieldItemDTO = null;
         var _loc4_:Vector.<ResidentVo> = null;
         var _loc5_:Vector.<ConfigPlayfieldItemDTO> = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:ConfigResourceDTO = null;
         var _loc10_:ResidentVo = null;
         var _loc11_:ConfigPlayfieldItemDTO = null;
         var _loc12_:ConfigPhaseDTO = null;
         var _loc13_:ConfigPhaseDTO = null;
         var _loc14_:ResidentVo = null;
         var _loc15_:ConfigPlayfieldItemDTO = null;
         for each(_loc11_ in param2.items)
         {
            if(_loc11_.maxResidents > 0)
            {
               if(!_loc11_.isUpgrade)
               {
                  if(_loc11_.residents == null)
                  {
                     _loc4_ = new Vector.<ResidentVo>();
                     _loc5_ = new Vector.<ConfigPlayfieldItemDTO>();
                     _loc5_.push(_loc11_);
                     _loc6_ = 1;
                     for each(_loc12_ in _loc11_.getAllPhasesByType(ServerPhaseTypes.RESIDENT))
                     {
                        _loc8_ = _loc12_.listEntryOutputs[0].resourceConfig.type;
                        _loc9_ = param1.config.resources[param1.config.resourceIds[_loc8_]];
                        _loc7_ = param1.getLevelById(_loc9_.levelId).level;
                        _loc10_ = new ResidentVo(_loc8_,_loc6_,_loc7_);
                        _loc4_.push(_loc10_);
                     }
                     _loc3_ = param1.getConfigPlayfieldItemById(_loc11_.nextConfigId);
                     while(_loc3_)
                     {
                        _loc5_.push(_loc3_);
                        _loc6_++;
                        for each(_loc13_ in _loc3_.getAllPhasesByType(ServerPhaseTypes.RESIDENT))
                        {
                           _loc8_ = _loc13_.listEntryOutputs[0].resourceConfig.type;
                           _loc9_ = param1.config.resources[param1.config.resourceIds[_loc8_]];
                           _loc7_ = param1.getLevelById(_loc9_.levelId).level;
                           _loc10_ = new ResidentVo(_loc8_,_loc6_,_loc7_);
                           for each(_loc14_ in _loc4_)
                           {
                              if(_loc14_.type == _loc8_)
                              {
                                 _loc10_ = null;
                                 break;
                              }
                           }
                           if(_loc10_)
                           {
                              _loc4_.push(_loc10_);
                           }
                        }
                        _loc3_ = param1.getConfigPlayfieldItemById(_loc3_.nextConfigId);
                     }
                     if(_loc5_.length > 0)
                     {
                        if(_loc4_.length > 0)
                        {
                           for each(_loc15_ in _loc5_)
                           {
                              _loc15_.residents = _loc4_;
                           }
                        }
                     }
                  }
               }
            }
         }
         return param2;
      }
      
      public static function buildCitySquareFieldObjectVo(param1:CitySquareFieldObjectVo) : IGameObjectVo
      {
         return param1;
      }
      
      public static function updatePlayerPayment(param1:PlayerPaymentDTO) : void
      {
         var _loc3_:PlayerPaymentPackDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc3_ in param1.purchasedPaymentPacks)
         {
            _loc3_.config = _loc2_.config.paymentPacks[_loc3_.id];
         }
      }
      
      public static function buildBoulderObjectVo(param1:BoulderObjectVo) : BoulderObjectVo
      {
         param1.matrix3dCoordinates.z += 1;
         return param1;
      }
      
      public static function buildEmergencyDTO(param1:Object) : EmergencyDTO
      {
         var _loc4_:ConfigOutputDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:EmergencyDTO = new EmergencyDTO(param1);
         if(_loc3_.rewardOrCosts)
         {
            for each(_loc4_ in _loc3_.rewardOrCosts)
            {
               if(_loc4_.type == ServerOutputConstants.RESOURCE)
               {
                  _loc4_.resourceConfig = _loc2_.config.resources[_loc4_.configId];
               }
               else if(_loc4_.type == ServerOutputConstants.GOOD)
               {
                  _loc4_.goodConfig = _loc2_.config.goods[_loc4_.configId];
               }
            }
         }
         return _loc3_;
      }
      
      public static function buildProfessionalDTO(param1:Object) : ProfessionalDTO
      {
         var _loc5_:ProfessionalAttributeDTO = null;
         var _loc6_:ProfessionalTraitDTO = null;
         var _loc7_:ConfigProfessionalAttributeDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:ConfigProfessionalSpecializationDTO = _loc2_.config.professionalSpecializations[param1.csi];
         var _loc4_:ProfessionalDTO = new ProfessionalDTO(param1,_loc3_);
         for each(_loc5_ in _loc4_.attributes)
         {
            for each(_loc7_ in _loc2_.config.professionalAttributes)
            {
               if(_loc5_.configId == _loc7_.id)
               {
                  _loc5_.config = _loc7_;
                  break;
               }
            }
         }
         for each(_loc6_ in _loc4_.traits)
         {
            _loc6_.config = _loc2_.config.professionalTraits[_loc6_.configId];
         }
         return _loc4_;
      }
      
      public static function buildEmergencyRequirementDTO(param1:Object) : EmergencyRequirementDTO
      {
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:EmergencyRequirementDTO = new EmergencyRequirementDTO(param1);
         _loc3_.configSpecialization = _loc2_.config.professionalSpecializations[_loc3_.configProfSpecializationId];
         return _loc3_;
      }
      
      public static function buildRandomHarvestPhaseDTO(param1:RandomHarvestPhaseDTO) : void
      {
         var _loc3_:ConfigOutputDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc3_ in param1.rewards)
         {
            if(_loc3_.type == ServerOutputConstants.GOOD)
            {
               _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
            }
            else if(_loc3_.type == ServerOutputConstants.RESOURCE)
            {
               _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
            }
         }
      }
      
      public static function buildConfigOutputDTO(param1:ConfigOutputDTO) : ConfigOutputDTO
      {
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         switch(param1.type)
         {
            case ServerOutputConstants.ASSIST:
               param1.assistConfig = _loc2_.config.assists[param1.configId];
               break;
            case ServerOutputConstants.GOOD:
               param1.goodConfig = _loc2_.config.goods[param1.configId];
               break;
            case ServerOutputConstants.IMPROVEMENT:
               param1.improvementConfig = _loc2_.config.tags[param1.configId];
               break;
            case ServerOutputConstants.PERMISSION:
               param1.playfieldItemConfig = getConfigPlayfieldItemByPermissionId(param1.configId,_loc2_);
               break;
            case ServerOutputConstants.RESOURCE:
               param1.resourceConfig = _loc2_.config.resources[param1.configId];
               break;
            case ServerOutputConstants.TAG:
               param1.tagConfig = _loc2_.config.tags[param1.configId];
               break;
            case ServerOutputConstants.PLAYFIELD_ITEM:
               param1.playfieldItemConfig = _loc2_.config.items[param1.configId];
         }
         return param1;
      }
      
      private static function getConfigPlayfieldItemByPermissionId(param1:Number, param2:GameConfigProxy) : ConfigPlayfieldItemDTO
      {
         var _loc3_:ConfigPlayfieldItemDTO = null;
         if(param2)
         {
            for each(_loc3_ in param2.config.items)
            {
               if(_loc3_.permissionConfigId == param1 && !_loc3_.isUpgrade)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      public static function buildInventoryItemDTO(param1:Object) : InventoryItemDTO
      {
         var _loc3_:InventoryItemDTO = null;
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         if(Boolean(param1.d) || Boolean(param1.b))
         {
            if(param1.d)
            {
               _loc4_ = _loc2_.getConfigPlayfieldItemById(param1.d.c);
            }
            else if(param1.b)
            {
               _loc4_ = _loc2_.getConfigPlayfieldItemById(param1.b.c);
            }
            _loc3_ = new InventoryItemDTO(param1,_loc4_);
         }
         else
         {
            _loc3_ = new InventoryItemDTO(param1);
         }
         return _loc3_;
      }
      
      public static function getMasteryBonusVosFromConfigMasteryBonusGroupDTO(param1:ConfigMasteryBonusGroupDTO, param2:String, param3:String) : Vector.<MasteryBonusVo>
      {
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:String = null;
         var _loc7_:Vector.<ConfigOutputDTO> = null;
         var _loc4_:Vector.<MasteryBonusVo> = new Vector.<MasteryBonusVo>();
         if(param1)
         {
            for each(_loc5_ in param1.configOutputs)
            {
               if(_loc5_.type == ServerOutputConstants.TAG)
               {
                  _loc6_ = _loc5_.tagConfig.tagName;
                  if(MasteryBonusVo.clientTags.indexOf(_loc6_) != -1)
                  {
                     _loc7_ = new Vector.<ConfigOutputDTO>();
                     _loc7_.push(_loc5_);
                     switch(_loc6_)
                     {
                        case ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY:
                           addXPOutputToVector(param1.configOutputs,_loc7_);
                           break;
                        case ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY:
                        case ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY:
                           addCC_PP_EP_OutputToVector(param1.configOutputs,_loc7_);
                           break;
                        case ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY:
                           addEnergyOutputToVector(param1.configOutputs,_loc7_);
                           break;
                        case ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY:
                           addMoodOutputToVector(param1.configOutputs,_loc7_);
                           break;
                        case ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY:
                           addTimeOutputToVector(param1.configOutputs,_loc7_);
                     }
                     _loc4_.push(new MasteryBonusVo(_loc7_,param2,param3));
                  }
               }
            }
         }
         return _loc4_;
      }
      
      private static function addXPOutputToVector(param1:Vector.<ConfigOutputDTO>, param2:Vector.<ConfigOutputDTO>) : void
      {
         var _loc3_:ConfigOutputDTO = null;
         for each(_loc3_ in param1)
         {
            if(_loc3_.type == ServerOutputConstants.RESOURCE && _loc3_.resourceConfig.type == ServerResConst.RESOURCE_EXPERIENCE)
            {
               param2.push(_loc3_);
            }
         }
      }
      
      private static function addCC_PP_EP_OutputToVector(param1:Vector.<ConfigOutputDTO>, param2:Vector.<ConfigOutputDTO>) : void
      {
         var _loc3_:ConfigOutputDTO = null;
         for each(_loc3_ in param1)
         {
            if(_loc3_.type == ServerOutputConstants.RESOURCE && (_loc3_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY || _loc3_.resourceConfig.type == ServerResConst.RESOURCE_PRODUCTIONPOINTS || _loc3_.resourceConfig.type == ServerResConst.RESOURCE_EDUCATIONPOINTS))
            {
               param2.push(_loc3_);
            }
         }
      }
      
      private static function addEnergyOutputToVector(param1:Vector.<ConfigOutputDTO>, param2:Vector.<ConfigOutputDTO>) : void
      {
         var _loc4_:ConfigOutputDTO = null;
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc4_ in param1)
         {
            if(_loc4_.type == ServerOutputConstants.RESOURCE && (_loc4_.configId == _loc3_.resourcesIds[ServerResConst.RESOURCE_ENERGY_NEGATIVE] || _loc4_.configId == _loc3_.resourcesIds[ServerResConst.RESOURCE_ENERGY_POSITIVE]))
            {
               param2.push(_loc4_);
            }
         }
      }
      
      private static function addMoodOutputToVector(param1:Vector.<ConfigOutputDTO>, param2:Vector.<ConfigOutputDTO>) : void
      {
         var _loc4_:ConfigOutputDTO = null;
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc4_ in param1)
         {
            if(_loc4_.type == ServerOutputConstants.RESOURCE && (_loc4_.configId == _loc3_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_NEGATIVE] || _loc4_.configId == _loc3_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_POSITIVE]))
            {
               param2.push(_loc4_);
            }
         }
      }
      
      private static function addTimeOutputToVector(param1:Vector.<ConfigOutputDTO>, param2:Vector.<ConfigOutputDTO>) : void
      {
         var _loc4_:ConfigOutputDTO = null;
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc4_ in param1)
         {
            if(_loc4_.type == ServerOutputConstants.TAG && (_loc3_.config.tags[_loc4_.configId] as ConfigTagDTO).tagName == ServerTagConstants.TIME)
            {
               param2.push(_loc4_);
            }
         }
      }
      
      public static function getResidentialBaseOutcomeResourceType(param1:ConfigPlayfieldItemDTO) : String
      {
         var _loc3_:ConfigOutputDTO = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1.getAllPhasesByType(ServerPhaseTypes.RESIDENTIAL)[0].listEntryOutputs)
         {
            if(_loc3_.type == ServerOutputConstants.RESOURCE)
            {
               if(_loc3_.resourceConfig.type != ServerResConst.RESOURCE_EXPERIENCE)
               {
                  _loc2_ = _loc3_.resourceConfig.type;
               }
            }
         }
         return _loc2_;
      }
      
      public static function getResidentialNeedOutcomeResourceType(param1:ResidentialFieldObjectVo) : String
      {
         switch(param1.currentResidentType)
         {
            case ServerResConst.RESOURCE_RICHMEN:
               return ServerResConst.RESOURCE_VIRTUALCURRENCY;
            case ServerResConst.RESOURCE_WORKERS:
               return ServerResConst.RESOURCE_PRODUCTIONPOINTS;
            case ServerResConst.RESOURCE_ACADEMICS:
               return ServerResConst.RESOURCE_EDUCATIONPOINTS;
            default:
               return "";
         }
      }
      
      public static function getMasterBonusDTO(param1:Object) : MasteryBonusDTO
      {
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         return new MasteryBonusDTO(param1,_loc2_.config.masteryBoni[param1.bid]);
      }
      
      public static function getConfigMasteryChallenge(param1:MasteryChallengeDTO, param2:ConfigPlayfieldItemDTO) : ConfigMasteryChallengeDTO
      {
         if(param1 == null || param2 == null)
         {
            return null;
         }
         var _loc3_:ConfigMasteryChallengeDTO = param2.configMasteryChallengeDTO;
         while(_loc3_ != null)
         {
            if(_loc3_.id == param1.id)
            {
               return _loc3_;
            }
            _loc3_ = _loc3_.nextChallenge;
         }
         return null;
      }
      
      public static function setPlayfieldSwitchFieldObjectVoState(param1:PlayfieldSwitchFieldObjectVo) : String
      {
         var _loc2_:FeatureProxy = Facade.getInstance().retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         var _loc3_:QuestProxy = Facade.getInstance().retrieveProxy(QuestProxy.NAME) as QuestProxy;
         if(param1.enabledFeatureType == "" || _loc2_.isFeatureEnabled(param1.enabledFeatureType))
         {
            return PlayfieldSwitchFieldObjectVo.STATE_DONE;
         }
         if(_loc3_.getActiveQuestByLocaleIdentifier(param1.questIdentifier))
         {
            return PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS;
         }
         return PlayfieldSwitchFieldObjectVo.STATE_BLOCKED;
      }
   }
}

