package net.bigpoint.cityrama.model.player
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.GoodRequireVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.improvement.ImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.vo.InventoryImprovementVo;
   import net.bigpoint.cityrama.model.inventory.InventoryProxy;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryItemVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayerGoodsStockProxy extends Proxy
   {
      
      public static const NAME:String = "PlayerGoodsStockProxy";
      
      private var _ivP:InventoryProxy;
      
      private var _cP:GameConfigProxy;
      
      private var _imP:ImprovementProxy;
      
      private var _goodVoDict:Dictionary;
      
      private var _productionGoodVoDict:Dictionary;
      
      public function PlayerGoodsStockProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._goodVoDict = new Dictionary();
         this._productionGoodVoDict = new Dictionary();
      }
      
      public function getCurrentStockOfGood(param1:Number) : int
      {
         var _loc2_:InventoryItemVo = this.inventoryProxy.inventoryGoods[param1];
         if(_loc2_ != null)
         {
            return _loc2_.amount;
         }
         return 0;
      }
      
      public function setCurrentStockForGoodObjectVo(param1:GoodObjectVo) : void
      {
         var _loc2_:ConfigGoodDTO = param1.config;
         if(this.inventoryProxy.inventoryGoods[_loc2_.id] != null)
         {
            param1.playerStock = InventoryItemVo(this.inventoryProxy.inventoryGoods[_loc2_.id]).amount;
         }
      }
      
      public function getAllGoodsByTag(param1:String) : Vector.<GoodObjectVo>
      {
         var _loc3_:GoodObjectVo = null;
         var _loc4_:ConfigGoodDTO = null;
         var _loc5_:ConfigTagDTO = null;
         var _loc2_:Vector.<GoodObjectVo> = new Vector.<GoodObjectVo>();
         for each(_loc4_ in this.configProxy.goods)
         {
            _loc3_ = this.getGoodByConfigId(_loc4_.id);
            for each(_loc5_ in _loc4_.tagConfigs)
            {
               if(_loc5_.tagName == param1)
               {
                  _loc2_.push(_loc3_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get allCurrentPermissions() : Vector.<PlayfieldItemPermissionDTO>
      {
         var _loc2_:InventoryItemVo = null;
         var _loc1_:Vector.<PlayfieldItemPermissionDTO> = new Vector.<PlayfieldItemPermissionDTO>();
         for each(_loc2_ in this.inventoryProxy.inventoryPermissions)
         {
            _loc1_.push(_loc2_.permissionDTO);
         }
         return _loc1_;
      }
      
      public function getPermissionAmountByConfigId(param1:Number) : int
      {
         var _loc3_:PlayfieldItemPermissionDTO = null;
         var _loc2_:int = -666;
         for each(_loc3_ in this.allCurrentPermissions)
         {
            if(_loc3_.permissionConfigId == param1)
            {
               _loc2_ = _loc3_.permissionsLeft;
            }
         }
         if(this.allCurrentPermissions.length == 0 || _loc2_ == -666)
         {
            _loc2_ = this.getConfigPermissionInitialAmount(param1);
         }
         return _loc2_;
      }
      
      private function getConfigPermissionInitialAmount(param1:Number) : int
      {
         var _loc3_:ConfigPlayfieldItemPermissionDTO = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.configProxy.config.permissions)
         {
            if(param1 == _loc3_.id)
            {
               _loc2_ = _loc3_.initialPermissions;
            }
         }
         return _loc2_;
      }
      
      public function getPermissionByConfigId(param1:Number, param2:Boolean = true) : PlayfieldItemPermissionDTO
      {
         var _loc4_:PlayfieldItemPermissionDTO = null;
         var _loc3_:PlayfieldItemPermissionDTO = null;
         for each(_loc4_ in this.allCurrentPermissions)
         {
            if(_loc4_.permissionConfigId == param1)
            {
               _loc3_ = _loc4_;
               break;
            }
         }
         if(param2)
         {
            if(this.allCurrentPermissions.length == 0 || _loc3_ == null)
            {
               _loc3_ = this.getInitialMockedPermission(param1);
            }
         }
         return _loc3_;
      }
      
      private function getInitialMockedPermission(param1:Number) : PlayfieldItemPermissionDTO
      {
         var _loc3_:ConfigPlayfieldItemPermissionDTO = null;
         var _loc4_:Object = null;
         for each(_loc3_ in this.configProxy.config.permissions)
         {
            if(param1 == _loc3_.id)
            {
               _loc4_ = new Object();
               _loc4_.cid = param1;
               _loc4_.l = _loc3_.initialPermissions;
               _loc4_.b = 0;
               var _loc2_:PlayfieldItemPermissionDTO = ConfigFactory.buildPermissionDTO(_loc4_);
            }
         }
         return null;
      }
      
      public function getGoodByConfigId(param1:Number) : GoodObjectVo
      {
         var _loc2_:GoodObjectVo = this._goodVoDict[param1];
         if(_loc2_ == null)
         {
            if(this.configProxy.config.goods[param1] == null)
            {
               return null;
            }
            _loc2_ = ConfigFactory.buildGoodObjectVo(this.configProxy.config.goods[param1]);
            this._goodVoDict[param1] = _loc2_;
         }
         if(this.inventoryProxy.inventoryGoods)
         {
            if(this.inventoryProxy.inventoryGoods[param1] != null)
            {
               _loc2_.playerStock = InventoryItemVo(this.inventoryProxy.inventoryGoods[param1]).amount;
            }
         }
         return _loc2_;
      }
      
      public function getProductionGoodByGoodConfigIdAndPlayfieldItemConfigId(param1:Number, param2:Number) : ProductionGoodObjectVo
      {
         if(this._productionGoodVoDict[param1] == null)
         {
            this._productionGoodVoDict[param1] = new Dictionary();
         }
         if(this._productionGoodVoDict[param1][param2] == null)
         {
            if(this.configProxy.config.goods[param1] == null)
            {
               return null;
            }
            var _loc3_:ProductionGoodObjectVo = new ProductionGoodObjectVo(this.configProxy.config.goods[param1]);
            var _loc4_:ConfigPlayfieldItemDTO = this.configProxy.getConfigPlayfieldItemById(param2);
            var _loc5_:Boolean = false;
            for each(var _loc6_ in null.activePhases)
            {
               if(_loc6_.phaseType == ServerPhaseTypes.PRODUCTION)
               {
                  for each(var _loc7_ in null.listEntryOutputs)
                  {
                     if(Boolean(_loc7_.goodConfig) && null.configId == param1)
                     {
                        null.productionYeld = null.outputAmount;
                        for each(var _loc8_ in null.activePhases)
                        {
                           if(_loc8_.phaseOrderId == null.phaseOrderId - 1)
                           {
                              for each(var _loc9_ in null.listEntryOutputs)
                              {
                                 if(_loc9_.goodConfig)
                                 {
                                    var _loc10_:GoodObjectVo = this.getGoodByConfigId(null.goodConfig.id);
                                    var _loc11_:int = int(null.outputAmount);
                                    var _loc12_:GoodRequireVo = new GoodRequireVo(null,0);
                                    null.requiredGoods.push(null);
                                 }
                                 if(Boolean(null.resourceConfig) && null.resourceConfig.type == ServerResConst.RESOURCE_PRODUCTIONPOINTS)
                                 {
                                    null.productionCostProductionPoints = null.outputAmount;
                                 }
                              }
                              break;
                           }
                        }
                        _loc5_ = true;
                        break;
                     }
                  }
               }
            }
            this._productionGoodVoDict[param1][param2] = null;
         }
         return this._productionGoodVoDict[param1][param2];
      }
      
      public function get dextroStock() : int
      {
         var _loc1_:GoodObjectVo = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.getAllGoodsByTag(ServerTagConstants.GOOD_DEXTRO);
         for each(_loc1_ in _loc3_)
         {
            return _loc1_.playerStock;
         }
         return 0;
      }
      
      public function hasEnoughPermits(param1:int = 1) : Boolean
      {
         var _loc2_:GoodObjectVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.getAllGoodsByTag(ServerTagConstants.GOOD_KEY);
         for each(_loc2_ in _loc4_)
         {
            if(_loc2_.playerStock >= param1)
            {
               return true;
            }
            return false;
         }
         return false;
      }
      
      public function currentImprovementStock() : Vector.<InventoryImprovementVo>
      {
         var _loc2_:InventoryImprovementVo = null;
         var _loc3_:InventoryItemVo = null;
         var _loc1_:Vector.<InventoryImprovementVo> = new Vector.<InventoryImprovementVo>();
         for each(_loc3_ in this.inventoryProxy.inventoryImprovements)
         {
            if(_loc3_.amount > 0)
            {
               _loc2_ = new InventoryImprovementVo();
               _loc2_.improvementVo = this.improvementProxy.buildImprovementVo(_loc3_.improvementDTO);
               _loc2_.stockAmount = _loc3_.amount;
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function get improvementProxy() : ImprovementProxy
      {
         if(!this._imP)
         {
            this._imP = facade.retrieveProxy(ImprovementProxy.NAME) as ImprovementProxy;
         }
         return this._imP;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(!this._cP)
         {
            this._cP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._cP;
      }
      
      private function get inventoryProxy() : InventoryProxy
      {
         if(!this._ivP)
         {
            this._ivP = facade.retrieveProxy(InventoryProxy.NAME) as InventoryProxy;
         }
         return this._ivP;
      }
   }
}

