package net.bigpoint.cityrama.model.detailViews
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.departmentBook.vo.ProfessionalDepartmentSlotVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DepartmentDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.GoodRequireVo;
   import net.bigpoint.cityrama.model.detailViews.vo.OptionsDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentSelectionVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentialDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ShopDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyInfoProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IBillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ShopStockGoodVo;
   import net.bigpoint.cityrama.model.improvement.ImprovementProxy;
   import net.bigpoint.cityrama.model.mastery.BuildingMasteryProxy;
   import net.bigpoint.cityrama.model.needsSystem.vo.ResidentialNeedPopupVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.optionsMenu.vo.OptionsListItemVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentDetailVo;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedRequireDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigNeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.NeedStackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class MainLayerProxy extends Proxy
   {
      
      public static const NAME:String = "MainLayerProxy";
      
      public static const ENERGY:String = "ENERGY";
      
      public static const MOOD:String = "MOOD";
      
      private static const RENT_OUT:String = "RENT_OUT";
      
      private static const NEED_OUT:String = "NEED_OUT";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "MainLayerProxy";
         if(!(_loc1_ && _loc1_))
         {
            ENERGY = "ENERGY";
            if(!(_loc1_ && _loc1_))
            {
               MOOD = "MOOD";
               if(_loc2_ || _loc1_)
               {
                  addr006a:
                  RENT_OUT = "RENT_OUT";
                  if(!_loc1_)
                  {
                     NEED_OUT = "NEED_OUT";
                  }
               }
               §§goto(addr0081);
            }
            §§goto(addr006a);
         }
      }
      addr0081:
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _goStP:PlayerGoodsStockProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _globalStatProxy:GlobalBalanceProxy;
      
      private var _coP:GameConfigProxy;
      
      private var _needMatrixProxy:NeedMatrixProxy;
      
      private var _storage:SharedObject;
      
      private var _eventProxy:EventProxy;
      
      private var _professionalProxy:ProfessionalProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _featureProxy:FeatureProxy;
      
      private var _buildingMasteryProxy:BuildingMasteryProxy;
      
      public function MainLayerProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            super(param1,param2);
            if(_loc4_ || _loc3_)
            {
               this._storage = SharedObject.getLocal(OptionsMenuProxy.NAME);
            }
         }
      }
      
      public static function sortSecurityGradesOnOrderId(param1:ConfigSecurityGradeDTO, param2:ConfigSecurityGradeDTO) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(param1.orderId);
            if(_loc4_ || MainLayerProxy)
            {
               §§push(param2.orderId);
               if(_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc4_)
                     {
                        addr004f:
                        §§push(1);
                        if(_loc4_ || MainLayerProxy)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr008c:
                        §§push(-1);
                        if(!(_loc3_ && MainLayerProxy))
                        {
                           return §§pop();
                        }
                     }
                  }
                  else
                  {
                     addr007a:
                     addr0076:
                     if(param1.orderId < param2.orderId)
                     {
                        if(_loc4_ || Boolean(param2))
                        {
                           §§goto(addr008c);
                        }
                        else
                        {
                           addr009c:
                           §§push(0);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr009c);
                  }
                  addr009e:
                  return §§pop();
               }
               §§goto(addr007a);
            }
            §§goto(addr0076);
         }
         §§goto(addr004f);
      }
      
      private static function getBillboardEffects(param1:BillboardObjectVo, param2:String, param3:BillboardObjectVo = null) : SimpleItemVo
      {
         §§push(false);
         var _loc18_:Boolean = true;
         var _loc19_:* = §§pop();
         var _loc4_:SimpleItemVo = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:ConfigOutputDTO = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = param1.configPlayfieldItemVo.constructionPhases;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc15_,_loc14_));
            if(_loc19_)
            {
               break;
            }
            if(§§pop())
            {
               _loc7_ = §§nextvalue(_loc14_,_loc15_);
               if(_loc7_.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
               {
                  if(!_loc19_)
                  {
                     var _loc16_:int = 0;
                     if(_loc18_)
                     {
                        for each(_loc9_ in _loc7_.listEntryOutputs)
                        {
                           §§push(_loc9_.type);
                           if(_loc18_ || Boolean(param2))
                           {
                              §§push(ServerOutputConstants.RESOURCE);
                              if(_loc18_ || Boolean(param2))
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    continue;
                                 }
                                 if(_loc19_ && Boolean(param1))
                                 {
                                    continue;
                                 }
                                 §§push(param2);
                                 if(!_loc19_)
                                 {
                                    §§push(ENERGY);
                                    if(!(_loc19_ && Boolean(param1)))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc19_)
                                          {
                                             §§push(_loc9_.resourceConfig);
                                             if(_loc18_ || Boolean(param2))
                                             {
                                                §§push(§§pop().type);
                                                if(!_loc19_)
                                                {
                                                   addr010b:
                                                   §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
                                                   if(!_loc19_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc18_)
                                                         {
                                                            §§push(-1);
                                                            if(_loc18_ || Boolean(param3))
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(_loc9_.outputAmount);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(-1);
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc18_)
                                                                        {
                                                                           addr0152:
                                                                           §§push(§§pop());
                                                                           if(_loc18_)
                                                                           {
                                                                              addr0159:
                                                                              _loc5_ = §§pop();
                                                                              if(_loc18_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr02a4:
                                                                              §§push(_loc9_.outputAmount);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01d0:
                                                                              §§push(§§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr0205:
                                                                                 §§push(_loc9_.resourceConfig);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(§§pop().type);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr0218:
                                                                                       §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                                                                                       if(!(_loc19_ && Boolean(param3)))
                                                                                       {
                                                                                          addr022b:
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                addr0235:
                                                                                                §§push(-1);
                                                                                                if(!(_loc19_ && Boolean(param2)))
                                                                                                {
                                                                                                   addr0245:
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(_loc9_.outputAmount);
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      addr025a:
                                                                                                      addr0258:
                                                                                                      §§push(§§pop() * -1);
                                                                                                      if(_loc18_ || Boolean(param3))
                                                                                                      {
                                                                                                         addr0269:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            addr0270:
                                                                                                            _loc5_ = §§pop();
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr029c:
                                                                                                            _loc6_ = 1;
                                                                                                            addr029a:
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr02a4);
                                                                                                         }
                                                                                                         addr02b0:
                                                                                                         _loc5_ = §§pop();
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr0270);
                                                                                                   }
                                                                                                   §§goto(addr0269);
                                                                                                }
                                                                                                §§goto(addr029c);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0288:
                                                                                             addr0283:
                                                                                             addr0281:
                                                                                             if(_loc9_.resourceConfig.type != ServerResConst.RESOURCE_HAPPINESS_POSITIVE)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc18_ || Boolean(param2))
                                                                                             {
                                                                                                §§goto(addr029a);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02a4);
                                                                                       }
                                                                                       §§goto(addr0288);
                                                                                    }
                                                                                    §§goto(addr0283);
                                                                                 }
                                                                                 §§goto(addr0281);
                                                                              }
                                                                              §§goto(addr0269);
                                                                           }
                                                                           §§goto(addr02b0);
                                                                        }
                                                                        §§goto(addr0159);
                                                                     }
                                                                     §§goto(addr025a);
                                                                  }
                                                                  §§goto(addr0152);
                                                               }
                                                               §§goto(addr0235);
                                                            }
                                                            §§goto(addr0245);
                                                         }
                                                         §§goto(addr029a);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc9_.resourceConfig);
                                                         if(_loc18_)
                                                         {
                                                            §§push(§§pop().type);
                                                            if(!(_loc19_ && Boolean(param1)))
                                                            {
                                                               §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                                                               if(!_loc19_)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc18_ || Boolean(param3)))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(1);
                                                                  if(!(_loc19_ && Boolean(param2)))
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(!(_loc18_ || Boolean(param1)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc9_.outputAmount);
                                                                     if(_loc18_ || Boolean(param3))
                                                                     {
                                                                        §§goto(addr01d0);
                                                                     }
                                                                     §§goto(addr0258);
                                                                  }
                                                                  §§goto(addr029c);
                                                               }
                                                               §§goto(addr022b);
                                                            }
                                                            §§goto(addr0283);
                                                         }
                                                      }
                                                      §§goto(addr0281);
                                                   }
                                                   §§goto(addr0288);
                                                }
                                                §§goto(addr0218);
                                             }
                                             §§goto(addr0281);
                                          }
                                          §§goto(addr0235);
                                       }
                                       else
                                       {
                                          §§push(param2);
                                          if(_loc18_)
                                          {
                                             addr01ea:
                                             §§push(MOOD);
                                             if(_loc18_ || Boolean(param1))
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   continue;
                                                }
                                                if(!_loc19_)
                                                {
                                                   §§goto(addr0205);
                                                }
                                                §§goto(addr029a);
                                             }
                                             §§goto(addr0288);
                                          }
                                       }
                                       §§goto(addr0218);
                                    }
                                    §§goto(addr0288);
                                 }
                                 §§goto(addr01ea);
                              }
                              §§goto(addr0288);
                           }
                           §§goto(addr010b);
                        }
                     }
                  }
               }
               continue;
            }
            if(!(_loc19_ && Boolean(param1)))
            {
               if(!_loc19_)
               {
                  if(!(_loc19_ && Boolean(param2)))
                  {
                     §§push(0);
                     if(_loc18_ || Boolean(param2))
                     {
                        _loc14_ = §§pop();
                        if(_loc18_)
                        {
                           _loc15_ = param1.configPlayfieldItemVo.activePhases;
                           while(true)
                           {
                              §§push(§§hasnext(_loc15_,_loc14_));
                              break loop0;
                           }
                           addr05d6:
                           addr05cf:
                        }
                        addr05d8:
                        if(_loc18_)
                        {
                           §§push(param2);
                           loop8:
                           while(true)
                           {
                              _loc14_ = §§pop();
                              if(!_loc19_)
                              {
                                 §§push(ENERGY);
                                 if(_loc18_ || Boolean(param3))
                                 {
                                    §§push(_loc14_);
                                    if(!(_loc19_ && Boolean(param3)))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc19_ && Boolean(param1)))
                                          {
                                             addr0902:
                                             §§push(0);
                                             if(_loc18_ || MainLayerProxy)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr092c:
                                             §§push(1);
                                             if(_loc19_ && MainLayerProxy)
                                             {
                                             }
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §§push(_loc5_);
                                                   if(!(_loc19_ && Boolean(param3)))
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc18_)
                                                      {
                                                         §§push(§§pop() * ImprovementProxy.getCompletePercentValueForTag(param1,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY));
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc18_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc19_ && MainLayerProxy))
                                                         {
                                                            addr0621:
                                                            _loc5_ = §§pop();
                                                            if(_loc18_ || Boolean(param2))
                                                            {
                                                               if(param1.buildingDTO != null)
                                                               {
                                                                  if(!(_loc19_ && Boolean(param3)))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(§§pop() + Math.ceil(_loc5_ * BuildingMasteryProxy.getCompletePercentValueForTag(param1 as BillboardObjectVo,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY)));
                                                                        if(!(_loc19_ && Boolean(param1)))
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(_loc18_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Math.ceil(_loc5_));
                                                                                 addr06e5:
                                                                                 do
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                 }
                                                                                 while(!(_loc19_ && Boolean(param3)));
                                                                                 
                                                                                 break;
                                                                              }
                                                                              addr071d:
                                                                              _loc4_ = new SimpleItemVo(null,_loc5_,0,"energy_icon","gui_resources_icons",_loc11_,null,_loc6_);
                                                                              if(_loc18_ || Boolean(param2))
                                                                              {
                                                                                 break loop4;
                                                                              }
                                                                              break;
                                                                              addr06dc:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.energy"));
                                                                              if(!_loc18_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(!_loc19_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           _loc11_ = §§pop();
                                                                           if(!(_loc18_ || Boolean(param2)))
                                                                           {
                                                                              break loop4;
                                                                           }
                                                                           §§goto(addr071d);
                                                                           addr06f5:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr06cc:
                                                                           _loc5_ = §§pop();
                                                                           if(_loc19_ && MainLayerProxy)
                                                                           {
                                                                              break loop4;
                                                                           }
                                                                        }
                                                                        §§goto(addr06dc);
                                                                     }
                                                                     §§goto(addr06e5);
                                                                  }
                                                               }
                                                               else if(param3 != null)
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     break loop4;
                                                                  }
                                                                  §§push(_loc5_);
                                                                  if(!(_loc19_ && MainLayerProxy))
                                                                  {
                                                                     addr06a2:
                                                                     §§push(§§pop() + Math.ceil(_loc5_ * BuildingMasteryProxy.getCompletePercentValueForTag(param3 as BillboardObjectVo,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY)));
                                                                     if(!(_loc19_ && Boolean(param1)))
                                                                     {
                                                                        §§goto(addr06cc);
                                                                     }
                                                                     §§goto(addr06e5);
                                                                  }
                                                                  §§goto(addr06cc);
                                                               }
                                                               §§goto(addr06dc);
                                                            }
                                                            §§goto(addr06f5);
                                                         }
                                                         §§goto(addr06cc);
                                                      }
                                                      §§goto(addr06a2);
                                                   }
                                                   §§goto(addr0621);
                                                case 1:
                                                   if(param1.buildingDTO != null)
                                                   {
                                                      if(!(_loc19_ && Boolean(param1)))
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc18_)
                                                         {
                                                            §§push(§§pop() + Math.ceil(_loc5_ * BuildingMasteryProxy.getCompletePercentValueForTag(param1 as BillboardObjectVo,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY)));
                                                            if(!(_loc19_ && Boolean(param3)))
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(_loc18_)
                                                               {
                                                               }
                                                               addr07f7:
                                                               §§push(_loc5_);
                                                               if(_loc18_ || Boolean(param1))
                                                               {
                                                                  addr0807:
                                                                  §§push(_loc5_);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(§§pop() * ImprovementProxy.getCompletePercentValueForTag(param1,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY));
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc18_ || Boolean(param2))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc18_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(!_loc19_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr08a2:
                                                                        _loc4_ = new SimpleItemVo(null,_loc5_,0,_loc12_,"gui_resources_icons",_loc13_,null,_loc6_);
                                                                        break loop4;
                                                                     }
                                                                  }
                                                               }
                                                               addr0844:
                                                               _loc5_ = §§pop();
                                                               if(!(_loc19_ && MainLayerProxy))
                                                               {
                                                                  §§push("layer_sad_icon");
                                                                  if(_loc18_)
                                                                  {
                                                                     _loc12_ = §§pop();
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.mood"));
                                                                        if(!(_loc19_ && Boolean(param1)))
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        _loc13_ = §§pop();
                                                                        if(!(_loc19_ && Boolean(param1)))
                                                                        {
                                                                           addr088f:
                                                                           if(_loc6_ > 0)
                                                                           {
                                                                              if(!_loc19_)
                                                                              {
                                                                                 addr08a0:
                                                                                 _loc12_ = "layer_happyness_icon";
                                                                                 addr089d:
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr08a2);
                                                                     }
                                                                     §§goto(addr088f);
                                                                  }
                                                                  §§goto(addr08a0);
                                                               }
                                                               §§goto(addr089d);
                                                            }
                                                            §§goto(addr0807);
                                                         }
                                                         else
                                                         {
                                                            addr07ef:
                                                            _loc5_ = §§pop();
                                                            if(!_loc18_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§goto(addr07f7);
                                                      }
                                                      §§goto(addr08a2);
                                                   }
                                                   else if(param3 != null)
                                                   {
                                                      if(_loc18_ || Boolean(param3))
                                                      {
                                                         §§push(_loc5_);
                                                         if(!(_loc19_ && MainLayerProxy))
                                                         {
                                                            §§push(§§pop() + Math.ceil(_loc5_ * BuildingMasteryProxy.getCompletePercentValueForTag(param3 as BillboardObjectVo,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY)));
                                                            if(!(_loc19_ && Boolean(param2)))
                                                            {
                                                               §§goto(addr07ef);
                                                            }
                                                            §§goto(addr0844);
                                                         }
                                                         §§goto(addr0807);
                                                      }
                                                      §§goto(addr08a2);
                                                   }
                                                   §§goto(addr07f7);
                                                default:
                                                   break loop4;
                                             }
                                             §§goto(addr0844);
                                          }
                                          return _loc4_;
                                          addr094e:
                                       }
                                       addr0928:
                                       addr0926:
                                       if(MOOD === _loc14_)
                                       {
                                          §§goto(addr092c);
                                       }
                                       else
                                       {
                                          §§push(2);
                                       }
                                       §§goto(addr094c);
                                       §§goto(addr092c);
                                    }
                                    §§goto(addr0928);
                                 }
                                 §§goto(addr0926);
                              }
                              §§goto(addr0902);
                           }
                        }
                        §§goto(addr06dc);
                     }
                     §§goto(addr094e);
                  }
                  §§goto(addr06dc);
               }
               §§goto(addr05d8);
            }
            §§goto(addr05d6);
         }
         while(§§pop())
         {
            _loc8_ = §§nextvalue(_loc14_,_loc15_);
            if(_loc8_.phaseType == ServerPhaseTypes.ACTIVATION)
            {
               if(!(_loc19_ && Boolean(param3)))
               {
                  _loc16_ = 0;
                  if(!(_loc19_ && Boolean(param1)))
                  {
                     for each(_loc10_ in _loc8_.listEntryOutputs)
                     {
                        §§push(_loc10_.type);
                        if(!_loc19_)
                        {
                           §§push(ServerOutputConstants.RESOURCE);
                           if(!(_loc19_ && MainLayerProxy))
                           {
                              if(§§pop() != §§pop())
                              {
                                 continue;
                              }
                              if(_loc18_)
                              {
                                 §§push(param2);
                                 if(_loc18_ || Boolean(param3))
                                 {
                                    §§push(ENERGY);
                                    if(_loc18_ || Boolean(param3))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc18_ || MainLayerProxy)
                                          {
                                             §§push(_loc10_.resourceConfig);
                                             if(_loc18_ || Boolean(param1))
                                             {
                                                §§push(§§pop().type);
                                                if(_loc18_ || MainLayerProxy)
                                                {
                                                   addr03e1:
                                                   §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
                                                   if(!_loc19_)
                                                   {
                                                      addr03ec:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc18_ || Boolean(param3))
                                                         {
                                                            §§push(-1);
                                                            if(!_loc19_)
                                                            {
                                                               _loc6_ = §§pop();
                                                               if(!(_loc18_ || Boolean(param2)))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc10_.outputAmount);
                                                               if(!_loc19_)
                                                               {
                                                                  §§push(-1);
                                                                  if(_loc18_ || Boolean(param3))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc18_ || Boolean(param3))
                                                                     {
                                                                        addr0440:
                                                                        §§push(§§pop());
                                                                        if(_loc18_ || Boolean(param1))
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(!_loc19_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr049f:
                                                                           §§push(1);
                                                                           if(!_loc19_)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              if(!_loc18_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(_loc10_.outputAmount);
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc18_ || Boolean(param3))
                                                                                 {
                                                                                    addr04c9:
                                                                                    _loc5_ = §§pop();
                                                                                    if(!(_loc19_ && MainLayerProxy))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    addr04ff:
                                                                                    §§push(_loc10_.resourceConfig);
                                                                                    if(_loc18_ || Boolean(param2))
                                                                                    {
                                                                                       §§push(§§pop().type);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          addr051a:
                                                                                          §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr0525:
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(!(_loc18_ || Boolean(param1)))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(-1);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   addr053f:
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(_loc19_ && MainLayerProxy)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(_loc10_.outputAmount);
                                                                                                   if(_loc18_ || Boolean(param3))
                                                                                                   {
                                                                                                      addr0564:
                                                                                                      §§push(§§pop() * -1);
                                                                                                      if(_loc18_ || Boolean(param3))
                                                                                                      {
                                                                                                         addr0573:
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc19_)
                                                                                                         {
                                                                                                            addr057a:
                                                                                                            _loc5_ = §§pop();
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               addr05c2:
                                                                                                               addr05b6:
                                                                                                               §§push(_loc10_.outputAmount);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr05c1:
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               _loc5_ = §§pop();
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr05c1);
                                                                                                      }
                                                                                                      §§goto(addr05c2);
                                                                                                   }
                                                                                                   §§goto(addr05c1);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr05a6:
                                                                                                   _loc6_ = §§pop();
                                                                                                   if(_loc19_ && MainLayerProxy)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr05b6);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0592:
                                                                                                addr058d:
                                                                                                addr058b:
                                                                                                if(_loc10_.resourceConfig.type != ServerResConst.RESOURCE_HAPPINESS_POSITIVE)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!(_loc18_ || Boolean(param2)))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr05a4:
                                                                                                §§push(1);
                                                                                             }
                                                                                             §§goto(addr05a6);
                                                                                          }
                                                                                          §§goto(addr0592);
                                                                                       }
                                                                                       §§goto(addr058d);
                                                                                    }
                                                                                    §§goto(addr058b);
                                                                                 }
                                                                                 §§goto(addr0573);
                                                                              }
                                                                              §§goto(addr04c9);
                                                                           }
                                                                           §§goto(addr05a6);
                                                                        }
                                                                        §§goto(addr05c1);
                                                                     }
                                                                     §§goto(addr057a);
                                                                  }
                                                                  §§goto(addr0564);
                                                               }
                                                               §§goto(addr0440);
                                                            }
                                                            §§goto(addr053f);
                                                         }
                                                         §§goto(addr04ff);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc10_.resourceConfig);
                                                         if(_loc18_)
                                                         {
                                                            §§push(§§pop().type);
                                                            if(_loc18_ || Boolean(param3))
                                                            {
                                                               §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                                                               if(_loc18_)
                                                               {
                                                                  addr0481:
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc18_ || MainLayerProxy))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr049f);
                                                               }
                                                               §§goto(addr0592);
                                                            }
                                                            §§goto(addr051a);
                                                         }
                                                      }
                                                      §§goto(addr058b);
                                                   }
                                                   §§goto(addr0481);
                                                }
                                                else
                                                {
                                                   addr04ec:
                                                   §§push(MOOD);
                                                   if(!_loc19_)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc18_)
                                                      {
                                                         §§goto(addr04ff);
                                                      }
                                                      §§goto(addr05a4);
                                                   }
                                                }
                                                §§goto(addr0525);
                                             }
                                             §§goto(addr058b);
                                          }
                                          §§goto(addr05a4);
                                       }
                                       else
                                       {
                                          §§push(param2);
                                          if(!(_loc19_ && Boolean(param2)))
                                          {
                                             §§goto(addr04ec);
                                          }
                                       }
                                       §§goto(addr051a);
                                    }
                                    §§goto(addr03ec);
                                 }
                                 §§goto(addr04ec);
                              }
                              §§goto(addr05b6);
                           }
                           §§goto(addr0481);
                        }
                        §§goto(addr03e1);
                     }
                  }
               }
            }
            §§goto(addr05cf);
         }
         §§goto(addr05d6);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.onRegister();
            if(_loc1_)
            {
               this._playerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
               if(!(_loc2_ && _loc2_))
               {
                  addr0046:
                  this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                  if(_loc1_ || _loc1_)
                  {
                     this._globalStatProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
                     if(_loc1_)
                     {
                        this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                        if(_loc1_)
                        {
                           this._needMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                              if(_loc1_ || Boolean(this))
                              {
                                 addr00db:
                                 this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr0105:
                                    this._professionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr0124:
                                       this._buildingMasteryProxy = facade.retrieveProxy(BuildingMasteryProxy.NAME) as BuildingMasteryProxy;
                                    }
                                 }
                              }
                              §§goto(addr0137);
                           }
                           §§goto(addr0124);
                        }
                        §§goto(addr0105);
                     }
                     addr0137:
                     return;
                  }
                  §§goto(addr0124);
               }
               §§goto(addr0105);
            }
            §§goto(addr0046);
         }
         §§goto(addr00db);
      }
      
      public function getResidentialDetailViewVo(param1:ResidentialFieldObjectVo) : ResidentialDetailViewVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:* = NaN;
         var _loc2_:Object = new Object();
         if(!(_loc6_ && Boolean(param1)))
         {
            _loc2_.gfxId = param1.buildingDTO.config.gfxId;
            if(_loc5_)
            {
               _loc2_.libName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(param1.buildingDTO.config);
               if(_loc5_)
               {
                  _loc2_.localeId = param1.configPlayfieldItemVo.localeId;
                  if(_loc5_ || _loc3_)
                  {
                     _loc2_.upgradePrice = param1.getUpgradeInstantFinishCost() + this.getNextUpgradeInstantFinishCost(param1.configPlayfieldItemVo.nextConfigId);
                     if(!_loc6_)
                     {
                        _loc2_.hasEnoughDD = this._playerResourceProxy.realCurrency >= _loc2_.upgradePrice;
                        if(_loc5_)
                        {
                           _loc2_.upgradeCurrentLevel = param1.currentLevel;
                           if(!(_loc6_ && _loc3_))
                           {
                              if(param1.maxLevel > param1.currentLevel)
                              {
                                 if(_loc5_)
                                 {
                                    addr00cc:
                                    _loc2_.upgradeNextLevel = param1.currentLevel + 1;
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr00ff:
                                       _loc2_.upgradeMaxLevel = param1.maxLevel;
                                       if(_loc5_ || Boolean(_loc2_))
                                       {
                                          addr0116:
                                          _loc2_.upgradeCountTotal = param1.maxHarvestUpgradeCount;
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             _loc2_.harvestCount = param1.harvestUpgradeCount > param1.maxHarvestUpgradeCount ? param1.maxHarvestUpgradeCount : param1.harvestUpgradeCount;
                                             if(_loc5_ || Boolean(param1))
                                             {
                                                §§push(param1.isInBuildMode);
                                                if(!_loc6_)
                                                {
                                                   §§push(!§§pop());
                                                   if(!_loc6_)
                                                   {
                                                      var _temp_8:* = §§pop();
                                                      §§push(_temp_8);
                                                      if(_temp_8)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            addr0176:
                                                            §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               addr017d:
                                                               §§push(param1.residentialPhase);
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  addr0190:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr019e:
                                                                        addr019a:
                                                                        §§push(param1.residentialPhase.config.durationConfig.duration);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr01b3:
                                                                              var _temp_10:* = §§pop();
                                                                              §§push(_temp_10);
                                                                              §§push(_temp_10);
                                                                              if(!(_loc6_ && Boolean(param1)))
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 if(!(_loc6_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(§§pop() + Math.ceil(_loc4_ * BuildingMasteryProxy.getCompletePercentValueForTag(param1,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY,ServerTagConstants.TIME)));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       var _temp_13:* = §§pop();
                                                                                       §§push(_temp_13);
                                                                                       §§push(_temp_13);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr0207:
                                                                                          var _temp_14:* = §§pop();
                                                                                          §§push(_temp_14);
                                                                                          §§push(_temp_14);
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             if(_loc5_ || Boolean(_loc2_))
                                                                                             {
                                                                                                addr0233:
                                                                                                addr0226:
                                                                                                §§push(§§pop() * ImprovementProxy.getCompletePercentValueForTag(param1,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY));
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr0242);
                                                                                                }
                                                                                                §§goto(addr025b);
                                                                                             }
                                                                                             §§goto(addr0242);
                                                                                          }
                                                                                          §§goto(addr0233);
                                                                                       }
                                                                                       §§goto(addr0226);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr025b);
                                                                              }
                                                                              §§goto(addr0207);
                                                                           }
                                                                           addr0242:
                                                                           _loc4_ = §§pop();
                                                                           if(!(_loc6_ && Boolean(_loc2_)))
                                                                           {
                                                                              addr025b:
                                                                              _loc4_ = Math.ceil(_loc4_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 _loc2_.cycleLength = _loc4_;
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    _loc2_.endTime = param1.residentialPhase.expirationTime;
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr0282:
                                                                                       _loc2_.currentTime = this._timerProxy.currentTimeStamp;
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr0294:
                                                                                          _loc2_.needs = this.getNeeds(param1);
                                                                                          if(_loc5_ || Boolean(this))
                                                                                          {
                                                                                             addr02ad:
                                                                                             _loc2_.residents = this.getCurrentResidentInfos(param1.configPlayfieldItemVo,param1);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§goto(addr02c3);
                                                                                             }
                                                                                             §§goto(addr0359);
                                                                                          }
                                                                                          §§goto(addr02f1);
                                                                                       }
                                                                                       §§goto(addr0376);
                                                                                    }
                                                                                    §§goto(addr0309);
                                                                                 }
                                                                                 §§goto(addr02ad);
                                                                              }
                                                                              §§goto(addr0282);
                                                                           }
                                                                           addr02c3:
                                                                           _loc2_.residentChange = this._featureProxy.residentChangeUnlocked;
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              addr02de:
                                                                              _loc2_.residentChangeLevel = this._featureProxy.residentChangeUnlockLevel;
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr02f1:
                                                                                 _loc2_.rentIncome = this.getActualResidentialOutcome(param1.configPlayfieldItemVo,param1,RENT_OUT);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr0309:
                                                                                    _loc2_.needIncome = this.getActualResidentialOutcome(param1.configPlayfieldItemVo,param1,NEED_OUT);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr0321:
                                                                                       _loc2_.ep = this.goodStockProxy.hasEnoughPermits();
                                                                                       if(_loc5_ || Boolean(this))
                                                                                       {
                                                                                          addr033c:
                                                                                          _loc2_.mood = getBillboardEffects(param1,MOOD);
                                                                                          if(!(_loc6_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             addr0359:
                                                                                             _loc2_.energy = getBillboardEffects(param1,ENERGY);
                                                                                             if(!(_loc6_ && Boolean(param1)))
                                                                                             {
                                                                                                addr0376:
                                                                                                _loc2_.masteryChallenge = this._buildingMasteryProxy.getMasteryComponentVo(param1.buildingDTO);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0389);
                                                                                       }
                                                                                       §§goto(addr0376);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0359);
                                                                              }
                                                                              §§goto(addr0376);
                                                                           }
                                                                           §§goto(addr0389);
                                                                        }
                                                                        §§goto(addr01b3);
                                                                     }
                                                                     §§goto(addr0321);
                                                                  }
                                                                  §§goto(addr0294);
                                                               }
                                                               §§goto(addr019e);
                                                            }
                                                            §§goto(addr0359);
                                                         }
                                                      }
                                                      §§goto(addr0190);
                                                   }
                                                }
                                                §§goto(addr0176);
                                             }
                                             §§goto(addr0389);
                                          }
                                          §§goto(addr019a);
                                       }
                                       §§goto(addr0282);
                                    }
                                    §§goto(addr02f1);
                                 }
                                 §§goto(addr0309);
                              }
                              else
                              {
                                 _loc2_.upgradeNextLevel = param1.currentLevel;
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    §§goto(addr00ff);
                                 }
                              }
                              §§goto(addr017d);
                           }
                           §§goto(addr033c);
                        }
                        §§goto(addr00cc);
                     }
                  }
                  §§goto(addr0116);
               }
               §§goto(addr02de);
            }
            addr0389:
            var _loc3_:ResidentialDetailViewVo = new ResidentialDetailViewVo(_loc2_,param1);
            if(_loc5_ || Boolean(_loc2_))
            {
               if(param1.configPlayfieldItemVo.nextConfigId != 0)
               {
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc3_.nextResidentialDetail = this.createNextResidential(param1);
                  }
               }
            }
            return _loc3_;
         }
         §§goto(addr0116);
      }
      
      public function getProductionDetailViewVo(param1:ProductionFieldObjectVo) : ProductionDetailViewVo
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc3_:ProductionGoodObjectVo = null;
         var _loc4_:ProductionGoodObjectVo = null;
         var _loc5_:ProductionDetailViewVo = null;
         var _loc6_:ProductionGoodObjectVo = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc8_:Boolean = false;
         var _loc9_:ProductionGoodObjectVo = null;
         var _loc10_:* = 0;
         var _loc11_:GoodRequireVo = null;
         if(_loc17_)
         {
            ConfigFactory.buildProductionFieldObjectVo(param1);
         }
         var _loc2_:Object = new Object();
         if(_loc17_ || Boolean(this))
         {
            _loc2_.globalUserLevel = this._playerResourceProxy.userLevel;
            if(!(_loc16_ && Boolean(_loc2_)))
            {
               _loc2_.pfoVo = param1;
               if(_loc17_)
               {
                  _loc2_.gfxId = param1.buildingDTO.config.gfxId;
                  if(!_loc16_)
                  {
                     addr00a0:
                     _loc2_.localeId = param1.configPlayfieldItemVo.localeId;
                     if(_loc17_)
                     {
                        addr00b1:
                        _loc2_.upgradePrice = param1.getUpgradeInstantFinishCost() + this.getNextUpgradeInstantFinishCost(param1.configPlayfieldItemVo.nextConfigId);
                        if(_loc17_ || Boolean(_loc3_))
                        {
                           addr00d5:
                           _loc2_.hasEnoughDD = this._playerResourceProxy.realCurrency >= _loc2_.upgradePrice;
                           if(!(_loc16_ && Boolean(_loc2_)))
                           {
                              addr00f4:
                              _loc2_.upgradeCurrentLevel = param1.currentLevel;
                              if(!(_loc16_ && Boolean(_loc2_)))
                              {
                                 §§push(param1.maxLevel);
                                 if(_loc17_ || Boolean(this))
                                 {
                                    if(§§pop() > param1.currentLevel)
                                    {
                                       if(_loc17_ || Boolean(_loc3_))
                                       {
                                          _loc2_.upgradeNextLevel = param1.currentLevel + 1;
                                          if(_loc17_)
                                          {
                                             addr015e:
                                             _loc2_.upgradeMaxLevel = param1.maxLevel;
                                             if(!(_loc16_ && Boolean(_loc3_)))
                                             {
                                                _loc2_.upgradeCountTotal = param1.maxHarvestUpgradeCount;
                                                if(_loc17_)
                                                {
                                                   _loc2_.harvestCount = param1.harvestUpgradeCount > param1.maxHarvestUpgradeCount ? param1.maxHarvestUpgradeCount : param1.harvestUpgradeCount;
                                                   addr0183:
                                                   if(!(_loc16_ && Boolean(param1)))
                                                   {
                                                      addr01b1:
                                                      _loc2_.currentTime = this._timerProxy.currentTimeStamp;
                                                      if(!(_loc16_ && Boolean(param1)))
                                                      {
                                                         addr01cb:
                                                         _loc2_.productionOptions = this.getProductionOptions(param1);
                                                      }
                                                   }
                                                   addr01d7:
                                                   var _loc12_:* = 0;
                                                   var _loc13_:* = _loc2_.productionOptions;
                                                   addr01d5:
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc13_,_loc12_));
                                                      if(_loc16_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         _loc3_ = §§nextvalue(_loc12_,_loc13_);
                                                         if(!(_loc16_ && Boolean(_loc3_)))
                                                         {
                                                            _loc3_.productionIncome = this.getActualProductionOutcome(_loc3_);
                                                         }
                                                         continue;
                                                      }
                                                      if(!_loc16_)
                                                      {
                                                         if(_loc17_ || Boolean(_loc2_))
                                                         {
                                                            if(!(_loc16_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(param1.isIdle);
                                                               if(!_loc16_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        _loc2_.endTime = param1.currentProductionPhase.expirationTime;
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc16_ && Boolean(this)))
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              if(_loc17_)
                                                                              {
                                                                                 _loc13_ = _loc2_.productionOptions;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc13_,_loc12_));
                                                                                    if(!(_loc16_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    addr04f5:
                                                                                    addr04f9:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       _loc4_ = §§nextvalue(_loc12_,_loc13_);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          var _loc14_:int = 0;
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             for each(_loc11_ in _loc4_.requiredGoods)
                                                                                             {
                                                                                                if(_loc17_ || Boolean(this))
                                                                                                {
                                                                                                   this.goodStockProxy.setCurrentStockForGoodObjectVo(_loc11_.goodObjectVo);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§hasnext(_loc13_,_loc12_));
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    addr04fb:
                                                                                    if(!(_loc16_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr050b:
                                                                                       _loc2_.mood = getBillboardEffects(param1,MOOD);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          §§goto(addr0520);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr053d);
                                                                                 }
                                                                                 addr0335:
                                                                              }
                                                                              addr0358:
                                                                              if(!(_loc16_ && Boolean(param1)))
                                                                              {
                                                                                 addr047f:
                                                                                 _loc12_ = 0;
                                                                                 addr047d:
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    addr0487:
                                                                                    _loc13_ = ProductionFieldObjectVo(param1).produceAbleGoods;
                                                                                    §§goto(addr04f2);
                                                                                 }
                                                                                 §§goto(addr04fb);
                                                                              }
                                                                              §§goto(addr050b);
                                                                           }
                                                                           §§goto(addr047f);
                                                                        }
                                                                        §§goto(addr0561);
                                                                     }
                                                                     §§goto(addr050b);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr036d:
                                                                     _loc8_ = false;
                                                                     if(!(_loc16_ && Boolean(this)))
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc16_ && Boolean(_loc3_)))
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           if(_loc17_)
                                                                           {
                                                                              _loc13_ = _loc2_.productionOptions;
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§hasnext(_loc13_,_loc12_));
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr03e3:
                                                                                          if(_loc17_ || Boolean(param1))
                                                                                          {
                                                                                             _loc2_.endTime = 0;
                                                                                             if(_loc17_ || Boolean(param1))
                                                                                             {
                                                                                                §§push(int(this._storage.data[param1.buildingDTO.id]));
                                                                                                if(_loc17_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   _loc10_ = §§pop();
                                                                                                   §§push(_loc10_);
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   var _temp_27:* = §§pop();
                                                                                                   §§push(_temp_27);
                                                                                                   if(_temp_27)
                                                                                                   {
                                                                                                      if(!(_loc16_ && Boolean(_loc2_)))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            addr0455:
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr0454:
                                                                                                               §§push(!§§pop());
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  addr045f:
                                                                                                                  _loc2_.cpi = _loc10_;
                                                                                                                  if(_loc17_ || Boolean(param1))
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               _loc2_.cpi = -1;
                                                                                                            }
                                                                                                            §§goto(addr047d);
                                                                                                         }
                                                                                                         §§goto(addr045f);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0455);
                                                                                                }
                                                                                                §§goto(addr0454);
                                                                                             }
                                                                                             §§goto(addr045f);
                                                                                          }
                                                                                          §§goto(addr047d);
                                                                                       }
                                                                                       §§goto(addr04fb);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc9_ = §§nextvalue(_loc12_,_loc13_);
                                                                                       §§push(_loc9_.config.isEventGood);
                                                                                       if(!(_loc16_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             addr03ca:
                                                                                             _loc8_ = true;
                                                                                          }
                                                                                          §§goto(addr03e3);
                                                                                       }
                                                                                       §§goto(addr03ca);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr04f5);
                                                                              }
                                                                           }
                                                                           §§goto(addr0487);
                                                                        }
                                                                        §§goto(addr047f);
                                                                     }
                                                                  }
                                                                  §§goto(addr0561);
                                                               }
                                                               §§goto(addr036d);
                                                            }
                                                            addr0520:
                                                            _loc2_.energy = getBillboardEffects(param1,ENERGY);
                                                            if(!(_loc16_ && Boolean(param1)))
                                                            {
                                                               addr053d:
                                                               _loc2_.cpp = this._playerResourceProxy.productionPoints;
                                                               if(!_loc16_)
                                                               {
                                                                  _loc2_.eventGfxId = this._eventProxy.currentRunningEventQuestGfxId;
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr0561:
                                                                     _loc2_.eventLocaleId = this._eventProxy.currentRunningEventQuestLocaleId;
                                                                  }
                                                                  _loc5_ = new ProductionDetailViewVo(_loc2_);
                                                                  §§goto(addr056d);
                                                               }
                                                               §§goto(addr0561);
                                                            }
                                                            addr056d:
                                                            if(!_loc16_)
                                                            {
                                                               if(param1.configPlayfieldItemVo.nextConfigId != 0)
                                                               {
                                                                  if(!(_loc16_ && Boolean(param1)))
                                                                  {
                                                                     _loc5_.nextProductionDetail = this.createNextProduction(param1);
                                                                  }
                                                               }
                                                            }
                                                            return _loc5_;
                                                         }
                                                         §§goto(addr0487);
                                                      }
                                                      §§goto(addr04f9);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               §§goto(addr0358);
                                                            }
                                                            §§goto(addr0487);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr03e3);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc6_ = §§nextvalue(_loc12_,_loc13_);
                                                         if(!_loc16_)
                                                         {
                                                            _loc14_ = 0;
                                                            if(!(_loc16_ && Boolean(_loc3_)))
                                                            {
                                                               for each(_loc7_ in param1.currentProductionPhase.config.listEntryOutputs)
                                                               {
                                                                  §§push(_loc7_.goodConfig);
                                                                  if(!(_loc16_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        var _temp_36:* = §§pop();
                                                                        §§push(_temp_36);
                                                                        if(_temp_36)
                                                                        {
                                                                           if(!(_loc16_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc17_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr0304:
                                                                              §§push(_loc7_.goodConfig == _loc6_.config);
                                                                           }
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc16_ && Boolean(_loc3_)))
                                                                        {
                                                                           _loc2_.cpi = _loc2_.productionOptions.indexOf(_loc6_);
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr0304);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0335);
                                                      }
                                                   }
                                                   §§goto(addr04f5);
                                                }
                                                §§goto(addr01cb);
                                             }
                                             §§goto(addr0183);
                                          }
                                          §§goto(addr01d5);
                                       }
                                       §§goto(addr015e);
                                    }
                                    else
                                    {
                                       _loc2_.upgradeNextLevel = param1.currentLevel;
                                       if(_loc17_ || Boolean(param1))
                                       {
                                          §§goto(addr015e);
                                       }
                                    }
                                    §§goto(addr01d5);
                                 }
                                 §§goto(addr01d7);
                              }
                           }
                           §§goto(addr015e);
                        }
                        §§goto(addr01b1);
                     }
                     §§goto(addr015e);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr00d5);
            }
            §§goto(addr00f4);
         }
         §§goto(addr00a0);
      }
      
      public function getShopDetailViewVo(param1:ShopFieldObjectVo, param2:Boolean = true) : ShopDetailViewVo
      {
         var _temp_1:* = true;
         var _loc22_:Boolean = false;
         var _loc23_:Boolean = _temp_1;
         var _loc7_:ConfigNeedDTO = null;
         var _loc8_:ConfigOutputDTO = null;
         var _loc9_:ConfigNeedStackDTO = null;
         var _loc10_:ConfigGoodDTO = null;
         var _loc11_:GoodObjectVo = null;
         var _loc12_:NeedStackDTO = null;
         var _loc13_:ConfigPlayfieldItemDTO = null;
         var _loc3_:ShopDetailViewVo = new ShopDetailViewVo();
         if(_loc23_)
         {
            if(param1.buildingDTO != null)
            {
               if(_loc23_ || Boolean(this))
               {
                  _loc3_.buildingID = param1.buildingDTO.id;
                  if(!(_loc22_ && Boolean(param1)))
                  {
                     addr007d:
                     _loc3_.gfxID = param1.configPlayfieldItemVo.gfxId;
                     if(!_loc22_)
                     {
                        addr008e:
                        _loc3_.localeId = param1.configPlayfieldItemVo.localeId;
                        if(!_loc22_)
                        {
                           addr009f:
                           _loc3_.currentLevel = param1.currentLevel;
                        }
                        addr00a7:
                        var _loc4_:Vector.<GoodObjectVo> = new Vector.<GoodObjectVo>();
                        var _loc5_:Vector.<ShopStockGoodVo> = new Vector.<ShopStockGoodVo>();
                        var _loc6_:* = false;
                        var _loc14_:* = 0;
                        var _loc15_:* = param1.configPlayfieldItemVo.needShopConfigs;
                        loop0:
                        while(true)
                        {
                           §§push(§§hasnext(_loc15_,_loc14_));
                           if(!_loc23_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              _loc7_ = §§nextvalue(_loc14_,_loc15_);
                              if(_loc23_ || Boolean(_loc3_))
                              {
                                 var _loc16_:int = 0;
                                 if(!(_loc22_ && Boolean(_loc3_)))
                                 {
                                    for each(_loc9_ in _loc7_.requiredGoods)
                                    {
                                       if(_loc23_ || Boolean(param1))
                                       {
                                          _loc3_.maxStock = _loc9_.maxStack;
                                          if(_loc22_)
                                          {
                                             continue;
                                          }
                                       }
                                       var _loc18_:int = 0;
                                       if(_loc23_ || param2)
                                       {
                                          for each(_loc10_ in this.configProxy.config.goods)
                                          {
                                             if(_loc23_)
                                             {
                                                §§push(_loc9_.configOutout.goodConfig == null);
                                                if(!_loc22_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc23_)
                                                   {
                                                      var _temp_16:* = §§pop();
                                                      §§push(_temp_16);
                                                      if(_temp_16)
                                                      {
                                                         if(_loc23_ || Boolean(param1))
                                                         {
                                                            addr0196:
                                                            §§pop();
                                                            if(_loc23_)
                                                            {
                                                               addr01ac:
                                                               addr019d:
                                                               if(_loc10_.id != _loc9_.configOutout.goodConfig.id)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc11_ = this.goodStockProxy.getGoodByConfigId(_loc10_.id);
                                                            if(!_loc22_)
                                                            {
                                                               _loc4_.push(_loc11_);
                                                               if(!(_loc22_ && Boolean(_loc3_)))
                                                               {
                                                                  §§push(false);
                                                                  if(!_loc22_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     if(!(_loc23_ || Boolean(this)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr01f3:
                                                                     var _loc20_:int = 0;
                                                                     if(!_loc22_)
                                                                     {
                                                                        for each(_loc12_ in param1.sellableNeedStack)
                                                                        {
                                                                           if(_loc12_.configId == _loc9_.id)
                                                                           {
                                                                              if(!_loc22_)
                                                                              {
                                                                                 _loc5_.push(new ShopStockGoodVo(_loc11_,_loc12_.amount,_loc9_.maxStack,_loc9_.configOutout.outputAmount * this._globalStatProxy.happinessOutputModifier));
                                                                                 if(_loc23_)
                                                                                 {
                                                                                    _loc6_ = true;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(_loc22_ && Boolean(_loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr026f:
                                                                     §§push(_loc6_);
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc23_)
                                                                     {
                                                                        _loc5_.push(new ShopStockGoodVo(_loc11_,0,_loc9_.maxStack,_loc9_.configOutout.outputAmount * this._globalStatProxy.happinessOutputModifier));
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr026f);
                                                            }
                                                            §§goto(addr01f3);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr01ac);
                                                }
                                                §§goto(addr0196);
                                             }
                                             §§goto(addr019d);
                                          }
                                       }
                                    }
                                 }
                              }
                              continue;
                           }
                           if(_loc23_ || param2)
                           {
                              if(_loc23_ || Boolean(param1))
                              {
                                 if(_loc23_)
                                 {
                                    §§push(0);
                                    if(_loc23_)
                                    {
                                       _loc14_ = §§pop();
                                       if(_loc23_)
                                       {
                                          addr02f9:
                                          _loc15_ = param1.configPlayfieldItemVo.globalBuffs;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc15_,_loc14_));
                                             break loop0;
                                          }
                                          addr04f3:
                                          addr04ec:
                                       }
                                       if(_loc23_)
                                       {
                                          addr0501:
                                          if(param1.maxLevel > param1.currentLevel)
                                          {
                                             if(_loc23_ || Boolean(_loc3_))
                                             {
                                                §§goto(addr0517);
                                             }
                                             §§goto(addr0584);
                                          }
                                          else
                                          {
                                             _loc3_.nextLevel = param1.currentLevel;
                                             if(!_loc22_)
                                             {
                                                §§goto(addr0544);
                                             }
                                          }
                                          §§goto(addr0592);
                                       }
                                       §§goto(addr0584);
                                    }
                                    §§goto(addr0501);
                                 }
                                 addr0517:
                                 _loc3_.nextLevel = param1.currentLevel + 1;
                                 if(!(_loc22_ && Boolean(_loc3_)))
                                 {
                                    addr0544:
                                    _loc3_.radiusX = param1.satisfyRange.width;
                                    if(!_loc22_)
                                    {
                                       _loc3_.radiusY = param1.satisfyRange.height;
                                       if(_loc23_)
                                       {
                                          §§goto(addr0564);
                                       }
                                    }
                                    §§goto(addr0620);
                                 }
                                 addr0564:
                                 _loc3_.storageInterests = _loc4_;
                                 if(!_loc22_)
                                 {
                                    _loc3_.storeStock = _loc5_;
                                    if(_loc23_ || Boolean(this))
                                    {
                                       addr0584:
                                       _loc3_.upgradeMaxLevel = param1.maxLevel;
                                       if(!_loc22_)
                                       {
                                          addr0592:
                                          if(param2)
                                          {
                                             if(!(_loc22_ && param2))
                                             {
                                                _loc13_ = this.configProxy.config.items[param1.configPlayfieldItemVo.nextConfigId];
                                                if(_loc13_)
                                                {
                                                   if(!(_loc22_ && param2))
                                                   {
                                                      _loc3_.nextLevelData = this.getShopDetailViewVo(new ShopFieldObjectVo(_loc13_),false);
                                                      if(_loc22_)
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_.nextLevelData = null;
                                                }
                                                §§goto(addr05fe);
                                             }
                                             §§goto(addr0620);
                                          }
                                          addr05fe:
                                          _loc3_.upgradeMMPrice = Math.ceil(param1.instantUpgradeStartCosts + this.getNextUpgradeInstantFinishCost(param1.configPlayfieldItemVo.nextConfigId));
                                          if(_loc23_)
                                          {
                                             addr0620:
                                             _loc3_.hasEnoughDD = this._playerResourceProxy.realCurrency >= _loc3_.upgradeMMPrice;
                                          }
                                          §§goto(addr0630);
                                       }
                                    }
                                 }
                                 addr0630:
                                 return _loc3_;
                              }
                              §§goto(addr02f9);
                           }
                           §§goto(addr04f3);
                        }
                        while(§§pop())
                        {
                           _loc8_ = §§nextvalue(_loc14_,_loc15_);
                           §§push(_loc8_.type);
                           if(_loc23_)
                           {
                              §§push(ServerOutputConstants.RESOURCE);
                              if(_loc23_ || Boolean(this))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc23_ || Boolean(_loc3_))
                                    {
                                       §§push(_loc8_.resourceConfig);
                                       if(_loc23_)
                                       {
                                          §§push(§§pop().type);
                                          if(_loc23_ || Boolean(_loc3_))
                                          {
                                             §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
                                             if(!(_loc22_ && Boolean(this)))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc23_ || Boolean(this))
                                                {
                                                   var _temp_28:* = §§pop();
                                                   §§push(_temp_28);
                                                   §§push(_temp_28);
                                                   if(!(_loc22_ && Boolean(this)))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc22_ && Boolean(this)))
                                                         {
                                                            §§pop();
                                                            if(!_loc22_)
                                                            {
                                                               §§push(_loc8_.resourceConfig);
                                                               if(!_loc22_)
                                                               {
                                                                  addr03be:
                                                                  §§push(§§pop().type);
                                                                  if(!(_loc22_ && Boolean(param1)))
                                                                  {
                                                                     §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                                                                     if(_loc23_)
                                                                     {
                                                                        addr03d9:
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc23_)
                                                                        {
                                                                           addr03e0:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc22_ && Boolean(this)))
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 §§push(_loc8_.outputAmount);
                                                                                 if(!(_loc22_ && param2))
                                                                                 {
                                                                                    if(_loc8_.resourceConfig.type == ServerResConst.RESOURCE_ENERGY_NEGATIVE)
                                                                                    {
                                                                                       addr042e:
                                                                                       if(_loc23_)
                                                                                       {
                                                                                          §§push(-1 * (_loc23_ ? §§pop() : §§pop()));
                                                                                       }
                                                                                       §§pop().currentEnergy = §§pop();
                                                                                       if(_loc23_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr043f:
                                                                                          §§push(_loc8_.resourceConfig);
                                                                                          if(!(_loc22_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(§§pop().type);
                                                                                             if(_loc23_)
                                                                                             {
                                                                                                addr045a:
                                                                                                §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   addr0465:
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(_loc23_ || Boolean(this))
                                                                                                   {
                                                                                                      addr0474:
                                                                                                      var _temp_37:* = §§pop();
                                                                                                      addr0475:
                                                                                                      §§push(_temp_37);
                                                                                                      if(!_temp_37)
                                                                                                      {
                                                                                                         if(_loc23_)
                                                                                                         {
                                                                                                            addr047f:
                                                                                                            §§pop();
                                                                                                            if(_loc23_)
                                                                                                            {
                                                                                                               addr0493:
                                                                                                               addr0492:
                                                                                                               addr048d:
                                                                                                               addr048b:
                                                                                                               addr0486:
                                                                                                               if(_loc8_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_POSITIVE)
                                                                                                               {
                                                                                                                  if(!(_loc22_ && param2))
                                                                                                                  {
                                                                                                                     addr04a5:
                                                                                                                     §§push(_loc3_);
                                                                                                                     §§push(_loc8_.outputAmount);
                                                                                                                     if(!(_loc22_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        if(_loc8_.resourceConfig.type == ServerResConst.RESOURCE_HAPPINESS_NEGATIVE)
                                                                                                                        {
                                                                                                                           if(_loc23_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr04d8:
                                                                                                                              §§push(-1 * (!_loc22_ ? §§pop() : §§pop()));
                                                                                                                           }
                                                                                                                           §§pop().currentMood = §§pop();
                                                                                                                           §§goto(addr04ec);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(1);
                                                                                                                        }
                                                                                                                        §§goto(addr04e7);
                                                                                                                     }
                                                                                                                     §§goto(addr04d8);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr04ec);
                                                                                                            }
                                                                                                            §§goto(addr04a5);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0493);
                                                                                                }
                                                                                                §§goto(addr0492);
                                                                                             }
                                                                                             §§goto(addr048d);
                                                                                          }
                                                                                          §§goto(addr048b);
                                                                                       }
                                                                                       §§goto(addr04ec);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(1);
                                                                                    }
                                                                                    §§goto(addr042c);
                                                                                 }
                                                                                 §§goto(addr042e);
                                                                              }
                                                                              §§goto(addr0486);
                                                                           }
                                                                           §§goto(addr043f);
                                                                        }
                                                                        §§goto(addr0474);
                                                                     }
                                                                     §§goto(addr0492);
                                                                  }
                                                                  §§goto(addr048d);
                                                               }
                                                               §§goto(addr048b);
                                                            }
                                                            §§goto(addr04ec);
                                                         }
                                                         §§goto(addr047f);
                                                      }
                                                      §§goto(addr03e0);
                                                   }
                                                   §§goto(addr0475);
                                                }
                                                §§goto(addr0474);
                                             }
                                             §§goto(addr03d9);
                                          }
                                          §§goto(addr045a);
                                       }
                                       §§goto(addr03be);
                                    }
                                    §§goto(addr043f);
                                 }
                                 §§goto(addr04ec);
                              }
                              §§goto(addr0465);
                           }
                           §§goto(addr045a);
                        }
                        §§goto(addr04f3);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr008e);
            }
            §§goto(addr007d);
         }
         §§goto(addr00a7);
      }
      
      public function getDepartmentDetailViewVo(param1:String) : DepartmentDetailViewVo
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc6_:* = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:Object = new Object();
         var _loc4_:Vector.<InfrastructureBuildingFieldObject> = _loc2_.getInfrastructureBuildingByDepartmentTag(param1);
         §§push(_loc4_ == null);
         if(!_loc12_)
         {
            var _temp_2:* = §§pop();
            §§push(_temp_2);
            if(!_temp_2)
            {
               if(!_loc12_)
               {
                  §§goto(addr004f);
               }
            }
            §§goto(addr0065);
         }
         addr004f:
         §§pop();
         if(!(_loc12_ && Boolean(_loc2_)))
         {
            addr0065:
            if(_loc4_.length == 0)
            {
               if(_loc11_ || Boolean(param1))
               {
                  §§goto(addr0077);
               }
            }
            var _loc5_:InfrastructureBuildingFieldObjectVo = _loc4_[0].emergencyFieldObjectVo as InfrastructureBuildingFieldObjectVo;
            if(!(_loc12_ && Boolean(_loc3_)))
            {
               _loc3_.id = _loc5_.id;
               if(!(_loc12_ && Boolean(this)))
               {
                  _loc3_.type = param1;
                  if(_loc11_ || Boolean(_loc3_))
                  {
                     _loc3_.gfxId = _loc5_.configPlayfieldItemVo.gfxId;
                     if(!_loc12_)
                     {
                        addr00e3:
                        _loc3_.libName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc5_.configPlayfieldItemVo);
                        if(!_loc12_)
                        {
                           addr00f9:
                           _loc3_.departmentGfxId = EmergencyLayerProxy.getGfxIdByDepartment(param1);
                           if(_loc11_)
                           {
                              _loc3_.localeId = _loc5_.configPlayfieldItemVo.localeId;
                              if(!(_loc12_ && Boolean(this)))
                              {
                                 _loc3_.upgradeCurrentLevel = _loc5_.currentLevel;
                                 if(!_loc12_)
                                 {
                                    _loc3_.emergencyCount = _loc5_.emergenciesUpgradeCount > _loc5_.maxEmergenciesUpgradeCount ? _loc5_.maxEmergenciesUpgradeCount : _loc5_.emergenciesUpgradeCount;
                                    addr0136:
                                    if(!_loc12_)
                                    {
                                       addr0162:
                                       _loc3_.upgradeCountTotal = _loc5_.maxEmergenciesUpgradeCount;
                                       if(!_loc12_)
                                       {
                                          addr0171:
                                          _loc3_.upgradeMaxLevel = _loc5_.maxUpgradeLevel;
                                          if(_loc11_ || Boolean(_loc2_))
                                          {
                                             addr0189:
                                             if(_loc5_.maxUpgradeLevel > _loc5_.currentLevel)
                                             {
                                                if(!_loc12_)
                                                {
                                                   addr019d:
                                                   _loc3_.upgradeNextLevel = _loc5_.currentLevel + 1;
                                                   if(_loc11_ || Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                _loc3_.upgradeNextLevel = _loc5_.currentLevel;
                                             }
                                          }
                                       }
                                    }
                                    addr0224:
                                    var _loc10_:* = param1;
                                    if(_loc11_ || Boolean(_loc2_))
                                    {
                                       §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                       if(_loc11_)
                                       {
                                          §§push(_loc10_);
                                          if(!_loc12_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc12_)
                                                {
                                                   §§push(0);
                                                   if(_loc11_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr0298:
                                                   §§push(1);
                                                   if(_loc11_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                                if(!_loc12_)
                                                {
                                                   §§push(_loc10_);
                                                   if(!(_loc12_ && Boolean(param1)))
                                                   {
                                                      addr0286:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc12_ && Boolean(_loc3_)))
                                                         {
                                                            §§goto(addr0298);
                                                         }
                                                         else
                                                         {
                                                            addr02af:
                                                            §§push(2);
                                                            if(_loc12_ && Boolean(_loc3_))
                                                            {
                                                            }
                                                         }
                                                         addr02cf:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               §§push("icon_fire");
                                                               if(!_loc12_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  if(_loc11_ || Boolean(param1))
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr01fa:
                                                                  _loc6_ = §§pop();
                                                                  if(_loc12_)
                                                                  {
                                                                  }
                                                               }
                                                               addr02e8:
                                                               _loc3_.headerIcon = _loc6_;
                                                               if(!(_loc12_ && Boolean(this)))
                                                               {
                                                                  _loc3_.maxSlots = _loc5_.configPlayfieldItemVo.maxProfessionalAmount;
                                                                  if(!(_loc11_ || Boolean(_loc2_)))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               _loc3_.slotList = this.getDepartmentProfessionals(_loc5_,_loc3_.maxSlots);
                                                               break;
                                                            case 1:
                                                               §§push("icon_police");
                                                               if(!(_loc12_ && Boolean(this)))
                                                               {
                                                                  §§goto(addr01fa);
                                                               }
                                                               else
                                                               {
                                                                  addr020b:
                                                                  _loc6_ = §§pop();
                                                                  if(_loc12_ && Boolean(_loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§goto(addr02e8);
                                                            case 2:
                                                               §§goto(addr020b);
                                                               §§push("icon_hospital");
                                                            default:
                                                               §§goto(addr02e8);
                                                         }
                                                         var _loc7_:Vector.<ProfessionalDTO> = this._professionalProxy.getProfessionalsByDepartment(param1);
                                                         if(!(_loc12_ && Boolean(_loc2_)))
                                                         {
                                                            _loc3_.currentSlots = _loc7_.length;
                                                            if(_loc11_ || Boolean(this))
                                                            {
                                                               addr035b:
                                                               _loc3_.configSecurityGrades = _loc5_.configPlayfieldItemVo.configSecurityGrades.sort(sortSecurityGradesOnOrderId);
                                                               if(_loc11_)
                                                               {
                                                                  addr0375:
                                                                  _loc3_.attributePoints = this.getAttributePoints(_loc7_,ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
                                                                  if(!_loc12_)
                                                                  {
                                                                     _loc3_.maxAttributePoints = this.getMaxAttributePoints(ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
                                                                     if(!(_loc12_ && Boolean(_loc3_)))
                                                                     {
                                                                        _loc3_.buildingSizeX = _loc5_.objectSize.x;
                                                                        if(!(_loc12_ && Boolean(this)))
                                                                        {
                                                                           addr03c6:
                                                                           _loc3_.buildingSizeY = _loc5_.objectSize.y;
                                                                        }
                                                                     }
                                                                     addr03d2:
                                                                     var _loc8_:Vector.<String> = new Vector.<String>();
                                                                     _loc8_.push(ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
                                                                     if(_loc11_)
                                                                     {
                                                                        _loc3_.thresholds = this.getThresholds(_loc8_);
                                                                        if(!(_loc12_ && Boolean(_loc2_)))
                                                                        {
                                                                           if(_loc5_.maxUpgradeLevel > _loc5_.currentLevel)
                                                                           {
                                                                              if(!(_loc12_ && Boolean(this)))
                                                                              {
                                                                                 _loc3_.upgradeNextLevel = _loc5_.currentLevel + 1;
                                                                                 if(_loc12_ && Boolean(this))
                                                                                 {
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc3_.upgradeNextLevel = _loc5_.currentLevel;
                                                                           }
                                                                        }
                                                                     }
                                                                     var _loc9_:DepartmentDetailViewVo = new DepartmentDetailViewVo(_loc3_);
                                                                     _loc9_.userRcStock = this._playerResourceProxy.realCurrency;
                                                                     if(!_loc12_)
                                                                     {
                                                                        _loc9_.upgradeInstaFinishRCCost = _loc5_.getUpgradeInstantFinishCost();
                                                                        if(!(_loc12_ && Boolean(param1)))
                                                                        {
                                                                           addr0490:
                                                                           if(_loc5_.configPlayfieldItemVo.nextConfigId != 0)
                                                                           {
                                                                              if(_loc11_)
                                                                              {
                                                                                 _loc9_.nextDepartmentDetail = this.createNextDepartment(_loc5_);
                                                                              }
                                                                           }
                                                                        }
                                                                        return _loc9_;
                                                                     }
                                                                     §§goto(addr0490);
                                                                  }
                                                                  §§goto(addr03c6);
                                                               }
                                                               §§goto(addr03d2);
                                                            }
                                                            §§goto(addr0375);
                                                         }
                                                         §§goto(addr035b);
                                                      }
                                                      else
                                                      {
                                                         addr02ab:
                                                         addr02a9:
                                                         if(ServerTagConstants.HOSPITAL === _loc10_)
                                                         {
                                                            §§goto(addr02af);
                                                         }
                                                         else
                                                         {
                                                            §§push(3);
                                                         }
                                                         §§goto(addr02cf);
                                                      }
                                                   }
                                                   §§goto(addr02ab);
                                                }
                                                §§goto(addr02a9);
                                             }
                                             §§goto(addr02cf);
                                          }
                                          §§goto(addr0286);
                                       }
                                       §§goto(addr02a9);
                                    }
                                    §§goto(addr0298);
                                 }
                                 §§goto(addr019d);
                              }
                              §§goto(addr0162);
                           }
                           §§goto(addr0224);
                        }
                        §§goto(addr0136);
                     }
                     §§goto(addr0189);
                  }
                  §§goto(addr00e3);
               }
               §§goto(addr00f9);
            }
            §§goto(addr0171);
         }
         addr0077:
         throw new ArgumentError("invalid department: " + param1);
      }
      
      public function getOptionsDetails() : OptionsDetailViewVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:Object = {};
         var _loc2_:Array = [];
         var _loc3_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         if(!_loc5_)
         {
            _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_SPARSE_TRAFFIC,_loc3_.uiDataDTO.lowTraffic));
            if(!_loc5_)
            {
               _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS,_loc3_.uiDataDTO.lowGraphicsQuality));
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS,_loc3_.uiDataDTO.increasingTips));
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     §§goto(addr00ad);
                  }
                  §§goto(addr015c);
               }
               §§goto(addr00d3);
            }
            addr00ad:
            _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS,_loc3_.uiDataDTO.increasingSimbols));
            if(_loc4_ || Boolean(this))
            {
               addr00d3:
               _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION,_loc3_.uiDataDTO.rcVerification));
               if(!(_loc5_ && Boolean(this)))
               {
                  _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION,_loc3_.uiDataDTO.fasterNotification));
                  if(!(_loc5_ && Boolean(_loc1_)))
                  {
                     _loc2_.push(new OptionsListItemVo(OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE,_loc3_.uiDataDTO.fullscreenActive));
                     if(_loc4_)
                     {
                        §§goto(addr0148);
                     }
                     §§goto(addr015c);
                  }
               }
            }
            addr0148:
            _loc1_.list = _loc2_;
            if(_loc4_ || Boolean(_loc1_))
            {
               addr015c:
               _loc1_.sso = this._flashVarsProxy.isSsoUser;
            }
            §§goto(addr0169);
         }
         addr0169:
         return new OptionsDetailViewVo(_loc1_);
      }
      
      public function getResidentSelectionVo(param1:ResidentialFieldObject, param2:Boolean = false) : ResidentSelectionVo
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc5_:ResidentDetailVo = null;
         var _loc7_:ResidentVo = null;
         var _loc8_:ResidentVo = null;
         var _loc9_:ResidentDetailVo = null;
         var _loc3_:ResidentSelectionVo = new ResidentSelectionVo(param2);
         if(_loc13_ || Boolean(_loc3_))
         {
            if(param2)
            {
               if(!_loc12_)
               {
                  addr0054:
                  _loc3_.currentResidents = param1.residentialFieldObjectVo.currentResidentType;
                  if(_loc13_ || Boolean(this))
                  {
                     addr006d:
                     if(param1.billboardObjectVo.configPlayfieldItemVo.residents.length > 1)
                     {
                        if(!(_loc12_ && Boolean(this)))
                        {
                           param1.billboardObjectVo.configPlayfieldItemVo.residents.sort(ArchitecturalBookProxy.sortResidents);
                        }
                     }
                  }
               }
               var _loc4_:Vector.<ResidentDetailVo> = new Vector.<ResidentDetailVo>();
               var _loc6_:* = 0;
               for each(_loc7_ in param1.billboardObjectVo.configPlayfieldItemVo.residents)
               {
                  if(!_loc12_)
                  {
                     if(this._playerResourceProxy.userLevel < _loc7_.minUserLevel)
                     {
                        §§push(_loc6_);
                        if(_loc13_ || Boolean(this))
                        {
                           §§push(uint(§§pop() + 1));
                        }
                        _loc6_ = §§pop();
                        continue;
                     }
                     if(_loc12_ && Boolean(this))
                     {
                        continue;
                     }
                  }
                  _loc5_ = new ResidentDetailVo(_loc7_);
                  _loc5_.movePossible = _loc7_.buildingLevel <= param1.billboardObjectVo.currentLevel;
                  if(!_loc12_)
                  {
                     _loc4_.push(_loc5_);
                  }
               }
               if(!_loc12_)
               {
                  if(_loc6_ > 0)
                  {
                     if(_loc13_)
                     {
                        addr0165:
                        _loc8_ = new ResidentVo("",int.MAX_VALUE,int.MAX_VALUE);
                        if(!(_loc12_ && Boolean(param1)))
                        {
                           while(_loc6_ > 0)
                           {
                              _loc9_ = new ResidentDetailVo(_loc8_);
                              _loc9_.locked = true;
                              if(!_loc12_)
                              {
                                 _loc9_.movePossible = false;
                                 if(!_loc13_)
                                 {
                                    continue;
                                 }
                                 _loc4_.push(_loc9_);
                                 if(!_loc13_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(_loc6_);
                              if(_loc13_ || Boolean(_loc3_))
                              {
                                 §§push(uint(§§pop() - 1));
                              }
                              _loc6_ = §§pop();
                           }
                        }
                        §§goto(addr01eb);
                     }
                     §§goto(addr01f6);
                  }
                  addr01eb:
                  _loc3_.residential = param1;
                  if(_loc13_)
                  {
                     addr01f6:
                     _loc3_.residents = _loc4_;
                  }
                  return _loc3_;
               }
               §§goto(addr0165);
            }
            §§goto(addr006d);
         }
         §§goto(addr0054);
      }
      
      public function getProductionOptions(param1:ProductionFieldObjectVo) : Vector.<ProductionGoodObjectVo>
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc5_:ProductionGoodObjectVo = null;
         var _loc6_:Object = null;
         var _loc7_:* = NaN;
         var _loc2_:Vector.<ProductionGoodObjectVo> = ProductionFieldObjectVo(param1).produceAbleGoods;
         var _loc3_:Vector.<ProductionGoodObjectVo> = new Vector.<ProductionGoodObjectVo>();
         var _loc4_:Array = [];
         var _loc8_:int = 0;
         var _loc9_:* = _loc2_;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc9_,_loc8_));
            if(_loc12_)
            {
               break;
            }
            if(!§§pop())
            {
               if(_loc13_ || Boolean(_loc2_))
               {
                  if(_loc13_ || Boolean(param1))
                  {
                     if(_loc13_ || Boolean(_loc2_))
                     {
                        _loc4_.sortOn("level",Array.NUMERIC);
                        if(!_loc12_)
                        {
                           _loc8_ = 0;
                           if(_loc13_)
                           {
                              _loc9_ = _loc4_;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc9_,_loc8_));
                                 break loop0;
                              }
                              addr023e:
                              addr0237:
                           }
                           addr0240:
                        }
                     }
                     return _loc3_;
                  }
                  §§goto(addr0240);
               }
               §§goto(addr023e);
            }
            else
            {
               _loc5_ = §§nextvalue(_loc8_,_loc9_);
               §§push(_loc5_.config.isEventGood);
               if(!(_loc12_ && Boolean(param1)))
               {
                  if(!§§pop())
                  {
                     _loc4_.push({
                        "obj":_loc5_,
                        "level":_loc5_.config.userLevelRequired
                     });
                     continue;
                  }
                  if(_loc12_ && Boolean(this))
                  {
                     continue;
                  }
                  §§push(param1.currentGoodInProduction);
                  if(_loc13_ || Boolean(_loc2_))
                  {
                     §§push(§§pop() == null);
                     if(!_loc12_)
                     {
                        addr009f:
                        §§push(!§§pop());
                        if(_loc13_)
                        {
                           var _temp_9:* = §§pop();
                           §§push(_temp_9);
                           if(_temp_9)
                           {
                              if(_loc13_)
                              {
                                 addr00b1:
                                 §§pop();
                                 if(!_loc13_)
                                 {
                                    continue;
                                 }
                                 addr00bc:
                                 §§push(param1.currentGoodInProduction.id == _loc5_.config.id);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(!(_loc12_ && Boolean(this)))
                           {
                              _loc4_.push({
                                 "obj":_loc5_,
                                 "level":_loc5_.config.userLevelRequired
                              });
                              if(_loc13_ || Boolean(_loc2_))
                              {
                              }
                           }
                        }
                        else
                        {
                           var _loc10_:int = 0;
                           if(!(_loc12_ && Boolean(param1)))
                           {
                              var _loc11_:* = this._eventProxy.currentListOfAvailableEventQuestGoodIds;
                              if(_loc13_)
                              {
                                 for each(_loc10_ in _loc11_)
                                 {
                                    §§push(_loc10_);
                                    if(!_loc12_)
                                    {
                                       var _temp_13:* = §§pop();
                                       §§push(_temp_13);
                                       §§push(_temp_13);
                                       if(_loc13_)
                                       {
                                          _loc7_ = §§pop();
                                          addr0147:
                                          §§push(_loc5_.config.id);
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc13_)
                                          {
                                             _loc4_.push({
                                                "obj":_loc5_,
                                                "level":_loc5_.config.userLevelRequired
                                             });
                                          }
                                          break;
                                       }
                                       continue;
                                    }
                                    §§goto(addr0147);
                                 }
                              }
                           }
                           if(_loc13_ || Boolean(_loc2_))
                           {
                           }
                        }
                        continue;
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr009f);
            }
         }
         while(§§pop())
         {
            _loc6_ = §§nextvalue(_loc8_,_loc9_);
            if(_loc13_ || Boolean(this))
            {
               _loc3_.push(_loc6_["obj"]);
            }
            §§goto(addr0237);
         }
         §§goto(addr023e);
      }
      
      private function getDepartmentProfessionals(param1:InfrastructureBuildingFieldObjectVo, param2:int) : Vector.<ProfessionalDepartmentSlotVo>
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc9_:Object = null;
         var _loc10_:ProfessionalDepartmentSlotVo = null;
         var _loc11_:ProfessionalDTO = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:Vector.<ProfessionalDTO> = this._professionalProxy.getProfessionalsByDepartment(param1.department[0]);
         var _loc5_:Vector.<ProfessionalDepartmentSlotVo> = new Vector.<ProfessionalDepartmentSlotVo>();
         var _loc6_:* = false;
         var _loc7_:* = _loc3_.getAcademyList().length > 0;
         §§push(_loc7_);
         if(!(_loc16_ && Boolean(this)))
         {
            if(§§pop())
            {
               if(_loc17_)
               {
                  addr00a6:
                  _loc7_ = !_loc3_.getAcademyList()[0].academyFieldObjectVo.isUnderConstruction();
               }
            }
            var _loc8_:int = 0;
            loop0:
            while(true)
            {
               §§push(_loc8_);
               while(§§pop() < param2)
               {
                  §§push(_loc8_);
                  if(_loc16_)
                  {
                     continue;
                  }
                  _loc6_ = §§pop() >= _loc4_.length;
                  if(_loc16_)
                  {
                     break;
                  }
                  _loc9_ = new Object();
                  _loc9_.slotNr = _loc8_;
                  if(!_loc16_)
                  {
                     _loc9_.departmentGfx = EmergencyLayerProxy.getGfxIdByDepartment(param1.department[0]);
                     if(_loc17_)
                     {
                        _loc9_.activeAcademy = _loc7_;
                        if(_loc17_)
                        {
                           addr0106:
                           if(!_loc6_)
                           {
                              addr010c:
                              _loc11_ = _loc4_[_loc8_];
                              if(_loc11_.configSpecialisation != null)
                              {
                                 if(_loc17_ || Boolean(param1))
                                 {
                                    _loc9_.profDep = _loc11_.configSpecialisation.department;
                                    if(_loc17_ || Boolean(_loc3_))
                                    {
                                       _loc9_.profSpec = _loc11_.configSpecialisation.rank;
                                       if(_loc17_ || Boolean(param2))
                                       {
                                          addr0167:
                                          _loc9_.profSpecGfx = _loc11_.configSpecialisation.gfxId;
                                          if(!(_loc16_ && Boolean(param1)))
                                          {
                                             addr0183:
                                             _loc9_.profSpecLoca = _loc11_.configSpecialisation.locaId;
                                             if(_loc17_ || Boolean(param1))
                                             {
                                                addr019f:
                                                _loc9_.operationsLeft = _loc11_.lifetime;
                                                if(!(_loc16_ && Boolean(param1)))
                                                {
                                                   if(_loc11_.gender)
                                                   {
                                                      if(!(_loc16_ && Boolean(param2)))
                                                      {
                                                         §§push("male");
                                                         if(_loc17_)
                                                         {
                                                         }
                                                         addr01eb:
                                                         §§push(§§pop());
                                                         if(_loc17_)
                                                         {
                                                            _loc12_ = §§pop();
                                                            if(_loc17_ || Boolean(this))
                                                            {
                                                               _loc9_.lib = "gui_professionals_" + _loc12_;
                                                               if(_loc17_ || Boolean(param2))
                                                               {
                                                                  addr021c:
                                                                  _loc9_.img = "small_" + _loc11_.gfxId;
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(LocaUtils.getString("rcl.professions.nameconvention","rcl.professions.nameconvention.fistnamelastname"));
                                                                     if(_loc17_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc16_ && Boolean(_loc3_)))
                                                                        {
                                                                           _loc13_ = §§pop();
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr0259:
                                                                              §§push(LocaUtils);
                                                                              §§push("rcl.professions.firstnames.");
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(§§pop() + _loc12_);
                                                                              }
                                                                              §§push("rcl.professions.firstnames.");
                                                                              if(_loc17_ || Boolean(this))
                                                                              {
                                                                                 §§push(§§pop() + _loc12_);
                                                                                 if(_loc17_ || Boolean(_loc3_))
                                                                                 {
                                                                                    addr0289:
                                                                                    §§push(§§pop() + ".");
                                                                                    if(_loc17_ || Boolean(_loc3_))
                                                                                    {
                                                                                       addr029b:
                                                                                       §§push(§§pop() + _loc11_.name);
                                                                                    }
                                                                                    §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                    if(!(_loc16_ && Boolean(param2)))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc17_ || Boolean(this))
                                                                                       {
                                                                                          addr02c1:
                                                                                          _loc14_ = §§pop();
                                                                                          if(_loc17_ || Boolean(param2))
                                                                                          {
                                                                                             §§push(LocaUtils);
                                                                                             §§push("rcl.professions.surnames.");
                                                                                             if(_loc17_ || Boolean(_loc3_))
                                                                                             {
                                                                                                §§push(§§pop() + _loc12_);
                                                                                             }
                                                                                             §§push("rcl.professions.surnames.");
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                addr031b:
                                                                                                §§push(§§pop() + _loc12_);
                                                                                                if(!(_loc16_ && Boolean(param2)))
                                                                                                {
                                                                                                   §§push(§§pop() + ".");
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      addr030b:
                                                                                                      §§push(§§pop() + _loc11_.surname);
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr031a:
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                _loc15_ = §§pop();
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr0323:
                                                                                                   _loc9_.name = StringUtil.substitute(_loc13_,_loc14_,_loc15_);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      addr033c:
                                                                                                      _loc9_.id = _loc11_.id;
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         addr034c:
                                                                                                         _loc9_.canLevelUp = _loc11_.canLevelUp;
                                                                                                      }
                                                                                                      addr0365:
                                                                                                      _loc10_ = new ProfessionalDepartmentSlotVo(_loc9_,_loc6_);
                                                                                                      if(_loc17_ || Boolean(param2))
                                                                                                      {
                                                                                                         _loc5_.push(_loc10_);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            _loc8_++;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr034c);
                                                                                                }
                                                                                                §§goto(addr0365);
                                                                                             }
                                                                                             §§goto(addr030b);
                                                                                          }
                                                                                          §§goto(addr033c);
                                                                                       }
                                                                                       §§goto(addr031a);
                                                                                    }
                                                                                    §§goto(addr02c1);
                                                                                 }
                                                                                 §§goto(addr029b);
                                                                              }
                                                                              §§goto(addr0289);
                                                                           }
                                                                           §§goto(addr0365);
                                                                        }
                                                                     }
                                                                     §§goto(addr02c1);
                                                                  }
                                                               }
                                                               §§goto(addr0365);
                                                            }
                                                            §§goto(addr021c);
                                                         }
                                                         §§goto(addr031b);
                                                      }
                                                      §§goto(addr033c);
                                                   }
                                                   else
                                                   {
                                                      §§push("female");
                                                   }
                                                   §§goto(addr01eb);
                                                }
                                             }
                                             §§goto(addr0323);
                                          }
                                          §§goto(addr0259);
                                       }
                                       §§goto(addr0183);
                                    }
                                    §§goto(addr0167);
                                 }
                                 §§goto(addr034c);
                              }
                              §§goto(addr019f);
                           }
                           §§goto(addr0365);
                        }
                        §§goto(addr010c);
                     }
                     §§goto(addr0106);
                  }
                  §§goto(addr010c);
               }
               break;
            }
            return _loc5_;
         }
         §§goto(addr00a6);
      }
      
      private function getAttributePoints(param1:Vector.<ProfessionalDTO>, param2:String) : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:ProfessionalDTO = null;
         var _loc3_:* = 0;
         for each(_loc4_ in param1)
         {
            if(_loc7_ || Boolean(param2))
            {
               §§push(_loc3_);
               if(!(_loc8_ && Boolean(param2)))
               {
                  §§push(§§pop() + this._professionalProxy.getAttributePointsByType(_loc4_,param2));
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                  }
               }
               _loc3_ = §§pop();
            }
         }
         return _loc3_;
      }
      
      private function getMaxAttributePoints(param1:String) : Number
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ConfigProfessionalAttributeDTO = null;
         var _loc2_:* = 0;
         for each(_loc3_ in this.configProxy.config.professionalAttributes)
         {
            if(_loc6_ || Boolean(_loc3_))
            {
               if(_loc3_.attributeType != param1)
               {
                  continue;
               }
               if(_loc7_)
               {
                  break;
               }
            }
            §§push(_loc3_.attributeThresholds.length * _loc3_.maxCap);
            if(!_loc7_)
            {
               §§push(§§pop());
            }
            _loc2_ = §§pop();
            break;
         }
         return _loc2_;
      }
      
      private function getThresholds(param1:Vector.<String>) : Dictionary
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc4_:* = null;
         var _loc5_:ConfigProfessionalAttributeDTO = null;
         var _loc6_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:EmergencyInfoProxy = facade.retrieveProxy(EmergencyInfoProxy.NAME) as EmergencyInfoProxy;
         var _loc7_:int = 0;
         var _loc8_:* = this.configProxy.config.professionalAttributes;
         while(true)
         {
            §§push(§§hasnext(_loc8_,_loc7_));
            if(!_loc14_)
            {
               break;
            }
            if(!§§pop())
            {
               if(_loc14_)
               {
                  if(_loc14_ || Boolean(_loc3_))
                  {
                     if(_loc14_ || Boolean(_loc2_))
                     {
                        _loc7_ = 0;
                        addr01cf:
                        if(_loc14_)
                        {
                           _loc8_ = _loc2_;
                           if(_loc14_)
                           {
                           }
                           §§push(§§hasnext(_loc8_,_loc7_));
                           break;
                        }
                     }
                     return _loc2_;
                  }
                  §§goto(addr01cf);
               }
               addr01cd:
               §§goto(addr01cf);
            }
            else
            {
               _loc5_ = §§nextvalue(_loc7_,_loc8_);
               if(_loc13_ && Boolean(_loc3_))
               {
                  continue;
               }
               var _loc9_:int = 0;
               if(!_loc13_)
               {
                  var _loc10_:* = param1;
                  if(_loc14_)
                  {
                     loop1:
                     for each(_loc9_ in _loc10_)
                     {
                        §§push(_loc9_);
                        if(!_loc13_)
                        {
                           _loc4_ = §§pop();
                           if(_loc14_)
                           {
                              addr009e:
                              if(_loc5_.attributeType != _loc4_)
                              {
                                 continue;
                              }
                              if(_loc13_ && Boolean(_loc3_))
                              {
                                 continue;
                              }
                           }
                           while(true)
                           {
                              var _loc11_:int = 0;
                              if(_loc14_ || Boolean(_loc2_))
                              {
                                 for each(_loc6_ in _loc5_.attributeThresholds)
                                 {
                                    if(_loc14_ || Boolean(this))
                                    {
                                       if(_loc2_[_loc4_] == null)
                                       {
                                          if(!(_loc14_ || Boolean(_loc2_)))
                                          {
                                             continue;
                                          }
                                          _loc2_[_loc4_] = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
                                          if(_loc13_ && Boolean(this))
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    _loc2_[_loc4_].push(_loc6_);
                                 }
                              }
                              continue loop1;
                           }
                           addr00b2:
                        }
                        §§goto(addr009e);
                     }
                     addr014e:
                     continue;
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr014e);
            }
         }
         while(§§pop())
         {
            _loc4_ = §§nextname(_loc7_,_loc8_);
            if(!_loc13_)
            {
               _loc2_[_loc4_].sort(_loc3_.sortThresholds);
            }
            §§push(§§hasnext(_loc8_,_loc7_));
         }
         §§goto(addr01cd);
      }
      
      private function createNextResidential(param1:ResidentialFieldObjectVo) : ResidentialDetailViewVo
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc5_:Object = null;
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:* = NaN;
         var _loc2_:ConfigPlayfieldItemDTO = this.configProxy.getConfigPlayfieldItemById(param1.configPlayfieldItemVo.nextConfigId);
         var _loc3_:ResidentialFieldObjectVo = new ResidentialFieldObjectVo(_loc2_);
         if(_loc11_ || Boolean(_loc3_))
         {
            IBillboardObjectVo(_loc3_).currentTimeStamp = this._timerProxy.currentTimeStamp;
            if(_loc11_)
            {
               _loc3_.configPlayfieldItemVo = _loc2_;
            }
         }
         var _loc4_:ResidentialFieldObjectVo = ConfigFactory.buildResidentialFieldObjectVo(_loc3_);
         _loc4_.matrixCoordinates = param1.matrixCoordinates;
         if(_loc11_)
         {
            _loc4_.currentResidents = param1.currentResidentType;
            if(!_loc12_)
            {
               _loc4_.currentImprovements = param1.currentImprovements;
               if(!_loc12_)
               {
                  this.needMatrixProxy.updateNeedsForSingleResidential(_loc4_);
                  if(_loc11_ || Boolean(this))
                  {
                     addr00c4:
                     §§push(_loc2_ == null);
                     if(!_loc12_)
                     {
                        §§push(!§§pop());
                        if(!(_loc12_ && Boolean(_loc2_)))
                        {
                           var _temp_5:* = §§pop();
                           §§push(_temp_5);
                           if(_temp_5)
                           {
                              if(!_loc12_)
                              {
                                 §§pop();
                                 if(!(_loc12_ && Boolean(param1)))
                                 {
                                    §§goto(addr0109);
                                 }
                                 §§goto(addr010d);
                              }
                              §§goto(addr0108);
                           }
                           addr0109:
                           §§goto(addr00f6);
                        }
                     }
                     §§goto(addr0108);
                  }
                  §§goto(addr010d);
               }
               addr00f6:
               §§push(_loc4_ == null);
               if(_loc11_ || Boolean(param1))
               {
                  addr0108:
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  addr010d:
                  _loc5_ = new Object();
                  _loc5_.gfxId = _loc2_.gfxId;
                  if(!(_loc12_ && Boolean(_loc3_)))
                  {
                     _loc5_.libName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc2_);
                     if(_loc11_ || Boolean(this))
                     {
                        _loc5_.localeId = _loc2_.localeId;
                        if(!_loc12_)
                        {
                           _loc5_.needs = this.getNeeds(_loc4_);
                           if(!_loc12_)
                           {
                              _loc5_.residents = this.getCurrentResidentInfos(_loc2_,_loc4_);
                              if(!_loc12_)
                              {
                                 _loc5_.rentIncome = this.getActualResidentialOutcome(_loc2_,_loc4_,RENT_OUT,param1);
                                 if(!(_loc12_ && Boolean(param1)))
                                 {
                                    addr01ad:
                                    _loc5_.needIncome = this.getActualResidentialOutcome(_loc2_,_loc4_,NEED_OUT,param1);
                                    if(_loc11_)
                                    {
                                       addr01c5:
                                       _loc5_.mood = getBillboardEffects(_loc4_,MOOD,param1);
                                       if(_loc11_ || Boolean(_loc3_))
                                       {
                                          addr01e5:
                                          _loc5_.energy = getBillboardEffects(_loc4_,ENERGY,param1);
                                       }
                                    }
                                    for each(_loc7_ in _loc4_.configPlayfieldItemVo.activePhases)
                                    {
                                       if(_loc7_.phaseType == ServerPhaseTypes.RESIDENTIAL)
                                       {
                                          _loc6_ = _loc7_;
                                          break;
                                       }
                                    }
                                    if(!(_loc12_ && Boolean(_loc3_)))
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc11_)
                                          {
                                             addr0253:
                                             _loc6_ = param1.residentialPhase.config;
                                             §§goto(addr025e);
                                          }
                                          §§goto(addr02d5);
                                       }
                                       addr025e:
                                       §§push(_loc6_.durationConfig.duration);
                                       if(_loc11_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc12_)
                                          {
                                             var _temp_15:* = §§pop();
                                             §§push(_temp_15);
                                             §§push(_temp_15);
                                             if(_loc11_ || Boolean(param1))
                                             {
                                                var _temp_17:* = §§pop();
                                                §§push(_temp_17);
                                                §§push(_temp_17);
                                                if(_loc11_)
                                                {
                                                   _loc8_ = §§pop();
                                                   addr02a0:
                                                   if(_loc11_)
                                                   {
                                                      addr029f:
                                                      §§push(§§pop() * ImprovementProxy.getCompletePercentValueForTag(_loc4_,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY));
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc12_)
                                                   {
                                                      §§goto(addr02a7);
                                                   }
                                                   §§goto(addr02ae);
                                                }
                                                §§goto(addr029f);
                                             }
                                             §§goto(addr02a0);
                                          }
                                       }
                                       addr02a7:
                                       §§push(§§pop());
                                       if(!_loc12_)
                                       {
                                          addr02ae:
                                          _loc8_ = §§pop();
                                          if(_loc11_)
                                          {
                                             §§goto(addr02cd);
                                          }
                                          §§goto(addr02d5);
                                       }
                                       addr02cd:
                                       _loc8_ = Math.ceil(_loc8_);
                                       if(!_loc12_)
                                       {
                                          addr02d5:
                                          _loc5_.cycleLength = _loc8_;
                                          if(!(_loc11_ || Boolean(param1)))
                                          {
                                             §§goto(addr02f6);
                                          }
                                       }
                                       return new ResidentialDetailViewVo(_loc5_,null);
                                    }
                                    §§goto(addr0253);
                                 }
                                 §§goto(addr01c5);
                              }
                              §§goto(addr01e5);
                           }
                           §§goto(addr01ad);
                        }
                     }
                     §§goto(addr01c5);
                  }
                  §§goto(addr01ad);
               }
               addr02f6:
               return null;
            }
            §§goto(addr010d);
         }
         §§goto(addr00c4);
      }
      
      private function createNextProduction(param1:ProductionFieldObjectVo) : ProductionDetailViewVo
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc5_:Object = null;
         var _loc6_:ProductionGoodObjectVo = null;
         var _loc2_:ConfigPlayfieldItemDTO = this.configProxy.getConfigPlayfieldItemById(param1.configPlayfieldItemVo.nextConfigId);
         var _loc3_:ProductionFieldObjectVo = new ProductionFieldObjectVo(_loc2_);
         if(!_loc9_)
         {
            IBillboardObjectVo(_loc3_).currentTimeStamp = this._timerProxy.currentTimeStamp;
            if(_loc10_ || Boolean(param1))
            {
               _loc3_.configPlayfieldItemVo = _loc2_;
            }
         }
         var _loc4_:ProductionFieldObjectVo = ConfigFactory.buildProductionFieldObjectVo(_loc3_);
         _loc4_.matrixCoordinates = param1.matrixCoordinates;
         if(_loc10_)
         {
            §§push(_loc2_ == null);
            if(_loc10_ || Boolean(_loc3_))
            {
               §§push(!§§pop());
               if(_loc10_)
               {
                  addr009d:
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(_temp_5)
                  {
                     if(!_loc9_)
                     {
                        §§pop();
                        if(_loc10_ || Boolean(param1))
                        {
                           §§goto(addr00d7);
                        }
                        §§goto(addr00db);
                     }
                     §§goto(addr00d6);
                  }
               }
               addr00d7:
               §§push(_loc4_ == null);
               if(!(_loc9_ && Boolean(_loc3_)))
               {
                  addr00d6:
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  addr00db:
                  _loc5_ = new Object();
                  _loc5_.gfxId = _loc2_.gfxId;
                  if(!_loc9_)
                  {
                     _loc5_.localeId = _loc2_.localeId;
                     if(_loc10_)
                     {
                        _loc5_.productionOptions = this.getProductionOptions(_loc4_);
                     }
                  }
                  for each(_loc6_ in _loc5_.productionOptions)
                  {
                     _loc6_.productionIncome = this.getActualProductionOutcome(_loc6_);
                  }
                  if(!_loc9_)
                  {
                     _loc5_.mood = getBillboardEffects(_loc4_,MOOD);
                     if(!(_loc9_ && Boolean(_loc2_)))
                     {
                        addr0170:
                        _loc5_.energy = getBillboardEffects(_loc4_,ENERGY);
                        if(!(_loc10_ || Boolean(_loc2_)))
                        {
                           §§goto(addr0199);
                        }
                     }
                     return new ProductionDetailViewVo(_loc5_);
                  }
                  §§goto(addr0170);
               }
               addr0199:
               return null;
            }
            §§goto(addr009d);
         }
         §§goto(addr00db);
      }
      
      private function createNextDepartment(param1:InfrastructureBuildingFieldObjectVo) : DepartmentDetailViewVo
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:Object = null;
         var _loc4_:Vector.<ProfessionalDTO> = null;
         var _loc5_:Vector.<String> = null;
         var _loc2_:ConfigPlayfieldItemDTO = this.configProxy.getConfigPlayfieldItemById(param1.configPlayfieldItemVo.nextConfigId);
         if(_loc6_)
         {
            if(_loc2_ != null)
            {
               addr0041:
               _loc3_ = new Object();
               if(!_loc7_)
               {
                  _loc3_.type = param1.department[0];
                  if(!_loc7_)
                  {
                     addr0063:
                     _loc3_.gfxId = _loc2_.gfxId;
                     if(!_loc7_)
                     {
                        _loc3_.departmentGfxId = EmergencyLayerProxy.getGfxIdByDepartment(param1.department[0]);
                        if(_loc6_ || Boolean(this))
                        {
                           addr0094:
                           _loc3_.maxSlots = _loc2_.maxProfessionalAmount;
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              addr00aa:
                              _loc3_.slotList = this.getDepartmentProfessionals(param1,_loc3_.maxSlots);
                           }
                           _loc4_ = this._professionalProxy.getProfessionalsByDepartment(param1.department[0]);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              _loc3_.currentSlots = _loc4_.length;
                              if(!_loc7_)
                              {
                                 _loc3_.configSecurityGrades = _loc2_.configSecurityGrades.sort(sortSecurityGradesOnOrderId);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr010e);
                                 }
                                 §§goto(addr012e);
                              }
                              addr010e:
                              _loc3_.attributePoints = this.getAttributePoints(_loc4_,ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
                              if(!(_loc7_ && Boolean(_loc2_)))
                              {
                                 addr012e:
                                 _loc3_.maxAttributePoints = this.getMaxAttributePoints(ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
                                 if(!_loc7_)
                                 {
                                    addr0145:
                                    _loc3_.buildingSizeX = _loc2_.sizeX;
                                    if(!(_loc7_ && Boolean(_loc3_)))
                                    {
                                       addr015c:
                                       _loc3_.buildingSizeY = _loc2_.sizeY;
                                    }
                                    §§goto(addr0165);
                                 }
                                 §§goto(addr015c);
                              }
                              addr0165:
                              var _temp_6:* = new Vector.<String>();
                              _loc5_ = new Vector.<String>();
                              _loc5_.push(ServerProfessionalConstants.ATTRIBUTE_PERCEPTION);
                              if(!(_loc7_ && Boolean(param1)))
                              {
                                 _loc3_.thresholds = this.getThresholds(_loc5_);
                                 if(_loc6_)
                                 {
                                    return new DepartmentDetailViewVo(_loc3_);
                                 }
                              }
                              §§goto(addr01b6);
                           }
                           §§goto(addr0145);
                        }
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0063);
            }
            addr01b6:
            return null;
         }
         §§goto(addr0041);
      }
      
      private function getCurrentResidentInfos(param1:ConfigPlayfieldItemDTO, param2:ResidentialFieldObjectVo) : SimpleItemVo
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc3_:SimpleItemVo = null;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         §§push(param2.currentResidentType);
         if(_loc13_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         var _loc11_:* = §§pop();
         §§push(_loc11_);
         if(_loc13_ || Boolean(param2))
         {
            while(true)
            {
               var _loc12_:* = §§pop();
               if(!_loc14_)
               {
                  §§push(ServerResConst.RESOURCE_WORKERS);
                  if(!(_loc14_ && Boolean(_loc3_)))
                  {
                     §§push(_loc12_);
                     if(!(_loc14_ && Boolean(_loc3_)))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc14_ && Boolean(this)))
                           {
                              §§push(0);
                              if(_loc13_)
                              {
                              }
                           }
                           else
                           {
                              addr0277:
                              §§push(2);
                              if(_loc14_ && Boolean(param1))
                              {
                              }
                           }
                           §§goto(addr0297);
                        }
                        §§push(ServerResConst.RESOURCE_ACADEMICS);
                        if(!(_loc14_ && Boolean(this)))
                        {
                           addr0246:
                           §§push(_loc12_);
                           if(_loc13_ || Boolean(this))
                           {
                              addr0256:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc13_)
                                 {
                                    §§push(1);
                                    if(_loc14_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr0277);
                                 }
                                 §§goto(addr0297);
                              }
                              else
                              {
                                 §§goto(addr0273);
                              }
                           }
                           addr0273:
                           §§goto(addr0271);
                        }
                        addr0271:
                        if(ServerResConst.RESOURCE_RICHMEN === _loc12_)
                        {
                           §§goto(addr0277);
                        }
                        else
                        {
                           §§push(3);
                        }
                        addr0297:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.worker"));
                              if(_loc13_)
                              {
                                 §§push(§§pop());
                                 if(!_loc14_)
                                 {
                                    addr0064:
                                    _loc4_ = §§pop();
                                    if(_loc13_ || Boolean(this))
                                    {
                                       §§push("postit_icon_worker");
                                       if(!_loc14_)
                                       {
                                          _loc7_ = §§pop();
                                          if(!(_loc14_ && Boolean(param1)))
                                          {
                                             addr008e:
                                             §§push("gui_popups_residentialPopupNEW");
                                             if(_loc13_)
                                             {
                                                _loc8_ = §§pop();
                                                if(_loc13_)
                                                {
                                                   §§push(LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.residents.icon.worker"));
                                                   if(_loc13_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc13_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc14_)
                                                         {
                                                            addr0118:
                                                            §§push(LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.residents.icon.academics"));
                                                            if(!(_loc14_ && Boolean(param1)))
                                                            {
                                                               addr0132:
                                                               §§push(§§pop());
                                                               if(_loc13_)
                                                               {
                                                                  addr0139:
                                                                  _loc9_ = §§pop();
                                                                  if(_loc14_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr02b0:
                                                                  §§push(LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.residents.numbers"));
                                                                  if(_loc13_)
                                                                  {
                                                                     addr02c2:
                                                                     §§push(§§pop());
                                                                  }
                                                                  _loc10_ = §§pop();
                                                                  if(!(_loc13_ || Boolean(param2)))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr02d3:
                                                                  §§push(param1.maxResidents);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc13_)
                                                                     {
                                                                        var _temp_11:* = §§pop();
                                                                        §§push(_temp_11);
                                                                        §§push(_temp_11);
                                                                        if(_loc13_ || Boolean(param1))
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(!(_loc14_ && Boolean(param1)))
                                                                           {
                                                                              addr0316:
                                                                              addr030f:
                                                                              §§push(§§pop() * this._globalStatProxy.happinessOutputModifier);
                                                                              if(_loc13_)
                                                                              {
                                                                                 addr031d:
                                                                                 §§push(§§pop());
                                                                              }
                                                                              _loc5_ = §§pop();
                                                                              break;
                                                                           }
                                                                           §§goto(addr031d);
                                                                        }
                                                                        §§goto(addr0316);
                                                                     }
                                                                  }
                                                                  §§goto(addr030f);
                                                               }
                                                               else
                                                               {
                                                                  addr015f:
                                                                  §§push(§§pop());
                                                                  if(_loc13_)
                                                                  {
                                                                     addr0166:
                                                                     _loc4_ = §§pop();
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push("resident_icon_richman");
                                                                        if(_loc13_ || Boolean(param1))
                                                                        {
                                                                           addr018d:
                                                                           _loc7_ = §§pop();
                                                                           if(_loc13_)
                                                                           {
                                                                              addr0198:
                                                                              _loc8_ = "gui_popups_residentialPopupNEW";
                                                                              addr0195:
                                                                              if(!_loc14_)
                                                                              {
                                                                                 addr01a0:
                                                                                 §§push(LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.residents.icon.richmen"));
                                                                                 if(_loc13_ || Boolean(param2))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc14_ && Boolean(param2))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                 }
                                                                                 addr01c9:
                                                                                 _loc9_ = §§pop();
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§goto(addr02b0);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr02d3);
                                                                        }
                                                                        §§goto(addr0198);
                                                                     }
                                                                     §§goto(addr02b0);
                                                                  }
                                                               }
                                                               §§goto(addr02c2);
                                                            }
                                                            §§goto(addr0139);
                                                         }
                                                         §§goto(addr02b0);
                                                      }
                                                      §§goto(addr01c9);
                                                   }
                                                   §§goto(addr0166);
                                                }
                                                §§goto(addr01a0);
                                             }
                                             else
                                             {
                                                addr00f7:
                                                _loc7_ = §§pop();
                                                if(!_loc14_)
                                                {
                                                   §§push("gui_popups_residentialPopupNEW");
                                                   if(!_loc14_)
                                                   {
                                                      addr0108:
                                                      _loc8_ = §§pop();
                                                      if(_loc13_ || Boolean(this))
                                                      {
                                                         §§goto(addr0118);
                                                      }
                                                      §§goto(addr0195);
                                                   }
                                                   §§goto(addr018d);
                                                }
                                             }
                                             §§goto(addr0118);
                                          }
                                          §§goto(addr01a0);
                                       }
                                       §§goto(addr00f7);
                                    }
                                    §§goto(addr008e);
                                 }
                                 §§goto(addr01c9);
                              }
                              §§goto(addr0064);
                           case 1:
                              §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.academics"));
                              if(!(_loc14_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop());
                                 if(_loc13_)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc14_)
                                    {
                                       §§push("resident_icon_prof");
                                       if(!_loc14_)
                                       {
                                          §§goto(addr00f7);
                                       }
                                       §§goto(addr0108);
                                    }
                                    §§goto(addr01a0);
                                 }
                                 §§goto(addr0132);
                              }
                              §§goto(addr015f);
                           case 2:
                              §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.population.richmen"));
                              if(_loc13_ || Boolean(_loc3_))
                              {
                                 §§goto(addr015f);
                                 break;
                              }
                              continue;
                           default:
                              §§goto(addr02b0);
                        }
                        return new SimpleItemVo(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_);
                        §§goto(addr0277);
                     }
                     §§goto(addr0256);
                  }
                  §§goto(addr0246);
               }
               §§goto(addr0277);
            }
         }
         §§goto(addr02c3);
      }
      
      private function getActualResidentialOutcome(param1:ConfigPlayfieldItemDTO, param2:ResidentialFieldObjectVo, param3:String, param4:ResidentialFieldObjectVo = null) : SimpleItemVo
      {
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc5_:SimpleItemVo = null;
         var _loc6_:* = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:ConfigOutputDTO = null;
         var _loc14_:ResidentialNeedPopupVo = null;
         §§push(param3);
         loop0:
         while(true)
         {
            var _loc15_:* = §§pop();
            if(_loc19_)
            {
               loop1:
               while(true)
               {
                  §§push(RENT_OUT);
                  if(!(_loc18_ && Boolean(param1)))
                  {
                     §§push(_loc15_);
                     if(_loc19_)
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc18_ && Boolean(this)))
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc18_)
                                    {
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          loop33:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.income.rent"));
                                                if(!(_loc18_ && Boolean(param1)))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc19_ || Boolean(param3))
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(!_loc18_)
                                                      {
                                                         §§push(0);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc18_)
                                                            {
                                                               _loc8_ = §§pop();
                                                               if(_loc19_)
                                                               {
                                                                  §§push(0);
                                                                  if(!_loc18_)
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     if(_loc19_ || Boolean(param3))
                                                                     {
                                                                        var _loc16_:* = param1.getAllPhasesByType(ServerPhaseTypes.RESIDENTIAL)[0].listEntryOutputs;
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc16_,_loc15_));
                                                                           if(!(_loc19_ || Boolean(param3)))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc19_ || Boolean(param2))
                                                                              {
                                                                                 if(!(_loc18_ && Boolean(param2)))
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(Math.ceil(_loc8_ * this._globalStatProxy.happinessOutputModifier));
                                                                                       if(_loc19_ || Boolean(param1))
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             if(param2.buildingDTO != null)
                                                                                             {
                                                                                                if(!(_loc18_ && Boolean(param1)))
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc18_ && Boolean(param2)))
                                                                                                   {
                                                                                                      §§push(§§pop() + Math.ceil(_loc7_ * BuildingMasteryProxy.getCompletePercentValueForTag(param2,ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,_loc12_)));
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            addr0243:
                                                                                                            §§push(_loc7_);
                                                                                                            if(!(_loc18_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(ImprovementProxy.getCompletePercentValueForTag(param2,ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY));
                                                                                                                  if(!(_loc18_ && Boolean(param3)))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc19_ || Boolean(param3))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           addr028c:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc19_ || Boolean(param3))
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(!(_loc18_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 addr02ab:
                                                                                                                                 §§push(Math.ceil(_loc7_));
                                                                                                                                 if(!(_loc18_ && Boolean(param3)))
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    if(!(_loc19_ || Boolean(param1)))
                                                                                                                                    {
                                                                                                                                       break loop33;
                                                                                                                                    }
                                                                                                                                    addr037a:
                                                                                                                                    §§push(_loc12_);
                                                                                                                                    if(!(_loc18_ && Boolean(param2)))
                                                                                                                                    {
                                                                                                                                       addr038a:
                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                       if(!(_loc18_ && Boolean(param2)))
                                                                                                                                       {
                                                                                                                                          §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                                                                                                          if(!(_loc18_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             if(!(_loc18_ && Boolean(param3)))
                                                                                                                                             {
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc19_ || Boolean(param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr0467:
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         loop34:
                                                                                                                                                         switch(§§pop())
                                                                                                                                                         {
                                                                                                                                                            case 0:
                                                                                                                                                               §§push("postit_icon_productionpoints");
                                                                                                                                                               if(_loc19_ || Boolean(param1))
                                                                                                                                                               {
                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                  if(_loc19_ || Boolean(param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push("gui_popups_residentialPopupNEW");
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           addr048e:
                                                                                                                                                                           §§push(LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.income.rent"));
                                                                                                                                                                           if(!(_loc18_ && Boolean(param3)))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr04af:
                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop33;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr09bb:
                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                 if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr09cb:
                                                                                                                                                                                    §§push(§§pop() + Math.ceil(_loc7_ * BuildingMasteryProxy.getCompletePercentValueForTag(param2,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,_loc12_)));
                                                                                                                                                                                    if(!(_loc18_ && Boolean(param2)))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr09f3:
                                                                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0a55:
                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                          if(!(_loc18_ && Boolean(param3)))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0a65:
                                                                                                                                                                                             addr0a7b:
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0a6d:
                                                                                                                                                                                                addr0a7a:
                                                                                                                                                                                                §§push(§§pop() * ImprovementProxy.getCompletePercentValueForTag(param2,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY));
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(_loc19_ || Boolean(param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr0a8a:
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0a91:
                                                                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                                                                   if(_loc19_ || Boolean(param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0aaa:
                                                                                                                                                                                                      _loc7_ = Math.ceil(_loc7_);
                                                                                                                                                                                                      addr0aa1:
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr0b5c:
                                                                                                                                                                                                         §§push(param2.currentResidentType);
                                                                                                                                                                                                         if(_loc19_ || Boolean(this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc15_ = §§pop();
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(ServerResConst.RESOURCE_RICHMEN);
                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr0b81:
                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                  if(_loc19_ || Boolean(param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(§§pop() === §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0b9b:
                                                                                                                                                                                                                           §§push(0);
                                                                                                                                                                                                                           if(!(_loc19_ || Boolean(param1)))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop5;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0bdc:
                                                                                                                                                                                                                           §§push(1);
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop5;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(ServerResConst.RESOURCE_ACADEMICS);
                                                                                                                                                                                                                        if(_loc19_ || Boolean(param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr0bc2:
                                                                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                                                                           if(_loc19_ || Boolean(this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr0bd2:
                                                                                                                                                                                                                              if(§§pop() === §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop4;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr0bdc);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(ServerResConst.RESOURCE_WORKERS);
                                                                                                                                                                                                                                 if(!(_loc18_ && Boolean(param2)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr0bfb:
                                                                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr0c03:
                                                                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr0c0d:
                                                                                                                                                                                                                                       §§push(2);
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop5;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(3);
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop5;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                       addr0cd5:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop() === §§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop34;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(2);
                                                                                                                                                                                                                                          break loop5;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr0cd3:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr0c2b:
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop5;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr0c33:
                                                                                                                                                                                                                              switch(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 case 0:
                                                                                                                                                                                                                                    §§push("layer_cc_icon");
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop33;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push("gui_resources_icons");
                                                                                                                                                                                                                                    if(!(_loc19_ || Boolean(param3)))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr0ad9:
                                                                                                                                                                                                                                    _loc10_ = §§pop();
                                                                                                                                                                                                                                    if(_loc18_ && Boolean(param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0b4c:
                                                                                                                                                                                                                                       _loc10_ = "gui_popups_residentialPopupNEW";
                                                                                                                                                                                                                                       addr0b49:
                                                                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr0c4a:
                                                                                                                                                                                                                                    §§push(LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.income.needs"));
                                                                                                                                                                                                                                    if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0c64:
                                                                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                                                                       if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0c73:
                                                                                                                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                                                                                                                          if(_loc18_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break loop33;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                                                                 case 1:
                                                                                                                                                                                                                                    §§push("ui_mainbar_educationpoint_icon_small");
                                                                                                                                                                                                                                    if(!(_loc19_ || Boolean(this)))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                                                                                                                    if(_loc19_ || Boolean(param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr0b10:
                                                                                                                                                                                                                                       §§push("gui_main_hud");
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr0b19:
                                                                                                                                                                                                                                          _loc10_ = §§pop();
                                                                                                                                                                                                                                          if(_loc18_ && Boolean(param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr0b4c);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0c4a);
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 case 2:
                                                                                                                                                                                                                                 default:
                                                                                                                                                                                                                                    §§push("postit_icon_productionpoints");
                                                                                                                                                                                                                                    if(_loc19_ || Boolean(param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr0b4c);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr0b49);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr0c4a);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0cd5);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0bfb);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0c2b);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0c03);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0bc2);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr0b9b);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0c64);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0b49);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0b5c);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0aaa);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0a8a);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0b5c);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0a65);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0a45:
                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                    if(_loc19_ || Boolean(param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr0a55);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0b49);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0c73);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04af);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0b5c);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0b19);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0c4a);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0b19);
                                                                                                                                                            case 1:
                                                                                                                                                               §§push("ui_mainbar_educationpoint_icon_small");
                                                                                                                                                               if(!(_loc18_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  _loc9_ = §§pop();
                                                                                                                                                                  if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     §§push("gui_main_hud");
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr048e);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr0a0c:
                                                                                                                                                                           §§push(_loc7_);
                                                                                                                                                                           if(_loc19_ || Boolean(param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + Math.ceil(_loc7_ * BuildingMasteryProxy.getCompletePercentValueForTag(param4,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,_loc12_)));
                                                                                                                                                                              if(_loc19_ || Boolean(param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr0a45);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0a8a);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0a91);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr0350:
                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                        if(_loc19_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push("gui_resources_icons");
                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0369:
                                                                                                                                                                              _loc10_ = §§pop();
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr048e);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0c4a);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0ad9);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr0985:
                                                                                                                                                                           §§push(Math.ceil(_loc7_ * this._globalStatProxy.happinessOutputModifier));
                                                                                                                                                                           if(_loc19_ || Boolean(param2))
                                                                                                                                                                           {
                                                                                                                                                                              addr09a4:
                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(param2.buildingDTO != null)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr09bb);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0c4a);
                                                                                                                                                                                 }
                                                                                                                                                                                 else if(param4 != null)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr0a0c);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0aa1);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0a55);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0a0c);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0a65);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr095e:
                                                                                                                                                                     §§push(Math.ceil(_loc8_));
                                                                                                                                                                     if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                     {
                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                        if(_loc19_ || Boolean(param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr0985);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0b5c);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr09a4);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0369);
                                                                                                                                                            case 2:
                                                                                                                                                               §§push("layer_cc_icon");
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr0350);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0b4c);
                                                                                                                                                            default:
                                                                                                                                                               §§goto(addr048e);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(1);
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            break loop5;
                                                                                                                                                         }
                                                                                                                                                         addr0cd9:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr0504:
                                                                                                                                                         §§push(§§pop());
                                                                                                                                                         if(_loc19_ || Boolean(param3))
                                                                                                                                                         {
                                                                                                                                                            addr0513:
                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                            if(_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(!(_loc19_ || Boolean(param1)))
                                                                                                                                                               {
                                                                                                                                                                  continue loop5;
                                                                                                                                                               }
                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                               if(_loc19_ || Boolean(param3))
                                                                                                                                                               {
                                                                                                                                                                  addr053b:
                                                                                                                                                                  _loc16_ = this.getNeeds(param2);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                     break loop28;
                                                                                                                                                                  }
                                                                                                                                                                  addr094c:
                                                                                                                                                                  addr0945:
                                                                                                                                                               }
                                                                                                                                                               if(_loc19_ || Boolean(this))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr095e);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0aa1);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr095e);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0a65);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0c0d);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                                                                                                                   if(_loc19_ || Boolean(param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(_loc18_ && Boolean(param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc19_ || Boolean(param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(1);
                                                                                                                                                            if(_loc19_ || Boolean(param2))
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0467);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0b9b);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop1;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(2);
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop5;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0467);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(3);
                                                                                                                                                                  if(!(_loc18_ && Boolean(param2)))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr0467);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0c2b);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0bd2);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0b81);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr0bc2);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0c03);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0b81);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0c0d);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0c73);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr04ec:
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    if(_loc19_ || Boolean(param3))
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc19_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0504);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0c33);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr0a0c);
                                                                                                                              }
                                                                                                                              §§goto(addr048e);
                                                                                                                           }
                                                                                                                           §§goto(addr0a91);
                                                                                                                        }
                                                                                                                        §§goto(addr0a65);
                                                                                                                     }
                                                                                                                     §§goto(addr0a6d);
                                                                                                                  }
                                                                                                                  §§goto(addr0a7a);
                                                                                                               }
                                                                                                               §§goto(addr0a7b);
                                                                                                            }
                                                                                                            §§goto(addr09a4);
                                                                                                         }
                                                                                                         §§goto(addr0b10);
                                                                                                      }
                                                                                                      §§goto(addr028c);
                                                                                                   }
                                                                                                   §§goto(addr0a91);
                                                                                                }
                                                                                                §§goto(addr048e);
                                                                                             }
                                                                                             else if(param4 != null)
                                                                                             {
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   break loop33;
                                                                                                }
                                                                                                §§push(_loc7_);
                                                                                                if(_loc19_ || Boolean(param2))
                                                                                                {
                                                                                                   §§push(§§pop() + Math.ceil(_loc7_ * BuildingMasteryProxy.getCompletePercentValueForTag(param4,ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,_loc12_)));
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      if(_loc19_ || Boolean(param3))
                                                                                                      {
                                                                                                         §§goto(addr0243);
                                                                                                      }
                                                                                                      §§goto(addr0c4a);
                                                                                                   }
                                                                                                   §§goto(addr09cb);
                                                                                                }
                                                                                                §§goto(addr0513);
                                                                                             }
                                                                                             §§goto(addr0243);
                                                                                          }
                                                                                          §§goto(addr048e);
                                                                                       }
                                                                                       §§goto(addr09cb);
                                                                                    }
                                                                                    §§goto(addr037a);
                                                                                 }
                                                                                 §§goto(addr053b);
                                                                              }
                                                                              §§goto(addr094c);
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc13_ = §§nextvalue(_loc15_,_loc16_);
                                                                              §§push(_loc13_.type);
                                                                              if(_loc19_)
                                                                              {
                                                                                 §§push(ServerOutputConstants.RESOURCE);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(_loc13_.resourceConfig);
                                                                                    if(!(_loc18_ && Boolean(param1)))
                                                                                    {
                                                                                       §§push(§§pop().type);
                                                                                       if(!(_loc18_ && Boolean(param3)))
                                                                                       {
                                                                                          addr0112:
                                                                                          addr010d:
                                                                                          if(§§pop() != ServerResConst.RESOURCE_EXPERIENCE)
                                                                                          {
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                _loc8_ = Math.abs(_loc13_.outputAmount);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                             addr0135:
                                                                                             §§push(_loc13_.resourceConfig.type);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                addr013d:
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             _loc12_ = §§pop();
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr013d);
                                                                                    }
                                                                                    §§goto(addr0135);
                                                                                 }
                                                                                 §§goto(addr0112);
                                                                              }
                                                                              §§goto(addr010d);
                                                                           }
                                                                        }
                                                                        while(§§pop())
                                                                        {
                                                                           _loc14_ = §§nextvalue(_loc15_,_loc16_);
                                                                           §§push(_loc14_.locked);
                                                                           if(!_loc18_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(param2.currentResidentType);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       var _loc17_:* = §§pop();
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(ServerResConst.RESOURCE_RICHMEN);
                                                                                          if(_loc19_ || Boolean(param1))
                                                                                          {
                                                                                             §§push(_loc17_);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(_loc19_ || Boolean(param3))
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc19_ || Boolean(param1))
                                                                                                      {
                                                                                                         addr0716:
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            loop36:
                                                                                                            switch(§§pop())
                                                                                                            {
                                                                                                               case 0:
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     §§push(_loc14_.vcBonus);
                                                                                                                     if(!(_loc18_ && Boolean(param3)))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc18_ && Boolean(param2)))
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc19_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr05a5:
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(_loc19_)
                                                                                                                              {
                                                                                                                                 addr0735:
                                                                                                                                 addr073a:
                                                                                                                                 if(!_loc14_.fulfilled)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc18_ && Boolean(this))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(param2.currentResidentType);
                                                                                                                                 loop12:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(ServerResConst.RESOURCE_RICHMEN);
                                                                                                                                       if(_loc19_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          §§push(_loc17_);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc19_ || Boolean(param2))
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr08c2:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(1);
                                                                                                                                                         if(_loc18_ && Boolean(param1))
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr08f3:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(ServerResConst.RESOURCE_WORKERS);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc19_ || Boolean(this))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr08f3);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(2);
                                                                                                                                                                        if(_loc18_ && Boolean(param3))
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr0912:
                                                                                                                                                                  }
                                                                                                                                                                  loop8:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr0934:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        loop37:
                                                                                                                                                                        switch(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           case 0:
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              if(_loc19_ || Boolean(param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc14_.vcBonus);
                                                                                                                                                                                 if(_loc19_ || Boolean(param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(!(_loc19_ || Boolean(param1)))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc14_.ppBonus);
                                                                                                                                                                                                   if(!(_loc18_ && Boolean(param1)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!(_loc18_ && Boolean(param1)))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop());
                                                                                                                                                                                                            if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc7_ = §§pop();
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop37;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     if(_loc18_ && Boolean(param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop8;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  _loc12_ = §§pop();
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop37;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop37;
                                                                                                                                                                                                               addr080a:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0849:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc14_.epBonus);
                                                                                                                                                                                                               addr084e:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break loop37;
                                                                                                                                                                                                                     addr0855:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr0856:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop37;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop37;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop8;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr085e:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0855);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr07ec:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr084e);
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop37;
                                                                                                                                                                                                addr07d9:
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                                                                                                                                                                if(_loc19_ || Boolean(this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr07a5:
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc12_ = §§pop();
                                                                                                                                                                                                      if(_loc18_ && Boolean(this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break loop37;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop8;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop12;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr085e);
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop37;
                                                                                                                                                                                          addr077b:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0856);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr0774:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr084e);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr080a);
                                                                                                                                                                           case 1:
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              if(!(_loc18_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr07d9);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0856);
                                                                                                                                                                           case 2:
                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                              if(!(_loc18_ && Boolean(param2)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr0849);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0855);
                                                                                                                                                                        }
                                                                                                                                                                        break loop36;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr0878:
                                                                                                                                                                  _loc12_ = §§pop();
                                                                                                                                                                  if(_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  break loop36;
                                                                                                                                                                  addr0932:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(ServerResConst.RESOURCE_ACADEMICS);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_);
                                                                                                                                                                     addr090e:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() === §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr0912);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(3);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0932);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0878);
                                                                                                                                                                  }
                                                                                                                                                                  addr090c:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0912);
                                                                                                                                                            }
                                                                                                                                                            addr08e1:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr090e);
                                                                                                                                                      }
                                                                                                                                                      addr08d9:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr090c);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0932);
                                                                                                                                             }
                                                                                                                                             addr08b0:
                                                                                                                                          }
                                                                                                                                          §§goto(addr08e1);
                                                                                                                                       }
                                                                                                                                       §§goto(addr08d9);
                                                                                                                                    }
                                                                                                                                    §§goto(addr08c2);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr085e);
                                                                                                                           }
                                                                                                                           §§goto(addr0855);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr05d4:
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr0735);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr077b);
                                                                                                                     }
                                                                                                                     §§goto(addr084e);
                                                                                                                  }
                                                                                                                  §§goto(addr05a5);
                                                                                                               case 1:
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!(_loc18_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     §§push(_loc14_.ppBonus);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§goto(addr05d4);
                                                                                                                        }
                                                                                                                        §§goto(addr07d9);
                                                                                                                     }
                                                                                                                     §§goto(addr0774);
                                                                                                                  }
                                                                                                                  §§goto(addr0849);
                                                                                                               case 2:
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!(_loc18_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     §§push(_loc14_.epBonus);
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc19_ || Boolean(param2))
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(_loc18_ && Boolean(param1))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr0735);
                                                                                                                           }
                                                                                                                           §§goto(addr0855);
                                                                                                                        }
                                                                                                                        §§goto(addr077b);
                                                                                                                     }
                                                                                                                     §§goto(addr07ec);
                                                                                                                  }
                                                                                                                  §§goto(addr0856);
                                                                                                               default:
                                                                                                                  §§goto(addr0735);
                                                                                                            }
                                                                                                            §§goto(addr0945);
                                                                                                         }
                                                                                                         §§goto(addr0934);
                                                                                                      }
                                                                                                      §§goto(addr0932);
                                                                                                   }
                                                                                                   §§goto(addr0912);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(ServerResConst.RESOURCE_WORKERS);
                                                                                                   if(_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc17_);
                                                                                                      if(!(_loc18_ && Boolean(param3)))
                                                                                                      {
                                                                                                         if(§§pop() === §§pop())
                                                                                                         {
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  §§goto(addr0716);
                                                                                                               }
                                                                                                               §§goto(addr0932);
                                                                                                            }
                                                                                                            §§goto(addr08c2);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(ServerResConst.RESOURCE_ACADEMICS);
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(_loc17_);
                                                                                                               if(!(_loc18_ && Boolean(param3)))
                                                                                                               {
                                                                                                                  addr06de:
                                                                                                                  if(§§pop() === §§pop())
                                                                                                                  {
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        §§push(2);
                                                                                                                        if(!(_loc18_ && Boolean(param2)))
                                                                                                                        {
                                                                                                                           §§goto(addr0716);
                                                                                                                        }
                                                                                                                        §§goto(addr0932);
                                                                                                                     }
                                                                                                                     §§goto(addr0912);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(3);
                                                                                                                     if(_loc19_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        §§goto(addr0716);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0932);
                                                                                                               }
                                                                                                               §§goto(addr090e);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr08d9);
                                                                                                      }
                                                                                                      §§goto(addr06de);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr090c);
                                                                                             }
                                                                                             §§goto(addr08b0);
                                                                                          }
                                                                                          §§goto(addr08d9);
                                                                                       }
                                                                                       §§goto(addr0912);
                                                                                    }
                                                                                    §§goto(addr07a5);
                                                                                 }
                                                                                 §§goto(addr085e);
                                                                              }
                                                                              §§goto(addr0735);
                                                                           }
                                                                           §§goto(addr073a);
                                                                        }
                                                                        §§goto(addr094c);
                                                                     }
                                                                     §§goto(addr053b);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr04e5:
                                                                     §§push(§§pop());
                                                                     if(_loc19_)
                                                                     {
                                                                        §§goto(addr04ec);
                                                                     }
                                                                  }
                                                                  §§goto(addr09f3);
                                                               }
                                                               §§goto(addr02ab);
                                                            }
                                                            §§goto(addr09f3);
                                                         }
                                                         §§goto(addr04e5);
                                                      }
                                                      §§goto(addr048e);
                                                   }
                                                   else
                                                   {
                                                      addr04ce:
                                                      §§push(§§pop());
                                                      if(_loc19_)
                                                      {
                                                         _loc6_ = §§pop();
                                                         if(_loc19_)
                                                         {
                                                            §§push(0);
                                                            if(_loc19_)
                                                            {
                                                               §§goto(addr04e5);
                                                            }
                                                            §§goto(addr0504);
                                                         }
                                                         §§goto(addr0c4a);
                                                      }
                                                   }
                                                   §§goto(addr0c64);
                                                }
                                                §§goto(addr038a);
                                             case 1:
                                                §§push(LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.income.needs"));
                                                if(_loc19_)
                                                {
                                                   §§goto(addr04ce);
                                                }
                                                §§goto(addr0c64);
                                          }
                                          return new SimpleItemVo(_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_);
                                       }
                                    }
                                 }
                                 addr0cb8:
                              }
                              §§goto(addr0cd9);
                           }
                           else
                           {
                              §§push(NEED_OUT);
                           }
                           §§goto(addr0cd3);
                        }
                     }
                     §§goto(addr0cd5);
                  }
                  §§goto(addr0cd3);
               }
            }
            §§goto(addr0cb8);
         }
      }
      
      private function getActualProductionOutcome(param1:ProductionGoodObjectVo) : SimpleItemVo
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         §§push(LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.units"));
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         §§push(param1.productionYeld * this._globalStatProxy.energyOutputModifier);
         if(_loc8_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = param1.productionYeld;
         var _loc5_:String = "icon_product";
         var _loc6_:String = "gui_popups_productionPopup_new";
         §§push(LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.income.base"));
         if(_loc8_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         if(_loc8_)
         {
            §§push(Math.ceil(_loc4_));
            if(_loc8_)
            {
               _loc4_ = §§pop();
               if(_loc8_)
               {
                  addr00af:
                  _loc3_ = Math.ceil(_loc3_);
               }
               §§goto(addr00b0);
            }
            §§goto(addr00af);
         }
         addr00b0:
         return new SimpleItemVo(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_);
      }
      
      private function getNeeds(param1:ResidentialFieldObjectVo) : Vector.<ResidentialNeedPopupVo>
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc6_:NeedVo = null;
         var _loc7_:ResidentialNeedPopupVo = null;
         var _loc8_:NeedVo = null;
         var _loc9_:* = false;
         var _loc10_:ConfigNeedRequireDTO = null;
         var _loc11_:ResidentialNeedPopupVo = null;
         var _loc2_:Vector.<ResidentialNeedPopupVo> = new Vector.<ResidentialNeedPopupVo>();
         var _loc3_:ConfigPlayfieldItemDTO = this.configProxy.getFirstLevelConfigOfBuilding(param1.configPlayfieldItemVo.id);
         var _loc4_:int = 1;
         var _loc5_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:* = param1.residentialNeeds;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc13_,_loc12_));
            if(_loc17_)
            {
               break;
            }
            if(§§pop())
            {
               _loc6_ = §§nextvalue(_loc12_,_loc13_);
               §§push(§§findproperty(ResidentialNeedPopupVo));
               §§push(LocaUtils);
               §§push("rcl.playfielditems.name");
               §§push("rcl.playfielditems.name.");
               if(_loc16_ || Boolean(_loc2_))
               {
                  §§push(§§pop() + _loc6_.shopLocaleId);
               }
               §§push(§§pop().getString(§§pop(),§§pop()));
               §§push(true);
               §§push(_loc6_.shopGfxId);
               §§push(_loc6_.shopLocaleId);
               §§push(_loc6_.isSatisfied);
               §§push("FieldItem_");
               if(_loc16_ || Boolean(_loc3_))
               {
                  §§push(§§pop() + _loc6_.shopGfxId);
                  if(_loc16_)
                  {
                     §§push(§§pop() + "_small");
                  }
               }
               _loc7_ = new §§pop().ResidentialNeedPopupVo(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc6_.levelOneConfig),false,0,_loc6_.vcBoost,_loc6_.ppBoost,_loc6_.epBoost);
               if(_loc16_)
               {
                  _loc2_.push(_loc7_);
               }
               continue;
            }
            if(!_loc17_)
            {
               if(!_loc17_)
               {
                  if(!_loc17_)
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc3_.nextConfigId == 0)
                        {
                           if(_loc16_)
                           {
                              _loc5_ = true;
                              if(!(_loc17_ && Boolean(param1)))
                              {
                                 _loc12_ = 0;
                                 addr0149:
                                 if(!_loc17_)
                                 {
                                    while(true)
                                    {
                                       _loc13_ = _loc3_.needRequireConfigs;
                                       addr0266:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc13_,_loc12_));
                                          break loop0;
                                       }
                                       addr026d:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr0161:
                                 }
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 _loc3_ = this.configProxy.config.items[_loc3_.nextConfigId];
                                 if(!(_loc17_ && Boolean(param1)))
                                 {
                                    _loc4_++;
                                    if(_loc17_ && Boolean(_loc2_))
                                    {
                                       break;
                                    }
                                 }
                                 §§push(_loc5_);
                                 if(_loc16_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              return _loc2_;
                              addr0271:
                           }
                        }
                        §§goto(addr0149);
                     }
                  }
                  §§goto(addr0271);
               }
               §§goto(addr0161);
            }
            §§goto(addr026d);
         }
         while(true)
         {
            if(!§§pop())
            {
               §§goto(addr026d);
            }
            else
            {
               _loc10_ = §§nextvalue(_loc12_,_loc13_);
               _loc8_ = ConfigFactory.buildNeedVo(_loc10_,this.configProxy);
               if(_loc16_ || Boolean(this))
               {
                  §§push(false);
                  if(_loc16_ || Boolean(param1))
                  {
                     _loc9_ = §§pop();
                     if(_loc16_ || Boolean(this))
                     {
                        var _loc14_:int = 0;
                        if(_loc16_ || Boolean(_loc3_))
                        {
                           for each(_loc11_ in _loc2_)
                           {
                              if(_loc11_.parentBuildingGfxId == _loc8_.shopGfxId)
                              {
                                 if(_loc16_)
                                 {
                                    _loc9_ = true;
                                 }
                              }
                           }
                        }
                        if(!(_loc17_ && Boolean(param1)))
                        {
                           addr020d:
                           addr020b:
                           if(!_loc9_)
                           {
                              if(!_loc17_)
                              {
                                 addr0217:
                                 _loc2_.push(new ResidentialNeedPopupVo(LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + _loc8_.shopLocaleId),true,_loc8_.shopGfxId,_loc8_.shopLocaleId,false,"FieldItem_" + _loc8_.shopGfxId + "_small",ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc3_),true,_loc4_,_loc8_.vcBoost,_loc8_.ppBoost,_loc8_.epBoost));
                              }
                           }
                           §§goto(addr0266);
                        }
                     }
                     §§goto(addr0217);
                  }
                  §§goto(addr020d);
               }
               §§goto(addr020b);
            }
         }
      }
      
      private function getNextUpgradeInstantFinishCost(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc4_:ConfigPhaseDTO = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc2_:* = 0;
         var _loc3_:ConfigPlayfieldItemDTO = this.configProxy.getConfigPlayfieldItemById(param1);
         if(_loc11_ || Boolean(this))
         {
            if(_loc3_)
            {
               addr0045:
               for each(_loc4_ in _loc3_.constructionPhases)
               {
                  §§push(_loc4_.phaseType);
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                     if(_loc11_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc10_)
                        {
                           §§push(!§§pop());
                           if(!(_loc10_ && Boolean(_loc3_)))
                           {
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              §§push(_temp_6);
                              if(_loc11_ || Boolean(this))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc10_ && Boolean(_loc3_)))
                                    {
                                       §§pop();
                                       if(!_loc10_)
                                       {
                                          §§push(_loc4_.phaseType);
                                          if(_loc11_)
                                          {
                                             addr00c6:
                                             §§push(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc10_ && Boolean(param1)))
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc11_)
                                                   {
                                                      addr00e8:
                                                      var _temp_10:* = §§pop();
                                                      §§push(_temp_10);
                                                      §§push(_temp_10);
                                                      if(!(_loc10_ && Boolean(_loc3_)))
                                                      {
                                                         addr00f7:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc10_ && Boolean(param1)))
                                                            {
                                                               addr0117:
                                                               §§pop();
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(_loc4_.phaseType);
                                                                  if(!(_loc10_ && Boolean(param1)))
                                                                  {
                                                                     §§push(ServerPhaseTypes.CREATE_ACTIVATE);
                                                                     if(_loc11_ || Boolean(param1))
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr014c:
                                                                           §§push(!§§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              addr0153:
                                                                              var _temp_15:* = §§pop();
                                                                              addr0154:
                                                                              §§push(_temp_15);
                                                                              if(_temp_15)
                                                                              {
                                                                                 if(_loc11_ || Boolean(this))
                                                                                 {
                                                                                    addr0166:
                                                                                    §§pop();
                                                                                    if(_loc11_ || Boolean(_loc2_))
                                                                                    {
                                                                                       addr0188:
                                                                                       addr0180:
                                                                                       addr017a:
                                                                                       addr0175:
                                                                                       §§push(_loc4_.phaseType == ServerPhaseTypes.INSTANT_CONSTRUCTION);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr0187:
                                                                                          §§push(!§§pop());
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    var _loc8_:int = 0;
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       for each(_loc5_ in _loc4_.instantFinshOutput)
                                                                                       {
                                                                                          §§push(_loc5_.resourceConfig);
                                                                                          if(!(_loc10_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             if(§§pop() == null)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc10_ && Boolean(_loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(_loc5_.resourceConfig);
                                                                                          }
                                                                                          if(§§pop().type != ServerResConst.RESOURCE_REALCURRENCY)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc10_ && Boolean(_loc3_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(_loc2_);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§push(§§pop() + _loc5_.outputAmount);
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr0215:
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             _loc2_ = §§pop();
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr0215);
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr0187);
                                                                              }
                                                                              §§goto(addr0188);
                                                                           }
                                                                           §§goto(addr0187);
                                                                        }
                                                                        §§goto(addr0166);
                                                                     }
                                                                     §§goto(addr0180);
                                                                  }
                                                                  §§goto(addr017a);
                                                               }
                                                               §§goto(addr0175);
                                                            }
                                                         }
                                                         §§goto(addr0153);
                                                      }
                                                      §§goto(addr0154);
                                                   }
                                                   §§goto(addr0187);
                                                }
                                                §§goto(addr0117);
                                             }
                                             §§goto(addr0180);
                                          }
                                          §§goto(addr017a);
                                       }
                                       §§goto(addr0175);
                                    }
                                    §§goto(addr0187);
                                 }
                                 §§goto(addr00e8);
                              }
                              §§goto(addr00f7);
                           }
                           §§goto(addr014c);
                        }
                        §§goto(addr0166);
                     }
                     §§goto(addr0180);
                  }
                  §§goto(addr00c6);
               }
            }
            return Math.floor(Math.abs(_loc2_ * 2));
         }
         §§goto(addr0045);
      }
      
      private function get goodStockProxy() : PlayerGoodsStockProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._goStP);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     this._goStP = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  }
               }
               addr0054:
               return this._goStP;
            }
         }
         §§goto(addr0054);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._coP);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     addr003a:
                     this._coP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._coP;
            }
         }
         §§goto(addr003a);
      }
      
      private function get needMatrixProxy() : NeedMatrixProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._needMatrixProxy);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._needMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
                  }
               }
               addr0054:
               return this._needMatrixProxy;
            }
         }
         §§goto(addr0054);
      }
   }
}

