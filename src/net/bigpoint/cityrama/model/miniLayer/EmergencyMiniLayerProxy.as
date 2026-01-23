package net.bigpoint.cityrama.model.miniLayer
{
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionNeedVo;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyCleanupMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyRehireProfessionalMiniLayerVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyTimeUpMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalLevelUpLayerVo;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.ConfigProfessionalTraitDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalSpecializationDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.schoolBook.ProfessionalTraitUnlockMiniLayerVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EmergencyMiniLayerProxy extends Proxy
   {
      
      public static const NAME:String = "EmergencyMiniLayerProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && EmergencyMiniLayerProxy))
      {
         NAME = "EmergencyMiniLayerProxy";
      }
      
      private var _resourceProxy:PlayerResourceProxy;
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _professionalProxy:ProfessionalProxy;
      
      public function EmergencyMiniLayerProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
            if(_loc4_ || Boolean(this))
            {
               this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
               if(_loc4_ || Boolean(param1))
               {
                  addr0060:
                  this._goodStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  if(!_loc3_)
                  {
                     addr0083:
                     this._professionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
                     if(_loc4_ || Boolean(param2))
                     {
                        this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                     }
                  }
               }
               return;
            }
            §§goto(addr0083);
         }
         §§goto(addr0060);
      }
      
      public function getEmergencyTimeUpVo(param1:EmergencyDTO) : EmergencyTimeUpMiniLayerVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:EmergencyTimeUpMiniLayerVo = new EmergencyTimeUpMiniLayerVo();
         if(_loc4_)
         {
            _loc2_.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyTimeUp"),String("rcl.miniLayer.emergencyTimeUp.title.capital"));
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               _loc2_.explanationText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyTimeUp"),String("rcl.miniLayer.emergencyTimeUp.explanation"));
               if(!(_loc3_ && _loc3_))
               {
                  _loc2_.emergencySWFName = param1.config.gfxId.toString();
                  if(_loc4_ || Boolean(this))
                  {
                     addr00a2:
                     _loc2_.emergencyLibName = param1.config.gfxId.toString() + "_layer_renderings";
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr00cb);
                     }
                     §§goto(addr00e0);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr00a2);
            }
            addr00cb:
            _loc2_.emergencyBmpName = "emergency_big";
            if(_loc4_ || Boolean(param1))
            {
               addr00e0:
               _loc2_.buttonLabel = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyTimeUp"),String("rcl.miniLayer.emergencyTimeUp.button.capital"));
            }
            return _loc2_;
         }
         §§goto(addr00a2);
      }
      
      public function getEmergencyCleanupVo(param1:BillboardObjectVo) : EmergencyCleanupMiniLayerVo
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:EmergencyCleanupMiniLayerVo = new EmergencyCleanupMiniLayerVo();
         if(!(_loc5_ && Boolean(this)))
         {
            _loc2_.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.title.capital"));
            if(!_loc5_)
            {
               _loc2_.flavourText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.flavourText"));
               if(_loc6_ || Boolean(param1))
               {
                  _loc2_.header = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.header.capital"));
                  if(_loc6_ || Boolean(param1))
                  {
                     _loc2_.buttonText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.button.capital"));
                     if(!_loc5_)
                     {
                        addr00d3:
                        _loc2_.instantFinishText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.instant"));
                        if(_loc6_)
                        {
                           addr0105:
                           _loc2_.instantFinishToolTipBad = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyCleanup"),String("rcl.miniLayer.emergencyCleanup.instant.toolTip.bad"));
                        }
                     }
                     addr0124:
                     var _loc3_:int = param1.buildingDTO.emergencyDTO.config.gfxId;
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        _loc2_.swfName = _loc3_.toString();
                        if(!_loc5_)
                        {
                           _loc2_.libName = _loc3_ + "_layer_renderings";
                           if(_loc6_ || Boolean(param1))
                           {
                              _loc2_.bmpName = "emergency_big";
                              if(!_loc5_)
                              {
                                 addr0173:
                                 _loc2_.damagedBuildingId = param1.buildingDTO.id;
                              }
                              §§goto(addr017d);
                           }
                           §§goto(addr0173);
                        }
                        addr017d:
                        var _loc4_:ConstructionMiniLayerVo = this.getEmergencyDamagedVo(param1);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           _loc2_.productionNeedVo = new ProductionNeedVo(_loc4_.assetLibName,_loc4_.assetLibName,_loc4_.assetImageName,_loc4_.amountOwned,_loc4_.amountNeeded,_loc4_.assetLocaleName);
                           if(_loc6_)
                           {
                              _loc2_.instantRCCosts = _loc4_.realCurrencyCosts;
                              if(_loc6_ || Boolean(param1))
                              {
                                 addr01e9:
                                 _loc2_.hasEnoughRC = _loc4_.realCurrencyCosts <= this._resourceProxy.realCurrency;
                              }
                              §§goto(addr01fa);
                           }
                           §§goto(addr01e9);
                        }
                        addr01fa:
                        return _loc2_;
                     }
                     §§goto(addr0173);
                  }
                  §§goto(addr0105);
               }
               §§goto(addr0124);
            }
            §§goto(addr00d3);
         }
         §§goto(addr0105);
      }
      
      public function getEmergencyRehireProfessionalVo(param1:Number) : EmergencyRehireProfessionalMiniLayerVo
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:EmergencyRehireProfessionalMiniLayerVo = new EmergencyRehireProfessionalMiniLayerVo();
         if(!_loc10_)
         {
            _loc2_.title = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.title.capital"));
            if(!(_loc10_ && Boolean(this)))
            {
               _loc2_.flavourText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.flavourText"));
               if(!(_loc10_ && Boolean(param1)))
               {
                  _loc2_.header = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.header.capital"));
                  if(_loc9_)
                  {
                     _loc2_.buttonText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.button.capital"));
                     if(_loc9_)
                     {
                        addr00cd:
                        _loc2_.instantFinishText = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.instant"));
                        if(!_loc10_)
                        {
                           addr00f2:
                           _loc2_.instantFinishToolTipBad = ResourceManager.getInstance().getString(String("rcl.miniLayer.emergencyRehireProfessional"),String("rcl.miniLayer.emergencyRehireProfessional.instant.toolTip.bad"));
                        }
                     }
                     addr0111:
                     var _loc3_:ProfessionalDTO = this._professionalProxy.getProfessionalById(param1);
                     if(_loc9_)
                     {
                        _loc2_.profId = _loc3_.id;
                        if(!_loc10_)
                        {
                           _loc2_.luckProgress = this._professionalProxy.getAttributePointsByType(_loc3_,ServerProfessionalConstants.ATTRIBUTE_LUCK);
                           if(!(_loc10_ && Boolean(_loc2_)))
                           {
                              _loc2_.efficencyProgress = this._professionalProxy.getAttributePointsByType(_loc3_,ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY);
                              if(!(_loc10_ && Boolean(_loc3_)))
                              {
                                 addr0173:
                                 _loc2_.perceptionProgress = this._professionalProxy.getAttributePointsByType(_loc3_,ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
                              }
                              addr0186:
                              var _loc4_:Object = new Object();
                              _loc4_.empty = false;
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 _loc4_.profDep = _loc3_.configSpecialisation.department;
                                 if(!_loc10_)
                                 {
                                    _loc4_.profSpec = _loc3_.configSpecialisation.rank;
                                    if(_loc9_ || Boolean(_loc3_))
                                    {
                                       _loc4_.profSpecGfx = _loc3_.configSpecialisation.gfxId;
                                       if(_loc9_)
                                       {
                                          addr01e4:
                                          _loc4_.profSpecLoca = _loc3_.configSpecialisation.locaId;
                                          if(_loc9_)
                                          {
                                             addr01f7:
                                             if(_loc3_.gender)
                                             {
                                                addr01ff:
                                                §§push("male");
                                                if(_loc9_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§push("female");
                                             }
                                             var _loc5_:String = §§pop();
                                             if(!(_loc10_ && Boolean(this)))
                                             {
                                                _loc4_.lib = "gui_professionals_" + _loc5_;
                                                if(_loc9_ || Boolean(this))
                                                {
                                                   _loc4_.img = "small_" + _loc3_.gfxId;
                                                }
                                             }
                                             §§push(ResourceManager.getInstance());
                                             §§push("rcl.professions.nameconvention");
                                             if(!(_loc10_ && Boolean(_loc2_)))
                                             {
                                                §§push("");
                                                if(_loc9_)
                                                {
                                                   addr0274:
                                                   §§push(§§pop() + §§pop());
                                                   §§push("rcl.professions.nameconvention.fistnamelastname");
                                                   if(_loc9_ || Boolean(_loc2_))
                                                   {
                                                      addr0285:
                                                      §§push(§§pop() + "");
                                                   }
                                                   §§push(§§pop().getString(§§pop(),§§pop()));
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   §§push(ResourceManager.getInstance());
                                                   §§push("rcl.professions.firstnames.");
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() + _loc5_);
                                                   }
                                                   §§push("rcl.professions.firstnames.");
                                                   if(_loc9_)
                                                   {
                                                      §§push(§§pop() + _loc5_);
                                                      if(!(_loc10_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(§§pop() + ".");
                                                         if(!(_loc10_ && Boolean(_loc2_)))
                                                         {
                                                            addr02d3:
                                                            §§push(§§pop() + _loc3_.name);
                                                         }
                                                      }
                                                      §§push(§§pop().getString(§§pop(),§§pop()));
                                                      if(_loc9_ || Boolean(this))
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      var _loc7_:* = §§pop();
                                                      §§push(ResourceManager.getInstance());
                                                      §§push("rcl.professions.surnames.");
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop() + _loc5_);
                                                      }
                                                      §§push("rcl.professions.surnames.");
                                                      if(_loc9_ || Boolean(_loc2_))
                                                      {
                                                         §§push(§§pop() + _loc5_);
                                                         if(_loc9_)
                                                         {
                                                            §§push(§§pop() + ".");
                                                            if(!(_loc10_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(§§pop() + _loc3_.surname);
                                                            }
                                                         }
                                                      }
                                                      §§push(§§pop().getString(§§pop(),§§pop()));
                                                      if(_loc9_ || Boolean(_loc3_))
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      var _loc8_:* = §§pop();
                                                      if(_loc9_ || Boolean(this))
                                                      {
                                                         _loc4_.name = StringUtil.substitute(_loc6_,_loc7_,_loc8_);
                                                         if(!_loc10_)
                                                         {
                                                            _loc4_.id = _loc3_.id;
                                                            if(_loc9_ || Boolean(_loc3_))
                                                            {
                                                               §§goto(addr0383);
                                                            }
                                                            §§goto(addr03f2);
                                                         }
                                                         §§goto(addr03bb);
                                                      }
                                                      addr0383:
                                                      _loc2_.professionalSlotVo = new ProfessionalSlotVo(_loc4_,false);
                                                      if(!(_loc10_ && Boolean(_loc2_)))
                                                      {
                                                         _loc2_.epCosts = this.getEducationPointsRehirePrice(_loc3_.extendedCount);
                                                         if(_loc9_ || Boolean(this))
                                                         {
                                                            _loc2_.hasEnoughEp = this._resourceProxy.educationPoints >= _loc2_.epCosts;
                                                            addr03bb:
                                                            if(!_loc10_)
                                                            {
                                                               _loc2_.instantDextroCosts = this.getDextroRehirePrice(_loc3_.extendedCount);
                                                               if(!_loc10_)
                                                               {
                                                                  addr03f2:
                                                                  _loc2_.hasEnoughDextro = this._goodStockProxy.dextroStock >= _loc2_.instantDextroCosts;
                                                               }
                                                               §§goto(addr0403);
                                                            }
                                                            §§goto(addr03f2);
                                                         }
                                                      }
                                                      addr0403:
                                                      return _loc2_;
                                                   }
                                                   §§goto(addr02d3);
                                                }
                                                §§goto(addr0285);
                                             }
                                             §§goto(addr0274);
                                          }
                                       }
                                    }
                                    §§goto(addr01ff);
                                 }
                                 §§goto(addr01e4);
                              }
                              §§goto(addr01f7);
                           }
                           §§goto(addr0173);
                        }
                     }
                     §§goto(addr0186);
                  }
                  §§goto(addr00f2);
               }
               §§goto(addr00cd);
            }
            §§goto(addr00f2);
         }
         §§goto(addr0111);
      }
      
      public function getEmergencyDamagedVo(param1:BillboardObjectVo) : ConstructionMiniLayerVo
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:ConfigOutputDTO = null;
         var _loc2_:ConstructionMiniLayerVo = new ConstructionMiniLayerVo();
         if(_loc8_)
         {
            _loc2_.amountNeeded = 0;
         }
         var _loc6_:int = 0;
         var _loc7_:* = param1.buildingDTO.emergencyDTO.rewardOrCosts;
         while(true)
         {
            for each(_loc5_ in _loc7_)
            {
               if(_loc5_.goodConfig)
               {
                  if(_loc8_)
                  {
                     _loc2_.amountNeeded = Math.abs(_loc5_.outputAmount);
                     if(!(_loc9_ && Boolean(_loc2_)))
                     {
                        _loc2_.assetLibName = "gui_popups_smallGoodIcons";
                        if(_loc8_)
                        {
                           addr008e:
                           §§push(_loc2_);
                           §§push("small_");
                           if(_loc8_)
                           {
                              §§push(§§pop() + _loc5_.goodConfig.gfxId);
                           }
                           §§pop().assetImageName = §§pop();
                           if(_loc8_)
                           {
                              addr00aa:
                              _loc2_.assetGfxId = _loc5_.goodConfig.gfxId;
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 addr00c4:
                                 _loc2_.assetLocaleName = ResourceManager.getInstance().getString(String("rcl.goods.goodname"),String("rcl.goods.goodname." + _loc5_.goodConfig.localeId));
                                 if(_loc8_)
                                 {
                                    _loc2_.amountOwned = this._goodStockProxy.getCurrentStockOfGood(_loc5_.goodConfig.id);
                                    if(!_loc9_)
                                    {
                                       _loc2_.materialAvailable = _loc2_.amountOwned >= Math.abs(_loc5_.outputAmount);
                                       if(!(_loc8_ || Boolean(this)))
                                       {
                                          break;
                                       }
                                       addr0138:
                                       §§push(true);
                                       if(_loc8_ || Boolean(this))
                                       {
                                          _loc3_ = §§pop();
                                          if(!_loc8_)
                                          {
                                             addr0195:
                                             _loc2_.realCurrencyCosts = Math.abs(_loc5_.outputAmount);
                                             if(!_loc9_)
                                             {
                                                §§push(true);
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   _loc4_ = §§pop();
                                                   if(_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   addr01c1:
                                                   §§push(_loc3_);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc8_ || Boolean(_loc2_))
                                                      {
                                                         var _temp_8:* = §§pop();
                                                         §§push(_temp_8);
                                                         if(_temp_8)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               addr01f0:
                                                               §§pop();
                                                               if(!_loc8_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr01f7:
                                                               §§push(_loc4_);
                                                               if(_loc8_)
                                                               {
                                                                  addr01ff:
                                                                  §§push(§§pop());
                                                               }
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr01f0);
                                                   }
                                                }
                                                §§goto(addr01ff);
                                             }
                                             §§goto(addr01f7);
                                          }
                                          §§goto(addr01c1);
                                       }
                                       §§goto(addr01f0);
                                    }
                                    else
                                    {
                                       addr0177:
                                       addr017c:
                                       if(_loc5_.resourceConfig.type == ServerResConst.RESOURCE_REALCURRENCY)
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§goto(addr0195);
                                          }
                                       }
                                    }
                                    §§goto(addr01c1);
                                 }
                                 §§goto(addr0138);
                              }
                              §§goto(addr01c1);
                           }
                           §§goto(addr0177);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr00aa);
               }
               else
               {
                  §§push(_loc5_.resourceConfig);
                  if(!(_loc9_ && Boolean(_loc2_)))
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || _loc3_)
                        {
                           §§goto(addr0177);
                        }
                        §§goto(addr01f7);
                     }
                     §§goto(addr01c1);
                  }
               }
               §§goto(addr017c);
            }
            return _loc2_;
         }
         return _loc2_;
      }
      
      private function getEducationPointsRehirePrice(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(250);
         if(_loc5_ || Boolean(param1))
         {
            §§push(int(§§pop() * Math.pow(param1 + 1,2.1)));
         }
         var _loc2_:* = §§pop();
         §§push("");
         if(_loc5_)
         {
            §§push(§§pop() + _loc2_);
         }
         var _loc3_:int = §§pop().length - 2;
         if(!_loc4_)
         {
            §§push(_loc3_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() >= 0)
               {
                  if(_loc5_)
                  {
                     §§goto(addr00a8);
                  }
               }
               §§goto(addr00a7);
            }
            addr00a8:
            §§push(int(Math.ceil(_loc2_ / Math.pow(10,_loc3_)) * Math.pow(10,_loc3_)));
            if(!(_loc4_ && Boolean(this)))
            {
               _loc2_ = §§pop();
               addr00a7:
               return _loc2_;
            }
         }
         §§goto(addr00a7);
      }
      
      private function getDextroRehirePrice(param1:int) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            param1++;
         }
         return 5 * Math.ceil(150 * (1 - Math.pow(2,-0.033 * param1)) - 1.4);
      }
      
      public function getProfessionalLevelUpVO(param1:Number) : ProfessionalLevelUpLayerVo
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:Number = NaN;
         var _loc2_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         var _loc3_:ProfessionalLevelUpLayerVo = new ProfessionalLevelUpLayerVo();
         if(_loc9_ || Boolean(this))
         {
            _loc2_.professionalBuilder(_loc3_,param1);
         }
         var _loc4_:Vector.<ConfigProfessionalSpecializationDTO> = new Vector.<ConfigProfessionalSpecializationDTO>(0);
         for each(_loc5_ in _loc3_.possibleSpecsIds)
         {
            if(!(_loc8_ && Boolean(_loc3_)))
            {
               _loc4_.push(this._configProxy.config.professionalSpecializations[_loc5_]);
            }
         }
         if(_loc9_ || Boolean(param1))
         {
            _loc3_.possibleSpecs = _loc4_;
         }
         return _loc3_;
      }
      
      public function professionalTraitMiniLayerVo(param1:Number, param2:Number) : ProfessionalTraitUnlockMiniLayerVo
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:ProfessionalTraitUnlockMiniLayerVo = new ProfessionalTraitUnlockMiniLayerVo();
         var _loc4_:ProfessionalDTO = this._professionalProxy.getProfessionalById(param1);
         var _loc5_:ConfigProfessionalTraitDTO = this._configProxy.config.professionalTraits[param2];
         var _loc6_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         _loc6_.professionalBuilder(_loc3_,_loc4_.id);
         if(!_loc8_)
         {
            _loc3_.amount = _loc5_.value;
            if(!_loc8_)
            {
               _loc3_.traitGfxId = _loc5_.gfxid;
               if(!(_loc8_ && Boolean(param2)))
               {
                  _loc3_.traitLocaleId = _loc5_.localeid;
               }
            }
         }
         return _loc3_;
      }
   }
}

