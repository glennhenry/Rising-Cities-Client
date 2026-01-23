package net.bigpoint.cityrama.model.miniLayer
{
   import mx.collections.ArrayList;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageVO;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.ExpansionSaleEventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ExpansionMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.InfraUpgradeMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.UpgradeMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MiniLayerProxy extends Proxy
   {
      
      public static const NAME:String = "MiniLayerProxy";
      
      private var _timerProxy:TimerProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _userResourceProxy:PlayerResourceProxy;
      
      private var _expansionsProxy:PlayfieldExpansionsProxy;
      
      private var _eventProxy:EventProxy;
      
      public function MiniLayerProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         this._goodStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._expansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
      }
      
      public function getExpansionVo(param1:ExpansionFieldObjectVo) : ExpansionMiniLayerVo
      {
         var _loc2_:ExpansionMiniLayerVo = new ExpansionMiniLayerVo();
         _loc2_.costs = this._expansionsProxy.getVCExpansionCosts(param1.configOrigin);
         _loc2_.affordable = _loc2_.costs <= this._resourceProxy.ingameCurrency;
         var _loc3_:ExpansionSaleEventProxy = facade.retrieveProxy(ExpansionSaleEventProxy.NAME) as ExpansionSaleEventProxy;
         _loc2_.onSale = _loc3_.getIsExpansionOnSale(param1.configOrigin);
         _loc2_.realCurrencyCosts = _loc3_.getRCExpansionCosts(param1.configOrigin);
         _loc2_.currentRealCurrency = this._resourceProxy.realCurrency;
         return _loc2_;
      }
      
      public function getUpgradeVo(param1:BillboardObjectVo) : UpgradeMiniLayerVo
      {
         var _loc4_:ConfigPhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:BlueprintImageVO = null;
         var _loc11_:ConfigOutputDTO = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:String = null;
         var _loc2_:UpgradeMiniLayerVo = new UpgradeMiniLayerVo();
         var _loc3_:ConfigPlayfieldItemDTO = this._gameConfigProxy.getConfigPlayfieldItemById(param1.buildingDTO.config.nextConfigId);
         if(_loc3_ != null)
         {
            for each(_loc8_ in _loc3_.constructionPhases)
            {
               if(_loc8_.phaseOrderId == 0)
               {
                  _loc4_ = _loc8_;
                  break;
               }
            }
            if(_loc4_)
            {
               for each(_loc9_ in _loc4_.listEntryOutputs)
               {
                  if(_loc9_.resourceConfig)
                  {
                     if(_loc9_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                     {
                        _loc2_.costs = Math.abs(_loc9_.outputAmount);
                        _loc2_.affordable = _loc2_.costs <= this._resourceProxy.ingameCurrency;
                     }
                  }
               }
            }
            if(param1 is ShopFieldObjectVo)
            {
               _loc2_.typeOfBuilding = UpgradeMiniLayerVo.BUILDING_COMMERCIAL;
            }
            else
            {
               _loc2_.typeOfBuilding = UpgradeMiniLayerVo.BUILDING_NORMAL;
            }
            var _loc5_:ArrayList = new ArrayList();
            var _loc6_:int = 0;
            for each(_loc7_ in _loc3_.constructionPhases)
            {
               if(_loc7_.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION)
               {
                  _loc10_ = new BlueprintImageVO();
                  _loc10_.visualLibName = "gui_popups_smallGoodIcons";
                  for each(_loc11_ in _loc7_.listEntryOutputs)
                  {
                     if(_loc11_.goodConfig)
                     {
                        _loc10_.visualName = "small_" + _loc11_.goodConfig.gfxId;
                        _loc12_ = ++_loc6_;
                        _loc13_ = Math.abs(_loc11_.outputAmount);
                        _loc14_ = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + _loc11_.goodConfig.gfxId);
                        _loc10_.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.needs",[_loc12_,_loc13_,_loc14_]);
                        _loc5_.addItem(_loc10_);
                     }
                  }
               }
            }
            _loc2_.materialList = _loc5_;
            return _loc2_;
         }
         throw new RamaCityError("UpgradeBuilding has no nextConfig!!");
      }
      
      public function getConstructionVo(param1:BillboardObject) : ConstructionMiniLayerVo
      {
         var _loc4_:ConfigPhaseDTO = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:PhaseDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc2_:ConfigPlayfieldItemDTO = param1.billboardObjectVo.configPlayfieldItemVo;
         var _loc3_:ConstructionMiniLayerVo = new ConstructionMiniLayerVo();
         _loc3_.assetLibName = "gui_popups_smallGoodIcons";
         for each(_loc6_ in param1.billboardObjectVo.activePhases)
         {
            if(_loc6_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION)
            {
               _loc3_.hasStarted = true;
               _loc3_.showStartButton = false;
               _loc3_.constructionStepEndTime = _loc6_.expirationTime;
               _loc4_ = _loc6_.config;
            }
            else if(_loc6_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION)
            {
               if(_loc6_.expirationTime <= this._timerProxy.currentTimeStamp)
               {
                  _loc3_.hasStarted = false;
                  if(_loc6_.expirationTime == 0)
                  {
                     _loc4_ = _loc6_.config;
                  }
                  else
                  {
                     for each(_loc5_ in _loc2_.constructionPhases)
                     {
                        if(_loc5_.phaseOrderId == _loc6_.config.phaseOrderId + 1)
                        {
                           _loc4_ = _loc5_;
                           break;
                        }
                     }
                  }
               }
               else if(_loc6_.expirationTime > this._timerProxy.currentTimeStamp)
               {
                  _loc3_.hasStarted = true;
                  _loc3_.constructionStepEndTime = _loc6_.expirationTime;
                  _loc4_ = _loc6_.config;
               }
            }
            else if(_loc6_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL || _loc6_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION)
            {
               _loc3_.hasStarted = false;
               for each(_loc5_ in _loc2_.constructionPhases)
               {
                  if(_loc5_.phaseOrderId == _loc6_.config.phaseOrderId + 1)
                  {
                     _loc4_ = _loc5_;
                     break;
                  }
               }
            }
         }
         if(_loc4_)
         {
            for each(_loc7_ in _loc4_.listEntryOutputs)
            {
               if(_loc7_.goodConfig)
               {
                  _loc3_.amountNeeded = Math.abs(_loc7_.outputAmount);
                  _loc3_.assetImageName = "small_" + _loc7_.goodConfig.gfxId;
                  _loc3_.assetGfxId = _loc7_.goodConfig.gfxId;
                  if(_loc7_.goodConfig.isEventGood)
                  {
                     _loc3_.assetLocaleName = LocaUtils.getString("rcl.citysquarequests." + this._eventProxy.currentRunningEventQuestLocaleId,"rcl.citysquarequests." + this._eventProxy.currentRunningEventQuestLocaleId + ".goods.goodname." + _loc7_.goodConfig.localeId);
                  }
                  else
                  {
                     _loc3_.assetLocaleName = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + _loc7_.goodConfig.localeId);
                  }
                  _loc3_.amountOwned = this._goodStockProxy.getCurrentStockOfGood(_loc7_.goodConfig.id);
                  _loc3_.materialAvailable = _loc3_.amountOwned >= Math.abs(_loc7_.outputAmount);
               }
            }
            _loc3_.constructionStepLength = _loc4_.durationConfig.duration;
         }
         _loc3_.constructionCurrentTime = this._timerProxy.currentTimeStamp;
         if(!_loc3_.constructionStepEndTime)
         {
            _loc3_.constructionStepEndTime = _loc3_.constructionCurrentTime + _loc3_.constructionStepLength;
         }
         _loc3_.realCurrencyCosts = param1.billboardObjectVo.getConstructionInstantFinishCost();
         _loc3_.hasEnoughRC = this.playerResourceProxy.realCurrency >= _loc3_.realCurrencyCosts;
         return _loc3_;
      }
      
      public function getInfraUpgradeVo(param1:BillboardObjectVo) : InfraUpgradeMiniLayerVo
      {
         var _loc4_:ConfigPhaseDTO = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:ConfigOutputDTO = null;
         var _loc2_:InfraUpgradeMiniLayerVo = new InfraUpgradeMiniLayerVo();
         _loc2_.billboardObjVo = param1;
         _loc2_.title = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.title.capital");
         _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.flavour");
         _loc2_.headerText = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.cost.capital");
         _loc2_.abortBtnLabel = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.cancelButton.capital");
         _loc2_.startBtnLabel = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.startButton.capital");
         _loc2_.abortBtnTooltip = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.cancelButton.tooltip");
         _loc2_.startBtnTooltip = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.startButton.tooltip");
         var _loc3_:ConfigPlayfieldItemDTO = this._gameConfigProxy.getConfigPlayfieldItemById(param1.buildingDTO.config.nextConfigId);
         if(_loc3_ != null)
         {
            for each(_loc5_ in _loc3_.constructionPhases)
            {
               if(_loc5_.phaseOrderId == 0)
               {
                  _loc4_ = _loc5_;
                  break;
               }
            }
            if(_loc4_)
            {
               for each(_loc6_ in _loc4_.listEntryOutputs)
               {
                  if(_loc6_.outputAmount < 0)
                  {
                     _loc2_.upgradeCosts.push(_loc6_);
                     if(_loc6_.goodConfig)
                     {
                        _loc2_.upgradeCostsAffordable.push(this._goodStockProxy.getGoodByConfigId(_loc6_.goodConfig.id).playerStock >= Math.abs(_loc6_.outputAmount));
                     }
                     else if(Boolean(_loc6_.resourceConfig) && _loc6_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                     {
                        _loc2_.upgradeCostsAffordable.push(this._resourceProxy.ingameCurrency >= Math.abs(_loc6_.outputAmount));
                     }
                  }
               }
            }
            _loc2_.instantRCCost = InfrastructureBuildingFieldObjectVo(param1).getUpgradeInstantFinishCost();
            _loc2_.userRCStock = this._resourceProxy.realCurrency;
            return _loc2_;
         }
         throw new RamaCityError("UpgradeBuilding has no nextConfig!!");
      }
      
      private function get playerResourceProxy() : PlayerResourceProxy
      {
         if(this._userResourceProxy == null)
         {
            this._userResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._userResourceProxy;
      }
   }
}

