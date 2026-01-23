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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && PlayerGoodsStockProxy))
      {
         NAME = "PlayerGoodsStockProxy";
      }
      
      private var _ivP:InventoryProxy;
      
      private var _cP:GameConfigProxy;
      
      private var _imP:ImprovementProxy;
      
      private var _goodVoDict:Dictionary;
      
      private var _productionGoodVoDict:Dictionary;
      
      public function PlayerGoodsStockProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            super(param1,param2);
            if(_loc4_ || Boolean(param2))
            {
               this._goodVoDict = new Dictionary();
               if(!(_loc3_ && _loc3_))
               {
                  addr0060:
                  this._productionGoodVoDict = new Dictionary();
               }
               return;
            }
         }
         §§goto(addr0060);
      }
      
      public function getCurrentStockOfGood(param1:Number) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:InventoryItemVo = this.inventoryProxy.inventoryGoods[param1];
         if(!_loc3_)
         {
            if(_loc2_ != null)
            {
               if(_loc4_ || Boolean(param1))
               {
                  §§goto(addr0046);
               }
            }
            return 0;
         }
         addr0046:
         return _loc2_.amount;
      }
      
      public function setCurrentStockForGoodObjectVo(param1:GoodObjectVo) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ConfigGoodDTO = param1.config;
         if(_loc3_)
         {
            if(this.inventoryProxy.inventoryGoods[_loc2_.id] != null)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr004b:
                  param1.playerStock = InventoryItemVo(this.inventoryProxy.inventoryGoods[_loc2_.id]).amount;
               }
            }
            return;
         }
         §§goto(addr004b);
      }
      
      public function getAllGoodsByTag(param1:String) : Vector.<GoodObjectVo>
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc3_:GoodObjectVo = null;
         var _loc4_:ConfigGoodDTO = null;
         var _loc5_:ConfigTagDTO = null;
         var _loc2_:Vector.<GoodObjectVo> = new Vector.<GoodObjectVo>();
         for each(_loc4_ in this.configProxy.goods)
         {
            _loc3_ = this.getGoodByConfigId(_loc4_.id);
            if(_loc11_ || Boolean(this))
            {
               var _loc8_:int = 0;
               if(_loc11_ || Boolean(_loc3_))
               {
                  for each(_loc5_ in _loc4_.tagConfigs)
                  {
                     if(_loc5_.tagName == param1)
                     {
                        if(!_loc10_)
                        {
                           _loc2_.push(_loc3_);
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function get allCurrentPermissions() : Vector.<PlayfieldItemPermissionDTO>
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:InventoryItemVo = null;
         var _loc1_:Vector.<PlayfieldItemPermissionDTO> = new Vector.<PlayfieldItemPermissionDTO>();
         for each(_loc2_ in this.inventoryProxy.inventoryPermissions)
         {
            if(_loc6_ || Boolean(_loc1_))
            {
               _loc1_.push(_loc2_.permissionDTO);
            }
         }
         return _loc1_;
      }
      
      public function getPermissionAmountByConfigId(param1:Number) : int
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:PlayfieldItemPermissionDTO = null;
         var _loc2_:* = -666;
         for each(_loc3_ in this.allCurrentPermissions)
         {
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               §§push(_loc3_.permissionConfigId);
               if(!(_loc7_ && Boolean(param1)))
               {
                  if(§§pop() != param1)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     continue;
                  }
                  §§push(_loc3_.permissionsLeft);
               }
               _loc2_ = §§pop();
            }
         }
         if(_loc6_ || Boolean(param1))
         {
            §§push(this.allCurrentPermissions.length == 0);
            if(_loc6_)
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(!_temp_4)
               {
                  if(_loc6_ || Boolean(this))
                  {
                     addr00bc:
                     §§pop();
                     if(_loc6_)
                     {
                        addr00c3:
                        §§push(_loc2_);
                        if(_loc6_)
                        {
                           addr00d1:
                           if(§§pop() == -666)
                           {
                              if(_loc6_)
                              {
                                 §§push(this.getConfigPermissionInitialAmount(param1));
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       addr00ef:
                                       _loc2_ = §§pop();
                                       addr00f0:
                                       return _loc2_;
                                    }
                                 }
                                 §§goto(addr00ef);
                              }
                           }
                           §§goto(addr00f0);
                        }
                        §§goto(addr00ef);
                     }
                     §§goto(addr00f0);
                  }
               }
               §§goto(addr00d1);
            }
            §§goto(addr00bc);
         }
         §§goto(addr00c3);
      }
      
      private function getConfigPermissionInitialAmount(param1:Number) : int
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigPlayfieldItemPermissionDTO = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.configProxy.config.permissions)
         {
            if(_loc6_ || Boolean(_loc2_))
            {
               §§push(param1);
               if(!_loc7_)
               {
                  if(§§pop() != _loc3_.id)
                  {
                     continue;
                  }
                  if(!(_loc6_ || Boolean(_loc3_)))
                  {
                     continue;
                  }
                  addr0082:
                  §§push(_loc3_.initialPermissions);
               }
               _loc2_ = §§pop();
               continue;
            }
            §§goto(addr0082);
         }
         return _loc2_;
      }
      
      public function getPermissionByConfigId(param1:Number, param2:Boolean = true) : PlayfieldItemPermissionDTO
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
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
         if(!(_loc8_ && param2))
         {
            §§push(param2);
            if(!(_loc8_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(_loc7_ || Boolean(param1))
                  {
                     addr0094:
                     §§push(this.allCurrentPermissions.length == 0);
                     if(_loc7_ || Boolean(this))
                     {
                        addr00ab:
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        if(!_temp_6)
                        {
                           if(!(_loc8_ && Boolean(this)))
                           {
                              §§pop();
                              if(!(_loc8_ && Boolean(_loc3_)))
                              {
                                 §§goto(addr00dd);
                              }
                              §§goto(addr00e1);
                           }
                        }
                     }
                     addr00dd:
                     if(_loc3_ == null)
                     {
                        addr00e1:
                        _loc3_ = this.getInitialMockedPermission(param1);
                     }
                     §§goto(addr00ec);
                  }
                  §§goto(addr00e1);
               }
               addr00ec:
               return _loc3_;
            }
            §§goto(addr00ab);
         }
         §§goto(addr0094);
      }
      
      private function getInitialMockedPermission(param1:Number) : PlayfieldItemPermissionDTO
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:PlayfieldItemPermissionDTO = null;
         var _loc3_:ConfigPlayfieldItemPermissionDTO = null;
         var _loc4_:Object = null;
         for each(_loc3_ in this.configProxy.config.permissions)
         {
            if(!(_loc7_ && Boolean(this)))
            {
               if(param1 != _loc3_.id)
               {
                  continue;
               }
            }
            _loc4_ = new Object();
            _loc4_.cid = param1;
            if(!_loc7_)
            {
               _loc4_.l = _loc3_.initialPermissions;
               if(_loc8_ || Boolean(param1))
               {
                  _loc4_.b = 0;
               }
            }
            _loc2_ = ConfigFactory.buildPermissionDTO(_loc4_);
         }
         return _loc2_;
      }
      
      public function getGoodByConfigId(param1:Number) : GoodObjectVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:GoodObjectVo = this._goodVoDict[param1];
         if(_loc3_)
         {
            if(_loc2_ == null)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  if(this.configProxy.config.goods[param1] == null)
                  {
                     return null;
                  }
                  if(!_loc4_)
                  {
                     _loc2_ = ConfigFactory.buildGoodObjectVo(this.configProxy.config.goods[param1]);
                     addr004f:
                     if(_loc3_ || _loc3_)
                     {
                        this._goodVoDict[param1] = _loc2_;
                     }
                     addr009c:
                     §§push(this.inventoryProxy);
                     if(!_loc4_)
                     {
                        if(§§pop().inventoryGoods)
                        {
                           if(_loc3_ || Boolean(param1))
                           {
                              addr00ca:
                              if(this.inventoryProxy.inventoryGoods[param1] != null)
                              {
                                 if(_loc3_)
                                 {
                                    addr00db:
                                    _loc2_.playerStock = InventoryItemVo(this.inventoryProxy.inventoryGoods[param1]).amount;
                                 }
                              }
                           }
                        }
                        return _loc2_;
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr00db);
               }
               §§goto(addr004f);
            }
            §§goto(addr009c);
         }
         §§goto(addr004f);
      }
      
      public function getProductionGoodByGoodConfigIdAndPlayfieldItemConfigId(param1:Number, param2:Number) : ProductionGoodObjectVo
      {
         var _temp_1:* = true;
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = _temp_1;
         var _loc3_:ProductionGoodObjectVo = null;
         var _loc4_:ConfigPlayfieldItemDTO = null;
         var _loc5_:Boolean = false;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:GoodObjectVo = null;
         var _loc11_:int = 0;
         var _loc12_:GoodRequireVo = null;
         if(_loc22_)
         {
            if(this._productionGoodVoDict[param1] == null)
            {
               if(!_loc21_)
               {
                  this._productionGoodVoDict[param1] = new Dictionary();
                  if(!(_loc21_ && Boolean(param1)))
                  {
                     §§goto(addr007d);
                  }
               }
               §§goto(addr009c);
            }
            addr007d:
            if(this._productionGoodVoDict[param1][param2] == null)
            {
               if(_loc22_ || Boolean(param1))
               {
                  addr009c:
                  if(this.configProxy.config.goods[param1] == null)
                  {
                     return null;
                  }
               }
               addr00ae:
               _loc3_ = new ProductionGoodObjectVo(this.configProxy.config.goods[param1]);
               _loc4_ = this.configProxy.getConfigPlayfieldItemById(param2);
               if(!_loc21_)
               {
                  _loc5_ = false;
               }
               for each(_loc6_ in _loc4_.activePhases)
               {
                  if(_loc6_.phaseType == ServerPhaseTypes.PRODUCTION)
                  {
                     for each(_loc7_ in _loc6_.listEntryOutputs)
                     {
                        §§push(Boolean(_loc7_.goodConfig));
                        if(!_loc21_)
                        {
                           var _temp_6:* = §§pop();
                           §§push(_temp_6);
                           if(_temp_6)
                           {
                              if(_loc22_ || Boolean(this))
                              {
                                 §§pop();
                                 if(!(_loc21_ && Boolean(this)))
                                 {
                                    addr0154:
                                    if(_loc7_.configId != param1)
                                    {
                                       continue;
                                    }
                                    if(_loc22_)
                                    {
                                       _loc3_.productionYeld = _loc7_.outputAmount;
                                    }
                                 }
                                 for each(_loc8_ in _loc4_.activePhases)
                                 {
                                    §§push(_loc8_.phaseOrderId);
                                    if(!(_loc21_ && Boolean(param2)))
                                    {
                                       if(§§pop() != _loc6_.phaseOrderId - 1)
                                       {
                                          continue;
                                       }
                                       if(_loc21_)
                                       {
                                          break;
                                       }
                                       §§push(0);
                                    }
                                    var _loc19_:* = §§pop();
                                    if(!(_loc21_ && Boolean(_loc3_)))
                                    {
                                       for each(_loc9_ in _loc8_.listEntryOutputs)
                                       {
                                          if(_loc9_.goodConfig)
                                          {
                                             if(!_loc21_)
                                             {
                                                _loc10_ = this.getGoodByConfigId(_loc9_.goodConfig.id);
                                                if(!(_loc21_ && Boolean(param2)))
                                                {
                                                   _loc11_ = _loc9_.outputAmount;
                                                }
                                                _loc12_ = new GoodRequireVo(_loc10_,_loc11_);
                                                if(_loc22_)
                                                {
                                                   _loc3_.requiredGoods.push(_loc12_);
                                                }
                                                addr022a:
                                                §§push(_loc9_.resourceConfig);
                                                if(_loc22_ || Boolean(this))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc21_ && Boolean(param1)))
                                                   {
                                                      var _temp_16:* = §§pop();
                                                      §§push(_temp_16);
                                                      if(_temp_16)
                                                      {
                                                         if(!(_loc21_ && Boolean(_loc3_)))
                                                         {
                                                            addr025f:
                                                            §§pop();
                                                            if(_loc22_ || Boolean(param2))
                                                            {
                                                               addr027b:
                                                               addr0273:
                                                               addr026e:
                                                               if(_loc9_.resourceConfig.type != ServerResConst.RESOURCE_PRODUCTIONPOINTS)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc22_ || Boolean(_loc3_)))
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc3_.productionCostProductionPoints = _loc9_.outputAmount;
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr027b);
                                                   }
                                                   §§goto(addr025f);
                                                }
                                                §§goto(addr0273);
                                             }
                                             §§goto(addr026e);
                                          }
                                          §§goto(addr022a);
                                       }
                                    }
                                    break;
                                 }
                                 if(_loc22_ || Boolean(this))
                                 {
                                    _loc5_ = true;
                                 }
                                 break;
                              }
                           }
                        }
                        §§goto(addr0154);
                     }
                     if(_loc21_ && Boolean(param2))
                     {
                        break;
                     }
                     if(_loc5_)
                     {
                        break;
                     }
                  }
               }
               if(_loc22_)
               {
                  this._productionGoodVoDict[param1][param2] = _loc3_;
               }
            }
            return this._productionGoodVoDict[param1][param2];
         }
         §§goto(addr00ae);
      }
      
      public function get dextroStock() : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:GoodObjectVo = null;
         for each(_loc1_ in this.getAllGoodsByTag(ServerTagConstants.GOOD_DEXTRO))
         {
            if(_loc4_)
            {
               return _loc1_.playerStock;
            }
         }
         return 0;
      }
      
      public function hasEnoughPermits(param1:int = 1) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:GoodObjectVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.getAllGoodsByTag(ServerTagConstants.GOOD_KEY);
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ && Boolean(param1)))
               {
                  if(_loc2_.playerStock < param1)
                  {
                     §§push(false);
                     break;
                  }
                  if(!_loc5_)
                  {
                     §§push(true);
                     if(_loc6_)
                     {
                        return §§pop();
                     }
                     break;
                  }
               }
            }
            return false;
         }
         return §§pop();
      }
      
      public function currentImprovementStock() : Vector.<InventoryImprovementVo>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:InventoryImprovementVo = null;
         var _loc3_:InventoryItemVo = null;
         var _loc1_:Vector.<InventoryImprovementVo> = new Vector.<InventoryImprovementVo>();
         for each(_loc3_ in this.inventoryProxy.inventoryImprovements)
         {
            if(_loc7_ || Boolean(this))
            {
               if(_loc3_.amount <= 0)
               {
                  continue;
               }
            }
            _loc2_ = new InventoryImprovementVo();
            if(!_loc6_)
            {
               _loc2_.improvementVo = this.improvementProxy.buildImprovementVo(_loc3_.improvementDTO);
               if(_loc7_ || Boolean(_loc2_))
               {
                  _loc2_.stockAmount = _loc3_.amount;
                  if(_loc7_ || Boolean(_loc1_))
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function get improvementProxy() : ImprovementProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._imP);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this._imP = facade.retrieveProxy(ImprovementProxy.NAME) as ImprovementProxy;
                  }
               }
               addr0053:
               return this._imP;
            }
         }
         §§goto(addr0053);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._cP);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr0039:
                     this._cP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._cP;
            }
         }
         §§goto(addr0039);
      }
      
      private function get inventoryProxy() : InventoryProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._ivP);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this._ivP = facade.retrieveProxy(InventoryProxy.NAME) as InventoryProxy;
                  }
               }
               addr0053:
               return this._ivP;
            }
         }
         §§goto(addr0053);
      }
   }
}

