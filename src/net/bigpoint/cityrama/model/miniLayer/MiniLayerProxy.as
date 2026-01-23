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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         NAME = "MiniLayerProxy";
      }
      
      private var _timerProxy:TimerProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _userResourceProxy:PlayerResourceProxy;
      
      private var _expansionsProxy:PlayfieldExpansionsProxy;
      
      private var _eventProxy:EventProxy;
      
      public function MiniLayerProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super(param1,param2);
            if(_loc3_)
            {
               this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
               if(!_loc4_)
               {
                  this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  if(_loc3_ || Boolean(this))
                  {
                     this._goodStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                     if(!_loc4_)
                     {
                        §§goto(addr0089);
                     }
                     §§goto(addr00cc);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr00ab);
            }
         }
         addr0089:
         this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         if(_loc3_)
         {
            addr00ab:
            this._expansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
            if(!(_loc4_ && Boolean(param2)))
            {
               addr00cc:
               this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
            }
         }
      }
      
      public function getExpansionVo(param1:ExpansionFieldObjectVo) : ExpansionMiniLayerVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:ExpansionMiniLayerVo = new ExpansionMiniLayerVo();
         if(_loc4_ || Boolean(param1))
         {
            _loc2_.costs = this._expansionsProxy.getVCExpansionCosts(param1.configOrigin);
            if(_loc4_ || Boolean(this))
            {
               addr0059:
               _loc2_.affordable = _loc2_.costs <= this._resourceProxy.ingameCurrency;
            }
            var _loc3_:ExpansionSaleEventProxy = facade.retrieveProxy(ExpansionSaleEventProxy.NAME) as ExpansionSaleEventProxy;
            if(_loc4_)
            {
               _loc2_.onSale = _loc3_.getIsExpansionOnSale(param1.configOrigin);
               if(!_loc5_)
               {
                  _loc2_.realCurrencyCosts = _loc3_.getRCExpansionCosts(param1.configOrigin);
                  if(!_loc5_)
                  {
                     _loc2_.currentRealCurrency = this._resourceProxy.realCurrency;
                  }
               }
            }
            return _loc2_;
         }
         §§goto(addr0059);
      }
      
      public function getUpgradeVo(param1:BillboardObjectVo) : UpgradeMiniLayerVo
      {
         §§push(false);
         var _loc19_:Boolean = true;
         var _loc20_:* = §§pop();
         var _loc4_:ConfigPhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:BlueprintImageVO = null;
         var _loc11_:ConfigOutputDTO = null;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = null;
         var _loc2_:UpgradeMiniLayerVo = new UpgradeMiniLayerVo();
         var _loc3_:ConfigPlayfieldItemDTO = this._gameConfigProxy.getConfigPlayfieldItemById(param1.buildingDTO.config.nextConfigId);
         if(_loc19_ || Boolean(param1))
         {
            if(_loc3_ == null)
            {
               throw new RamaCityError("UpgradeBuilding has no nextConfig!!");
            }
         }
         var _loc15_:int = 0;
         for each(_loc8_ in _loc3_.constructionPhases)
         {
            if(_loc8_.phaseOrderId == 0)
            {
               _loc4_ = _loc8_;
               break;
            }
         }
         if(!_loc20_)
         {
            if(_loc19_ || Boolean(_loc2_))
            {
               if(_loc4_)
               {
                  if(_loc19_ || Boolean(param1))
                  {
                     _loc15_ = 0;
                     if(_loc19_)
                     {
                        addr00f3:
                        for each(_loc9_ in _loc4_.listEntryOutputs)
                        {
                           §§push(_loc9_.resourceConfig);
                           if(!_loc20_)
                           {
                              if(§§pop())
                              {
                                 if(_loc19_ || Boolean(param1))
                                 {
                                    addr012a:
                                    if(_loc9_.resourceConfig.type != ServerResConst.RESOURCE_VIRTUALCURRENCY)
                                    {
                                       continue;
                                    }
                                    if(!_loc20_)
                                    {
                                       _loc2_.costs = Math.abs(_loc9_.outputAmount);
                                       if(!_loc19_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 _loc2_.affordable = _loc2_.costs <= this._resourceProxy.ingameCurrency;
                              }
                              continue;
                           }
                           §§goto(addr012a);
                        }
                     }
                     if(!(_loc20_ && Boolean(_loc3_)))
                     {
                        addr0179:
                        if(param1 is ShopFieldObjectVo)
                        {
                           if(_loc19_)
                           {
                              addr0188:
                              _loc2_.typeOfBuilding = UpgradeMiniLayerVo.BUILDING_COMMERCIAL;
                              if(_loc20_)
                              {
                              }
                           }
                        }
                        else
                        {
                           _loc2_.typeOfBuilding = UpgradeMiniLayerVo.BUILDING_NORMAL;
                        }
                        §§goto(addr01b2);
                     }
                     §§goto(addr0188);
                  }
                  §§goto(addr01b2);
               }
               §§goto(addr0179);
            }
            addr01b2:
            var _loc5_:ArrayList = new ArrayList();
            var _loc6_:int = 0;
            if(_loc19_ || Boolean(_loc2_))
            {
               _loc15_ = 0;
               if(_loc19_)
               {
                  for each(_loc7_ in _loc3_.constructionPhases)
                  {
                     if(_loc7_.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION)
                     {
                        _loc10_ = new BlueprintImageVO();
                        _loc10_.visualLibName = "gui_popups_smallGoodIcons";
                        if(_loc19_ || Boolean(_loc3_))
                        {
                           var _loc17_:int = 0;
                           if(!_loc20_)
                           {
                              for each(_loc11_ in _loc7_.listEntryOutputs)
                              {
                                 if(!_loc11_.goodConfig)
                                 {
                                    continue;
                                 }
                                 if(!_loc20_)
                                 {
                                    §§push(_loc10_);
                                    §§push("small_");
                                    if(!_loc20_)
                                    {
                                       §§push(§§pop() + _loc11_.goodConfig.gfxId);
                                    }
                                    §§pop().visualName = §§pop();
                                    if(_loc19_ || Boolean(_loc3_))
                                    {
                                       _loc6_++;
                                       if(_loc19_ || Boolean(_loc2_))
                                       {
                                          addr0282:
                                          §§push(_loc6_);
                                          if(!_loc20_)
                                          {
                                             §§push(§§pop());
                                             if(!_loc20_)
                                             {
                                                _loc12_ = §§pop();
                                                if(!(_loc19_ || Boolean(_loc3_)))
                                                {
                                                   continue;
                                                }
                                                §§push(int(Math.abs(_loc11_.outputAmount)));
                                             }
                                          }
                                          _loc13_ = §§pop();
                                          if(_loc19_ || Boolean(_loc2_))
                                          {
                                             §§push(LocaUtils);
                                             §§push("rcl.goods.goodname");
                                             §§push("rcl.goods.goodname.");
                                             if(_loc19_)
                                             {
                                                §§push(§§pop() + _loc11_.goodConfig.gfxId);
                                             }
                                             §§push(§§pop().getString(§§pop(),§§pop()));
                                             if(!(_loc20_ && Boolean(_loc3_)))
                                             {
                                                §§push(§§pop());
                                             }
                                             _loc14_ = §§pop();
                                             if(_loc19_ || Boolean(_loc2_))
                                             {
                                                addr02f6:
                                                _loc10_.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.needs",[_loc12_,_loc13_,_loc14_]);
                                                if(!(_loc19_ || Boolean(_loc2_)))
                                                {
                                                   continue;
                                                }
                                             }
                                             addr032a:
                                             _loc5_.addItem(_loc10_);
                                             continue;
                                          }
                                          §§goto(addr02f6);
                                       }
                                       §§goto(addr032a);
                                    }
                                    §§goto(addr02f6);
                                 }
                                 §§goto(addr0282);
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc19_ || Boolean(_loc3_))
               {
                  _loc2_.materialList = _loc5_;
               }
            }
            return _loc2_;
         }
         §§goto(addr00f3);
      }
      
      public function getConstructionVo(param1:BillboardObject) : ConstructionMiniLayerVo
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc4_:ConfigPhaseDTO = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:PhaseDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc2_:ConfigPlayfieldItemDTO = param1.billboardObjectVo.configPlayfieldItemVo;
         var _loc3_:ConstructionMiniLayerVo = new ConstructionMiniLayerVo();
         if(!(_loc13_ && Boolean(param1)))
         {
            _loc3_.assetLibName = "gui_popups_smallGoodIcons";
         }
         var _loc8_:int = 0;
         var _loc9_:* = param1.billboardObjectVo.activePhases;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc9_,_loc8_));
            if(_loc13_ && Boolean(param1))
            {
               break;
            }
            if(!§§pop())
            {
               if(!(_loc13_ && Boolean(param1)))
               {
                  if(_loc12_)
                  {
                     if(_loc12_)
                     {
                        if(_loc4_)
                        {
                           if(_loc12_ || Boolean(param1))
                           {
                              _loc8_ = 0;
                              if(_loc12_)
                              {
                                 addr0365:
                                 _loc9_ = _loc4_.listEntryOutputs;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc9_,_loc8_));
                                    break loop0;
                                 }
                                 addr04e0:
                                 addr04d9:
                              }
                              if(!_loc13_)
                              {
                                 §§goto(addr04ea);
                              }
                              §§goto(addr0559);
                           }
                           §§goto(addr051d);
                        }
                        §§goto(addr0504);
                     }
                     addr04ea:
                     _loc3_.constructionStepLength = _loc4_.durationConfig.duration;
                     if(!(_loc13_ && Boolean(_loc3_)))
                     {
                        addr0504:
                        _loc3_.constructionCurrentTime = this._timerProxy.currentTimeStamp;
                        if(_loc12_ || Boolean(this))
                        {
                           addr051d:
                           if(!_loc3_.constructionStepEndTime)
                           {
                              if(!_loc13_)
                              {
                                 §§goto(addr052b);
                              }
                           }
                           §§goto(addr0559);
                        }
                     }
                     addr052b:
                     §§push(_loc3_);
                     §§push(_loc3_.constructionCurrentTime);
                     if(!(_loc13_ && Boolean(param1)))
                     {
                        §§push(§§pop() + _loc3_.constructionStepLength);
                     }
                     §§pop().constructionStepEndTime = §§pop();
                     if(!_loc13_)
                     {
                        addr0559:
                        _loc3_.realCurrencyCosts = param1.billboardObjectVo.getConstructionInstantFinishCost();
                        if(_loc12_)
                        {
                           _loc3_.hasEnoughRC = this.playerResourceProxy.realCurrency >= _loc3_.realCurrencyCosts;
                        }
                     }
                     return _loc3_;
                  }
                  §§goto(addr0365);
               }
               §§goto(addr04e0);
            }
            else
            {
               _loc6_ = §§nextvalue(_loc8_,_loc9_);
               §§push(_loc6_.config);
               if(!_loc13_)
               {
                  §§push(§§pop().phaseType);
                  if(!(_loc13_ && Boolean(this)))
                  {
                     §§push(ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                     if(_loc12_ || Boolean(_loc3_))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc12_)
                           {
                              _loc3_.hasStarted = true;
                              if(_loc12_)
                              {
                                 _loc3_.showStartButton = false;
                                 if(!(_loc13_ && Boolean(_loc3_)))
                                 {
                                    addr00c8:
                                    _loc3_.constructionStepEndTime = _loc6_.expirationTime;
                                    if(!(_loc13_ && Boolean(_loc2_)))
                                    {
                                       addr00df:
                                       §§push(_loc6_.config);
                                       if(!(_loc13_ && Boolean(_loc2_)))
                                       {
                                          _loc4_ = §§pop();
                                          continue;
                                       }
                                       addr025b:
                                       §§push(§§pop().phaseType);
                                       if(_loc12_ || Boolean(_loc3_))
                                       {
                                          §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                          if(!(_loc13_ && Boolean(_loc3_)))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc13_ && Boolean(param1)))
                                             {
                                                var _temp_17:* = §§pop();
                                                §§push(_temp_17);
                                                if(!_temp_17)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      §§pop();
                                                      if(_loc12_ || Boolean(_loc3_))
                                                      {
                                                         addr02c3:
                                                         addr02c2:
                                                         addr02bc:
                                                         addr02b5:
                                                         addr02b9:
                                                         if(_loc6_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               addr02cd:
                                                               _loc3_.hasStarted = false;
                                                            }
                                                            addr02d4:
                                                            var _loc10_:* = 0;
                                                            addr02d6:
                                                            var _loc11_:* = _loc2_.constructionPhases;
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc11_,_loc10_));
                                                               addr030c:
                                                               while(§§pop())
                                                               {
                                                                  _loc5_ = §§nextvalue(_loc10_,_loc11_);
                                                                  if(_loc5_.phaseOrderId == _loc6_.config.phaseOrderId + 1)
                                                                  {
                                                                     _loc4_ = _loc5_;
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               break;
                                                            }
                                                            addr02d2:
                                                            addr0310:
                                                            addr0309:
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr02cd);
                                                   }
                                                }
                                             }
                                             §§goto(addr02c3);
                                          }
                                          §§goto(addr02c2);
                                       }
                                       §§goto(addr02bc);
                                    }
                                    §§goto(addr02d2);
                                 }
                                 else
                                 {
                                    addr017d:
                                    §§push(_loc6_.config);
                                    if(_loc12_)
                                    {
                                       _loc4_ = §§pop();
                                       continue;
                                    }
                                 }
                                 §§goto(addr025b);
                              }
                              §§goto(addr00c8);
                           }
                           §§goto(addr00df);
                        }
                        else
                        {
                           §§push(_loc6_.config);
                           if(_loc12_)
                           {
                              §§push(§§pop().phaseType);
                              if(_loc12_)
                              {
                                 §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                                 if(!_loc13_)
                                 {
                                    addr0119:
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc12_)
                                       {
                                          §§push(_loc6_.expirationTime);
                                          if(_loc12_)
                                          {
                                             §§push(this._timerProxy);
                                             if(!(_loc13_ && Boolean(this)))
                                             {
                                                §§push(§§pop().currentTimeStamp);
                                                if(_loc12_)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         _loc3_.hasStarted = false;
                                                         if(_loc12_)
                                                         {
                                                            §§push(_loc6_.expirationTime);
                                                            if(_loc12_)
                                                            {
                                                               addr0169:
                                                               if(§§pop() == 0)
                                                               {
                                                                  if(_loc12_ || Boolean(_loc3_))
                                                                  {
                                                                     §§goto(addr017d);
                                                                  }
                                                                  §§goto(addr02b5);
                                                               }
                                                               else
                                                               {
                                                                  §§push(0);
                                                                  if(_loc12_ || Boolean(_loc3_))
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     if(!_loc13_)
                                                                     {
                                                                        _loc11_ = _loc2_.constructionPhases;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc11_,_loc10_));
                                                                           if(!_loc13_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 _loc5_ = §§nextvalue(_loc10_,_loc11_);
                                                                                 if(_loc5_.phaseOrderId == _loc6_.config.phaseOrderId + 1)
                                                                                 {
                                                                                    _loc4_ = _loc5_;
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc13_ && Boolean(this)))
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr030c);
                                                                           }
                                                                           §§goto(addr0310);
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr02d6);
                                                                     §§goto(addr0309);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr02d4);
                                                                  }
                                                               }
                                                               §§goto(addr02d4);
                                                            }
                                                            else
                                                            {
                                                               addr0203:
                                                               addr020a:
                                                               addr0207:
                                                               if(§§pop() <= this._timerProxy.currentTimeStamp)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc13_)
                                                               {
                                                                  addr0214:
                                                                  _loc3_.hasStarted = true;
                                                                  if(_loc12_ || Boolean(_loc2_))
                                                                  {
                                                                     _loc3_.constructionStepEndTime = _loc6_.expirationTime;
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(_loc6_.config);
                                                                        if(_loc12_ || Boolean(param1))
                                                                        {
                                                                           addr0248:
                                                                           _loc4_ = §§pop();
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr02b5);
                                                                     }
                                                                     §§goto(addr02b9);
                                                                  }
                                                                  §§goto(addr02cd);
                                                               }
                                                            }
                                                            §§goto(addr02b5);
                                                         }
                                                         §§goto(addr02d2);
                                                      }
                                                      §§goto(addr0214);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc6_.expirationTime);
                                                   }
                                                   §§goto(addr0203);
                                                }
                                                §§goto(addr020a);
                                             }
                                             §§goto(addr0207);
                                          }
                                          §§goto(addr0169);
                                       }
                                       §§goto(addr02d2);
                                    }
                                    else
                                    {
                                       §§push(_loc6_.config);
                                       if(!_loc13_)
                                       {
                                          §§goto(addr025b);
                                       }
                                    }
                                    §§goto(addr02b9);
                                 }
                                 §§goto(addr02c2);
                              }
                              §§goto(addr02bc);
                           }
                           §§goto(addr0248);
                        }
                     }
                     §§goto(addr0119);
                  }
                  §§goto(addr02bc);
               }
               §§goto(addr0248);
            }
         }
         while(§§pop())
         {
            _loc7_ = §§nextvalue(_loc8_,_loc9_);
            §§push(_loc7_.goodConfig);
            if(_loc12_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(!(_loc13_ && Boolean(this)))
                  {
                     _loc3_.amountNeeded = Math.abs(_loc7_.outputAmount);
                     if(!(_loc13_ && Boolean(_loc2_)))
                     {
                        §§push(_loc3_);
                        §§push("small_");
                        if(!(_loc13_ && Boolean(this)))
                        {
                           §§push(§§pop() + _loc7_.goodConfig.gfxId);
                        }
                        §§pop().assetImageName = §§pop();
                        if(!_loc13_)
                        {
                           _loc3_.assetGfxId = _loc7_.goodConfig.gfxId;
                           if(_loc12_)
                           {
                              addr03f2:
                              addr03f7:
                              if(_loc7_.goodConfig.isEventGood)
                              {
                                 if(!_loc13_)
                                 {
                                    §§push(_loc3_);
                                    §§push(LocaUtils);
                                    §§push("rcl.citysquarequests.");
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() + this._eventProxy.currentRunningEventQuestLocaleId);
                                    }
                                    §§push("rcl.citysquarequests.");
                                    if(!(_loc13_ && Boolean(this)))
                                    {
                                       §§push(this._eventProxy.currentRunningEventQuestLocaleId);
                                       if(!(_loc13_ && Boolean(this)))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc13_ && Boolean(this)))
                                          {
                                             §§push(§§pop() + ".goods.goodname.");
                                             if(_loc12_ || Boolean(_loc2_))
                                             {
                                                addr045f:
                                                addr0467:
                                                §§push(§§pop() + _loc7_.goodConfig.localeId);
                                             }
                                             §§pop().assetLocaleName = §§pop().getString(§§pop(),§§pop());
                                             if(_loc12_ || Boolean(param1))
                                             {
                                             }
                                             addr04ac:
                                             _loc3_.amountOwned = this._goodStockProxy.getCurrentStockOfGood(_loc7_.goodConfig.id);
                                             if(!_loc13_)
                                             {
                                                _loc3_.materialAvailable = _loc3_.amountOwned >= Math.abs(_loc7_.outputAmount);
                                             }
                                             §§goto(addr04d9);
                                          }
                                          §§goto(addr045f);
                                       }
                                       §§goto(addr0467);
                                    }
                                    §§goto(addr045f);
                                 }
                              }
                              else
                              {
                                 §§push(_loc3_);
                                 §§push(LocaUtils);
                                 §§push("rcl.goods.goodname");
                                 §§push("rcl.goods.goodname.");
                                 if(_loc12_)
                                 {
                                    §§push(§§pop() + _loc7_.goodConfig.localeId);
                                 }
                                 §§pop().assetLocaleName = §§pop().getString(§§pop(),§§pop());
                                 if(!(_loc13_ && Boolean(_loc3_)))
                                 {
                                    §§goto(addr04ac);
                                 }
                              }
                           }
                           §§goto(addr04d9);
                        }
                        §§goto(addr03f2);
                     }
                     §§goto(addr04d9);
                  }
                  §§goto(addr03f2);
               }
               §§goto(addr04d9);
            }
            §§goto(addr03f7);
         }
         §§goto(addr04e0);
      }
      
      public function getInfraUpgradeVo(param1:BillboardObjectVo) : InfraUpgradeMiniLayerVo
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:ConfigPhaseDTO = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc6_:ConfigOutputDTO = null;
         var _loc2_:InfraUpgradeMiniLayerVo = new InfraUpgradeMiniLayerVo();
         if(_loc10_ || Boolean(this))
         {
            _loc2_.billboardObjVo = param1;
            if(_loc10_)
            {
               _loc2_.title = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.title.capital");
               if(!(_loc9_ && Boolean(param1)))
               {
                  _loc2_.flavourText = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.flavour");
                  if(_loc10_)
                  {
                     _loc2_.headerText = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.cost.capital");
                     if(_loc10_ || Boolean(param1))
                     {
                        _loc2_.abortBtnLabel = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.cancelButton.capital");
                        if(!(_loc9_ && _loc3_))
                        {
                           addr00bd:
                           _loc2_.startBtnLabel = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.startButton.capital");
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              addr00dc:
                              _loc2_.abortBtnTooltip = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.cancelButton.tooltip");
                              if(!(_loc9_ && _loc3_))
                              {
                                 addr00fb:
                                 _loc2_.startBtnTooltip = LocaUtils.getString("rcl.miniLayer.infraUpgrade","rcl.miniLayer.infraUpgrade.startButton.tooltip");
                              }
                              addr010b:
                              var _loc3_:ConfigPlayfieldItemDTO = this._gameConfigProxy.getConfigPlayfieldItemById(param1.buildingDTO.config.nextConfigId);
                              if(_loc10_)
                              {
                                 if(_loc3_ == null)
                                 {
                                    throw new RamaCityError("UpgradeBuilding has no nextConfig!!");
                                 }
                              }
                              var _loc7_:int = 0;
                              for each(_loc5_ in _loc3_.constructionPhases)
                              {
                                 if(_loc5_.phaseOrderId == 0)
                                 {
                                    _loc4_ = _loc5_;
                                    break;
                                 }
                              }
                              if(!_loc9_)
                              {
                                 if(!_loc9_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc10_ || Boolean(param1))
                                       {
                                          _loc7_ = 0;
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             addr01b4:
                                             for each(_loc6_ in _loc4_.listEntryOutputs)
                                             {
                                                if(_loc6_.outputAmount >= 0)
                                                {
                                                   continue;
                                                }
                                                if(_loc9_ && Boolean(_loc3_))
                                                {
                                                   continue;
                                                }
                                                _loc2_.upgradeCosts.push(_loc6_);
                                                if(_loc9_ && Boolean(_loc3_))
                                                {
                                                   continue;
                                                }
                                                if(_loc6_.goodConfig)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   _loc2_.upgradeCostsAffordable.push(this._goodStockProxy.getGoodByConfigId(_loc6_.goodConfig.id).playerStock >= Math.abs(_loc6_.outputAmount));
                                                   if(_loc10_ || Boolean(this))
                                                   {
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc6_.resourceConfig);
                                                   if(!(_loc9_ && Boolean(param1)))
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc9_ && Boolean(_loc2_)))
                                                      {
                                                         var _temp_17:* = §§pop();
                                                         §§push(_temp_17);
                                                         if(_temp_17)
                                                         {
                                                            if(!(_loc9_ && Boolean(_loc3_)))
                                                            {
                                                               addr0274:
                                                               §§pop();
                                                               if(!_loc10_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr0280:
                                                               §§push(_loc6_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               addr0292:
                                                               _loc2_.upgradeCostsAffordable.push(this._resourceProxy.ingameCurrency >= Math.abs(_loc6_.outputAmount));
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr0274);
                                                   }
                                                   §§goto(addr0280);
                                                }
                                                §§goto(addr0292);
                                             }
                                          }
                                          if(_loc10_ || Boolean(this))
                                          {
                                             addr02d2:
                                             _loc2_.instantRCCost = InfrastructureBuildingFieldObjectVo(param1).getUpgradeInstantFinishCost();
                                             if(_loc10_ || Boolean(param1))
                                             {
                                                addr02f0:
                                                _loc2_.userRCStock = this._resourceProxy.realCurrency;
                                             }
                                             §§goto(addr02fb);
                                          }
                                          §§goto(addr02f0);
                                       }
                                       §§goto(addr02fb);
                                    }
                                    §§goto(addr02d2);
                                 }
                                 addr02fb:
                                 return _loc2_;
                              }
                              §§goto(addr01b4);
                           }
                           §§goto(addr00fb);
                        }
                     }
                     §§goto(addr010b);
                  }
               }
               §§goto(addr00dc);
            }
            §§goto(addr00bd);
         }
         §§goto(addr00dc);
      }
      
      private function get playerResourceProxy() : PlayerResourceProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._userResourceProxy);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     this._userResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               addr0054:
               return this._userResourceProxy;
            }
         }
         §§goto(addr0054);
      }
   }
}

