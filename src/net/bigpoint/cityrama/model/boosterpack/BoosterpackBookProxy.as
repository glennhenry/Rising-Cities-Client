package net.bigpoint.cityrama.model.boosterpack
{
   import flash.utils.Dictionary;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigBoosterDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigRewardDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class BoosterpackBookProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "BoosterpackBookProxy";
      
      public static const ALL:String = "ALL";
      
      public static const STANDARD_BOOSTER:String = "STANDARD";
      
      public static const SUBLEVEL_BOOSTER:String = "SUBLEVEL";
      
      private var _boosterpackCollections:Dictionary;
      
      private var _boosterpackTypes:Vector.<String> = new Vector.<String>();
      
      private var _boughtBoosterpackVo:BoosterpackVo;
      
      private var _rewardDTOs:Vector.<ConfigRewardDTO>;
      
      private var _cP:GameConfigProxy;
      
      private var _gSP:PlayerGoodsStockProxy;
      
      private var _pRP:PlayerResourceProxy;
      
      public function BoosterpackBookProxy(param1:String = null, param2:Object = null)
      {
         this._boosterpackTypes.push(ALL);
         this._boosterpackTypes.push(STANDARD_BOOSTER);
         this._boosterpackTypes.push(SUBLEVEL_BOOSTER);
         super(param1,param2);
      }
      
      public function setRewardData(param1:Vector.<ConfigRewardDTO>) : void
      {
         var _loc2_:ConfigRewardDTO = null;
         this._rewardDTOs = new Vector.<ConfigRewardDTO>();
         for each(_loc2_ in param1)
         {
            this._rewardDTOs.push(_loc2_);
         }
         facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_UPDATE_REWARD);
      }
      
      public function getRewardData() : Vector.<RewardItemComponentVo>
      {
         var _loc2_:Object = null;
         var _loc3_:ConfigRewardDTO = null;
         var _loc4_:BriskDynaVo = null;
         var _loc1_:Vector.<RewardItemComponentVo> = new Vector.<RewardItemComponentVo>();
         for each(_loc3_ in this._rewardDTOs)
         {
            _loc2_ = new Object();
            _loc2_.factor = _loc3_.doubled ? 2 : 1;
            if(_loc3_.resourceConfig != null)
            {
               _loc2_.type = RewardItemComponentVo.TYPE_RESOURCE;
               _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
               _loc2_.useNew = false;
               _loc2_.cid = _loc3_.resourceConfig.id;
               switch(_loc3_.resourceConfig.type)
               {
                  case ServerResConst.RESOURCE_REALCURRENCY:
                     _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_RC;
                     _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.realcurrency"));
                     _loc2_.itemIcon = "rc_icon_medium";
                     break;
                  case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                     _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_VC;
                     _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.virtualcurrency"));
                     _loc2_.itemIcon = "vc_icon_medium";
                     break;
                  case ServerResConst.RESOURCE_EXPERIENCE:
                     _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_XP;
                     _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.experience"));
                     _loc2_.itemIcon = "xp_icon_medium";
                     break;
                  case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                     _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_PP;
                     _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.productionpoints"));
                     _loc2_.itemIcon = "pp_icon_medium";
                     break;
                  case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                     _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_EP;
                     _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.educationpoints"));
                     _loc2_.itemIcon = "ep_icon_medium";
               }
               _loc2_.itemIconLib = "gui_resources_icons";
               _loc2_.price = _loc3_.outputAmount;
               if(_loc3_.doubled)
               {
                  _loc2_.price = _loc3_.outputAmount / 2;
               }
            }
            else if(_loc3_.goodConfig != null)
            {
               _loc2_.cid = _loc3_.goodConfig.id;
               if(_loc3_.goodConfig.isEventGood)
               {
                  _loc2_.type = RewardItemComponentVo.TYPE_EVENT_GOOD;
               }
               else if(_loc3_.goodConfig.isSpecialGood)
               {
                  _loc2_.type = RewardItemComponentVo.TYPE_SPECIAL_GOOD;
               }
               else
               {
                  _loc2_.type = RewardItemComponentVo.TYPE_NORMAL_GOOD;
               }
               _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.goods.goodname"),String("rcl.goods.goodname." + _loc3_.goodConfig.localeId));
               _loc2_.itemIconLib = "gui_resources_icons";
               _loc2_.itemIcon = "ressource_" + _loc3_.goodConfig.gfxId + "_medium";
               _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
               _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
               _loc2_.useNew = false;
               _loc2_.price = _loc3_.outputAmount;
               if(_loc3_.doubled)
               {
                  _loc2_.price = _loc3_.outputAmount / 2;
               }
            }
            else if(_loc3_.configPlayfieldItem)
            {
               _loc2_.cid = _loc3_.configPlayfieldItem.id;
               _loc2_.type = RewardItemComponentVo.TYPE_NORMAL_PERMISSION;
               if(_loc3_.configPlayfieldItem.specialHighlighting)
               {
                  _loc2_.type = RewardItemComponentVo.TYPE_SPECIAL_PERMISSION;
               }
               _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + _loc3_.configPlayfieldItem.localeId));
               if(_loc3_.configPlayfieldItem.isPremium)
               {
                  _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_CONSTRUCTED;
               }
               else
               {
                  _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_PERMISSSON;
               }
               _loc2_.itemIconLib = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc3_.configPlayfieldItem);
               _loc2_.itemIcon = "FieldItem_" + _loc3_.configPlayfieldItem.gfxId + "_small";
               _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
               _loc2_.useNew = false;
               _loc2_.price = _loc3_.outputAmount;
               if(_loc3_.doubled)
               {
                  _loc2_.price = _loc3_.outputAmount / 2;
               }
            }
            else if(_loc3_.improvementConfig != null)
            {
               _loc2_.cid = _loc3_.improvementConfig.id;
               _loc2_.type = RewardItemComponentVo.TYPE_IMPROVEMENT;
               _loc2_.tooltip = ImprovementLayerProxy.improvementName(_loc3_.improvementConfig);
               _loc4_ = ImprovementLayerProxy.improvementGfx(_loc3_.improvementConfig);
               _loc2_.itemIconLib = _loc4_.dynaLibName;
               _loc2_.itemIcon = _loc4_.dynaBmpName;
               _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
               _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
               _loc2_.useNew = false;
               _loc2_.quality = _loc3_.improvementConfig.quality;
               _loc2_.price = _loc3_.outputAmount;
               if(_loc3_.doubled)
               {
                  _loc2_.price = _loc3_.outputAmount / 2;
               }
            }
            else if(_loc3_.assistConfig)
            {
               if(_loc3_.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
               {
                  _loc2_.cid = _loc3_.assistConfig.id;
                  _loc2_.type = RewardItemComponentVo.TYPE_ASSIST;
                  _loc2_.tooltip = LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name");
                  _loc2_.itemIconLib = "gui_popups_rentCollector";
                  _loc2_.itemIcon = "rentCollector_small_" + _loc3_.assistConfig.gfxId;
                  _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
                  _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                  _loc2_.useNew = false;
                  _loc2_.price = _loc3_.outputAmount;
                  if(_loc3_.doubled)
                  {
                     _loc2_.price = _loc3_.outputAmount / 2;
                  }
               }
               else
               {
                  _loc2_ = null;
               }
            }
            if(_loc2_)
            {
               _loc1_.push(new RewardItemComponentVo(_loc2_));
            }
         }
         return _loc1_.sort(this.sortNumericField);
      }
      
      private function sortNumericField(param1:RewardItemComponentVo, param2:RewardItemComponentVo) : int
      {
         if(param1.sortint > param2.sortint)
         {
            return 1;
         }
         if(param1.sortint > param2.sortint)
         {
            return -1;
         }
         return 0;
      }
      
      public function getBoosterpackVos(param1:String = "STANDARD") : Vector.<BoosterpackVo>
      {
         if(this._boosterpackCollections == null || this._boosterpackCollections[param1] == null)
         {
            this.initBoosterpackVos();
         }
         else
         {
            this.updateBoosterpackVos();
         }
         return this._boosterpackCollections[param1];
      }
      
      public function getNextBoosterpackSlotId(param1:int, param2:String = "STANDARD") : int
      {
         if(this._boosterpackCollections[param2] == null || param1 + 1 >= this._boosterpackCollections[param2].length)
         {
            return 0;
         }
         return param1 + 1;
      }
      
      public function getPreviousBoosterpackSlotId(param1:int, param2:String = "STANDARD") : int
      {
         if(this._boosterpackCollections[param2] == null)
         {
            return 0;
         }
         if(param1 - 1 < 0)
         {
            return this._boosterpackCollections[param2].length - 1;
         }
         return param1 - 1;
      }
      
      public function getBoosterpackVoBySlotId(param1:int, param2:String = "STANDARD") : BoosterpackVo
      {
         var _loc3_:BoosterpackVo = null;
         for each(_loc3_ in this._boosterpackCollections[param2])
         {
            if(_loc3_.slotId == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function initBoosterpackVos() : void
      {
         var _loc1_:ConfigBoosterDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         var _loc3_:BoosterpackVo = null;
         var _loc4_:GoodObjectVo = null;
         var _loc5_:String = null;
         var _loc6_:Boolean = false;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         this._boosterpackCollections = new Dictionary();
         this._boosterpackCollections[ALL] = new Vector.<BoosterpackVo>();
         this._boosterpackCollections[STANDARD_BOOSTER] = new Vector.<BoosterpackVo>();
         this._boosterpackCollections[SUBLEVEL_BOOSTER] = new Vector.<BoosterpackVo>();
         for each(_loc1_ in this.configProxy.config.boosterpacks)
         {
            _loc3_ = new BoosterpackVo();
            _loc3_.gfxId = _loc1_.gfxId;
            _loc3_.locaId = _loc1_.locaId;
            _loc3_.id = _loc1_.id;
            _loc2_ = this.getPriceConfig(_loc1_);
            if(_loc2_)
            {
               _loc2_.goodConfig = this.configProxy.config.goods[_loc2_.configId];
               _loc3_.defaultCostConfig = _loc2_;
               _loc4_ = this.goodStockProxy.getGoodByConfigId(_loc2_.configId);
               _loc3_.defaultCostUserStock = _loc4_.playerStock;
            }
            _loc2_ = this.getPriceConfig(_loc1_,true);
            if(_loc2_)
            {
               _loc3_.realCurrencyCostConfig = _loc2_;
               _loc3_.realCurrencyUserStock = this.resourceProxy.realCurrency;
            }
            _loc3_.config = _loc1_;
            _loc6_ = true;
            for each(_loc7_ in _loc3_.config.tags)
            {
               if(_loc7_.indexOf(ServerTagConstants.CLIENT_SUBLEVEL_BOOSTER_PACK) != -1)
               {
                  _loc6_ = false;
                  _loc3_.type = this.serverTagConstantToBoosterType(_loc7_);
                  this._boosterpackCollections[_loc3_.type].push(_loc3_);
                  break;
               }
            }
            if(_loc6_)
            {
               _loc3_.type = STANDARD_BOOSTER;
               this._boosterpackCollections[STANDARD_BOOSTER].push(_loc3_);
            }
            this._boosterpackCollections[ALL].push(_loc3_);
         }
         for each(_loc5_ in this._boosterpackTypes)
         {
            this._boosterpackCollections[_loc5_].sort(this.sortBoosterPackByValue);
            if(_loc5_ != ALL)
            {
               _loc8_ = 0;
               while(_loc8_ < this._boosterpackCollections[_loc5_].length)
               {
                  this._boosterpackCollections[_loc5_][_loc8_].slotId = _loc8_;
                  _loc8_++;
               }
            }
         }
      }
      
      private function sortBoosterPackByValue(param1:BoosterpackVo, param2:BoosterpackVo) : int
      {
         if(param1.gfxId > param2.gfxId)
         {
            return 1;
         }
         if(param1.gfxId < param2.gfxId)
         {
            return -1;
         }
         return 0;
      }
      
      private function updateBoosterpackVos() : void
      {
         var _loc1_:ConfigOutputDTO = null;
         var _loc2_:GoodObjectVo = null;
         var _loc3_:String = null;
         var _loc4_:BoosterpackVo = null;
         for each(_loc3_ in this._boosterpackTypes)
         {
            for each(_loc4_ in this._boosterpackCollections[_loc3_])
            {
               _loc1_ = this.getPriceConfig(_loc4_.config);
               _loc2_ = this.goodStockProxy.getGoodByConfigId(_loc1_.configId);
               _loc4_.defaultCostUserStock = _loc2_.playerStock;
               _loc1_ = this.getPriceConfig(_loc4_.config,true);
               if(_loc1_)
               {
                  _loc4_.realCurrencyUserStock = this.resourceProxy.realCurrency;
               }
            }
         }
      }
      
      private function getPriceConfig(param1:ConfigBoosterDTO, param2:Boolean = false) : ConfigOutputDTO
      {
         var _loc4_:ConfigOutputDTO = null;
         var _loc3_:String = ServerOutputConstants.GOOD;
         if(param2)
         {
            _loc3_ = ServerOutputConstants.RESOURCE;
         }
         for each(_loc4_ in param1.priceConfigs)
         {
            if(_loc3_ == ServerOutputConstants.GOOD)
            {
               if(_loc4_.type == _loc3_)
               {
                  return _loc4_;
               }
            }
            else if(_loc4_.type == _loc3_)
            {
               if(!_loc4_.resourceConfig)
               {
                  _loc4_.resourceConfig = this.configProxy.config.resources[_loc4_.configId];
               }
               if(_loc4_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
      
      public function get configProxy() : GameConfigProxy
      {
         if(this._cP == null)
         {
            this._cP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._cP;
      }
      
      public function get goodStockProxy() : PlayerGoodsStockProxy
      {
         if(this._gSP == null)
         {
            this._gSP = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         }
         return this._gSP;
      }
      
      public function get resourceProxy() : PlayerResourceProxy
      {
         if(this._pRP == null)
         {
            this._pRP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._pRP;
      }
      
      public function get boughtBoosterpackVo() : BoosterpackVo
      {
         return this._boughtBoosterpackVo;
      }
      
      public function set boughtBoosterpackVo(param1:BoosterpackVo) : void
      {
         this._boughtBoosterpackVo = param1;
      }
      
      public function get boosterpackTypes() : Vector.<String>
      {
         return this._boosterpackTypes;
      }
      
      private function serverTagConstantToBoosterType(param1:String) : String
      {
         switch(param1)
         {
            case ServerTagConstants.CLIENT_SUBLEVEL_BOOSTER_PACK:
               return SUBLEVEL_BOOSTER;
            default:
               return STANDARD_BOOSTER;
         }
      }
   }
}

