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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function buildRewardDTO(param1:Object) : ConfigRewardDTO
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc2_:ConfigRewardDTO = new ConfigRewardDTO();
         if(!_loc7_)
         {
            _loc2_.configId = param1.cid;
            if(_loc8_)
            {
               addr003c:
               _loc2_.outputAmount = param1.o;
               if(_loc8_)
               {
                  _loc2_.doubled = param1.db;
                  if(_loc8_ || Boolean(_loc3_))
                  {
                     addr0062:
                     _loc2_.type = param1.t;
                  }
                  var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  var _loc5_:* = _loc2_.type;
                  if(_loc8_)
                  {
                     §§push(ServerOutputConstants.GOOD);
                     if(_loc8_ || Boolean(param1))
                     {
                        §§push(_loc5_);
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc7_)
                              {
                                 §§push(0);
                                 if(_loc8_ || Boolean(param1))
                                 {
                                 }
                              }
                              else
                              {
                                 addr0257:
                                 §§push(3);
                                 if(_loc7_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerOutputConstants.RESOURCE);
                              if(!_loc7_)
                              {
                                 addr01b9:
                                 §§push(_loc5_);
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    addr01c9:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(1);
                                          if(_loc7_ && Boolean(param1))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr020d:
                                          §§push(2);
                                          if(_loc8_ || Boolean(_loc2_))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerOutputConstants.PERMISSION);
                                       if(!_loc7_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc8_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc8_ || Boolean(_loc2_))
                                                {
                                                   §§goto(addr020d);
                                                }
                                                else
                                                {
                                                   §§goto(addr0257);
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerOutputConstants.IMPROVEMENT);
                                                if(!(_loc7_ && Boolean(param1)))
                                                {
                                                   addr0235:
                                                   §§push(_loc5_);
                                                   if(!(_loc7_ && Boolean(_loc2_)))
                                                   {
                                                      addr0245:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc7_ && Boolean(param1)))
                                                         {
                                                            §§goto(addr0257);
                                                         }
                                                         else
                                                         {
                                                            addr027c:
                                                            §§push(4);
                                                            if(_loc7_ && ConfigFactory)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr029c);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0278);
                                                      }
                                                   }
                                                   addr0278:
                                                   §§goto(addr0276);
                                                }
                                                addr0276:
                                                if(ServerOutputConstants.ASSIST === _loc5_)
                                                {
                                                   §§goto(addr027c);
                                                }
                                                else
                                                {
                                                   §§push(5);
                                                }
                                                §§goto(addr029c);
                                             }
                                             §§goto(addr029c);
                                          }
                                          §§goto(addr0245);
                                       }
                                       §§goto(addr0235);
                                    }
                                    §§goto(addr029c);
                                 }
                                 §§goto(addr0278);
                              }
                              §§goto(addr0276);
                           }
                           addr029c:
                           loop0:
                           while(true)
                           {
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_.goodConfig = _loc3_.config.goods[_loc2_.configId];
                                    if(_loc7_)
                                    {
                                    }
                                    break loop0;
                                 case 1:
                                    _loc2_.resourceConfig = _loc3_.config.resources[_loc2_.configId];
                                    if(_loc7_)
                                    {
                                    }
                                    break loop0;
                                 case 2:
                                    §§push(0);
                                    if(!(_loc7_ && Boolean(param1)))
                                    {
                                       for each(_loc4_ in _loc3_.getConfigPlayfieldItemsByPermissionId(_loc2_.configId))
                                       {
                                          if(!_loc4_.isUpgrade)
                                          {
                                             if(!_loc7_)
                                             {
                                                _loc2_.configPlayfieldItem = _loc4_;
                                             }
                                             break;
                                          }
                                       }
                                       if(_loc7_ && Boolean(_loc2_))
                                       {
                                       }
                                       break loop0;
                                    }
                                    break;
                                 case 3:
                                    _loc2_.improvementConfig = _loc3_.config.improvements[_loc2_.configId];
                                    if(_loc7_)
                                    {
                                    }
                                    break loop0;
                                 case 4:
                                    _loc2_.assistConfig = _loc3_.config.assists[_loc2_.configId];
                                    break loop0;
                                 default:
                                    break loop0;
                              }
                           }
                           return _loc2_;
                        }
                        §§goto(addr01c9);
                     }
                     §§goto(addr01b9);
                  }
                  §§goto(addr020d);
               }
            }
            §§goto(addr0062);
         }
         §§goto(addr003c);
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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:GoodDTO = new GoodDTO(param1);
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         if(_loc4_ || Boolean(_loc2_))
         {
            _loc2_.config = _loc3_.goods[_loc2_.configId];
         }
         return _loc2_;
      }
      
      public static function buildConfigGoodDTO(param1:Object, param2:Dictionary, param3:Dictionary) : ConfigGoodDTO
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:Number = NaN;
         var _loc4_:ConfigGoodDTO = new ConfigGoodDTO(param1);
         var _loc5_:Vector.<ConfigTagDTO> = new Vector.<ConfigTagDTO>();
         for each(_loc6_ in _loc4_.tagIds)
         {
            if(_loc10_)
            {
               _loc5_.push(param2[_loc6_]);
            }
         }
         if(!(_loc9_ && Boolean(param3)))
         {
            _loc4_.tagConfigs = _loc5_;
            if(!_loc9_)
            {
               _loc4_.userLevelRequired = param3[_loc4_.levelId].level;
            }
         }
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
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:* = 0;
         var _loc6_:* = param2.activePhases;
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(_loc7_)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc5_,_loc6_);
                  if(_loc8_)
                  {
                     break;
                  }
                  if(_loc3_.phaseId == param1.pid)
                  {
                     if(!_loc8_)
                     {
                        §§push(_loc3_.phaseType);
                        if(_loc7_ || ConfigFactory)
                        {
                           §§push(ServerPhaseTypes.EDUCATION);
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    return new EducationPhaseDTO(param1,_loc3_);
                                 }
                                 break;
                              }
                              addr00aa:
                              §§push(_loc3_.phaseType);
                              §§push(ServerPhaseTypes.RANDOM_REWARD_HARVEST);
                           }
                           if(§§pop() != §§pop())
                           {
                              break;
                           }
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              §§goto(addr00c2);
                           }
                           continue;
                        }
                        §§goto(addr00aa);
                     }
                     addr00c2:
                  }
                  continue;
                  return new RandomHarvestPhaseDTO(param1,_loc3_);
               }
               if(!_loc8_)
               {
                  if(_loc7_)
                  {
                     if(!_loc8_)
                     {
                        §§push(0);
                        if(_loc7_ || Boolean(param1))
                        {
                           _loc5_ = §§pop();
                           if(!_loc8_)
                           {
                              addr012c:
                              _loc6_ = param2.constructionPhases;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc6_,_loc5_));
                                 if(!(_loc8_ && Boolean(param2)))
                                 {
                                    if(§§pop())
                                    {
                                       _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                       if(!_loc8_)
                                       {
                                          if(_loc3_.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
                                          {
                                             if(_loc7_ || Boolean(param2))
                                             {
                                                return new MysteryBuildingPhaseDTO(param1,_loc3_,_loc4_);
                                             }
                                          }
                                          if(_loc3_.phaseId != param1.pid)
                                          {
                                             continue;
                                          }
                                          if(_loc8_ && Boolean(param2))
                                          {
                                             continue;
                                          }
                                       }
                                       return new PhaseDTO(param1,_loc3_);
                                    }
                                    if(!(_loc8_ && Boolean(_loc3_)))
                                    {
                                       addr01bc:
                                       if(_loc7_)
                                       {
                                          if(_loc7_)
                                          {
                                             addr01ce:
                                             _loc5_ = 0;
                                             if(!(_loc8_ && ConfigFactory))
                                             {
                                                addr01de:
                                                _loc6_ = param2.destructionPhases;
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc6_,_loc5_));
                                                   addr022b:
                                                   while(§§pop())
                                                   {
                                                      _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                                      if(_loc7_ || Boolean(param2))
                                                      {
                                                         if(_loc3_.phaseId == param1.pid)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               return new PhaseDTO(param1,_loc3_);
                                                            }
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   break;
                                                }
                                                addr022f:
                                             }
                                             addr0231:
                                          }
                                          §§goto(addr0233);
                                       }
                                       §§goto(addr01de);
                                    }
                                    §§goto(addr022f);
                                 }
                                 §§goto(addr022b);
                              }
                           }
                           §§goto(addr0231);
                        }
                        §§goto(addr01ce);
                     }
                     addr0233:
                     return null;
                  }
                  §§goto(addr012c);
               }
               §§goto(addr01bc);
            }
            §§goto(addr022b);
         }
         return new PhaseDTO(param1,_loc3_);
      }
      
      public static function buildProductionFieldObjectVo(param1:ProductionFieldObjectVo) : ProductionFieldObjectVo
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc4_:ConfigPhaseDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:ProductionGoodObjectVo = null;
         var _loc2_:Vector.<ProductionGoodObjectVo> = new Vector.<ProductionGoodObjectVo>();
         var _loc3_:PlayerGoodsStockProxy = Facade.getInstance().retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         for each(_loc4_ in param1.configPlayfieldItemVo.activePhases)
         {
            if(_loc4_.phaseType == ServerPhaseTypes.PRODUCTION)
            {
               if(_loc11_)
               {
                  var _loc9_:int = 0;
                  if(_loc11_ || Boolean(param1))
                  {
                     for each(_loc5_ in _loc4_.listEntryOutputs)
                     {
                        if(_loc5_.goodConfig)
                        {
                           _loc6_ = _loc3_.getProductionGoodByGoodConfigIdAndPlayfieldItemConfigId(_loc5_.goodConfig.id,param1.configPlayfieldItemVo.id);
                           if(!_loc12_)
                           {
                              _loc2_.push(_loc6_);
                           }
                        }
                     }
                  }
                  if(_loc12_)
                  {
                     continue;
                  }
               }
               _loc6_.productionTime = _loc4_.durationConfig.duration;
            }
         }
         if(_loc11_ || Boolean(_loc2_))
         {
            param1.produceAbleGoods = _loc2_;
            if(_loc11_)
            {
               param1.productionBuild = true;
            }
         }
         return param1;
      }
      
      public static function buildGoodObjectVo(param1:ConfigGoodDTO) : GoodObjectVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:GoodObjectVo = new GoodObjectVo(param1);
         if(!_loc3_)
         {
            _loc2_.consumer = getConsumerOfGood(param1.id);
            if(_loc4_)
            {
               _loc2_.producer = getProducerOfGood(param1.id);
            }
         }
         return _loc2_;
      }
      
      public static function getProducerOfGood(param1:Number) : Vector.<ConfigPlayfieldItemDTO>
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:ConfigOutputDTO = null;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc4_ in _loc3_.config.items)
         {
            if(!(_loc14_ && ConfigFactory))
            {
               var _loc9_:int = 0;
               if(!(_loc14_ && Boolean(_loc3_)))
               {
                  for each(_loc5_ in _loc4_.activePhases)
                  {
                     if(_loc5_.phaseType == ServerPhaseTypes.PRODUCTION)
                     {
                        if(_loc13_)
                        {
                           var _loc11_:int = 0;
                           if(!_loc14_)
                           {
                              for each(_loc6_ in _loc5_.listEntryOutputs)
                              {
                                 §§push(_loc6_.goodConfig);
                                 if(_loc13_)
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(_loc13_)
                                    {
                                       addr00f5:
                                       §§push(_loc6_.goodConfig.id == param1);
                                       if(_loc13_ || Boolean(param1))
                                       {
                                          var _temp_6:* = §§pop();
                                          §§push(_temp_6);
                                          if(_temp_6)
                                          {
                                             if(!_loc14_)
                                             {
                                                §§pop();
                                                if(!_loc14_)
                                                {
                                                   addr012a:
                                                   §§push(isDuplicate(_loc4_,_loc2_));
                                                   if(_loc13_)
                                                   {
                                                      addr0129:
                                                      §§push(!§§pop());
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(_loc13_ || Boolean(_loc2_))
                                                      {
                                                         addr014a:
                                                         _loc2_.push(_loc4_);
                                                      }
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr0129);
                                          }
                                       }
                                       §§goto(addr012a);
                                    }
                                    §§goto(addr014a);
                                 }
                                 §§goto(addr00f5);
                              }
                           }
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
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigPlayfieldItemDTO = null;
         var _loc4_:int = 0;
         var _loc5_:* = param2;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(!(_loc7_ && ConfigFactory))
               {
                  §§push(RandomUtilities.isEqual(_loc3_,param1));
                  if(_loc7_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!(_loc7_ && Boolean(param2)))
                     {
                        §§push(true);
                        break;
                     }
                  }
               }
            }
            return false;
         }
         return §§pop();
      }
      
      public static function getConsumerOfGood(param1:Number) : Vector.<ConfigPlayfieldItemDTO>
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:ConfigNeedDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc8_:ConfigNeedStackDTO = null;
         var _loc2_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         loop0:
         for each(_loc4_ in _loc3_.config.items)
         {
            if(_loc15_)
            {
               continue;
            }
            §§push(0);
            if(_loc16_)
            {
               var _loc11_:* = §§pop();
               if(!_loc15_)
               {
                  var _loc12_:* = _loc4_.activePhases;
                  loop1:
                  while(true)
                  {
                     §§push(§§hasnext(_loc12_,_loc11_));
                     if(_loc15_ && ConfigFactory)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        _loc5_ = §§nextvalue(_loc11_,_loc12_);
                        if(_loc5_.phaseType == ServerPhaseTypes.PRODUCTION_START)
                        {
                           if(_loc16_)
                           {
                              var _loc13_:int = 0;
                              if(!(_loc15_ && Boolean(param1)))
                              {
                                 for each(_loc7_ in _loc5_.listEntryOutputs)
                                 {
                                    §§push(_loc7_.goodConfig);
                                    if(_loc16_)
                                    {
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       if(_loc16_ || ConfigFactory)
                                       {
                                          addr00f8:
                                          §§push(_loc7_.goodConfig.id == param1);
                                          if(_loc16_)
                                          {
                                             var _temp_10:* = §§pop();
                                             §§push(_temp_10);
                                             if(_temp_10)
                                             {
                                                if(!(_loc15_ && Boolean(_loc3_)))
                                                {
                                                   §§pop();
                                                   if(_loc16_)
                                                   {
                                                      addr0141:
                                                      addr011c:
                                                      §§push(isDuplicate(_loc4_,_loc2_));
                                                      if(_loc16_ || Boolean(_loc2_))
                                                      {
                                                         addr0140:
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc16_)
                                                         {
                                                            _loc2_.push(_loc4_);
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr0140);
                                             }
                                             §§goto(addr0141);
                                          }
                                          §§goto(addr0140);
                                       }
                                       §§goto(addr011c);
                                    }
                                    §§goto(addr00f8);
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     if(!(_loc15_ && ConfigFactory))
                     {
                        if(_loc16_ || Boolean(_loc3_))
                        {
                           addr018f:
                           if(!(_loc15_ && Boolean(_loc2_)))
                           {
                              addr01a1:
                              _loc11_ = 0;
                              if(!_loc15_)
                              {
                                 addr01a9:
                                 _loc12_ = _loc4_.needShopConfigs;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc12_,_loc11_));
                                    break loop1;
                                 }
                                 addr0271:
                                 addr026a:
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr01a9);
                     }
                     §§goto(addr0271);
                  }
                  while(§§pop())
                  {
                     _loc6_ = §§nextvalue(_loc11_,_loc12_);
                     if(_loc16_ || ConfigFactory)
                     {
                        _loc13_ = 0;
                        if(_loc16_ || ConfigFactory)
                        {
                           for each(_loc8_ in _loc6_.requiredGoods)
                           {
                              §§push(_loc8_.configOutout.configId == param1);
                              if(_loc16_ || Boolean(param1))
                              {
                                 var _temp_17:* = §§pop();
                                 §§push(_temp_17);
                                 if(_temp_17)
                                 {
                                    if(_loc16_ || Boolean(param1))
                                    {
                                       §§pop();
                                       if(!_loc15_)
                                       {
                                          addr024f:
                                          §§push(isDuplicate(_loc4_,_loc2_));
                                          if(!(_loc15_ && Boolean(_loc3_)))
                                          {
                                             §§push(!§§pop());
                                          }
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          if(_loc15_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc2_.push(_loc4_);
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr024f);
                           }
                        }
                     }
                     §§goto(addr026a);
                  }
                  §§goto(addr0271);
               }
               §§goto(addr018f);
            }
            §§goto(addr01a1);
         }
         return _loc2_;
      }
      
      public static function buildShopFieldObjectVo(param1:ShopFieldObjectVo) : ShopFieldObjectVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:GlobalBalanceProxy = Facade.getInstance().retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         if(!_loc3_)
         {
            param1.globalMoodModifier = _loc2_.happinessOutputModifier;
         }
         return param1;
      }
      
      public static function buildResidentialFieldObjectVo(param1:ResidentialFieldObjectVo) : ResidentialFieldObjectVo
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
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
            if(_loc14_ || Boolean(_loc3_))
            {
               if(param1.residentialNeeds == null)
               {
                  if(!_loc15_)
                  {
                     addr0086:
                     param1.residentialNeeds = new Vector.<NeedVo>();
                  }
               }
               _loc6_ = buildNeedVo(_loc3_,_loc2_) as NeedVo;
               if(!(_loc15_ && Boolean(_loc3_)))
               {
                  _loc7_ = false;
               }
               for each(_loc8_ in param1.residentialNeeds)
               {
                  if(_loc8_.shopGfxId == _loc6_.shopGfxId)
                  {
                     if(_loc14_ || Boolean(param1))
                     {
                        _loc7_ = true;
                     }
                     break;
                  }
               }
               if(_loc14_ || Boolean(_loc2_))
               {
                  if(_loc7_)
                  {
                     continue;
                  }
                  if(_loc15_ && Boolean(_loc3_))
                  {
                     continue;
                  }
               }
               param1.residentialNeeds.push(_loc6_);
               continue;
            }
            §§goto(addr0086);
         }
         _loc4_ = new Vector.<ImprovementVo>();
         if(!_loc15_)
         {
            var _loc10_:int = 0;
            if(!_loc15_)
            {
               for each(_loc5_ in param1.currentImprovements)
               {
                  _loc9_ = _loc2_.config.improvements[_loc5_.dto.configId];
                  if(_loc14_)
                  {
                     _loc4_.push(new ImprovementVo(_loc5_.dto,_loc9_));
                  }
               }
            }
            if(_loc14_ || ConfigFactory)
            {
               addr01ca:
               param1.currentImprovements = _loc4_;
            }
            return param1;
         }
         §§goto(addr01ca);
      }
      
      public static function buildNeedVo(param1:ConfigNeedRequireDTO, param2:GameConfigProxy) : NeedVo
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:ConfigOutputDTO = null;
         var _loc3_:Vector.<ConfigPlayfieldItemDTO> = new Vector.<ConfigPlayfieldItemDTO>();
         var _loc10_:int = 0;
         var _loc11_:* = param1.requiredConfigBuildingIds;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc11_,_loc10_));
            if(_loc12_)
            {
               break;
            }
            if(§§pop())
            {
               _loc4_ = §§nextvalue(_loc10_,_loc11_);
               if(!(_loc12_ && ConfigFactory))
               {
                  _loc3_.push(param2.config.items[_loc4_]);
               }
               continue;
            }
            if(_loc13_ || Boolean(param1))
            {
               if(_loc13_)
               {
                  if(_loc13_)
                  {
                     §§push(0);
                     if(_loc13_)
                     {
                        §§push(§§pop());
                        if(_loc13_)
                        {
                           _loc5_ = §§pop();
                           if(!(_loc12_ && Boolean(param2)))
                           {
                              §§push(0);
                              if(_loc13_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc12_ && ConfigFactory))
                                 {
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr0118);
                              }
                              §§goto(addr0130);
                           }
                           §§goto(addr00d8);
                        }
                        addr00d0:
                        _loc6_ = §§pop();
                        if(!_loc12_)
                        {
                           addr00d8:
                           §§push(0);
                           if(_loc13_ || Boolean(_loc3_))
                           {
                              §§push(§§pop());
                              if(_loc13_ || Boolean(param2))
                              {
                                 _loc7_ = §§pop();
                                 if(!(_loc12_ && Boolean(param1)))
                                 {
                                    §§push(0);
                                    if(!(_loc12_ && Boolean(param1)))
                                    {
                                       addr0118:
                                       _loc8_ = §§pop();
                                       addr0117:
                                       if(!_loc12_)
                                       {
                                          addr0130:
                                          _loc10_ = 0;
                                          if(_loc13_ || Boolean(param1))
                                          {
                                             _loc11_ = param1.configOutputList;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc11_,_loc10_));
                                                break loop0;
                                             }
                                             addr0277:
                                             addr0270:
                                          }
                                          addr0279:
                                       }
                                       §§goto(addr027b);
                                    }
                                    §§goto(addr0130);
                                 }
                                 §§goto(addr027b);
                              }
                              §§goto(addr0118);
                           }
                           §§goto(addr0117);
                        }
                        §§goto(addr027b);
                     }
                     §§goto(addr0130);
                  }
                  addr027b:
                  return new NeedVo(_loc3_,_loc6_,_loc7_,_loc5_,_loc8_);
               }
               §§goto(addr0279);
            }
            §§goto(addr0277);
         }
         while(§§pop())
         {
            _loc9_ = §§nextvalue(_loc10_,_loc11_);
            §§push(_loc9_.type);
            if(!_loc12_)
            {
               §§push(ServerResConst.RESOURCE_EXPERIENCE);
               if(_loc13_ || Boolean(param1))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc13_)
                     {
                        §§push(_loc9_.outputAmount);
                        if(_loc13_)
                        {
                           §§push(§§pop());
                           if(!(_loc12_ && Boolean(_loc3_)))
                           {
                              _loc5_ = §§pop();
                              if(!(_loc13_ || Boolean(param2)))
                              {
                                 addr021d:
                                 §§push(_loc9_.outputAmount);
                                 if(!(_loc12_ && ConfigFactory))
                                 {
                                    addr0230:
                                    §§push(§§pop());
                                    if(_loc13_)
                                    {
                                       _loc7_ = §§pop();
                                       if(_loc12_)
                                       {
                                          addr026e:
                                          addr0262:
                                          §§push(_loc9_.outputAmount);
                                          if(_loc13_)
                                          {
                                             addr026d:
                                             §§push(§§pop());
                                          }
                                          _loc8_ = §§pop();
                                       }
                                       §§goto(addr0270);
                                    }
                                    §§goto(addr026d);
                                 }
                                 §§goto(addr026e);
                              }
                              §§goto(addr0270);
                           }
                           §§goto(addr0230);
                        }
                        §§goto(addr026d);
                     }
                  }
                  else
                  {
                     §§push(_loc9_.type);
                     if(!_loc12_)
                     {
                        §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                        if(_loc13_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc13_)
                              {
                                 §§push(_loc9_.outputAmount);
                                 if(_loc13_ || ConfigFactory)
                                 {
                                    §§push(§§pop());
                                    if(_loc13_)
                                    {
                                       addr01e2:
                                       _loc6_ = §§pop();
                                       if(_loc12_)
                                       {
                                          §§goto(addr0262);
                                       }
                                       §§goto(addr0270);
                                    }
                                    §§goto(addr026e);
                                 }
                                 §§goto(addr01e2);
                              }
                              else
                              {
                                 §§goto(addr021d);
                              }
                           }
                           else
                           {
                              §§push(_loc9_.type);
                              if(!(_loc12_ && Boolean(_loc3_)))
                              {
                                 addr0200:
                                 §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                 if(_loc13_)
                                 {
                                    addr020b:
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc13_ || Boolean(param2))
                                       {
                                          §§goto(addr021d);
                                       }
                                    }
                                    else
                                    {
                                       addr0258:
                                       addr0253:
                                       if(_loc9_.type == ServerResConst.RESOURCE_EDUCATIONPOINTS)
                                       {
                                          if(_loc13_)
                                          {
                                             §§goto(addr0262);
                                          }
                                       }
                                    }
                                    §§goto(addr0270);
                                 }
                                 §§goto(addr0258);
                              }
                              §§goto(addr0253);
                           }
                           §§goto(addr0270);
                        }
                        §§goto(addr020b);
                     }
                     §§goto(addr0253);
                  }
                  §§goto(addr0270);
               }
               §§goto(addr020b);
            }
            §§goto(addr0200);
         }
         §§goto(addr0277);
      }
      
      public static function buildBoulderVo(param1:Object) : BoulderVo
      {
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:ConfigPlayfieldItemDTO = _loc2_.getConfigPlayfieldItemById(param1.c);
         return new BoulderVo(param1,_loc3_);
      }
      
      public static function buildConfigDTO(param1:ConfigDTO) : ConfigDTO
      {
         var _temp_1:* = true;
         var _loc50_:Boolean = false;
         var _loc51_:Boolean = _temp_1;
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
         var _loc33_:* = null;
         var _loc34_:* = 0;
         var _loc35_:ConfigOutputDTO = null;
         var _loc36_:ConfigOutputDTO = null;
         var _loc37_:ConfigNeedStackDTO = null;
         var _loc38_:ConfigEffectDTO = null;
         var _loc39_:ConfigOutputDTO = null;
         var _loc40_:ConfigEffectDTO = null;
         var _loc41_:ConfigOutputDTO = null;
         var _loc42_:ConfigOutputDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc43_:* = 0;
         var _loc44_:* = param1.runningEvents;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc44_,_loc43_));
            if(!_loc51_)
            {
               break;
            }
            if(§§pop())
            {
               _loc4_ = §§nextvalue(_loc43_,_loc44_);
               if(_loc4_ is ConfigEventSaleDTO)
               {
                  _loc14_ = _loc4_ as ConfigEventSaleDTO;
                  if(!_loc50_)
                  {
                     var _loc45_:* = 0;
                     if(_loc51_ || Boolean(param1))
                     {
                        for each(_loc15_ in _loc14_.listOfAffectedResources)
                        {
                           if(_loc51_)
                           {
                              buildConfigOutputDTO(_loc15_);
                           }
                        }
                     }
                  }
               }
               continue;
            }
            if(!_loc50_)
            {
               if(!(_loc50_ && ConfigFactory))
               {
                  if(!_loc50_)
                  {
                     §§push(0);
                     if(_loc51_ || Boolean(_loc2_))
                     {
                        _loc43_ = §§pop();
                        if(!(_loc50_ && Boolean(_loc3_)))
                        {
                           §§push(_loc2_.config);
                           if(!(_loc50_ && Boolean(_loc2_)))
                           {
                              _loc44_ = §§pop().professionalSpecializations;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc44_,_loc43_));
                                 if(!_loc50_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc5_ = §§nextvalue(_loc43_,_loc44_);
                                       for each(_loc16_ in _loc2_.config.tags)
                                       {
                                          if(_loc16_.tagId == _loc5_.departmentTagId)
                                          {
                                             if(_loc51_ || Boolean(param1))
                                             {
                                                _loc5_.department = _loc16_.tagName;
                                             }
                                             break;
                                          }
                                       }
                                       continue;
                                    }
                                    if(_loc51_ || Boolean(_loc3_))
                                    {
                                       if(_loc51_ || Boolean(_loc3_))
                                       {
                                          if(_loc51_)
                                          {
                                             §§push(0);
                                             if(_loc51_ || Boolean(_loc3_))
                                             {
                                                _loc43_ = §§pop();
                                                if(_loc51_ || Boolean(_loc2_))
                                                {
                                                   addr028d:
                                                   _loc44_ = _loc2_.config.paymentPacks;
                                                   loop37:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc44_,_loc43_));
                                                      if(_loc50_)
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         if(_loc51_ || Boolean(_loc3_))
                                                         {
                                                            if(_loc51_)
                                                            {
                                                               if(_loc51_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc50_ && Boolean(_loc2_)))
                                                                  {
                                                                     _loc43_ = §§pop();
                                                                     if(_loc51_)
                                                                     {
                                                                        _loc44_ = param1.masteryBoni;
                                                                        addr066b:
                                                                        §§push(§§hasnext(_loc44_,_loc43_));
                                                                        if(!(_loc50_ && ConfigFactory))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc8_ = §§nextvalue(_loc43_,_loc44_);
                                                                              if(_loc51_ || Boolean(_loc2_))
                                                                              {
                                                                                 _loc45_ = 0;
                                                                                 if(!(_loc50_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    var _loc46_:* = _loc8_.buffs;
                                                                                    addr0660:
                                                                                    for each(_loc25_ in _loc46_)
                                                                                    {
                                                                                       if(_loc51_ || Boolean(param1))
                                                                                       {
                                                                                          var _loc47_:* = 0;
                                                                                          if(!(_loc50_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             var _loc48_:* = _loc25_.configOutputs;
                                                                                             addr0655:
                                                                                             for each(_loc26_ in _loc48_)
                                                                                             {
                                                                                                _loc26_ = buildConfigOutputDTO(_loc26_);
                                                                                                §§goto(addr0655);
                                                                                             }
                                                                                             addr065e:
                                                                                             §§goto(addr0660);
                                                                                          }
                                                                                          §§goto(addr065e);
                                                                                       }
                                                                                       §§goto(addr0660);
                                                                                    }
                                                                                    addr0669:
                                                                                    §§goto(addr066b);
                                                                                 }
                                                                                 §§goto(addr0669);
                                                                              }
                                                                              §§goto(addr066b);
                                                                           }
                                                                           if(_loc51_)
                                                                           {
                                                                              addr0686:
                                                                              if(_loc51_ || Boolean(_loc3_))
                                                                              {
                                                                                 if(!(_loc50_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    addr06a6:
                                                                                    §§push(0);
                                                                                    if(!_loc50_)
                                                                                    {
                                                                                       _loc43_ = §§pop();
                                                                                       if(!(_loc50_ && ConfigFactory))
                                                                                       {
                                                                                          _loc44_ = param1.items;
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc44_,_loc43_));
                                                                                             if(!(_loc50_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!(_loc50_ && Boolean(param1)))
                                                                                                      {
                                                                                                         addr14cf:
                                                                                                         if(_loc51_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            addr14df:
                                                                                                            if(_loc51_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(!(_loc50_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  _loc43_ = §§pop();
                                                                                                                  if(!_loc50_)
                                                                                                                  {
                                                                                                                     addr1507:
                                                                                                                     _loc44_ = param1.improvements;
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§hasnext(_loc44_,_loc43_));
                                                                                                                        if(!_loc50_)
                                                                                                                        {
                                                                                                                           break loop37;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     while(§§pop())
                                                                                                                     {
                                                                                                                        _loc13_ = §§nextvalue(_loc43_,_loc44_);
                                                                                                                        if(_loc51_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           _loc45_ = 0;
                                                                                                                           if(!_loc50_)
                                                                                                                           {
                                                                                                                              for each(_loc42_ in _loc13_.levelOutputs)
                                                                                                                              {
                                                                                                                                 if(!_loc50_)
                                                                                                                                 {
                                                                                                                                    buildConfigOutputDTO(_loc42_);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§hasnext(_loc44_,_loc43_));
                                                                                                                           break;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr19f7:
                                                                                                                     return fillResidents(_loc2_,param1);
                                                                                                                     addr19f5:
                                                                                                                     addr19f3:
                                                                                                                     addr19ef:
                                                                                                                     addr16b8:
                                                                                                                  }
                                                                                                                  addr1968:
                                                                                                                  if(_loc51_)
                                                                                                                  {
                                                                                                                     addr1972:
                                                                                                                     _loc43_ = 0;
                                                                                                                     addr1970:
                                                                                                                     if(_loc51_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        _loc44_ = param1.levels;
                                                                                                                        §§goto(addr19ec);
                                                                                                                     }
                                                                                                                     §§goto(addr19f5);
                                                                                                                  }
                                                                                                                  §§goto(addr19f7);
                                                                                                               }
                                                                                                               addr18f7:
                                                                                                               _loc43_ = §§pop();
                                                                                                               if(!(_loc50_ && ConfigFactory))
                                                                                                               {
                                                                                                                  addr1907:
                                                                                                                  _loc44_ = param1.configCityWheelDTO.wheelBuffs;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§hasnext(_loc44_,_loc43_));
                                                                                                                     if(_loc50_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           _loc12_ = §§nextvalue(_loc43_,_loc44_);
                                                                                                                           if(_loc12_.specialOutput)
                                                                                                                           {
                                                                                                                              if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 buildConfigOutputDTO(_loc12_.specialOutput);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(!_loc50_)
                                                                                                                        {
                                                                                                                           addr1958:
                                                                                                                           if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              §§goto(addr1968);
                                                                                                                           }
                                                                                                                           §§goto(addr19f5);
                                                                                                                        }
                                                                                                                        §§goto(addr19f3);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr19ef);
                                                                                                               }
                                                                                                               §§goto(addr19f5);
                                                                                                            }
                                                                                                            addr18e7:
                                                                                                            §§push(0);
                                                                                                            if(!(_loc50_ && ConfigFactory))
                                                                                                            {
                                                                                                               §§goto(addr18f7);
                                                                                                            }
                                                                                                            §§goto(addr1972);
                                                                                                         }
                                                                                                         addr18d7:
                                                                                                         if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            §§goto(addr18e7);
                                                                                                         }
                                                                                                         §§goto(addr1970);
                                                                                                      }
                                                                                                      addr16d3:
                                                                                                      if(!(_loc50_ && ConfigFactory))
                                                                                                      {
                                                                                                         addr16e3:
                                                                                                         if(_loc51_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(!_loc50_)
                                                                                                            {
                                                                                                               _loc43_ = §§pop();
                                                                                                               if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  addr1703:
                                                                                                                  _loc44_ = param1.cityImprovements;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§hasnext(_loc44_,_loc43_));
                                                                                                                     if(!(_loc50_ && ConfigFactory))
                                                                                                                     {
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                     §§goto(addr194e);
                                                                                                                  }
                                                                                                                  addr18ac:
                                                                                                               }
                                                                                                               §§goto(addr19f5);
                                                                                                            }
                                                                                                            §§goto(addr18f7);
                                                                                                         }
                                                                                                         §§goto(addr19f7);
                                                                                                      }
                                                                                                      §§goto(addr1968);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc9_ = §§nextvalue(_loc43_,_loc44_);
                                                                                                      _loc9_.unlockLevel = _loc2_.config.levels[_loc9_.levelId].level;
                                                                                                      if(_loc51_)
                                                                                                      {
                                                                                                         §§push(0);
                                                                                                         if(_loc51_)
                                                                                                         {
                                                                                                            _loc45_ = §§pop();
                                                                                                            if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               _loc46_ = _loc9_.constructionPhases;
                                                                                                               loop8:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                                  if(_loc50_ && Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     if(!_loc50_)
                                                                                                                     {
                                                                                                                        if(!_loc50_)
                                                                                                                        {
                                                                                                                           if(_loc51_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc51_)
                                                                                                                              {
                                                                                                                                 _loc45_ = §§pop();
                                                                                                                                 if(!_loc50_)
                                                                                                                                 {
                                                                                                                                    _loc46_ = _loc9_.destructionPhases;
                                                                                                                                    addr0c8b:
                                                                                                                                    §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                                                    if(!_loc50_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          _loc28_ = §§nextvalue(_loc45_,_loc46_);
                                                                                                                                          if(_loc51_ || Boolean(param1))
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(!_loc50_)
                                                                                                                                             {
                                                                                                                                                _loc47_ = §§pop();
                                                                                                                                                if(!_loc50_)
                                                                                                                                                {
                                                                                                                                                   _loc48_ = _loc28_.listEntryOutputs;
                                                                                                                                                   addr0ad6:
                                                                                                                                                   §§push(§§hasnext(_loc48_,_loc47_));
                                                                                                                                                   if(!_loc50_)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc50_)
                                                                                                                                                            {
                                                                                                                                                               addr0af9:
                                                                                                                                                               if(_loc51_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(!_loc50_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0b09:
                                                                                                                                                                     _loc47_ = §§pop();
                                                                                                                                                                     if(!_loc50_)
                                                                                                                                                                     {
                                                                                                                                                                        addr0b11:
                                                                                                                                                                        _loc48_ = _loc28_.listTriggerOutput;
                                                                                                                                                                        addr0bb2:
                                                                                                                                                                        §§push(§§hasnext(_loc48_,_loc47_));
                                                                                                                                                                        if(!_loc50_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc51_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc50_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr0bdf:
                                                                                                                                                                                       _loc47_ = 0;
                                                                                                                                                                                       addr0bdd:
                                                                                                                                                                                       if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0bef:
                                                                                                                                                                                          _loc48_ = _loc28_.instantFinshOutput;
                                                                                                                                                                                          addr0c80:
                                                                                                                                                                                          addr0c83:
                                                                                                                                                                                          for each(_loc3_ in _loc48_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_.type);
                                                                                                                                                                                                if(_loc51_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(ServerOutputConstants.GOOD);
                                                                                                                                                                                                   if(!_loc50_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc51_ || Boolean(param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                                                                                                                                                                                                            if(_loc50_ && Boolean(_loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0c80);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr0c5f:
                                                                                                                                                                                                      §§push(_loc3_.type);
                                                                                                                                                                                                      §§push(ServerOutputConstants.RESOURCE);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc50_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0c80);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0c5f);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0c80);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr0c89:
                                                                                                                                                                                          §§goto(addr0c8b);
                                                                                                                                                                                          addr0c87:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0c89);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0c8b);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0bef);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0c87);
                                                                                                                                                                           }
                                                                                                                                                                           _loc3_ = §§nextvalue(_loc47_,_loc48_);
                                                                                                                                                                           if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_.type);
                                                                                                                                                                              if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(ServerOutputConstants.GOOD);
                                                                                                                                                                                 if(_loc51_ || ConfigFactory)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc51_ || Boolean(param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                                                                                                                                                                                          if(_loc51_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0bb2);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr0b89:
                                                                                                                                                                                    §§push(_loc3_.type);
                                                                                                                                                                                    §§push(ServerOutputConstants.RESOURCE);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0bb2);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0b89);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0bb2);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0c83);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0c89);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0bdf);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0c8b);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0b11);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0c87);
                                                                                                                                                      }
                                                                                                                                                      _loc3_ = §§nextvalue(_loc47_,_loc48_);
                                                                                                                                                      if(_loc51_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc3_.type);
                                                                                                                                                         if(!_loc50_)
                                                                                                                                                         {
                                                                                                                                                            §§push(ServerOutputConstants.GOOD);
                                                                                                                                                            if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() == §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc51_ || ConfigFactory)
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                                                                                                                                                                     if(_loc51_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0ad6);
                                                                                                                                                                     }
                                                                                                                                                                     addr0ac5:
                                                                                                                                                                     _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0ad6);
                                                                                                                                                               }
                                                                                                                                                               addr0ab5:
                                                                                                                                                               §§push(_loc3_.type);
                                                                                                                                                               §§push(ServerOutputConstants.RESOURCE);
                                                                                                                                                            }
                                                                                                                                                            if(§§pop() == §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc51_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr0ac5);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0ad6);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0ab5);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0ad6);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0c83);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0af9);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0b09);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0bdd);
                                                                                                                                       }
                                                                                                                                       if(_loc51_ || Boolean(param1))
                                                                                                                                       {
                                                                                                                                          if(!(_loc50_ && ConfigFactory))
                                                                                                                                          {
                                                                                                                                             if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                if(_loc51_)
                                                                                                                                                {
                                                                                                                                                   addr0cda:
                                                                                                                                                   _loc45_ = §§pop();
                                                                                                                                                   if(_loc51_ || Boolean(param1))
                                                                                                                                                   {
                                                                                                                                                      _loc46_ = _loc9_.activePhases;
                                                                                                                                                      loop24:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                                                                         if(!(_loc51_ || Boolean(_loc2_)))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc50_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(_loc51_ || ConfigFactory)
                                                                                                                                                                     {
                                                                                                                                                                        _loc45_ = §§pop();
                                                                                                                                                                        if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                                                                        {
                                                                                                                                                                           _loc46_ = _loc9_.globalBuffs;
                                                                                                                                                                           §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                                                                                           if(!_loc50_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           loop31:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 _loc31_ = §§nextvalue(_loc45_,_loc46_);
                                                                                                                                                                                 if(!_loc50_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc47_ = 0;
                                                                                                                                                                                    if(_loc51_ || ConfigFactory)
                                                                                                                                                                                    {
                                                                                                                                                                                       for each(_loc37_ in _loc31_.requiredGoods)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc37_.configOutout);
                                                                                                                                                                                          if(_loc51_ || ConfigFactory)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop().type != ServerOutputConstants.GOOD)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc50_ && Boolean(_loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc37_.configOutout);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().goodConfig = _loc2_.config.goods[_loc37_.configOutout.configId];
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                                                                                                    if(!_loc51_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop31;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                                 addr1244:
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc50_ && ConfigFactory))
                                                                                                                                                                              {
                                                                                                                                                                                 addr125f:
                                                                                                                                                                                 if(_loc51_ || ConfigFactory)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr126f:
                                                                                                                                                                                    if(!(_loc50_ && ConfigFactory))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr127f:
                                                                                                                                                                                       _loc9_.permissionConfig = _loc2_.config.permissions[_loc9_.permissionConfigId];
                                                                                                                                                                                       if(_loc51_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr12a8:
                                                                                                                                                                                             _loc45_ = §§pop();
                                                                                                                                                                                             if(_loc51_ || Boolean(_loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr12b8:
                                                                                                                                                                                                _loc46_ = _loc9_.tagIds;
                                                                                                                                                                                                if(_loc51_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                                                                                                                      if(_loc50_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop31;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc50_ && Boolean(param1)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1313:
                                                                                                                                                                                                            if(!_loc50_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr131b:
                                                                                                                                                                                                               if(!(_loc51_ || Boolean(_loc3_)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop7;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(0);
                                                                                                                                                                                                               if(_loc51_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc45_ = §§pop();
                                                                                                                                                                                                                  if(_loc51_ || Boolean(_loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1343:
                                                                                                                                                                                                                     _loc46_ = _loc9_.tags;
                                                                                                                                                                                                                     if(!_loc50_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                                                                                                                                           if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop31;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop19:
                                                                                                                                                                                                                        while(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc35_ = §§nextvalue(_loc45_,_loc46_);
                                                                                                                                                                                                                           _loc35_ = buildConfigOutputDTO(_loc35_);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                                                                                                                                              continue loop19;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr14aa:
                                                                                                                                                                                                                        continue loop7;
                                                                                                                                                                                                                        addr13c9:
                                                                                                                                                                                                                        addr14a8:
                                                                                                                                                                                                                        addr14a4:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc9_.isPremium = true;
                                                                                                                                                                                                                        §§goto(addr13c9);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr13bf:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr147d:
                                                                                                                                                                                                                  _loc46_ = _loc9_.mysteryOutputPossiblities;
                                                                                                                                                                                                                  §§goto(addr14a1);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr1475:
                                                                                                                                                                                                               _loc45_ = §§pop();
                                                                                                                                                                                                               if(_loc51_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr147d);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr14aa);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr13f4:
                                                                                                                                                                                                            if(!_loc51_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop7;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(levelOfConfigPlayfieldItem(_loc9_.id,0,param1));
                                                                                                                                                                                                            if(_loc51_ || Boolean(param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr1418:
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               if(_loc51_ || Boolean(param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr1427:
                                                                                                                                                                                                                  var _temp_74:* = §§pop();
                                                                                                                                                                                                                  §§push(_temp_74);
                                                                                                                                                                                                                  §§push(_temp_74);
                                                                                                                                                                                                                  if(!_loc50_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc34_ = §§pop();
                                                                                                                                                                                                                     if(!(_loc50_ && ConfigFactory))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1440:
                                                                                                                                                                                                                        addr143e:
                                                                                                                                                                                                                        if(§§pop() > 0)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr1452:
                                                                                                                                                                                                                              _loc9_.isUpgrade = true;
                                                                                                                                                                                                                              if(_loc51_ || Boolean(param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr1466:
                                                                                                                                                                                                                                 _loc9_.upgradeLevel = _loc34_;
                                                                                                                                                                                                                                 if(_loc50_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop7;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1473:
                                                                                                                                                                                                                           §§goto(addr1475);
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1466);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1475);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1440);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1475);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr13ec:
                                                                                                                                                                                                         if(!_loc50_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr13f4);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr147d);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc32_ = §§nextvalue(_loc45_,_loc46_);
                                                                                                                                                                                                         if(!(_loc51_ || Boolean(_loc2_)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   addr12f8:
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc9_.tags.push(_loc2_.config.tags[_loc32_].tagName);
                                                                                                                                                                                                   §§goto(addr12f8);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1343);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1427);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr13fc);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1452);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr131b);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr13ec);
                                                                                                                                                                           }
                                                                                                                                                                           do
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr13ec);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr14a8);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§nextvalue(_loc45_,_loc46_));
                                                                                                                                                                                 if(!_loc50_)
                                                                                                                                                                                 {
                                                                                                                                                                                    var _temp_85:* = §§pop();
                                                                                                                                                                                    §§push(_temp_85);
                                                                                                                                                                                    §§push(_temp_85);
                                                                                                                                                                                    if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc33_ = §§pop();
                                                                                                                                                                                       if(_loc51_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(ServerTagConstants.PLAYFIELDITEM_HIGHLIGHT);
                                                                                                                                                                                          if(!_loc50_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr1384:
                                                                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc51_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc9_.specialHighlighting = true;
                                                                                                                                                                                                if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr13ad:
                                                                                                                                                                                                addr13a8:
                                                                                                                                                                                                if(_loc33_ != ServerTagConstants.CLIENT_PLAYFIELDITEM_PREMIUM)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc51_ || ConfigFactory))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr13bf);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr13ad);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr13a8);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1384);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr13a8);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(§§push(§§hasnext(_loc46_,_loc45_)), !(_loc50_ && Boolean(_loc2_)));
                                                                                                                                                                           
                                                                                                                                                                           §§goto(addr14a4);
                                                                                                                                                                           addr124d:
                                                                                                                                                                           addr13da:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr12b8);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr12a8);
                                                                                                                                                                  }
                                                                                                                                                                  addr10e6:
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc51_ || ConfigFactory)
                                                                                                                                                                  {
                                                                                                                                                                     _loc45_ = §§pop();
                                                                                                                                                                     if(_loc51_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc46_ = _loc9_.needRequireConfigs;
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                                                                                           if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                                                                           {
                                                                                                                                                                              break loop8;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr14a4);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr13f4);
                                                                                                                                                                  }
                                                                                                                                                                  addr11a6:
                                                                                                                                                                  _loc45_ = §§pop();
                                                                                                                                                                  if(_loc51_)
                                                                                                                                                                  {
                                                                                                                                                                     addr11ae:
                                                                                                                                                                     _loc46_ = _loc9_.needShopConfigs;
                                                                                                                                                                     §§goto(addr1244);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr131b);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr13f4);
                                                                                                                                                            }
                                                                                                                                                            addr10c6:
                                                                                                                                                            if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                                                            {
                                                                                                                                                               if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr10e6);
                                                                                                                                                               }
                                                                                                                                                               addr119e:
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(!_loc50_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr11a6);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1418);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr11ae);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            _loc29_ = §§nextvalue(_loc45_,_loc46_);
                                                                                                                                                            if(!(_loc51_ || Boolean(param1)))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc51_)
                                                                                                                                                            {
                                                                                                                                                               _loc47_ = §§pop();
                                                                                                                                                               if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                                               {
                                                                                                                                                                  _loc48_ = _loc29_.listEntryOutputs;
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§hasnext(_loc48_,_loc47_));
                                                                                                                                                                     if(_loc50_ && Boolean(_loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc50_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc50_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop24;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(0);
                                                                                                                                                                              if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc47_ = §§pop();
                                                                                                                                                                                 if(!_loc50_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc48_ = _loc29_.listTriggerOutput;
                                                                                                                                                                                    loop26:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§hasnext(_loc48_,_loc47_));
                                                                                                                                                                                       if(_loc50_ && Boolean(_loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc51_ || ConfigFactory)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0f09:
                                                                                                                                                                                             if(!(_loc50_ && Boolean(param1)))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc50_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0f23:
                                                                                                                                                                                                   _loc47_ = 0;
                                                                                                                                                                                                   if(_loc51_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0f2b:
                                                                                                                                                                                                      _loc48_ = _loc29_.instantFinshOutput;
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§hasnext(_loc48_,_loc47_));
                                                                                                                                                                                                         break loop26;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr0fc5:
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop24;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0f2b);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr0fc3:
                                                                                                                                                                                          §§goto(addr0fc5);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc3_ = §§nextvalue(_loc47_,_loc48_);
                                                                                                                                                                                          if(!(_loc50_ && Boolean(param1)))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc3_.type);
                                                                                                                                                                                             if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(ServerOutputConstants.GOOD);
                                                                                                                                                                                                if(!_loc50_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() == §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc50_ && Boolean(param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                                                                                                                                                                                                      if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0ec3:
                                                                                                                                                                                                      addr0ebd:
                                                                                                                                                                                                      if(_loc3_.type != ServerOutputConstants.RESOURCE)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc50_ && Boolean(_loc2_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr0ed5:
                                                                                                                                                                                                   _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0ec3);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0ebd);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0ed5);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0f2b);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0f23);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0f2b);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0f09);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_ = §§nextvalue(_loc47_,_loc48_);
                                                                                                                                                                        if(!_loc51_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc3_.type);
                                                                                                                                                                        if(_loc51_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(ServerOutputConstants.GOOD);
                                                                                                                                                                           if(!_loc50_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() == §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                                                                                                                                                                                    if(_loc51_ || ConfigFactory)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc3_.type);
                                                                                                                                                                              if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0d9d:
                                                                                                                                                                                 §§push(ServerOutputConstants.RESOURCE);
                                                                                                                                                                                 if(!_loc50_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0da9:
                                                                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc51_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                                                                          if(_loc51_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr0dd1:
                                                                                                                                                                                    §§push(_loc3_.type);
                                                                                                                                                                                    §§push(ServerOutputConstants.TAG);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(§§pop() == §§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc50_ && ConfigFactory))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc3_.tagConfig = _loc2_.config.tags[_loc3_.configId];
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0dd1);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0da9);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0d9d);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  for(; §§pop(); §§push(§§hasnext(_loc48_,_loc47_)))
                                                                                                                                                                  {
                                                                                                                                                                     _loc3_ = §§nextvalue(_loc47_,_loc48_);
                                                                                                                                                                     if(_loc51_ || Boolean(_loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_.type);
                                                                                                                                                                        if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(ServerOutputConstants.GOOD);
                                                                                                                                                                           if(_loc51_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() == §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc50_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0f75:
                                                                                                                                                                                    _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                                                                                                                                                                                    if(_loc51_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr0f99:
                                                                                                                                                                                 addr0f93:
                                                                                                                                                                                 if(_loc3_.type != ServerOutputConstants.RESOURCE)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc51_ || Boolean(_loc2_)))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0f99);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0f93);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0f75);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0fc3);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0fc5);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0f23);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      do
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc50_ && Boolean(param1)))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr10c6);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr13ec);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§nextvalue(_loc45_,_loc46_);
                                                                                                                                                            if(_loc50_ && Boolean(_loc2_))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            §§push(_loc3_.type);
                                                                                                                                                            if(!_loc50_)
                                                                                                                                                            {
                                                                                                                                                               §§push(ServerOutputConstants.GOOD);
                                                                                                                                                               if(_loc51_ || Boolean(_loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop() == §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc51_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                                                                                                                                                                        if(_loc51_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr1090:
                                                                                                                                                                     addr108a:
                                                                                                                                                                     if(_loc3_.type != ServerOutputConstants.RESOURCE)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc50_)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1090);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr108a);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(§§push(§§hasnext(_loc46_,_loc45_)), !_loc50_);
                                                                                                                                                      
                                                                                                                                                      §§goto(addr124d);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr13f4);
                                                                                                                                                }
                                                                                                                                                §§goto(addr143e);
                                                                                                                                             }
                                                                                                                                             §§goto(addr127f);
                                                                                                                                          }
                                                                                                                                          §§goto(addr147d);
                                                                                                                                       }
                                                                                                                                       §§goto(addr14a8);
                                                                                                                                    }
                                                                                                                                    §§goto(addr13da);
                                                                                                                                 }
                                                                                                                                 §§goto(addr131b);
                                                                                                                              }
                                                                                                                              §§goto(addr0cda);
                                                                                                                           }
                                                                                                                           §§goto(addr13fc);
                                                                                                                        }
                                                                                                                        §§goto(addr12b8);
                                                                                                                     }
                                                                                                                     §§goto(addr125f);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     _loc27_ = §§nextvalue(_loc45_,_loc46_);
                                                                                                                     if(!(_loc51_ || Boolean(_loc3_)))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(0);
                                                                                                                     if(_loc51_)
                                                                                                                     {
                                                                                                                        _loc47_ = §§pop();
                                                                                                                        if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           _loc48_ = _loc27_.listEntryOutputs;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§hasnext(_loc48_,_loc47_));
                                                                                                                              if(_loc50_ && Boolean(_loc2_))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 if(!(_loc50_ && ConfigFactory))
                                                                                                                                 {
                                                                                                                                    if(_loc51_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc51_ || Boolean(_loc2_)))
                                                                                                                                       {
                                                                                                                                          continue loop8;
                                                                                                                                       }
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc50_ && Boolean(_loc3_)))
                                                                                                                                       {
                                                                                                                                          _loc47_ = §§pop();
                                                                                                                                          if(_loc51_)
                                                                                                                                          {
                                                                                                                                             addr0873:
                                                                                                                                             _loc48_ = _loc27_.listTriggerOutput;
                                                                                                                                             loop11:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§hasnext(_loc48_,_loc47_));
                                                                                                                                                if(_loc50_ && Boolean(param1))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc51_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc51_)
                                                                                                                                                      {
                                                                                                                                                         addr091f:
                                                                                                                                                         if(!(_loc50_ && Boolean(param1)))
                                                                                                                                                         {
                                                                                                                                                            addr0931:
                                                                                                                                                            _loc47_ = 0;
                                                                                                                                                            if(!(_loc50_ && Boolean(param1)))
                                                                                                                                                            {
                                                                                                                                                               addr0941:
                                                                                                                                                               _loc48_ = _loc27_.instantFinshOutput;
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§hasnext(_loc48_,_loc47_));
                                                                                                                                                                  break loop11;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr09d3:
                                                                                                                                                         }
                                                                                                                                                         continue loop8;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0941);
                                                                                                                                                   }
                                                                                                                                                   addr09d1:
                                                                                                                                                   §§goto(addr09d3);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   _loc3_ = §§nextvalue(_loc47_,_loc48_);
                                                                                                                                                   if(_loc50_ && Boolean(_loc2_))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc3_.type);
                                                                                                                                                   if(!_loc50_)
                                                                                                                                                   {
                                                                                                                                                      §§push(ServerOutputConstants.GOOD);
                                                                                                                                                      if(_loc51_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() == §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc50_)
                                                                                                                                                            {
                                                                                                                                                               _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                                                                                                                                                               if(_loc51_ || Boolean(_loc3_))
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         addr08db:
                                                                                                                                                         §§push(_loc3_.type);
                                                                                                                                                         §§push(ServerOutputConstants.RESOURCE);
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc50_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr08db);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr091f);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0931);
                                                                                                                                    }
                                                                                                                                    §§goto(addr09d3);
                                                                                                                                 }
                                                                                                                                 §§goto(addr09d1);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 _loc3_ = §§nextvalue(_loc47_,_loc48_);
                                                                                                                                 if(_loc50_ && Boolean(param1))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§push(_loc3_.type);
                                                                                                                                 if(!_loc50_)
                                                                                                                                 {
                                                                                                                                    §§push(ServerOutputConstants.GOOD);
                                                                                                                                    if(!(_loc50_ && ConfigFactory))
                                                                                                                                    {
                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc50_)
                                                                                                                                          {
                                                                                                                                             _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                                                                                                                                             if(_loc50_ && Boolean(param1))
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§push(_loc3_.type);
                                                                                                                                       if(!_loc50_)
                                                                                                                                       {
                                                                                                                                          §§push(ServerOutputConstants.RESOURCE);
                                                                                                                                          if(!_loc50_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() == §§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc50_ && Boolean(param1)))
                                                                                                                                                {
                                                                                                                                                   _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                                   if(_loc51_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             addr07f7:
                                                                                                                                             §§push(_loc3_.type);
                                                                                                                                             §§push(ServerOutputConstants.TAG);
                                                                                                                                          }
                                                                                                                                          addr07fd:
                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc51_ || Boolean(_loc2_))
                                                                                                                                             {
                                                                                                                                                _loc3_.tagConfig = _loc2_.config.tags[_loc3_.configId];
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §§goto(addr07f7);
                                                                                                                                    }
                                                                                                                                    §§goto(addr07fd);
                                                                                                                                 }
                                                                                                                                 §§goto(addr07f7);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           for(; §§pop(); §§push(§§hasnext(_loc48_,_loc47_)))
                                                                                                                           {
                                                                                                                              _loc3_ = §§nextvalue(_loc47_,_loc48_);
                                                                                                                              if(!(_loc50_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.type);
                                                                                                                                 if(!_loc50_)
                                                                                                                                 {
                                                                                                                                    §§push(ServerOutputConstants.GOOD);
                                                                                                                                    if(_loc51_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc50_)
                                                                                                                                          {
                                                                                                                                             addr0983:
                                                                                                                                             _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                                                                                                                                             if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr09af:
                                                                                                                                          addr09a9:
                                                                                                                                          if(_loc3_.type != ServerOutputConstants.RESOURCE)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(!_loc51_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr09af);
                                                                                                                                 }
                                                                                                                                 §§goto(addr09a9);
                                                                                                                              }
                                                                                                                              §§goto(addr0983);
                                                                                                                           }
                                                                                                                           §§goto(addr09d1);
                                                                                                                        }
                                                                                                                        §§goto(addr0873);
                                                                                                                     }
                                                                                                                     §§goto(addr0931);
                                                                                                                  }
                                                                                                               }
                                                                                                               do
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     _loc30_ = §§nextvalue(_loc45_,_loc46_);
                                                                                                                     if(!_loc50_)
                                                                                                                     {
                                                                                                                        _loc47_ = 0;
                                                                                                                        if(!_loc50_)
                                                                                                                        {
                                                                                                                           for each(_loc36_ in _loc30_.configOutputList)
                                                                                                                           {
                                                                                                                              if(_loc36_.type == ServerOutputConstants.RESOURCE)
                                                                                                                              {
                                                                                                                                 if(!_loc50_)
                                                                                                                                 {
                                                                                                                                    _loc36_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc51_)
                                                                                                                  {
                                                                                                                     if(_loc51_ || Boolean(_loc2_))
                                                                                                                     {
                                                                                                                        if(_loc51_)
                                                                                                                        {
                                                                                                                           §§goto(addr119e);
                                                                                                                        }
                                                                                                                        §§goto(addr1466);
                                                                                                                     }
                                                                                                                     §§goto(addr14aa);
                                                                                                                  }
                                                                                                                  §§goto(addr1313);
                                                                                                               }
                                                                                                               while(§§push(§§hasnext(_loc46_,_loc45_)), !(_loc50_ && Boolean(_loc2_)));
                                                                                                               
                                                                                                               §§goto(addr14a4);
                                                                                                            }
                                                                                                            §§goto(addr126f);
                                                                                                         }
                                                                                                         §§goto(addr0cda);
                                                                                                      }
                                                                                                      §§goto(addr1473);
                                                                                                   }
                                                                                                }
                                                                                                addr14bd:
                                                                                             }
                                                                                             §§goto(addr194e);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr14df);
                                                                                    }
                                                                                    §§goto(addr18f7);
                                                                                 }
                                                                                 §§goto(addr19f7);
                                                                              }
                                                                              §§goto(addr19f5);
                                                                           }
                                                                           addr18cf:
                                                                           if(!_loc50_)
                                                                           {
                                                                              §§goto(addr18d7);
                                                                           }
                                                                           §§goto(addr1907);
                                                                        }
                                                                        §§goto(addr19ef);
                                                                     }
                                                                     §§goto(addr1968);
                                                                  }
                                                                  §§goto(addr18f7);
                                                               }
                                                               §§goto(addr06a6);
                                                            }
                                                            §§goto(addr1907);
                                                         }
                                                         §§goto(addr0686);
                                                      }
                                                      else
                                                      {
                                                         _loc7_ = §§nextvalue(_loc43_,_loc44_);
                                                         if(_loc51_ || Boolean(_loc2_))
                                                         {
                                                            §§push(0);
                                                            if(!(_loc50_ && Boolean(param1)))
                                                            {
                                                               _loc45_ = §§pop();
                                                               if(_loc51_)
                                                               {
                                                                  _loc46_ = _loc7_.resources;
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc46_,_loc45_));
                                                                     if(!_loc51_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc51_ || Boolean(param1))
                                                                     {
                                                                        if(!_loc50_)
                                                                        {
                                                                           if(!(_loc50_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc51_)
                                                                              {
                                                                                 _loc45_ = §§pop();
                                                                                 if(!(_loc50_ && Boolean(param1)))
                                                                                 {
                                                                                    _loc46_ = _loc7_.goods;
                                                                                    loop39:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§hasnext(_loc46_,_loc45_));
                                                                                       if(!_loc51_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc51_ || Boolean(param1))
                                                                                       {
                                                                                          if(!(_loc50_ && Boolean(param1)))
                                                                                          {
                                                                                             if(!_loc50_)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc51_ || Boolean(param1))
                                                                                                {
                                                                                                   addr03a6:
                                                                                                   _loc45_ = §§pop();
                                                                                                   if(_loc51_)
                                                                                                   {
                                                                                                      addr03ae:
                                                                                                      _loc46_ = _loc7_.permissions;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                         if(_loc51_)
                                                                                                         {
                                                                                                            break loop39;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      loop45:
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         _loc22_ = §§nextvalue(_loc45_,_loc46_);
                                                                                                         _loc22_.improvementConfig = _loc2_.config.improvements[_loc22_.configId];
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                            continue loop45;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      addr050a:
                                                                                                      _loc6_ = new Vector.<ConfigTagDTO>();
                                                                                                      if(!_loc50_)
                                                                                                      {
                                                                                                         _loc45_ = 0;
                                                                                                         if(!_loc50_)
                                                                                                         {
                                                                                                            _loc46_ = _loc7_.tagIds;
                                                                                                            if(_loc51_)
                                                                                                            {
                                                                                                               for each(_loc23_ in _loc46_)
                                                                                                               {
                                                                                                                  if(_loc50_ && Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr056b:
                                                                                                               if(_loc51_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  addr057b:
                                                                                                                  _loc7_.configTags = _loc6_;
                                                                                                               }
                                                                                                               continue loop37;
                                                                                                               addr0562:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_.push(_loc2_.config.tags[_loc23_]);
                                                                                                               §§goto(addr0562);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr056b);
                                                                                                      }
                                                                                                      §§goto(addr057b);
                                                                                                      addr0508:
                                                                                                      addr0506:
                                                                                                      addr0502:
                                                                                                   }
                                                                                                   addr04d7:
                                                                                                   _loc46_ = _loc7_.improvements;
                                                                                                   §§goto(addr04ff);
                                                                                                }
                                                                                                addr044a:
                                                                                                _loc45_ = §§pop();
                                                                                                if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   addr045a:
                                                                                                   _loc46_ = _loc7_.assists;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc46_,_loc45_));
                                                                                                      if(_loc50_ && Boolean(_loc2_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc51_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         if(_loc51_ || Boolean(param1))
                                                                                                         {
                                                                                                            addr04b5:
                                                                                                            if(_loc51_ || ConfigFactory)
                                                                                                            {
                                                                                                               addr04c7:
                                                                                                               _loc45_ = 0;
                                                                                                               addr04c5:
                                                                                                               if(!(_loc50_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  §§goto(addr04d7);
                                                                                                               }
                                                                                                               §§goto(addr0508);
                                                                                                            }
                                                                                                            §§goto(addr050a);
                                                                                                         }
                                                                                                         §§goto(addr04d7);
                                                                                                      }
                                                                                                      §§goto(addr0506);
                                                                                                      _loc21_ = §§nextvalue(_loc45_,_loc46_);
                                                                                                      _loc21_.assistConfig = _loc2_.config.assists[_loc21_.configId];
                                                                                                   }
                                                                                                   §§goto(addr0502);
                                                                                                }
                                                                                                §§goto(addr0508);
                                                                                             }
                                                                                             addr043a:
                                                                                             §§push(0);
                                                                                             if(!(_loc50_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                §§goto(addr044a);
                                                                                             }
                                                                                             §§goto(addr04c7);
                                                                                          }
                                                                                          §§goto(addr04d7);
                                                                                       }
                                                                                       if(_loc51_ || Boolean(_loc2_))
                                                                                       {
                                                                                          if(!_loc50_)
                                                                                          {
                                                                                             §§goto(addr043a);
                                                                                          }
                                                                                          §§goto(addr050a);
                                                                                       }
                                                                                       §§goto(addr045a);
                                                                                       _loc18_ = §§nextvalue(_loc45_,_loc46_);
                                                                                       _loc18_.goodConfig = _loc2_.config.goods[_loc18_.configId];
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr03ae);
                                                                              }
                                                                              §§goto(addr044a);
                                                                           }
                                                                           §§goto(addr04c5);
                                                                        }
                                                                        §§goto(addr04b5);
                                                                     }
                                                                     §§goto(addr0422);
                                                                     _loc17_ = §§nextvalue(_loc45_,_loc46_);
                                                                     _loc17_.resourceConfig = _loc2_.config.resources[_loc17_.configId];
                                                                  }
                                                                  do
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        _loc20_ = §§nextvalue(_loc45_,_loc46_);
                                                                        _loc19_ = _loc2_.getConfigPlayfieldItemsByPermissionId(_loc20_.configId);
                                                                        for each(_loc24_ in _loc19_)
                                                                        {
                                                                           if(!_loc24_.isUpgrade)
                                                                           {
                                                                              if(_loc51_)
                                                                              {
                                                                                 _loc20_.playfieldItemConfig = _loc24_;
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     if(!_loc50_)
                                                                     {
                                                                        §§goto(addr0422);
                                                                     }
                                                                     §§goto(addr0506);
                                                                  }
                                                                  while(§§push(§§hasnext(_loc46_,_loc45_)), _loc51_);
                                                                  
                                                                  §§goto(addr0502);
                                                               }
                                                               §§goto(addr03ae);
                                                            }
                                                            §§goto(addr03a6);
                                                         }
                                                         §§goto(addr043a);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc51_ || Boolean(_loc2_))
                                                         {
                                                            §§goto(addr16d3);
                                                         }
                                                         §§goto(addr19f3);
                                                      }
                                                      else
                                                      {
                                                         _loc10_ = §§nextvalue(_loc43_,_loc44_);
                                                         if(!_loc50_)
                                                         {
                                                            _loc45_ = 0;
                                                            if(!(_loc50_ && ConfigFactory))
                                                            {
                                                               for each(_loc38_ in _loc10_.effects)
                                                               {
                                                                  if(_loc51_)
                                                                  {
                                                                     _loc47_ = 0;
                                                                     if(_loc51_)
                                                                     {
                                                                        for each(_loc39_ in _loc38_.targetOutputList)
                                                                        {
                                                                           if(_loc50_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           var _loc49_:* = _loc39_.type;
                                                                           if(!_loc50_)
                                                                           {
                                                                              §§push(ServerOutputConstants.GOOD);
                                                                              if(_loc51_ || Boolean(param1))
                                                                              {
                                                                                 §§push(_loc49_);
                                                                                 if(_loc51_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc51_ || Boolean(param1))
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc50_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr1657:
                                                                                          §§push(1);
                                                                                          if(_loc50_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(ServerOutputConstants.RESOURCE);
                                                                                       if(_loc51_)
                                                                                       {
                                                                                          §§push(_loc49_);
                                                                                          if(_loc51_ || Boolean(_loc2_))
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc51_)
                                                                                                {
                                                                                                   §§goto(addr1657);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr166f:
                                                                                                   §§push(2);
                                                                                                   if(_loc51_ || Boolean(param1))
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr168f:
                                                                                                switch(§§pop())
                                                                                                {
                                                                                                   case 0:
                                                                                                      _loc39_.goodConfig = _loc2_.config.goods[_loc39_.configId];
                                                                                                      if(_loc51_ || Boolean(param1))
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                   case 1:
                                                                                                      _loc39_.resourceConfig = _loc2_.config.resources[_loc39_.configId];
                                                                                                      if(_loc51_)
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                   case 2:
                                                                                                      _loc39_.tagConfig = _loc2_.config.tags[_loc39_.configId];
                                                                                                      if(_loc50_ && ConfigFactory)
                                                                                                      {
                                                                                                      }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr166b:
                                                                                                addr1669:
                                                                                                if(ServerOutputConstants.TAG === _loc49_)
                                                                                                {
                                                                                                   §§goto(addr166f);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(3);
                                                                                                }
                                                                                                §§goto(addr168f);
                                                                                             }
                                                                                             §§goto(addr166f);
                                                                                          }
                                                                                          §§goto(addr166b);
                                                                                       }
                                                                                       §§goto(addr1669);
                                                                                    }
                                                                                    §§goto(addr168f);
                                                                                 }
                                                                                 §§goto(addr166b);
                                                                              }
                                                                              §§goto(addr1669);
                                                                           }
                                                                           §§goto(addr1657);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr16b8);
                                                      }
                                                   }
                                                }
                                                §§goto(addr1703);
                                             }
                                             §§goto(addr18f7);
                                          }
                                          §§goto(addr06a6);
                                       }
                                       §§goto(addr1703);
                                    }
                                    §§goto(addr1958);
                                 }
                                 §§goto(addr14bd);
                              }
                           }
                           §§goto(addr028d);
                        }
                        §§goto(addr16e3);
                     }
                     §§goto(addr1972);
                  }
                  §§goto(addr18e7);
               }
               §§goto(addr1507);
            }
            §§goto(addr14cf);
         }
         while(true)
         {
            if(!§§pop())
            {
               if(!(_loc50_ && Boolean(param1)))
               {
                  §§goto(addr18cf);
               }
               §§goto(addr19f3);
            }
            else
            {
               _loc11_ = §§nextvalue(_loc43_,_loc44_);
               if(!_loc50_)
               {
                  _loc45_ = 0;
                  if(!_loc50_)
                  {
                     for each(_loc40_ in _loc11_.effects)
                     {
                        if(_loc51_ || ConfigFactory)
                        {
                           _loc47_ = 0;
                           if(!(_loc50_ && ConfigFactory))
                           {
                              for each(_loc41_ in _loc40_.targetOutputList)
                              {
                                 if(_loc50_ && Boolean(_loc3_))
                                 {
                                    continue;
                                 }
                                 _loc49_ = _loc41_.type;
                                 if(_loc51_)
                                 {
                                    §§push(ServerOutputConstants.GOOD);
                                    if(!_loc50_)
                                    {
                                       §§push(_loc49_);
                                       if(!_loc50_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc50_)
                                             {
                                                addr1821:
                                                §§push(0);
                                                if(_loc51_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr186b:
                                                §§push(2);
                                                if(_loc50_)
                                                {
                                                }
                                             }
                                             addr1883:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   _loc41_.goodConfig = _loc2_.config.goods[_loc41_.configId];
                                                   if(_loc51_ || Boolean(_loc3_))
                                                   {
                                                   }
                                                   break;
                                                case 1:
                                                   _loc41_.resourceConfig = _loc2_.config.resources[_loc41_.configId];
                                                   if(_loc50_)
                                                   {
                                                   }
                                                   break;
                                                case 2:
                                                   _loc41_.tagConfig = _loc2_.config.tags[_loc41_.configId];
                                                   if(_loc51_ || Boolean(_loc3_))
                                                   {
                                                   }
                                             }
                                          }
                                          else
                                          {
                                             §§push(ServerOutputConstants.RESOURCE);
                                             if(_loc51_)
                                             {
                                                addr1839:
                                                §§push(_loc49_);
                                                if(!_loc50_)
                                                {
                                                   addr1841:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc51_ || ConfigFactory)
                                                      {
                                                         §§push(1);
                                                         if(_loc51_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr186b);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr1867:
                                                      addr1865:
                                                      if(ServerOutputConstants.TAG === _loc49_)
                                                      {
                                                         §§goto(addr186b);
                                                      }
                                                      else
                                                      {
                                                         §§push(3);
                                                      }
                                                   }
                                                   §§goto(addr1883);
                                                }
                                                §§goto(addr1867);
                                             }
                                             §§goto(addr1865);
                                          }
                                          §§goto(addr186b);
                                       }
                                       §§goto(addr1841);
                                    }
                                    §§goto(addr1839);
                                 }
                                 §§goto(addr1821);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr18ac);
            }
         }
      }
      
      private static function levelOfConfigPlayfieldItem(param1:int, param2:int, param3:ConfigDTO) : int
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc5_:int = 0;
         var _loc6_:* = param3.items;
         while(true)
         {
            for each(_loc4_ in _loc6_)
            {
               if(!_loc8_)
               {
                  break;
               }
               §§push(param1);
               if(_loc8_ || ConfigFactory)
               {
                  if(§§pop() != _loc4_.nextConfigId)
                  {
                     continue;
                  }
                  if(_loc8_ || ConfigFactory)
                  {
                     §§push(_loc4_.upgradeLevel);
                     if(!(_loc7_ && Boolean(param3)))
                     {
                        §§goto(addr0084);
                     }
                     §§goto(addr00f1);
                  }
                  §§goto(addr00e1);
               }
               addr0084:
               §§push(-1);
               if(_loc8_ || Boolean(param1))
               {
                  if(§§pop() != §§pop())
                  {
                     if(_loc8_ || Boolean(param3))
                     {
                        break;
                     }
                     continue;
                  }
                  addr00f1:
                  addr00f1:
                  return levelOfConfigPlayfieldItem(_loc4_.id,param2 + 1,param3);
                  addr00e1:
               }
               §§goto(addr00ba);
            }
            return param2;
         }
         §§push(param2);
         if(!(_loc7_ && Boolean(param1)))
         {
            addr00ba:
            §§push(§§pop() + §§pop());
            if(_loc8_)
            {
               §§push(§§pop() + 1);
            }
            return §§pop();
            §§push(_loc4_.upgradeLevel);
         }
         else
         {
            §§goto(addr00f1);
         }
      }
      
      private static function fillResidents(param1:GameConfigProxy, param2:ConfigDTO) : ConfigDTO
      {
         var _temp_1:* = true;
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = _temp_1;
         var _loc3_:ConfigPlayfieldItemDTO = null;
         var _loc4_:Vector.<ResidentVo> = null;
         var _loc5_:Vector.<ConfigPlayfieldItemDTO> = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:ConfigResourceDTO = null;
         var _loc10_:ResidentVo = null;
         var _loc11_:ConfigPlayfieldItemDTO = null;
         var _loc12_:ConfigPhaseDTO = null;
         var _loc13_:ConfigPhaseDTO = null;
         var _loc14_:ResidentVo = null;
         var _loc15_:ConfigPlayfieldItemDTO = null;
         loop0:
         for each(_loc11_ in param2.items)
         {
            if(_loc11_.maxResidents <= 0)
            {
               continue;
            }
            if(_loc23_ || Boolean(_loc3_))
            {
               if(_loc11_.isUpgrade)
               {
                  continue;
               }
               if(_loc23_ || ConfigFactory)
               {
                  addr00a6:
                  if(_loc11_.residents != null)
                  {
                     continue;
                  }
               }
               _loc4_ = new Vector.<ResidentVo>();
               _loc5_ = new Vector.<ConfigPlayfieldItemDTO>();
               _loc5_.push(_loc11_);
               if(_loc23_ || Boolean(param1))
               {
                  §§push(1);
                  if(!(_loc22_ && ConfigFactory))
                  {
                     _loc6_ = §§pop();
                     if(!(_loc22_ && ConfigFactory))
                     {
                        addr0104:
                        var _loc18_:* = 0;
                        addr0102:
                        if(!(_loc22_ && Boolean(_loc3_)))
                        {
                           for each(_loc12_ in _loc11_.getAllPhasesByType(ServerPhaseTypes.RESIDENT))
                           {
                              _loc8_ = _loc12_.listEntryOutputs[0].resourceConfig.type;
                              _loc9_ = param1.config.resources[param1.config.resourceIds[_loc8_]];
                              if(_loc23_ || Boolean(param2))
                              {
                                 _loc7_ = param1.getLevelById(_loc9_.levelId).level;
                              }
                              _loc10_ = new ResidentVo(_loc8_,_loc6_,_loc7_);
                              if(!(_loc22_ && Boolean(_loc3_)))
                              {
                                 _loc4_.push(_loc10_);
                              }
                           }
                        }
                     }
                     _loc3_ = param1.getConfigPlayfieldItemById(_loc11_.nextConfigId);
                     if(!_loc22_)
                     {
                        loop1:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(_loc23_)
                              {
                                 addr030e:
                                 if(_loc5_.length > 0)
                                 {
                                    if(!_loc22_)
                                    {
                                       addr031e:
                                       if(_loc4_.length <= 0)
                                       {
                                          continue loop0;
                                       }
                                       if(!_loc23_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    addr032e:
                                    §§push(0);
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr031e);
                           }
                           else
                           {
                              _loc5_.push(_loc3_);
                              if(_loc23_)
                              {
                                 _loc6_++;
                                 if(!_loc22_)
                                 {
                                    addr01e5:
                                    §§push(0);
                                    if(!(_loc23_ || Boolean(param1)))
                                    {
                                       break;
                                    }
                                    _loc18_ = §§pop();
                                    if(!_loc22_)
                                    {
                                       var _loc19_:* = _loc3_.getAllPhasesByType(ServerPhaseTypes.RESIDENT);
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc19_,_loc18_));
                                          if(!_loc23_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             _loc13_ = §§nextvalue(_loc18_,_loc19_);
                                             _loc8_ = _loc13_.listEntryOutputs[0].resourceConfig.type;
                                             _loc9_ = param1.config.resources[param1.config.resourceIds[_loc8_]];
                                             if(_loc23_ || ConfigFactory)
                                             {
                                                _loc7_ = param1.getLevelById(_loc9_.levelId).level;
                                             }
                                             _loc10_ = new ResidentVo(_loc8_,_loc6_,_loc7_);
                                             for each(_loc14_ in _loc4_)
                                             {
                                                if(_loc14_.type == _loc8_)
                                                {
                                                   _loc10_ = null;
                                                   break;
                                                }
                                             }
                                             if(_loc23_)
                                             {
                                                if(!_loc10_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc23_)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc4_.push(_loc10_);
                                             continue;
                                          }
                                          if(!(_loc22_ && ConfigFactory))
                                          {
                                             if(!(_loc22_ && ConfigFactory))
                                             {
                                                if(!_loc22_)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr032e);
                                             }
                                             addr0368:
                                             continue loop0;
                                          }
                                       }
                                       while(§§pop())
                                       {
                                          _loc15_ = §§nextvalue(_loc18_,_loc19_);
                                          _loc15_.residents = _loc4_;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc19_,_loc18_));
                                             break;
                                          }
                                       }
                                       §§goto(addr0366);
                                    }
                                    §§goto(addr0368);
                                 }
                                 else
                                 {
                                    §§goto(addr031e);
                                 }
                              }
                              §§goto(addr01e5);
                           }
                           _loc3_ = param1.getConfigPlayfieldItemById(_loc3_.nextConfigId);
                        }
                        _loc18_ = §§pop();
                        if(!_loc22_)
                        {
                           _loc19_ = _loc5_;
                           §§goto(addr035f);
                        }
                        §§goto(addr0368);
                     }
                     §§goto(addr030e);
                  }
                  §§goto(addr0104);
               }
               §§goto(addr0102);
            }
            §§goto(addr00a6);
         }
         return param2;
      }
      
      public static function buildCitySquareFieldObjectVo(param1:CitySquareFieldObjectVo) : IGameObjectVo
      {
         return param1;
      }
      
      public static function updatePlayerPayment(param1:PlayerPaymentDTO) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:PlayerPaymentPackDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc3_ in param1.purchasedPaymentPacks)
         {
            if(!_loc6_)
            {
               _loc3_.config = _loc2_.config.paymentPacks[_loc3_.id];
            }
         }
      }
      
      public static function buildBoulderObjectVo(param1:BoulderObjectVo) : BoulderObjectVo
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            param1.matrix3dCoordinates.z += 1;
         }
         return param1;
      }
      
      public static function buildEmergencyDTO(param1:Object) : EmergencyDTO
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:ConfigOutputDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:EmergencyDTO = new EmergencyDTO(param1);
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            if(_loc3_.rewardOrCosts)
            {
               addr004f:
               for each(_loc4_ in _loc3_.rewardOrCosts)
               {
                  §§push(_loc4_.type);
                  if(!_loc8_)
                  {
                     §§push(ServerOutputConstants.RESOURCE);
                     if(!_loc8_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc7_)
                           {
                              _loc4_.resourceConfig = _loc2_.config.resources[_loc4_.configId];
                              if(!_loc8_)
                              {
                                 continue;
                              }
                           }
                        }
                        else
                        {
                           addr00c7:
                           addr00c1:
                           if(_loc4_.type != ServerOutputConstants.GOOD)
                           {
                              continue;
                           }
                           if(!(_loc7_ || Boolean(_loc3_)))
                           {
                              continue;
                           }
                        }
                        _loc4_.goodConfig = _loc2_.config.goods[_loc4_.configId];
                        continue;
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00c1);
               }
            }
            return _loc3_;
         }
         §§goto(addr004f);
      }
      
      public static function buildProfessionalDTO(param1:Object) : ProfessionalDTO
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc5_:ProfessionalAttributeDTO = null;
         var _loc6_:ProfessionalTraitDTO = null;
         var _loc7_:ConfigProfessionalAttributeDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:ConfigProfessionalSpecializationDTO = _loc2_.config.professionalSpecializations[param1.csi];
         var _loc4_:ProfessionalDTO = new ProfessionalDTO(param1,_loc3_);
         var _loc8_:int = 0;
         var _loc9_:* = _loc4_.attributes;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc9_,_loc8_));
            if(_loc12_ && Boolean(_loc3_))
            {
               break;
            }
            if(§§pop())
            {
               _loc5_ = §§nextvalue(_loc8_,_loc9_);
               for each(_loc7_ in _loc2_.config.professionalAttributes)
               {
                  if(_loc12_)
                  {
                     break;
                  }
                  if(_loc5_.configId == _loc7_.id)
                  {
                     if(!_loc12_)
                     {
                        _loc5_.config = _loc7_;
                     }
                     break;
                  }
               }
               continue;
            }
            if(_loc13_ || ConfigFactory)
            {
               if(!_loc12_)
               {
                  if(!_loc12_)
                  {
                     _loc8_ = 0;
                     if(!_loc12_)
                     {
                        _loc9_ = _loc4_.traits;
                        addr010d:
                        while(true)
                        {
                           §§push(§§hasnext(_loc9_,_loc8_));
                           break loop0;
                        }
                        addr014b:
                        addr0144:
                     }
                  }
                  return _loc4_;
               }
               §§goto(addr010d);
            }
            §§goto(addr014b);
         }
         while(§§pop())
         {
            _loc6_ = §§nextvalue(_loc8_,_loc9_);
            _loc6_.config = _loc2_.config.professionalTraits[_loc6_.configId];
            §§goto(addr0144);
         }
         §§goto(addr014b);
      }
      
      public static function buildEmergencyRequirementDTO(param1:Object) : EmergencyRequirementDTO
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:EmergencyRequirementDTO = new EmergencyRequirementDTO(param1);
         if(_loc5_ || Boolean(_loc3_))
         {
            _loc3_.configSpecialization = _loc2_.config.professionalSpecializations[_loc3_.configProfSpecializationId];
         }
         return _loc3_;
      }
      
      public static function buildRandomHarvestPhaseDTO(param1:RandomHarvestPhaseDTO) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigOutputDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc3_ in param1.rewards)
         {
            if(_loc6_)
            {
               §§push(_loc3_.type);
               if(_loc6_ || Boolean(_loc2_))
               {
                  §§push(ServerOutputConstants.GOOD);
                  if(!_loc7_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc7_)
                        {
                           addr007c:
                           _loc3_.goodConfig = _loc2_.config.goods[_loc3_.configId];
                           if(_loc6_ || ConfigFactory)
                           {
                           }
                        }
                        continue;
                     }
                     addr00af:
                     §§push(_loc3_.type);
                     §§push(ServerOutputConstants.RESOURCE);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        _loc3_.resourceConfig = _loc2_.config.resources[_loc3_.configId];
                     }
                  }
                  continue;
               }
               §§goto(addr00af);
            }
            §§goto(addr007c);
         }
      }
      
      public static function buildConfigOutputDTO(param1:ConfigOutputDTO) : ConfigOutputDTO
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:* = param1.type;
         if(!_loc5_)
         {
            §§push(ServerOutputConstants.ASSIST);
            if(_loc4_)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr0239:
                        §§push(4);
                        if(_loc4_ || Boolean(_loc3_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerOutputConstants.GOOD);
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        §§push(_loc3_);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr017c:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr02ce:
                                 §§push(7);
                                 if(_loc5_ && Boolean(_loc3_))
                                 {
                                 }
                              }
                              §§goto(addr02ee);
                           }
                           else
                           {
                              §§push(ServerOutputConstants.IMPROVEMENT);
                              if(_loc4_)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          §§push(2);
                                          if(_loc4_ || Boolean(_loc3_))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr027a:
                                          §§push(5);
                                          if(_loc4_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerOutputConstants.PERMISSION);
                                       if(!_loc5_)
                                       {
                                          addr01df:
                                          §§push(_loc3_);
                                          if(!(_loc5_ && Boolean(_loc3_)))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   addr01f8:
                                                   §§push(3);
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr02ab:
                                                   §§push(6);
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerOutputConstants.RESOURCE);
                                                if(!(_loc5_ && Boolean(param1)))
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc5_ && Boolean(_loc2_)))
                                                   {
                                                      addr0227:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc4_ || Boolean(param1))
                                                         {
                                                            §§goto(addr0239);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr02ce);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ServerOutputConstants.TAG);
                                                         if(_loc4_ || Boolean(_loc2_))
                                                         {
                                                            addr0261:
                                                            §§push(_loc3_);
                                                            if(_loc4_ || ConfigFactory)
                                                            {
                                                               §§goto(addr0270);
                                                            }
                                                            §§goto(addr02a1);
                                                         }
                                                         §§goto(addr0292);
                                                      }
                                                      §§goto(addr02ce);
                                                   }
                                                   addr0270:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr027a);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr02ab);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(ServerOutputConstants.PLAYFIELD_ITEM);
                                                      if(_loc4_)
                                                      {
                                                         addr0292:
                                                         §§push(_loc3_);
                                                         if(_loc4_ || Boolean(_loc2_))
                                                         {
                                                            addr02a1:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr02ab);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr02ce);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr02ca);
                                                            }
                                                            §§goto(addr02ce);
                                                         }
                                                         addr02ca:
                                                         §§goto(addr02c9);
                                                      }
                                                      addr02c9:
                                                      if(ServerOutputConstants.BEHAVIOUR_TYPE === _loc3_)
                                                      {
                                                         §§goto(addr02ce);
                                                      }
                                                      else
                                                      {
                                                         §§push(8);
                                                      }
                                                      §§goto(addr02ee);
                                                   }
                                                   §§goto(addr02ee);
                                                }
                                                §§goto(addr0292);
                                             }
                                             §§goto(addr02ee);
                                          }
                                          §§goto(addr0227);
                                       }
                                       §§goto(addr02c9);
                                    }
                                    §§goto(addr02ee);
                                 }
                                 §§goto(addr0227);
                              }
                              §§goto(addr0292);
                           }
                        }
                        §§goto(addr0270);
                     }
                     §§goto(addr01df);
                  }
                  addr02ee:
                  switch(§§pop())
                  {
                     case 0:
                        param1.assistConfig = _loc2_.config.assists[param1.configId];
                        if(_loc4_)
                        {
                        }
                        break;
                     case 1:
                        param1.goodConfig = _loc2_.config.goods[param1.configId];
                        if(_loc4_)
                        {
                        }
                        break;
                     case 2:
                        param1.improvementConfig = _loc2_.config.tags[param1.configId];
                        if(_loc4_ || ConfigFactory)
                        {
                        }
                        break;
                     case 3:
                        param1.playfieldItemConfig = getConfigPlayfieldItemByPermissionId(param1.configId,_loc2_);
                        if(_loc4_ || Boolean(_loc3_))
                        {
                        }
                        break;
                     case 4:
                        param1.resourceConfig = _loc2_.config.resources[param1.configId];
                        if(_loc4_)
                        {
                        }
                        break;
                     case 5:
                        param1.tagConfig = _loc2_.config.tags[param1.configId];
                        if(_loc4_ || Boolean(param1))
                        {
                        }
                        break;
                     case 6:
                        param1.playfieldItemConfig = _loc2_.config.items[param1.configId];
                        if(_loc5_)
                        {
                        }
                        break;
                     case 7:
                  }
                  return param1;
               }
               §§goto(addr017c);
            }
            §§goto(addr0261);
         }
         §§goto(addr01f8);
      }
      
      private static function getConfigPlayfieldItemByPermissionId(param1:Number, param2:GameConfigProxy) : ConfigPlayfieldItemDTO
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigPlayfieldItemDTO = null;
         if(_loc6_ || Boolean(param2))
         {
            if(param2)
            {
               §§goto(addr002c);
            }
            return null;
         }
         addr002c:
         var _loc4_:int = 0;
         var _loc5_:* = param2.config.items;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc7_ && Boolean(_loc3_))
               {
                  break;
               }
               §§push(_loc3_.permissionConfigId == param1);
               if(_loc6_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc7_ && ConfigFactory))
                     {
                        §§pop();
                        if(!_loc6_)
                        {
                           break;
                        }
                        §§push(_loc3_.isUpgrade);
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           §§push(!§§pop());
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc6_ || Boolean(param1))
                  {
                     break;
                  }
               }
               continue;
            }
         }
         return _loc3_;
      }
      
      public static function buildInventoryItemDTO(param1:Object) : InventoryItemDTO
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:InventoryItemDTO = null;
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            §§push(Boolean(param1.d));
            if(!_loc5_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(_loc6_ || Boolean(param1))
                  {
                     addr006d:
                     §§pop();
                     if(_loc6_)
                     {
                        §§goto(addr007a);
                     }
                     §§goto(addr009a);
                  }
               }
               addr007a:
               if(Boolean(param1.b))
               {
                  if(_loc6_)
                  {
                     if(param1.d)
                     {
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           addr009a:
                           §§push(_loc2_.getConfigPlayfieldItemById(param1.d.c));
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              _loc4_ = §§pop();
                           }
                           else
                           {
                              addr00df:
                              _loc4_ = §§pop();
                           }
                           §§goto(addr00e4);
                        }
                        else
                        {
                           addr00d2:
                           §§push(_loc2_.getConfigPlayfieldItemById(param1.b.c));
                        }
                        §§goto(addr00df);
                     }
                     else if(param1.b)
                     {
                        §§goto(addr00d2);
                     }
                     addr00e4:
                     _loc3_ = new InventoryItemDTO(param1,_loc4_);
                     §§goto(addr0102);
                  }
                  §§goto(addr00d2);
               }
               else
               {
                  _loc3_ = new InventoryItemDTO(param1);
               }
               addr0102:
               return _loc3_;
            }
            §§goto(addr006d);
         }
         §§goto(addr009a);
      }
      
      public static function getMasteryBonusVosFromConfigMasteryBonusGroupDTO(param1:ConfigMasteryBonusGroupDTO, param2:String, param3:String) : Vector.<MasteryBonusVo>
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:* = null;
         var _loc7_:Vector.<ConfigOutputDTO> = null;
         var _loc4_:Vector.<MasteryBonusVo> = new Vector.<MasteryBonusVo>();
         if(!(_loc12_ && Boolean(param2)))
         {
            if(param1)
            {
               addr0048:
               for each(_loc5_ in param1.configOutputs)
               {
                  §§push(_loc5_.type);
                  if(!_loc12_)
                  {
                     if(§§pop() != ServerOutputConstants.TAG)
                     {
                        continue;
                     }
                     if(!_loc12_)
                     {
                        addr0089:
                        §§push(_loc5_.tagConfig.tagName);
                        if(_loc11_)
                        {
                           §§push(§§pop());
                        }
                        _loc6_ = §§pop();
                        if(_loc11_)
                        {
                           addr0091:
                           if(MasteryBonusVo.clientTags.indexOf(_loc6_) == -1)
                           {
                              continue;
                           }
                        }
                        _loc7_ = new Vector.<ConfigOutputDTO>();
                        _loc7_.push(_loc5_);
                        if(!(_loc12_ && ConfigFactory))
                        {
                           var _loc10_:* = _loc6_;
                           if(!_loc12_)
                           {
                              §§push(ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY);
                              if(_loc11_ || Boolean(param1))
                              {
                                 §§push(_loc10_);
                                 if(!_loc12_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc12_ && Boolean(param2)))
                                       {
                                          §§push(0);
                                          if(_loc12_ && Boolean(param2))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0265:
                                          §§push(3);
                                          if(_loc11_ || ConfigFactory)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY);
                                       if(!(_loc12_ && Boolean(param1)))
                                       {
                                          §§push(_loc10_);
                                          if(!_loc12_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc12_ && Boolean(param2)))
                                                {
                                                   addr01e3:
                                                   §§push(1);
                                                   if(_loc12_ && Boolean(param2))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr022c:
                                                   §§push(2);
                                                   if(_loc11_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
                                                if(_loc11_ || Boolean(param3))
                                                {
                                                   addr020a:
                                                   §§push(_loc10_);
                                                   if(_loc11_ || Boolean(param2))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc12_ && Boolean(param3)))
                                                         {
                                                            §§goto(addr022c);
                                                         }
                                                         else
                                                         {
                                                            addr02b5:
                                                            §§push(5);
                                                            if(_loc12_ && Boolean(param3))
                                                            {
                                                            }
                                                         }
                                                         addr02e3:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               addXPOutputToVector(param1.configOutputs,_loc7_);
                                                               if(_loc12_)
                                                               {
                                                               }
                                                               break;
                                                            case 1:
                                                            case 2:
                                                               addCC_PP_EP_OutputToVector(param1.configOutputs,_loc7_);
                                                               if(_loc12_)
                                                               {
                                                               }
                                                               break;
                                                            case 3:
                                                               addEnergyOutputToVector(param1.configOutputs,_loc7_);
                                                               if(_loc12_ && Boolean(param1))
                                                               {
                                                               }
                                                               break;
                                                            case 4:
                                                               addMoodOutputToVector(param1.configOutputs,_loc7_);
                                                               if(_loc11_ || Boolean(param2))
                                                               {
                                                               }
                                                               break;
                                                            case 5:
                                                               addTimeOutputToVector(param1.configOutputs,_loc7_);
                                                               if(!_loc12_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                         }
                                                         addr0305:
                                                         _loc4_.push(new MasteryBonusVo(_loc7_,param2,param3));
                                                         continue;
                                                      }
                                                      §§push(ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY);
                                                      if(_loc11_)
                                                      {
                                                         addr0243:
                                                         §§push(_loc10_);
                                                         if(!(_loc12_ && ConfigFactory))
                                                         {
                                                            addr0253:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc12_ && Boolean(param2)))
                                                               {
                                                                  §§goto(addr0265);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr02b5);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY);
                                                               if(!(_loc12_ && Boolean(param3)))
                                                               {
                                                                  addr028c:
                                                                  §§push(_loc10_);
                                                                  if(!_loc12_)
                                                                  {
                                                                     addr0294:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           §§push(4);
                                                                           if(_loc11_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr02b5);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr02b1:
                                                                        addr02af:
                                                                        if(ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY === _loc10_)
                                                                        {
                                                                           §§goto(addr02b5);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(6);
                                                                        }
                                                                     }
                                                                     §§goto(addr02e3);
                                                                  }
                                                                  §§goto(addr02b1);
                                                               }
                                                               §§goto(addr02af);
                                                            }
                                                            §§goto(addr02b5);
                                                         }
                                                         §§goto(addr02b1);
                                                      }
                                                      §§goto(addr028c);
                                                      §§goto(addr02b5);
                                                   }
                                                   §§goto(addr02b1);
                                                }
                                                §§goto(addr02af);
                                             }
                                             §§goto(addr02e3);
                                          }
                                          §§goto(addr0294);
                                       }
                                       §§goto(addr020a);
                                    }
                                    §§goto(addr02e3);
                                 }
                                 §§goto(addr0253);
                              }
                              §§goto(addr0243);
                           }
                           §§goto(addr01e3);
                        }
                        §§goto(addr0305);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0089);
               }
            }
            return _loc4_;
         }
         §§goto(addr0048);
      }
      
      private static function addXPOutputToVector(param1:Vector.<ConfigOutputDTO>, param2:Vector.<ConfigOutputDTO>) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigOutputDTO = null;
         for each(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               §§push(_loc3_.type);
               if(!(_loc6_ && ConfigFactory))
               {
                  §§push(ServerOutputConstants.RESOURCE);
                  if(!(_loc6_ && Boolean(param2)))
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc7_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(_loc7_ || Boolean(_loc3_))
                           {
                              §§pop();
                              if(!(_loc6_ && Boolean(param2)))
                              {
                                 addr00a7:
                                 addr00a6:
                                 addr00a1:
                                 if(_loc3_.resourceConfig.type != ServerResConst.RESOURCE_EXPERIENCE)
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                              }
                              addr00b1:
                              param2.push(_loc3_);
                              continue;
                           }
                        }
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr00a1);
            }
            §§goto(addr00b1);
         }
      }
      
      private static function addCC_PP_EP_OutputToVector(param1:Vector.<ConfigOutputDTO>, param2:Vector.<ConfigOutputDTO>) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigOutputDTO = null;
         for each(_loc3_ in param1)
         {
            if(_loc6_ || Boolean(param2))
            {
               §§push(_loc3_.type);
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§push(ServerOutputConstants.RESOURCE);
                  if(!(_loc7_ && Boolean(param2)))
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc7_ && Boolean(param2)))
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 §§pop();
                                 if(!(_loc7_ && ConfigFactory))
                                 {
                                    addr0099:
                                    §§push(_loc3_.resourceConfig);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop().type);
                                       if(!(_loc7_ && Boolean(param2)))
                                       {
                                          addr00c0:
                                          §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                          if(_loc6_ || ConfigFactory)
                                          {
                                             addr00d3:
                                             §§push(§§pop() == §§pop());
                                             if(_loc6_)
                                             {
                                                var _temp_10:* = §§pop();
                                                §§push(_temp_10);
                                                §§push(_temp_10);
                                                if(_loc6_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc6_ || Boolean(param2))
                                                      {
                                                         §§pop();
                                                         if(!(_loc7_ && Boolean(param1)))
                                                         {
                                                            §§push(_loc3_.resourceConfig);
                                                            if(_loc6_ || ConfigFactory)
                                                            {
                                                               addr0114:
                                                               §§push(§§pop().type);
                                                               if(_loc6_)
                                                               {
                                                                  addr011c:
                                                                  §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                                  if(!(_loc7_ && ConfigFactory))
                                                                  {
                                                                     addr012f:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc6_ || Boolean(param2))
                                                                     {
                                                                        addr013e:
                                                                        var _temp_16:* = §§pop();
                                                                        addr013f:
                                                                        §§push(_temp_16);
                                                                        if(!_temp_16)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              addr0149:
                                                                              §§pop();
                                                                              if(_loc7_ && ConfigFactory)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr016e:
                                                                              addr0169:
                                                                              addr0167:
                                                                              §§push(_loc3_.resourceConfig.type == ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr016f:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr0179:
                                                                           param2.push(_loc3_);
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr016e);
                                                               }
                                                               §§goto(addr0169);
                                                            }
                                                            §§goto(addr0167);
                                                         }
                                                         §§goto(addr0179);
                                                      }
                                                      §§goto(addr0149);
                                                   }
                                                   §§goto(addr013e);
                                                }
                                                §§goto(addr013f);
                                             }
                                             §§goto(addr013e);
                                          }
                                          §§goto(addr012f);
                                       }
                                       §§goto(addr011c);
                                    }
                                    §§goto(addr0114);
                                 }
                                 §§goto(addr0179);
                              }
                           }
                           §§goto(addr016f);
                        }
                        §§goto(addr013f);
                     }
                     §§goto(addr013e);
                  }
                  §§goto(addr00d3);
               }
               §§goto(addr00c0);
            }
            §§goto(addr0099);
         }
      }
      
      private static function addEnergyOutputToVector(param1:Vector.<ConfigOutputDTO>, param2:Vector.<ConfigOutputDTO>) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:ConfigOutputDTO = null;
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc4_ in param1)
         {
            §§push(_loc4_.type == ServerOutputConstants.RESOURCE);
            if(_loc8_ || Boolean(param2))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               §§push(_temp_4);
               if(_loc8_ || ConfigFactory)
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && Boolean(param2)))
                     {
                        §§pop();
                        if(_loc8_)
                        {
                           §§push(_loc4_.configId);
                           if(_loc8_ || Boolean(param1))
                           {
                              §§push(§§pop() == _loc3_.resourcesIds[ServerResConst.RESOURCE_ENERGY_NEGATIVE]);
                              if(!_loc7_)
                              {
                                 addr00b6:
                                 var _temp_8:* = §§pop();
                                 addr00b7:
                                 §§push(_temp_8);
                                 if(!_temp_8)
                                 {
                                    if(_loc8_ || Boolean(param2))
                                    {
                                       addr00c9:
                                       §§pop();
                                       if(_loc7_ && Boolean(param1))
                                       {
                                          continue;
                                       }
                                       addr00e8:
                                       §§push(_loc4_.configId == _loc3_.resourcesIds[ServerResConst.RESOURCE_ENERGY_POSITIVE]);
                                    }
                                 }
                                 addr00f5:
                                 if(§§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       addr00ff:
                                       param2.push(_loc4_);
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr00ff);
                     }
                     §§goto(addr00c9);
                  }
                  §§goto(addr00f5);
               }
               §§goto(addr00b7);
            }
            §§goto(addr00b6);
         }
      }
      
      private static function addMoodOutputToVector(param1:Vector.<ConfigOutputDTO>, param2:Vector.<ConfigOutputDTO>) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:ConfigOutputDTO = null;
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc4_ in param1)
         {
            §§push(_loc4_.type == ServerOutputConstants.RESOURCE);
            if(_loc8_ || Boolean(param1))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               §§push(_temp_4);
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc8_ || ConfigFactory)
                     {
                        §§pop();
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           §§push(_loc4_.configId);
                           if(_loc8_)
                           {
                              §§push(§§pop() == _loc3_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_NEGATIVE]);
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 addr00b7:
                                 var _temp_8:* = §§pop();
                                 addr00b8:
                                 §§push(_temp_8);
                                 if(!_temp_8)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§pop();
                                       if(_loc8_ || Boolean(param2))
                                       {
                                          addr00f1:
                                          addr00e4:
                                          addr00df:
                                          if(_loc4_.configId != _loc3_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_POSITIVE])
                                          {
                                             continue;
                                          }
                                          if(!_loc8_)
                                          {
                                             continue;
                                          }
                                       }
                                       param2.push(_loc4_);
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr00f1);
                           }
                           §§goto(addr00e4);
                        }
                        §§goto(addr00df);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00f1);
               }
               §§goto(addr00b8);
            }
            §§goto(addr00b7);
         }
      }
      
      private static function addTimeOutputToVector(param1:Vector.<ConfigOutputDTO>, param2:Vector.<ConfigOutputDTO>) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:ConfigOutputDTO = null;
         var _loc3_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc4_ in param1)
         {
            §§push(_loc4_.type);
            if(!(_loc8_ && Boolean(_loc3_)))
            {
               §§push(ServerOutputConstants.TAG);
               if(!_loc8_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc7_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!_loc8_)
                        {
                           §§pop();
                           if(!_loc8_)
                           {
                              addr00ae:
                              addr00ad:
                              addr00a8:
                              if((_loc3_.config.tags[_loc4_.configId] as ConfigTagDTO).tagName != ServerTagConstants.TIME)
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 continue;
                              }
                           }
                           param2.push(_loc4_);
                           continue;
                        }
                     }
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr00ad);
            }
            §§goto(addr00a8);
         }
      }
      
      public static function getResidentialBaseOutcomeResourceType(param1:ConfigPlayfieldItemDTO) : String
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:ConfigOutputDTO = null;
         var _loc2_:* = "";
         for each(_loc3_ in param1.getAllPhasesByType(ServerPhaseTypes.RESIDENTIAL)[0].listEntryOutputs)
         {
            if(_loc7_ || Boolean(_loc2_))
            {
               §§push(_loc3_.type);
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  §§push(ServerOutputConstants.RESOURCE);
                  if(!_loc6_)
                  {
                     if(§§pop() != §§pop())
                     {
                        continue;
                     }
                     if(_loc7_)
                     {
                        addr0089:
                        §§push(_loc3_.resourceConfig);
                        if(!_loc6_)
                        {
                           §§push(§§pop().type);
                           if(_loc7_ || ConfigFactory)
                           {
                              addr00b6:
                              addr00b1:
                              if(§§pop() != ServerResConst.RESOURCE_EXPERIENCE)
                              {
                                 if(!_loc6_)
                                 {
                                    addr00c4:
                                    addr00c0:
                                    §§push(_loc3_.resourceConfig.type);
                                    if(!(_loc6_ && ConfigFactory))
                                    {
                                       addr00d4:
                                       §§push(§§pop());
                                    }
                                    _loc2_ = §§pop();
                                 }
                              }
                              continue;
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr00b1);
            }
            §§goto(addr0089);
         }
         return _loc2_;
      }
      
      public static function getResidentialNeedOutcomeResourceType(param1:ResidentialFieldObjectVo) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1.currentResidentType);
         loop0:
         while(true)
         {
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               §§push(ServerResConst.RESOURCE_RICHMEN);
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && ConfigFactory))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr00c7:
                           §§push(1);
                           if(_loc4_ || _loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerResConst.RESOURCE_WORKERS);
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_ || ConfigFactory)
                                 {
                                    §§goto(addr00c7);
                                 }
                                 else
                                 {
                                    addr00f0:
                                    §§push(2);
                                    if(_loc4_ || _loc3_)
                                    {
                                    }
                                 }
                                 §§goto(addr0110);
                              }
                              addr00ec:
                              addr00eb:
                              if(ServerResConst.RESOURCE_ACADEMICS === _loc2_)
                              {
                                 §§goto(addr00f0);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              addr0110:
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                    if(!_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    break loop0;
                                 case 1:
                                    §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                    if(!_loc3_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 case 2:
                                    §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue;
                                 default:
                                    return "";
                              }
                              return §§pop();
                              §§goto(addr00f0);
                           }
                           §§goto(addr00ec);
                        }
                        §§goto(addr00eb);
                     }
                     §§goto(addr0110);
                  }
                  §§goto(addr00ec);
               }
               §§goto(addr00eb);
            }
            §§goto(addr00f0);
         }
         return §§pop();
      }
      
      public static function getMasterBonusDTO(param1:Object) : MasteryBonusDTO
      {
         var _loc2_:GameConfigProxy = Facade.getInstance().retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         return new MasteryBonusDTO(param1,_loc2_.config.masteryBoni[param1.bid]);
      }
      
      public static function getConfigMasteryChallenge(param1:MasteryChallengeDTO, param2:ConfigPlayfieldItemDTO) : ConfigMasteryChallengeDTO
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            §§push(param1 == null);
            if(!(_loc5_ && _loc3_))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(!(_loc5_ && ConfigFactory))
                  {
                     §§goto(addr0041);
                  }
               }
               §§goto(addr005f);
            }
            addr0041:
            §§pop();
            if(_loc4_ || ConfigFactory)
            {
               addr005f:
               if(param2 == null)
               {
                  if(!(_loc5_ && ConfigFactory))
                  {
                     §§goto(addr0071);
                  }
               }
            }
            var _loc3_:ConfigMasteryChallengeDTO = param2.configMasteryChallengeDTO;
            while(_loc3_ != null)
            {
               if(_loc3_.id == param1.id)
               {
                  if(!_loc5_)
                  {
                     return _loc3_;
                  }
               }
               _loc3_ = _loc3_.nextChallenge;
            }
            return null;
         }
         addr0071:
         return null;
      }
      
      public static function setPlayfieldSwitchFieldObjectVoState(param1:PlayfieldSwitchFieldObjectVo) : String
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:FeatureProxy = Facade.getInstance().retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         var _loc3_:QuestProxy = Facade.getInstance().retrieveProxy(QuestProxy.NAME) as QuestProxy;
         if(!_loc4_)
         {
            §§push(param1.enabledFeatureType);
            if(!(_loc4_ && ConfigFactory))
            {
               §§push(§§pop() == "");
               if(!(_loc4_ && Boolean(param1)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(!_temp_4)
                  {
                     if(_loc5_)
                     {
                        addr0080:
                        §§pop();
                        if(_loc5_)
                        {
                           §§push(_loc2_.isFeatureEnabled(param1.enabledFeatureType));
                           if(!_loc4_)
                           {
                              §§push(§§pop());
                              if(_loc5_ || Boolean(param1))
                              {
                                 addr00a5:
                                 if(§§pop())
                                 {
                                    if(_loc5_ || Boolean(param1))
                                    {
                                       §§push(PlayfieldSwitchFieldObjectVo.STATE_DONE);
                                       if(!_loc4_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr00e0:
                                       addr00ea:
                                       if(_loc3_.getActiveQuestByLocaleIdentifier(param1.questIdentifier))
                                       {
                                          if(_loc5_)
                                          {
                                             addr00f4:
                                             §§push(PlayfieldSwitchFieldObjectVo.STATE_IN_PROGRESS);
                                             if(_loc5_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr0101:
                                             §§push(PlayfieldSwitchFieldObjectVo.STATE_BLOCKED);
                                          }
                                          §§goto(addr0107);
                                       }
                                       §§goto(addr0101);
                                    }
                                    §§goto(addr0107);
                                 }
                                 §§goto(addr00e0);
                              }
                           }
                           §§goto(addr00ea);
                        }
                        §§goto(addr00f4);
                     }
                     §§goto(addr00ea);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0080);
            }
            addr0107:
            return §§pop();
         }
         §§goto(addr00e0);
      }
   }
}

