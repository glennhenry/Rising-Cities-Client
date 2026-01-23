package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigFeatureDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigFeatureRequirementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FeatureProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FeatureProxy";
      
      private var _flVarP:FlashVarsProxy;
      
      private var _pResP:PlayerResourceProxy;
      
      private var _plP:PlayerProxy;
      
      private var _gCP:GameConfigProxy;
      
      private var _cP:CityProxy;
      
      public function FeatureProxy(param1:String = "FeatureProxy", param2:Object = null)
      {
         super(param1,param2);
      }
      
      public function get improvementFeatureUnlocked() : Boolean
      {
         return this.playerResourceProxy.userLevel >= this.improvementFeatureUnlockLevel;
      }
      
      public function get improvementFeatureUnlockLevel() : int
      {
         return this.flashVarsProxy.improvementLevel;
      }
      
      public function get marketplaceFeatureUnlocked() : Boolean
      {
         return this.playerResourceProxy.userLevel >= this.marketplaceFeatureUnlockLevel;
      }
      
      public function get marketplaceFeatureUnlockLevel() : int
      {
         return this.flashVarsProxy.marketLevel;
      }
      
      public function get boosterPackFeatureUnlocked() : Boolean
      {
         return this.playerResourceProxy.userLevel >= this.boosterPackFeatureUnlockLevel;
      }
      
      public function get boosterPackFeatureUnlockLevel() : int
      {
         return this.flashVarsProxy.boosterPackLevel;
      }
      
      public function get masteryFeatureUnlockLevel() : int
      {
         var _loc1_:Vector.<ConfigFeatureRequirementDTO> = this.getFeatureEnableRequirements(ServerFeatureConstants.BUILDING_MASTERY);
         return _loc1_[0].configUserLevel.level;
      }
      
      public function isResourceUnlocked(param1:String) : Boolean
      {
         var _loc2_:ConfigResourceDTO = this.configProxy.config.resources[this.configProxy.config.resourceIds[param1]];
         return this.playerResourceProxy.userLevel >= this.configProxy.getLevelById(_loc2_.levelId).level;
      }
      
      public function isFeatureEnabled(param1:String) : Boolean
      {
         return this.playerProxy.player.enabledFeatures.indexOf(param1) != -1;
      }
      
      public function getFeatureEnableRequirements(param1:String) : Vector.<ConfigFeatureRequirementDTO>
      {
         var _loc2_:ConfigFeatureDTO = this.configProxy.config.features[param1];
         this.setCorrespondingRequirementConfig(_loc2_);
         return _loc2_.requirements;
      }
      
      private function setCorrespondingRequirementConfig(param1:ConfigFeatureDTO) : void
      {
         var _loc2_:ConfigFeatureRequirementDTO = null;
         for each(_loc2_ in param1.requirements)
         {
            if(_loc2_.type == ServerFeatureConstants.FEATURE_REQUIRED_TYPE_LEVEL && !_loc2_.configUserLevel)
            {
               _loc2_.configUserLevel = this.configProxy.config.levels[_loc2_.correspondingConfigId];
            }
            if(_loc2_.type == ServerFeatureConstants.FEATURE_REQUIRED_TYPE_QUEST && !_loc2_.configQuest)
            {
               _loc2_.configQuest = this.configProxy.config.quests[_loc2_.correspondingConfigId];
            }
         }
      }
      
      private function get flashVarsProxy() : FlashVarsProxy
      {
         if(this._flVarP == null)
         {
            this._flVarP = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         }
         return this._flVarP;
      }
      
      private function get playerResourceProxy() : PlayerResourceProxy
      {
         if(this._pResP == null)
         {
            this._pResP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._pResP;
      }
      
      private function get playerProxy() : PlayerProxy
      {
         if(this._plP == null)
         {
            this._plP = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         }
         return this._plP;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(this._gCP == null)
         {
            this._gCP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._gCP;
      }
      
      private function get cityProxy() : CityProxy
      {
         if(this._cP == null)
         {
            this._cP = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         }
         return this._cP;
      }
      
      public function get residentChangeUnlockLevel() : int
      {
         var _loc1_:ConfigResourceDTO = this.configProxy.config.resources[this.configProxy.config.resourceIds[ServerResConst.RESOURCE_RICHMEN]];
         return this.configProxy.getLevelById(_loc1_.levelId).level;
      }
      
      public function get residentChangeUnlocked() : Boolean
      {
         return this.isResourceUnlocked(ServerResConst.RESOURCE_RICHMEN);
      }
      
      public function get expansionBuyUnlockLevel() : int
      {
         var _loc1_:Vector.<ConfigFeatureRequirementDTO> = this.getFeatureEnableRequirements(ServerFeatureConstants.EXPANSION);
         return _loc1_[0].configUserLevel.level;
      }
      
      public function get isMoreThanOnePlayfieldEnabled() : Boolean
      {
         var _loc1_:uint = 0;
         if(this.cityProxy.city.playfields.length > 1)
         {
            _loc1_ = 1;
            if(this.isFeatureEnabled(ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH))
            {
               _loc1_++;
            }
            if(this.isFeatureEnabled(ServerFeatureConstants.SUBURBAN_PLAYFIELD_SWITCH))
            {
               _loc1_++;
            }
            if(this.isFeatureEnabled(ServerFeatureConstants.MOUNTAIN_PLAYFIELD_SWITCH))
            {
               _loc1_++;
            }
            return _loc1_ > 1;
         }
         return false;
      }
   }
}

