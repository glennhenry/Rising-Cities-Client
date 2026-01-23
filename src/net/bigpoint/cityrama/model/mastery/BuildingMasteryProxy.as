package net.bigpoint.cityrama.model.mastery
{
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryBonusDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryBonusGroupDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class BuildingMasteryProxy extends Proxy
   {
      
      public static const NAME:String = "BuildingMasteryProxy";
      
      private var _config:ConfigDTO;
      
      private var _featureProxy:FeatureProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      public function BuildingMasteryProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      public static function getCompletePercentValueForTag(param1:BillboardObjectVo, param2:String, param3:String = "") : Number
      {
         var _loc6_:Vector.<ConfigOutputDTO> = null;
         var _loc7_:Boolean = false;
         var _loc8_:ConfigMasteryBonusGroupDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:Boolean = false;
         var _loc11_:ConfigOutputDTO = null;
         if(param1.buildingDTO == null || param1.buildingDTO.currentMasteryBonus == null)
         {
            return 0;
         }
         var _loc4_:Number = 0;
         var _loc5_:Number = param1.buildingDTO.currentMasteryBonus.highestUnlockedBonusGroup;
         for each(_loc8_ in param1.buildingDTO.currentMasteryBonus.config.buffs)
         {
            if(_loc8_.groupId <= _loc5_)
            {
               _loc6_ = new Vector.<ConfigOutputDTO>(0);
               _loc7_ = false;
               if(_loc8_.selectionId == 0 || _loc8_.selectionId == param1.buildingDTO.currentMasteryBonus.selectedBonus)
               {
                  for each(_loc9_ in _loc8_.configOutputs)
                  {
                     if(_loc9_.tagConfig != null && _loc9_.tagConfig.tagName == param2)
                     {
                        _loc7_ = true;
                     }
                     else if(_loc9_.resourceConfig != null && _loc9_.resourceConfig.type == param3)
                     {
                        _loc6_.push(_loc9_);
                     }
                     else if(_loc9_.resourceConfig != null && param3 == "")
                     {
                        _loc6_.push(_loc9_);
                     }
                     else if(param3 == ServerTagConstants.TIME)
                     {
                        _loc6_.push(_loc9_);
                     }
                  }
               }
               if(_loc7_)
               {
                  _loc10_ = false;
                  for each(_loc11_ in _loc6_)
                  {
                     if(param2 == ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY)
                     {
                        if(_loc11_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_NEGATIVE || _loc11_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_POSITIVE)
                        {
                           _loc4_ += _loc11_.outputAmount;
                           _loc10_ = true;
                        }
                     }
                     else if(param2 == ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY)
                     {
                        if(_loc11_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_NEGATIVE || _loc11_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_POSITIVE)
                        {
                           _loc4_ += _loc11_.outputAmount;
                           _loc10_ = true;
                        }
                     }
                     else
                     {
                        _loc4_ += _loc11_.outputAmount;
                        _loc10_ = true;
                     }
                     if(param3 == "" && _loc10_)
                     {
                        break;
                     }
                  }
               }
            }
         }
         return _loc4_;
      }
      
      private static function getMasteryInstantFinishPrice(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param1 * (1 - param2 / param3) * (1 - param2 / (4 * param3));
         _loc4_ = Math.ceil(Math.abs(_loc4_));
         if(_loc4_ < 1)
         {
            _loc4_ = 1;
         }
         return _loc4_;
      }
      
      override public function onRegister() : void
      {
         this.retrieveProxies();
      }
      
      private function retrieveProxies() : void
      {
         this._config = (facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy).config;
         this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
      }
      
      public function getMasteryComponentVo(param1:BuildingDTO) : MasteryComponentVo
      {
         var _loc2_:MasteryComponentVo = null;
         var _loc3_:Vector.<MasteryChallengeVo> = null;
         var _loc4_:ConfigMasteryChallengeDTO = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:MasteryChallengeVo = null;
         if(Boolean(param1) && Boolean(param1.currentMasteryChallenge))
         {
            _loc2_ = new MasteryComponentVo();
            _loc2_.masteryLocked = !this._featureProxy.isFeatureEnabled(ServerFeatureConstants.BUILDING_MASTERY);
            _loc2_.masteryUnlockLevel = this._featureProxy.masteryFeatureUnlockLevel;
            _loc2_.amountRC = this._resourceProxy.realCurrency;
            _loc3_ = new Vector.<MasteryChallengeVo>();
            _loc4_ = param1.config.configMasteryChallengeDTO;
            _loc5_ = false;
            _loc6_ = 0;
            while(_loc4_ != null && _loc6_ < 5)
            {
               _loc7_ = new MasteryChallengeVo();
               _loc7_.targetProgress = _loc4_.targetProgress;
               _loc7_.bonusId = _loc4_.bonusID;
               _loc7_.challengeType = _loc4_.locaID;
               if(_loc4_.id == param1.currentMasteryChallenge.id)
               {
                  _loc5_ = true;
                  _loc7_.currentProgress = param1.currentMasteryChallenge.currentProgress;
                  _loc2_.instantFinishPrice = getMasteryInstantFinishPrice(_loc4_.challengeValue,_loc7_.currentProgress,_loc7_.targetProgress);
                  _loc2_.currentMasteryIndex = _loc6_;
               }
               else if(_loc5_)
               {
                  _loc7_.currentProgress = 0;
               }
               else
               {
                  _loc7_.currentProgress = _loc4_.targetProgress;
               }
               _loc3_.push(_loc7_);
               _loc4_ = _loc4_.nextChallenge;
               _loc6_++;
            }
            _loc2_.challenges = _loc3_;
            return _loc2_;
         }
         return null;
      }
      
      public function getMasteryBonusForChallenge(param1:ResidentialFieldObjectVo, param2:Number, param3:int) : Vector.<MasteryBonusVo>
      {
         var _loc6_:ConfigMasteryBonusGroupDTO = null;
         var _loc4_:String = ConfigFactory.getResidentialBaseOutcomeResourceType(param1.buildingDTO.config);
         var _loc5_:String = ConfigFactory.getResidentialNeedOutcomeResourceType(param1);
         for each(_loc6_ in (this._config.masteryBoni[param2] as ConfigMasteryBonusDTO).buffs)
         {
            if(param3 == _loc6_.groupId)
            {
               return ConfigFactory.getMasteryBonusVosFromConfigMasteryBonusGroupDTO(_loc6_,_loc4_,_loc5_);
            }
         }
         return null;
      }
   }
}

