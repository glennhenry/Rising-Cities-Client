package net.bigpoint.cityrama.model.improvement
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.vo.RewardImprovementItemComponentVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementBoosterpackVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigBoosterDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigRewardDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ImprovementStoreProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ImprovementStoreProxy";
      
      private var _improvementBoosterPacks:Vector.<ImprovementBoosterpackVo>;
      
      private var _rewardDTOs:Vector.<ConfigRewardDTO>;
      
      private var _boughtImprovementPackVo:ImprovementBoosterpackVo;
      
      public function ImprovementStoreProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      private static function sortNumericField(param1:RewardItemComponentVo, param2:RewardItemComponentVo) : int
      {
         if(param1.sortint < param2.sortint)
         {
            return 1;
         }
         if(param1.sortint > param2.sortint)
         {
            return -1;
         }
         return 0;
      }
      
      private static function sortBySortingTag(param1:ImprovementBoosterpackVo, param2:ImprovementBoosterpackVo) : Number
      {
         return param1.orderID - param2.orderID;
      }
      
      public function setRewardData(param1:Vector.<ConfigRewardDTO>) : void
      {
         this._rewardDTOs = param1;
         facade.sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_UPDATE_REWARDS);
      }
      
      public function getRewardData() : Vector.<RewardImprovementItemComponentVo>
      {
         var _loc2_:Object = null;
         var _loc3_:BriskDynaVo = null;
         var _loc4_:ConfigRewardDTO = null;
         var _loc5_:int = 0;
         var _loc1_:Vector.<RewardImprovementItemComponentVo> = new Vector.<RewardImprovementItemComponentVo>();
         for each(_loc4_ in this._rewardDTOs)
         {
            if(_loc4_.improvementConfig)
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_.outputAmount)
               {
                  _loc2_ = new Object();
                  _loc2_.factor = _loc4_.doubled ? 2 : 1;
                  _loc2_.type = RewardItemComponentVo.TYPE_IMPROVEMENT;
                  _loc2_.quality = _loc4_.improvementConfig.quality;
                  _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
                  _loc2_.useNew = false;
                  _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                  _loc2_.tooltip = "";
                  _loc3_ = ImprovementLayerProxy.improvementGfx(_loc4_.improvementConfig);
                  _loc2_.itemIcon = _loc3_.dynaBmpName;
                  _loc2_.itemIconLib = _loc3_.dynaLibName;
                  _loc2_.price = 1;
                  _loc2_.configID = _loc4_.improvementConfig.id;
                  _loc1_.push(new RewardImprovementItemComponentVo(_loc2_));
                  _loc5_++;
               }
            }
         }
         return _loc1_.sort(sortNumericField);
      }
      
      public function getImprovementBoosterPacks() : Vector.<ImprovementBoosterpackVo>
      {
         if(this._improvementBoosterPacks == null)
         {
            this.initPacks();
         }
         else
         {
            this.updatePacks();
         }
         return this._improvementBoosterPacks;
      }
      
      private function initPacks() : void
      {
         var _loc2_:ConfigBoosterDTO = null;
         var _loc3_:ConfigOutputDTO = null;
         var _loc4_:ImprovementBoosterpackVo = null;
         var _loc5_:ImprovementBoosterpackVo = null;
         this._improvementBoosterPacks = new Vector.<ImprovementBoosterpackVo>();
         var _loc1_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc2_ in _loc1_.config.improvementBoosterPacks)
         {
            _loc5_ = new ImprovementBoosterpackVo();
            _loc5_.orderID = this.getOrderID(_loc2_.tags);
            _loc5_.gfxId = _loc2_.gfxId;
            _loc5_.locaId = _loc2_.locaId;
            _loc5_.id = _loc2_.id;
            _loc3_ = this.getPriceConfig(_loc2_);
            if(_loc3_)
            {
               _loc5_.defaultCostConfig = _loc3_;
               _loc5_.currencyType = _loc3_.resourceConfig.type;
               _loc5_.defaultCostUserStock = this.getCredit(_loc5_);
            }
            _loc5_.config = _loc2_;
            this._improvementBoosterPacks.push(_loc5_);
         }
         this._improvementBoosterPacks.sort(sortBySortingTag);
         for each(_loc4_ in this._improvementBoosterPacks)
         {
            _loc4_.slotId = this._improvementBoosterPacks.indexOf(_loc4_);
         }
      }
      
      private function getOrderID(param1:Vector.<String>) : Number
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(param1 == null)
         {
            return 0;
         }
         var _loc3_:int = ServerTagConstants.CLIENT_SORT_WEIGHT.length;
         var _loc4_:Boolean = false;
         _loc5_ = 0;
         while(_loc5_ < param1.length)
         {
            _loc6_ = int(param1[_loc5_].indexOf(ServerTagConstants.CLIENT_SORT_WEIGHT));
            if(_loc6_ != -1)
            {
               _loc4_ = true;
               break;
            }
            _loc5_++;
         }
         if(_loc4_)
         {
            return int(param1[_loc5_].slice(_loc6_ + _loc3_,param1[_loc5_].length));
         }
         return 0;
      }
      
      private function updatePacks() : void
      {
         var _loc1_:ImprovementBoosterpackVo = null;
         for each(_loc1_ in this._improvementBoosterPacks)
         {
            _loc1_.defaultCostUserStock = this.getCredit(_loc1_);
         }
      }
      
      private function getPriceConfig(param1:ConfigBoosterDTO) : ConfigOutputDTO
      {
         var _loc2_:ConfigOutputDTO = null;
         var _loc3_:GameConfigProxy = null;
         for each(_loc2_ in param1.priceConfigs)
         {
            if(_loc2_.type == ServerOutputConstants.RESOURCE)
            {
               if(!_loc2_.resourceConfig)
               {
                  _loc3_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  _loc2_.resourceConfig = _loc3_.resources[_loc2_.configId];
               }
               if(_loc2_.resourceConfig)
               {
                  if(_loc2_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY || _loc2_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      private function getCredit(param1:ImprovementBoosterpackVo) : Number
      {
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(param1.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
         {
            return _loc2_.realCurrency;
         }
         if(param1.currencyType == ServerResConst.RESOURCE_VIRTUALCURRENCY)
         {
            return _loc2_.ingameCurrency;
         }
         return 0;
      }
      
      public function get boughtImprovementPackVo() : ImprovementBoosterpackVo
      {
         return this._boughtImprovementPackVo;
      }
      
      public function set boughtImprovementPackVo(param1:ImprovementBoosterpackVo) : void
      {
         this._boughtImprovementPackVo = param1;
      }
   }
}

