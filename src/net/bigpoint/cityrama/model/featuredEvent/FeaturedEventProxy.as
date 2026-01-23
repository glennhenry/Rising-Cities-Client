package net.bigpoint.cityrama.model.featuredEvent
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.cityWheel.CityWheelProxy;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelRewardVo;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelTabVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.ServerEventTypeConst;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedEventSideMenuVo;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedMysteryBuildingVo;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedRunningEventVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.CityWheelRewardLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FeaturedEventProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FeaturedEventProxy";
      
      private var _evP:EventProxy;
      
      private var _coP:GameConfigProxy;
      
      private var _stP:PlayerGoodsStockProxy;
      
      private var _tiP:TimerProxy;
      
      private var _resP:PlayerResourceProxy;
      
      private var _cWP:CityWheelProxy;
      
      private var _lSP:LocalStorageProxy;
      
      public function FeaturedEventProxy()
      {
         super(NAME);
      }
      
      public static function isMysteryBuilding(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         if(param1)
         {
            return param1.tags.indexOf(ServerTagConstants.MYSTERY) != -1;
         }
         return false;
      }
      
      private static function getCityWheelRewardLibName(param1:CityWheelRewardDTO) : String
      {
         if(param1)
         {
            switch(param1.type)
            {
               case ServerOutputConstants.GOOD:
                  return "gui_resources_icons";
               case ServerOutputConstants.IMPROVEMENT:
                  return "gui_improvements_small";
               case ServerOutputConstants.RESOURCE:
                  return "gui_resources_icons";
               case ServerOutputConstants.PERMISSION:
                  var _loc2_:int = Math.ceil(param1.playfieldItemConfig.gfxId / 5) * 5;
                  var _loc3_:int = 0 - 4;
                  return "gui_popups_architect_" + 0 + "_" + 0;
               case ServerOutputConstants.TAG:
                  return "";
               case ServerOutputConstants.ASSIST:
                  if(Boolean(param1.assistConfig) && param1.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                  {
                     return "gui_popups_rentCollector";
                  }
            }
         }
         return "";
      }
      
      public function get mysteryBuildingRunning() : Boolean
      {
         return this.mysteryBuildingRunningEventVo != null;
      }
      
      public function get cityWheelRunning() : Boolean
      {
         if(this.cityWheelProxy)
         {
            return this.cityWheelProxy.rewardsReadyToCollect || this.getCurrentRunningEventByType(ServerEventTypeConst.WHEEL) != null;
         }
         return this.getCurrentRunningEventByType(ServerEventTypeConst.WHEEL) != null;
      }
      
      public function get featuredEventSideMenuVo() : FeaturedEventSideMenuVo
      {
         var _loc2_:Vector.<FeaturedRunningEventVo> = null;
         var _loc1_:FeaturedEventSideMenuVo = new FeaturedEventSideMenuVo();
         if(this.cityWheelProxy)
         {
            _loc1_.wheelRewardsWaiting = this.cityWheelProxy.rewardsReadyToCollect;
         }
         if(_loc1_.wheelRewardsWaiting)
         {
            return _loc1_;
         }
         if(this.eventProxy.listOfRunningGlobalEvents.length > 0)
         {
            _loc2_ = new Vector.<FeaturedRunningEventVo>();
            if(this.mysteryBuildingRunningEventVo)
            {
               _loc2_.push(this.mysteryBuildingRunningEventVo);
            }
            if(this.cityWheelRunningEventVo)
            {
               _loc2_.push(this.cityWheelRunningEventVo);
            }
            _loc1_.featuredEvents = _loc2_;
            if(_loc2_.length)
            {
               if(this.localStorageProxy.userdata.seenFeaturedEvents.indexOf(_loc1_.currentRunningEventType + _loc1_.timerVo.startTime) == -1)
               {
                  _loc1_.showNew = true;
               }
            }
         }
         return _loc1_;
      }
      
      public function get cityWheelDrawnRewards() : ArrayCollection
      {
         var _loc1_:ArrayCollection = null;
         var _loc2_:ConfigCityWheelBuffDTO = null;
         var _loc3_:ConfigCityWheelBuffDTO = null;
         var _loc4_:CityWheelRewardDTO = null;
         if(this.cityWheelProxy)
         {
            if(this.cityWheelProxy.rewardsReadyToCollect)
            {
               _loc1_ = new ArrayCollection();
               _loc2_ = this.cityWheelProxy.drawnBuff;
               if(_loc2_ != null)
               {
                  if(_loc2_.isMultiplier)
                  {
                     _loc3_ = _loc2_;
                  }
               }
               for each(_loc4_ in this.cityWheelProxy.drawnRewards)
               {
                  _loc1_.addItem(RewardLayerProxy.getRewardVoByOutputDTO(_loc4_,RewardItemComponentVo.SIZE_SMALL,false,_loc3_));
                  _loc3_ = null;
               }
               return _loc1_;
            }
         }
         return null;
      }
      
      public function get cityWheelRewardLayerVo() : CityWheelRewardLayerVo
      {
         var _loc2_:CityWheelRewardLayerVo = null;
         var _loc3_:Vector.<DropInfoVo> = null;
         var _loc4_:DropInfoVo = null;
         var _loc5_:CityWheelRewardDTO = null;
         var _loc1_:ArrayCollection = this.cityWheelDrawnRewards;
         if(_loc1_)
         {
            _loc2_ = new CityWheelRewardLayerVo();
            _loc3_ = new Vector.<DropInfoVo>();
            _loc2_.drawnRewards = this.cityWheelDrawnRewards;
            for each(_loc5_ in this.cityWheelProxy.drawnRewards)
            {
               _loc4_ = RewardLayerProxy.generateDropInfo(_loc5_);
               if(_loc4_)
               {
                  _loc3_.push(_loc4_);
               }
            }
            _loc2_.rewardDrops = _loc3_;
            return _loc2_;
         }
         return null;
      }
      
      public function get cityWheelTabVo() : CityWheelTabVo
      {
         var _loc1_:CityWheelTabVo = null;
         var _loc2_:CityWheelRewardVo = null;
         var _loc3_:Vector.<CityWheelRewardVo> = null;
         var _loc4_:CityWheelRewardDTO = null;
         if(this.cityWheelProxy)
         {
            if(this.cityWheelProxy.possibleRewards == null || this.cityWheelProxy.possibleRewards.length == 0)
            {
               return null;
            }
            _loc1_ = new CityWheelTabVo();
            _loc3_ = new Vector.<CityWheelRewardVo>();
            for each(_loc4_ in this.cityWheelProxy.possibleRewards)
            {
               _loc2_ = new CityWheelRewardVo();
               _loc2_.rewardDTO = _loc4_;
               _loc2_.iconName = this.getCityWheelRewardIconName(_loc4_);
               _loc2_.libName = getCityWheelRewardLibName(_loc4_);
               _loc3_.push(_loc2_);
            }
            _loc1_.lottery = _loc3_;
            var _loc5_:Vector.<ConfigCityWheelBuffDTO> = new Vector.<ConfigCityWheelBuffDTO>();
            for each(var _loc6_ in this.configProxy.config.configCityWheelDTO.wheelBuffs)
            {
               null.push(null);
            }
            _loc1_.buffs = null;
            var _loc7_:Vector.<GoodObjectVo> = this.goodStockProxy.getAllGoodsByTag(ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN);
            if(_loc7_.length > 0)
            {
               _loc1_.numSpinTokens = null[0].playerStock;
            }
            var _loc8_:Vector.<GoodObjectVo> = this.goodStockProxy.getAllGoodsByTag(ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN);
            if(_loc8_.length > 0)
            {
               _loc1_.numBuffTokens = null[0].playerStock;
            }
            var _loc9_:ConfigEventDTO = this.getCurrentRunningEventByType(ServerEventTypeConst.WHEEL);
            if(_loc9_)
            {
               var _loc10_:TimerBarComponentVo = new TimerBarComponentVo();
               _loc10_.cycleLength = null.totalAvailabilityTime;
               null.startTime = null.availabilityTimeStart;
               null.targetTime = null.startTime + null.cycleLength;
               null.currentTime = this.timerProxy.currentTimeStamp;
               _loc1_.availabilityTimer = null;
            }
            return _loc1_;
         }
         return null;
      }
      
      public function get featuredMysteryBuildingVo() : FeaturedMysteryBuildingVo
      {
         var _loc1_:ConfigPlayfieldItemDTO = this.featuredPlayfieldItem;
         if(_loc1_)
         {
            if(isMysteryBuilding(_loc1_))
            {
               var _loc2_:FeaturedMysteryBuildingVo = new FeaturedMysteryBuildingVo();
               var _loc3_:ConfigEventDTO = this.getCurrentRunningEventByType(ServerEventTypeConst.PERMISSION);
               null.mysteryConfigPlayfieldItem = _loc1_;
            }
         }
         return null;
      }
      
      private function get mysteryBuildingRunningEventVo() : FeaturedRunningEventVo
      {
         var _loc1_:FeaturedRunningEventVo = null;
         var _loc2_:ConfigEventDTO = null;
         if(this.featuredPlayfieldItem)
         {
            if(isMysteryBuilding(this.featuredPlayfieldItem))
            {
               if(this.featuredPlayfieldItem.unlockLevel <= this.resourceProxy.userLevel)
               {
                  _loc1_ = new FeaturedRunningEventVo();
                  _loc1_.type = FeaturedRunningEventVo.FEATURED_MYSTERY;
                  _loc2_ = this.getCurrentRunningEventByType(ServerEventTypeConst.PERMISSION);
                  if(_loc2_)
                  {
                     _loc1_.timerVo = this.getFeaturedEventTimerVo(_loc2_);
                     if(_loc1_.timerVo.targetTime <= _loc1_.timerVo.currentTime)
                     {
                        return null;
                     }
                     return _loc1_;
                  }
               }
            }
         }
         return null;
      }
      
      private function get cityWheelRunningEventVo() : FeaturedRunningEventVo
      {
         var _loc2_:FeaturedRunningEventVo = null;
         var _loc1_:ConfigEventDTO = this.getCurrentRunningEventByType(ServerEventTypeConst.WHEEL);
         if(Boolean(_loc1_) && FeatureProxy(facade.retrieveProxy(FeatureProxy.NAME)).isFeatureEnabled(ServerFeatureConstants.CITYWHEEL))
         {
            _loc2_ = new FeaturedRunningEventVo();
            _loc2_.type = FeaturedRunningEventVo.FEATURED_WHEEL;
            _loc2_.timerVo = this.getFeaturedEventTimerVo(_loc1_);
            return _loc2_;
         }
         return null;
      }
      
      private function getFeaturedEventTimerVo(param1:ConfigEventDTO) : TimerBarComponentVo
      {
         var _loc2_:TimerBarComponentVo = null;
         if(param1)
         {
            _loc2_ = new TimerBarComponentVo();
            _loc2_.cycleLength = param1.totalAvailabilityTime;
            _loc2_.startTime = param1.availabilityTimeStart;
            _loc2_.targetTime = _loc2_.startTime + _loc2_.cycleLength;
            _loc2_.currentTime = this.timerProxy.currentTimeStamp;
            return _loc2_;
         }
         return null;
      }
      
      public function get featuredPlayfieldItem() : ConfigPlayfieldItemDTO
      {
         var _loc1_:ConfigPlayfieldItemPermissionDTO = null;
         var _loc2_:ConfigEventDTO = null;
         var _loc3_:ConfigPlayfieldItemPermissionDTO = null;
         if(this.eventProxy.listOfRunningGlobalEvents.length > 0)
         {
            _loc2_ = this.getCurrentRunningEventByType(ServerEventTypeConst.PERMISSION);
            if(_loc2_)
            {
               for each(_loc3_ in this.configProxy.config.permissions)
               {
                  if(_loc3_.eventIdList.length > 0)
                  {
                     if(_loc3_.eventIdList.indexOf(_loc2_.id) != -1)
                     {
                        _loc1_ = _loc3_;
                        break;
                     }
                  }
               }
               if(_loc1_)
               {
                  return this.configProxy.getConfigPlayfieldItemsByPermissionId(_loc1_.id)[0];
               }
            }
         }
         return null;
      }
      
      private function getCurrentRunningEventByType(param1:String) : ConfigEventDTO
      {
         var _loc2_:ConfigEventDTO = null;
         for each(_loc2_ in this.eventProxy.listOfRunningGlobalEvents)
         {
            if(_loc2_.eventType == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(!this._coP)
         {
            this._coP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._coP;
      }
      
      private function get eventProxy() : EventProxy
      {
         if(!this._evP)
         {
            this._evP = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         }
         return this._evP;
      }
      
      private function get goodStockProxy() : PlayerGoodsStockProxy
      {
         if(!this._stP)
         {
            this._stP = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         }
         return this._stP;
      }
      
      private function get timerProxy() : TimerProxy
      {
         if(!this._tiP)
         {
            this._tiP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         }
         return this._tiP;
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         if(!this._resP)
         {
            this._resP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._resP;
      }
      
      private function get cityWheelProxy() : CityWheelProxy
      {
         if(!this._cWP)
         {
            this._cWP = facade.retrieveProxy(CityWheelProxy.NAME) as CityWheelProxy;
         }
         return this._cWP;
      }
      
      private function get localStorageProxy() : LocalStorageProxy
      {
         if(!this._lSP)
         {
            this._lSP = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         }
         return this._lSP;
      }
      
      private function getCityWheelRewardIconName(param1:CityWheelRewardDTO) : String
      {
         if(param1)
         {
            switch(param1.type)
            {
               case ServerOutputConstants.GOOD:
                  return "ressource_" + param1.goodConfig.gfxId + "_medium";
               case ServerOutputConstants.IMPROVEMENT:
                  return "improvement_small_" + param1.improvementConfig.gfxId;
               case ServerOutputConstants.RESOURCE:
                  if(this.configProxy.config.resourceStrings[param1.resourceConfig.id] == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                  {
                     return "vc_icon_medium";
                  }
                  if(this.configProxy.config.resourceStrings[param1.resourceConfig.id] == ServerResConst.RESOURCE_REALCURRENCY)
                  {
                     return "rc_icon_medium";
                  }
                  if(this.configProxy.config.resourceStrings[param1.resourceConfig.id] == ServerResConst.RESOURCE_PRODUCTIONPOINTS)
                  {
                     return "pp_icon_medium";
                  }
                  if(this.configProxy.config.resourceStrings[param1.resourceConfig.id] == ServerResConst.RESOURCE_EDUCATIONPOINTS)
                  {
                     return "ep_icon_medium";
                  }
                  if(this.configProxy.config.resourceStrings[param1.resourceConfig.id] == ServerResConst.RESOURCE_EXPERIENCE)
                  {
                     return "xp_icon_medium";
                  }
                  break;
               case ServerOutputConstants.ASSIST:
                  if(param1.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                  {
                     return "rentCollector_small_" + param1.assistConfig.gfxId;
                  }
                  break;
               case ServerOutputConstants.PERMISSION:
                  return "FieldItem_" + param1.playfieldItemConfig.gfxId + "_small";
            }
         }
         throw new RamaCityError("This type of reward was not expected!! Please tell gamedesign to check the editor");
      }
   }
}

