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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         NAME = "ImprovementStoreProxy";
      }
      
      private var _improvementBoosterPacks:Vector.<ImprovementBoosterpackVo>;
      
      private var _rewardDTOs:Vector.<ConfigRewardDTO>;
      
      private var _boughtImprovementPackVo:ImprovementBoosterpackVo;
      
      public function ImprovementStoreProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      private static function sortNumericField(param1:RewardItemComponentVo, param2:RewardItemComponentVo) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §§push(param1.sortint);
            if(!_loc4_)
            {
               §§push(param2.sortint);
               if(!_loc4_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(1);
                        if(_loc3_ || Boolean(param1))
                        {
                           §§goto(addr0053);
                        }
                        else
                        {
                           addr0079:
                           addr007d:
                           if(§§pop() > param2.sortint)
                           {
                              if(_loc3_)
                              {
                                 addr0086:
                                 §§push(-1);
                                 if(!(_loc4_ && ImprovementStoreProxy))
                                 {
                                    §§goto(addr0096);
                                 }
                              }
                              else
                              {
                                 addr0097:
                                 return 0;
                              }
                              return §§pop();
                           }
                           §§goto(addr0097);
                        }
                     }
                     §§goto(addr0086);
                  }
                  else
                  {
                     §§push(param1.sortint);
                     if(!_loc4_)
                     {
                        §§goto(addr0079);
                     }
                  }
                  addr0096:
                  return §§pop();
               }
               §§goto(addr007d);
            }
            addr0053:
            return §§pop();
         }
         §§goto(addr0097);
      }
      
      private static function sortBySortingTag(param1:ImprovementBoosterpackVo, param2:ImprovementBoosterpackVo) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1.orderID);
         if(!(_loc3_ && _loc3_))
         {
            return §§pop() - param2.orderID;
         }
      }
      
      public function setRewardData(param1:Vector.<ConfigRewardDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._rewardDTOs = param1;
            if(_loc2_)
            {
               addr002b:
               facade.sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_UPDATE_REWARDS);
            }
            return;
         }
         §§goto(addr002b);
      }
      
      public function getRewardData() : Vector.<RewardImprovementItemComponentVo>
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:Object = null;
         var _loc3_:BriskDynaVo = null;
         var _loc4_:ConfigRewardDTO = null;
         var _loc5_:* = 0;
         var _loc1_:Vector.<RewardImprovementItemComponentVo> = new Vector.<RewardImprovementItemComponentVo>();
         for each(_loc4_ in this._rewardDTOs)
         {
            if(!_loc4_.improvementConfig)
            {
               continue;
            }
            if(_loc9_)
            {
               §§push(0);
               if(_loc9_ || Boolean(this))
               {
                  _loc5_ = §§pop();
                  if(_loc8_ && Boolean(_loc3_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                  }
                  addr01d0:
               }
               while(§§pop() < _loc4_.outputAmount)
               {
                  _loc2_ = new Object();
                  if(!(_loc8_ && Boolean(_loc2_)))
                  {
                     _loc2_.factor = _loc4_.doubled ? 2 : 1;
                     if(!_loc8_)
                     {
                        _loc2_.type = RewardItemComponentVo.TYPE_IMPROVEMENT;
                        if(_loc9_ || Boolean(_loc3_))
                        {
                           _loc2_.quality = _loc4_.improvementConfig.quality;
                           if(!(_loc8_ && Boolean(this)))
                           {
                              _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
                              if(_loc9_ || Boolean(_loc3_))
                              {
                                 addr0111:
                                 _loc2_.useNew = false;
                                 if(!_loc8_)
                                 {
                                    addr011d:
                                    _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                                    if(!_loc8_)
                                    {
                                       addr012e:
                                       _loc2_.tooltip = "";
                                    }
                                 }
                              }
                           }
                           _loc3_ = ImprovementLayerProxy.improvementGfx(_loc4_.improvementConfig);
                           if(!(_loc8_ && Boolean(this)))
                           {
                              _loc2_.itemIcon = _loc3_.dynaBmpName;
                              if(!(_loc8_ && Boolean(_loc1_)))
                              {
                                 _loc2_.itemIconLib = _loc3_.dynaLibName;
                                 if(_loc8_ && Boolean(_loc2_))
                                 {
                                    continue;
                                 }
                                 _loc2_.price = 1;
                                 if(_loc8_ && Boolean(_loc1_))
                                 {
                                    continue;
                                 }
                                 _loc2_.configID = _loc4_.improvementConfig.id;
                                 if(_loc9_)
                                 {
                                    _loc1_.push(new RewardImprovementItemComponentVo(_loc2_));
                                    if(_loc8_ && Boolean(_loc3_))
                                    {
                                       continue;
                                    }
                                 }
                              }
                           }
                           _loc5_++;
                           continue;
                        }
                        §§goto(addr0111);
                     }
                     §§goto(addr012e);
                  }
                  §§goto(addr011d);
               }
               continue;
            }
            §§goto(addr01d0);
         }
         return _loc1_.sort(sortNumericField);
      }
      
      public function getImprovementBoosterPacks() : Vector.<ImprovementBoosterpackVo>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            if(this._improvementBoosterPacks == null)
            {
               if(_loc2_)
               {
                  this.initPacks();
                  if(_loc2_ || Boolean(this))
                  {
                  }
               }
            }
            else
            {
               this.updatePacks();
            }
         }
         return this._improvementBoosterPacks;
      }
      
      private function initPacks() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:ConfigBoosterDTO = null;
         var _loc3_:ConfigOutputDTO = null;
         var _loc4_:ImprovementBoosterpackVo = null;
         var _loc5_:ImprovementBoosterpackVo = null;
         if(_loc8_ || Boolean(this))
         {
            this._improvementBoosterPacks = new Vector.<ImprovementBoosterpackVo>();
         }
         var _loc1_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc6_:int = 0;
         var _loc7_:* = _loc1_.config.improvementBoosterPacks;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(_loc9_ && Boolean(this))
            {
               break;
            }
            if(!§§pop())
            {
               if(_loc8_)
               {
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     if(_loc8_)
                     {
                        this._improvementBoosterPacks.sort(sortBySortingTag);
                        if(!_loc9_)
                        {
                           _loc6_ = 0;
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              _loc7_ = this._improvementBoosterPacks;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc7_,_loc6_));
                                 break loop0;
                              }
                              addr01d7:
                              addr01d0:
                           }
                           addr01d9:
                        }
                     }
                     return;
                  }
                  §§goto(addr01d9);
               }
               §§goto(addr01d7);
            }
            else
            {
               _loc2_ = §§nextvalue(_loc6_,_loc7_);
               _loc5_ = new ImprovementBoosterpackVo();
               _loc5_.orderID = this.getOrderID(_loc2_.tags);
               if(!_loc9_)
               {
                  _loc5_.gfxId = _loc2_.gfxId;
                  if(!(_loc9_ && Boolean(this)))
                  {
                     addr00a8:
                     _loc5_.locaId = _loc2_.locaId;
                     if(_loc8_ || Boolean(_loc2_))
                     {
                        _loc5_.id = _loc2_.id;
                     }
                  }
                  _loc3_ = this.getPriceConfig(_loc2_);
                  if(!_loc9_)
                  {
                     if(_loc3_)
                     {
                        if(_loc8_)
                        {
                           _loc5_.defaultCostConfig = _loc3_;
                           if(!_loc9_)
                           {
                              _loc5_.currencyType = _loc3_.resourceConfig.type;
                              if(!(_loc8_ || Boolean(_loc1_)))
                              {
                                 continue;
                              }
                           }
                        }
                        addr0112:
                        _loc5_.defaultCostUserStock = this.getCredit(_loc5_);
                        if(!(_loc8_ || Boolean(_loc2_)))
                        {
                           continue;
                        }
                     }
                     _loc5_.config = _loc2_;
                     if(_loc8_ || Boolean(_loc3_))
                     {
                        this._improvementBoosterPacks.push(_loc5_);
                     }
                     continue;
                  }
                  §§goto(addr0112);
               }
               §§goto(addr00a8);
            }
         }
         while(§§pop())
         {
            _loc4_ = §§nextvalue(_loc6_,_loc7_);
            _loc4_.slotId = this._improvementBoosterPacks.indexOf(_loc4_);
            §§goto(addr01d0);
         }
         §§goto(addr01d7);
      }
      
      private function getOrderID(param1:Vector.<String>) : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:String = null;
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         if(!(_loc8_ && Boolean(param1)))
         {
            if(param1 == null)
            {
               if(!_loc8_)
               {
                  §§push(0);
                  if(_loc7_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr004b:
                  §§push(ServerTagConstants.CLIENT_SORT_WEIGHT.length);
               }
               var _loc3_:* = §§pop();
               var _loc4_:* = false;
               if(_loc7_)
               {
                  _loc5_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     while(true)
                     {
                        if(§§pop() >= param1.length)
                        {
                           if(!_loc8_)
                           {
                              addr00f2:
                              addr00f4:
                              if(!_loc4_)
                              {
                                 break;
                              }
                              if(_loc8_)
                              {
                                 break;
                              }
                           }
                           return int(param1[_loc5_].slice(_loc6_ + _loc3_,param1[_loc5_].length));
                        }
                        §§push(int(param1[_loc5_].indexOf(ServerTagConstants.CLIENT_SORT_WEIGHT)));
                        if(!(_loc7_ || Boolean(this)))
                        {
                           continue;
                        }
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(_loc7_ || _loc3_)
                        {
                           _loc6_ = §§pop();
                           if(!_loc7_)
                           {
                              continue;
                           }
                           §§push(-1);
                        }
                        if(§§pop() == §§pop())
                        {
                           _loc5_++;
                           if(!_loc7_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§push(true);
                        if(!_loc8_)
                        {
                           _loc4_ = §§pop();
                           if(_loc8_)
                           {
                              break;
                           }
                           §§goto(addr00f2);
                        }
                        §§goto(addr00f4);
                     }
                     return 0;
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr004b);
      }
      
      private function updatePacks() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ImprovementBoosterpackVo = null;
         for each(_loc1_ in this._improvementBoosterPacks)
         {
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               _loc1_.defaultCostUserStock = this.getCredit(_loc1_);
            }
         }
      }
      
      private function getPriceConfig(param1:ConfigBoosterDTO) : ConfigOutputDTO
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:ConfigOutputDTO = null;
         var _loc3_:GameConfigProxy = null;
         var _loc4_:int = 0;
         var _loc5_:* = param1.priceConfigs;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(_loc6_ || Boolean(param1))
               {
                  §§push(_loc2_.type);
                  if(!_loc7_)
                  {
                     §§push(ServerOutputConstants.RESOURCE);
                     if(!_loc7_)
                     {
                        if(§§pop() != §§pop())
                        {
                           continue;
                        }
                        if(_loc6_ || Boolean(this))
                        {
                           §§push(_loc2_.resourceConfig);
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc6_ || Boolean(this)))
                                 {
                                    break;
                                 }
                                 _loc3_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                                 if(_loc6_)
                                 {
                                    _loc2_.resourceConfig = _loc3_.resources[_loc2_.configId];
                                 }
                              }
                              §§push(_loc2_.resourceConfig);
                              if(!_loc7_)
                              {
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    §§push(_loc2_.resourceConfig);
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       addr00e5:
                                       §§push(§§pop().type);
                                       if(_loc6_)
                                       {
                                          addr00ed:
                                          §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                          if(!(_loc7_ && Boolean(_loc2_)))
                                          {
                                             addr0100:
                                             §§push(§§pop() == §§pop());
                                             if(_loc6_ || Boolean(_loc3_))
                                             {
                                                var _temp_8:* = §§pop();
                                                §§push(_temp_8);
                                                if(!_temp_8)
                                                {
                                                   if(_loc6_ || Boolean(_loc3_))
                                                   {
                                                      §§pop();
                                                      if(_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      addr0141:
                                                      addr013c:
                                                      addr013a:
                                                      addr0136:
                                                      §§push(_loc2_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY);
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
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr013c);
                                    }
                                    §§goto(addr013a);
                                 }
                                 §§goto(addr0136);
                              }
                              §§goto(addr00e5);
                           }
                           §§goto(addr013a);
                        }
                        §§goto(addr0136);
                     }
                     §§goto(addr0100);
                  }
                  §§goto(addr00ed);
               }
               §§goto(addr0136);
            }
            return null;
         }
         return _loc2_;
      }
      
      private function getCredit(param1:ImprovementBoosterpackVo) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(_loc4_)
         {
            §§push(param1.currencyType);
            if(_loc4_)
            {
               §§push(ServerResConst.RESOURCE_REALCURRENCY);
               if(_loc4_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(_loc2_.realCurrency);
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr008c:
                        return _loc2_.ingameCurrency;
                     }
                     return §§pop();
                  }
                  §§goto(addr007b);
                  §§goto(addr008c);
               }
               addr007b:
               §§goto(addr0076);
            }
            addr0076:
            §§goto(addr0072);
         }
         addr0072:
         if(param1.currencyType == ServerResConst.RESOURCE_VIRTUALCURRENCY)
         {
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§goto(addr008c);
            }
         }
         return 0;
      }
      
      public function get boughtImprovementPackVo() : ImprovementBoosterpackVo
      {
         return this._boughtImprovementPackVo;
      }
      
      public function set boughtImprovementPackVo(param1:ImprovementBoosterpackVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._boughtImprovementPackVo = param1;
         }
      }
   }
}

