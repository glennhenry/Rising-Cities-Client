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
      
      public static const STANDARD_BOOSTER:String = "STANDARD";
      
      public static const SUBLEVEL_BOOSTER:String = "SUBLEVEL";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "BoosterpackBookProxy";
         if(_loc1_)
         {
            §§goto(addr002b);
         }
         §§goto(addr0047);
      }
      addr002b:
      
      public static const ALL:String = "ALL";
      
      if(!_loc2_)
      {
         STANDARD_BOOSTER = "STANDARD";
         if(!_loc2_)
         {
            addr0047:
            SUBLEVEL_BOOSTER = "SUBLEVEL";
         }
      }
      
      private var _boosterpackCollections:Dictionary;
      
      private var _boosterpackTypes:Vector.<String>;
      
      private var _boughtBoosterpackVo:BoosterpackVo;
      
      private var _rewardDTOs:Vector.<ConfigRewardDTO>;
      
      private var _cP:GameConfigProxy;
      
      private var _gSP:PlayerGoodsStockProxy;
      
      private var _pRP:PlayerResourceProxy;
      
      public function BoosterpackBookProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            this._boosterpackTypes = new Vector.<String>();
            if(!_loc3_)
            {
               this._boosterpackTypes.push(ALL);
               addr0034:
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._boosterpackTypes.push(STANDARD_BOOSTER);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0077:
                     this._boosterpackTypes.push(SUBLEVEL_BOOSTER);
                     if(_loc4_ || Boolean(param1))
                     {
                        super(param1,param2);
                     }
                  }
                  §§goto(addr0094);
               }
               §§goto(addr0077);
            }
            addr0094:
            return;
         }
         §§goto(addr0034);
      }
      
      public function setRewardData(param1:Vector.<ConfigRewardDTO>) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigRewardDTO = null;
         if(!_loc5_)
         {
            this._rewardDTOs = new Vector.<ConfigRewardDTO>();
         }
         for each(_loc2_ in param1)
         {
            if(_loc6_ || Boolean(_loc2_))
            {
               this._rewardDTOs.push(_loc2_);
            }
         }
         if(!_loc5_)
         {
            facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_UPDATE_REWARD);
         }
      }
      
      public function getRewardData() : Vector.<RewardItemComponentVo>
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:Object = null;
         var _loc3_:ConfigRewardDTO = null;
         var _loc4_:BriskDynaVo = null;
         var _loc1_:Vector.<RewardItemComponentVo> = new Vector.<RewardItemComponentVo>();
         for each(_loc3_ in this._rewardDTOs)
         {
            _loc2_ = new Object();
            if(!_loc8_)
            {
               _loc2_.factor = _loc3_.doubled ? 2 : 1;
               if(_loc9_)
               {
                  §§push(_loc3_.resourceConfig);
                  if(!(_loc8_ && Boolean(_loc3_)))
                  {
                     if(§§pop() != null)
                     {
                        if(!(_loc8_ && Boolean(_loc2_)))
                        {
                           _loc2_.type = RewardItemComponentVo.TYPE_RESOURCE;
                           if(!_loc8_)
                           {
                              _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
                              if(_loc9_ || Boolean(this))
                              {
                                 _loc2_.useNew = false;
                                 if(_loc9_)
                                 {
                                    _loc2_.cid = _loc3_.resourceConfig.id;
                                    if(_loc9_)
                                    {
                                       addr026f:
                                       §§push(_loc3_.resourceConfig.type);
                                       if(_loc9_)
                                       {
                                          var _loc7_:* = §§pop();
                                          if(!_loc8_)
                                          {
                                             §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                             if(!_loc8_)
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc8_ && Boolean(_loc3_)))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§push(0);
                                                         if(_loc8_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr036e:
                                                         §§push(4);
                                                         if(_loc8_)
                                                         {
                                                         }
                                                      }
                                                      addr0386:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_RC;
                                                            if(!_loc8_)
                                                            {
                                                               addr00f1:
                                                               _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.realcurrency"));
                                                               if(_loc9_)
                                                               {
                                                                  _loc2_.itemIcon = "rc_icon_medium";
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr03a5:
                                                                     _loc2_.itemIconLib = "gui_resources_icons";
                                                                     if(_loc9_)
                                                                     {
                                                                        _loc2_.price = _loc3_.outputAmount;
                                                                        if(!(_loc8_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§push(_loc3_.doubled);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc9_ || Boolean(_loc1_))
                                                                                 {
                                                                                    _loc2_.price = _loc3_.outputAmount / 2;
                                                                                    if(!(_loc9_ || Boolean(_loc2_)))
                                                                                    {
                                                                                       addr045b:
                                                                                       _loc2_.type = RewardItemComponentVo.TYPE_EVENT_GOOD;
                                                                                       if(!(_loc8_ && Boolean(_loc3_)))
                                                                                       {
                                                                                          _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.goods.goodname"),String("rcl.goods.goodname." + _loc3_.goodConfig.localeId));
                                                                                          addr04ba:
                                                                                          if(!(_loc9_ || Boolean(_loc2_)))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr04f9:
                                                                                          _loc2_.itemIconLib = "gui_resources_icons";
                                                                                          if(!(_loc8_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             addr050e:
                                                                                             _loc2_.itemIcon = "ressource_" + _loc3_.goodConfig.gfxId + "_medium";
                                                                                             if(_loc9_ || Boolean(this))
                                                                                             {
                                                                                                addr052f:
                                                                                                _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   addr053f:
                                                                                                   _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      _loc2_.useNew = false;
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         _loc2_.price = _loc3_.outputAmount;
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(_loc3_.doubled);
                                                                                                            if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                            {
                                                                                                               addr057a:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr0584:
                                                                                                                     _loc2_.price = _loc3_.outputAmount / 2;
                                                                                                                     if(!(_loc9_ || Boolean(this)))
                                                                                                                     {
                                                                                                                        addr091a:
                                                                                                                        addr091e:
                                                                                                                        if(_loc3_.doubled)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           addr0928:
                                                                                                                           _loc2_.price = _loc3_.outputAmount / 2;
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr094e:
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        if(!(_loc8_ && Boolean(_loc1_)))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr090c:
                                                                                                                  _loc2_.price = _loc3_.outputAmount;
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr091a);
                                                                                                               }
                                                                                                               §§goto(addr094e);
                                                                                                            }
                                                                                                            §§goto(addr091e);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr06b6:
                                                                                                            _loc2_.itemIcon = "FieldItem_" + _loc3_.configPlayfieldItem.gfxId + "_small";
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               addr06cf:
                                                                                                               _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr06df:
                                                                                                                  _loc2_.useNew = false;
                                                                                                                  if(!(_loc9_ || Boolean(this)))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  _loc2_.price = _loc3_.outputAmount;
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     addr0700:
                                                                                                                     §§push(_loc3_.doubled);
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        addr070a:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc9_ || Boolean(this))
                                                                                                                           {
                                                                                                                              addr071c:
                                                                                                                              _loc2_.price = _loc3_.outputAmount / 2;
                                                                                                                              if(!(_loc9_ || Boolean(_loc3_)))
                                                                                                                              {
                                                                                                                                 addr08f9:
                                                                                                                                 _loc2_.useNew = false;
                                                                                                                                 if(!(_loc8_ && Boolean(_loc1_)))
                                                                                                                                 {
                                                                                                                                    §§goto(addr090c);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr094e);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr0879:
                                                                                                                              _loc2_.type = RewardItemComponentVo.TYPE_ASSIST;
                                                                                                                              if(!(_loc9_ || Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr0891:
                                                                                                                              _loc2_.tooltip = LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name");
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr08a7:
                                                                                                                              _loc2_.itemIconLib = "gui_popups_rentCollector";
                                                                                                                              if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                              {
                                                                                                                                 addr08bc:
                                                                                                                                 _loc2_.itemIcon = "rentCollector_small_" + _loc3_.assistConfig.gfxId;
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    addr08d1:
                                                                                                                                    _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr08e1:
                                                                                                                                 _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                                                                                                                                 if(_loc9_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr08f9);
                                                                                                                                 }
                                                                                                                                 §§goto(addr090c);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr0928);
                                                                                                                        }
                                                                                                                        §§goto(addr094e);
                                                                                                                     }
                                                                                                                     §§goto(addr091e);
                                                                                                                  }
                                                                                                                  §§goto(addr0891);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0770:
                                                                                                                  _loc2_.tooltip = ImprovementLayerProxy.improvementName(_loc3_.improvementConfig);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr0785:
                                                                                                                     _loc4_ = ImprovementLayerProxy.improvementGfx(_loc3_.improvementConfig);
                                                                                                                     if(_loc9_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        _loc2_.itemIconLib = _loc4_.dynaLibName;
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           _loc2_.itemIcon = _loc4_.dynaBmpName;
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              _loc2_.size = RewardItemComponentVo.SIZE_SMALL;
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 addr07cf:
                                                                                                                                 _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
                                                                                                                                 if(_loc9_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                    _loc2_.useNew = false;
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       _loc2_.quality = _loc3_.improvementConfig.quality;
                                                                                                                                       if(_loc9_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          addr080c:
                                                                                                                                          _loc2_.price = _loc3_.outputAmount;
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(_loc3_.doubled)
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   addr0828:
                                                                                                                                                   _loc2_.price = _loc3_.outputAmount / 2;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr094e);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0828);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr080c);
                                                                                                                           }
                                                                                                                           §§goto(addr07cf);
                                                                                                                        }
                                                                                                                        §§goto(addr094e);
                                                                                                                     }
                                                                                                                     §§goto(addr07cf);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr090c);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr090c);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr0851:
                                                                                                               addr084b:
                                                                                                               addr084f:
                                                                                                               if(_loc3_.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                                                                                                               {
                                                                                                                  if(_loc9_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                     addr0869:
                                                                                                                     _loc2_.cid = _loc3_.assistConfig.id;
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        §§goto(addr0879);
                                                                                                                     }
                                                                                                                     §§goto(addr094e);
                                                                                                                  }
                                                                                                                  §§goto(addr08e1);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _loc2_ = null;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr094e);
                                                                                                      }
                                                                                                      §§goto(addr090c);
                                                                                                   }
                                                                                                   §§goto(addr0584);
                                                                                                }
                                                                                                §§goto(addr0770);
                                                                                             }
                                                                                             §§goto(addr094e);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr064e:
                                                                                             addr0652:
                                                                                             §§push(_loc3_.configPlayfieldItem.isPremium);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr065b:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc9_ || Boolean(this))
                                                                                                   {
                                                                                                      _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_CONSTRUCTED;
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr0699:
                                                                                                         _loc2_.itemIconLib = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc3_.configPlayfieldItem);
                                                                                                         if(!(_loc8_ && Boolean(_loc1_)))
                                                                                                         {
                                                                                                            §§goto(addr06b6);
                                                                                                         }
                                                                                                         §§goto(addr06cf);
                                                                                                      }
                                                                                                      §§goto(addr0785);
                                                                                                   }
                                                                                                   §§goto(addr0869);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_PERMISSSON;
                                                                                                   if(_loc9_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      §§goto(addr0699);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr091a);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr070a);
                                                                                       }
                                                                                       §§goto(addr0869);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr094e);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0451:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§goto(addr045b);
                                                                                 }
                                                                                 §§goto(addr0700);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr047b:
                                                                                 §§push(_loc3_.goodConfig.isSpecialGood);
                                                                                 if(_loc9_ || Boolean(_loc3_))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr0496:
                                                                                          _loc2_.type = RewardItemComponentVo.TYPE_SPECIAL_GOOD;
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§goto(addr04ba);
                                                                                          }
                                                                                          §§goto(addr08f9);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr061a:
                                                                                          _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + _loc3_.configPlayfieldItem.localeId));
                                                                                          if(!(_loc9_ || Boolean(_loc2_)))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr064e);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc2_.type = RewardItemComponentVo.TYPE_NORMAL_GOOD;
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§goto(addr04ba);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr06cf);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr070a);
                                                                        }
                                                                        §§goto(addr08d1);
                                                                     }
                                                                     §§goto(addr04f9);
                                                                  }
                                                                  §§goto(addr094e);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr01b1:
                                                               _loc2_.itemIcon = "xp_icon_medium";
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr03a5);
                                                               }
                                                               else
                                                               {
                                                                  addr0436:
                                                                  §§push(_loc3_.goodConfig);
                                                                  if(_loc9_ || Boolean(this))
                                                                  {
                                                                     addr0448:
                                                                     §§push(§§pop().isEventGood);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§goto(addr0451);
                                                                     }
                                                                     §§goto(addr057a);
                                                                  }
                                                               }
                                                               §§goto(addr047b);
                                                            }
                                                            §§goto(addr03a5);
                                                         case 1:
                                                            _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_VC;
                                                            if(_loc9_ || Boolean(_loc1_))
                                                            {
                                                               _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.virtualcurrency"));
                                                               if(_loc8_)
                                                               {
                                                                  continue;
                                                               }
                                                               _loc2_.itemIcon = "vc_icon_medium";
                                                               if(_loc9_ || Boolean(_loc1_))
                                                               {
                                                                  §§goto(addr03a5);
                                                               }
                                                               §§goto(addr0700);
                                                            }
                                                            §§goto(addr0770);
                                                         case 2:
                                                            _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_XP;
                                                            if(_loc9_)
                                                            {
                                                               _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.experience"));
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr01b1);
                                                               }
                                                               §§goto(addr06df);
                                                            }
                                                            §§goto(addr08bc);
                                                         case 3:
                                                            _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_PP;
                                                            if(_loc9_)
                                                            {
                                                               _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.productionpoints"));
                                                               if(_loc9_ || Boolean(_loc2_))
                                                               {
                                                                  _loc2_.itemIcon = "pp_icon_medium";
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr03a5);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr05bd:
                                                                     _loc2_.cid = _loc3_.configPlayfieldItem.id;
                                                                     if(_loc9_ || Boolean(this))
                                                                     {
                                                                        _loc2_.type = RewardItemComponentVo.TYPE_NORMAL_PERMISSION;
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(_loc3_.configPlayfieldItem);
                                                                           if(_loc9_)
                                                                           {
                                                                              addr05ef:
                                                                              §§push(§§pop().specialHighlighting);
                                                                              if(!(_loc8_ && Boolean(this)))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    _loc2_.type = RewardItemComponentVo.TYPE_SPECIAL_PERMISSION;
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§goto(addr061a);
                                                                                    }
                                                                                    §§goto(addr08a7);
                                                                                 }
                                                                                 §§goto(addr061a);
                                                                              }
                                                                              §§goto(addr065b);
                                                                           }
                                                                           §§goto(addr0652);
                                                                        }
                                                                        §§goto(addr08f9);
                                                                     }
                                                                  }
                                                                  §§goto(addr091a);
                                                               }
                                                               §§goto(addr071c);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr0436);
                                                            }
                                                         case 4:
                                                            _loc2_.priceIcon = RewardItemComponentVo.PRICE_ICON_EP;
                                                            if(!(_loc8_ && Boolean(_loc1_)))
                                                            {
                                                               _loc2_.tooltip = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.educationpoints"));
                                                               if(_loc9_)
                                                               {
                                                                  _loc2_.itemIcon = "ep_icon_medium";
                                                                  if(_loc9_ || Boolean(this))
                                                                  {
                                                                     §§goto(addr03a5);
                                                                  }
                                                                  §§goto(addr08bc);
                                                               }
                                                               §§goto(addr053f);
                                                            }
                                                            §§goto(addr0699);
                                                         default:
                                                            §§goto(addr03a5);
                                                      }
                                                      _loc1_.push(new RewardItemComponentVo(_loc2_));
                                                      continue;
                                                   }
                                                   §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                   if(_loc9_ || Boolean(_loc1_))
                                                   {
                                                      §§push(_loc7_);
                                                      if(!(_loc8_ && Boolean(_loc2_)))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               §§push(1);
                                                               if(_loc9_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr034f:
                                                               §§push(3);
                                                               if(_loc8_ && Boolean(_loc2_))
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerResConst.RESOURCE_EXPERIENCE);
                                                            if(_loc9_ || Boolean(_loc2_))
                                                            {
                                                               addr02fc:
                                                               §§push(_loc7_);
                                                               if(!_loc8_)
                                                               {
                                                                  addr0304:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc9_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr036e);
                                                                     }
                                                                     §§goto(addr0386);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                                     if(_loc9_ || Boolean(_loc2_))
                                                                     {
                                                                        §§push(_loc7_);
                                                                        if(!(_loc8_ && Boolean(_loc2_)))
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc9_ || Boolean(_loc3_))
                                                                              {
                                                                                 §§goto(addr034f);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr036e);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr036a:
                                                                              addr0368:
                                                                              if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc7_)
                                                                              {
                                                                                 §§goto(addr036e);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(5);
                                                                              }
                                                                              §§goto(addr0386);
                                                                           }
                                                                           §§goto(addr036e);
                                                                        }
                                                                        §§goto(addr036a);
                                                                     }
                                                                     §§goto(addr0368);
                                                                  }
                                                               }
                                                               §§goto(addr036a);
                                                            }
                                                            §§goto(addr0368);
                                                         }
                                                         §§goto(addr0386);
                                                      }
                                                      §§goto(addr0304);
                                                   }
                                                   §§goto(addr02fc);
                                                   §§goto(addr036e);
                                                }
                                                §§goto(addr0304);
                                             }
                                             §§goto(addr02fc);
                                          }
                                          §§goto(addr034f);
                                       }
                                       §§goto(addr0851);
                                    }
                                    §§goto(addr00f1);
                                 }
                                 §§goto(addr0496);
                              }
                              §§goto(addr094e);
                           }
                           §§goto(addr090c);
                        }
                        §§goto(addr03a5);
                     }
                     else
                     {
                        §§push(_loc3_.goodConfig);
                        if(_loc9_ || Boolean(_loc2_))
                        {
                           if(§§pop() != null)
                           {
                              if(_loc9_)
                              {
                                 _loc2_.cid = _loc3_.goodConfig.id;
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    §§goto(addr0436);
                                 }
                                 §§goto(addr08a7);
                              }
                              §§goto(addr052f);
                           }
                           else
                           {
                              §§push(_loc3_.configPlayfieldItem);
                              if(_loc9_ || Boolean(this))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       §§goto(addr05bd);
                                    }
                                    §§goto(addr090c);
                                 }
                                 else if(_loc3_.improvementConfig != null)
                                 {
                                    if(_loc9_ || Boolean(this))
                                    {
                                       _loc2_.cid = _loc3_.improvementConfig.id;
                                       if(!_loc8_)
                                       {
                                          _loc2_.type = RewardItemComponentVo.TYPE_IMPROVEMENT;
                                          if(_loc9_)
                                          {
                                             §§goto(addr0770);
                                          }
                                          else
                                          {
                                             §§goto(addr0869);
                                          }
                                       }
                                       §§goto(addr094e);
                                    }
                                    §§goto(addr0770);
                                 }
                                 else
                                 {
                                    §§push(_loc3_.assistConfig);
                                    if(!_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             §§goto(addr084b);
                                          }
                                          §§goto(addr0879);
                                       }
                                       §§goto(addr094e);
                                    }
                                    §§goto(addr084f);
                                 }
                                 §§goto(addr084f);
                              }
                              §§goto(addr05ef);
                           }
                        }
                     }
                     §§goto(addr0448);
                  }
                  §§goto(addr026f);
               }
               §§goto(addr050e);
            }
            §§goto(addr03a5);
         }
         return _loc1_.sort(this.sortNumericField);
      }
      
      private function sortNumericField(param1:RewardItemComponentVo, param2:RewardItemComponentVo) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(param1.sortint);
            if(_loc3_)
            {
               §§push(param2.sortint);
               if(_loc3_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(1);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr008f:
                        §§push(0);
                     }
                     §§goto(addr0091);
                  }
                  else
                  {
                     §§goto(addr0054);
                  }
               }
               §§goto(addr006d);
            }
            §§goto(addr0091);
         }
         addr0054:
         §§push(param1.sortint);
         if(_loc3_)
         {
            addr006d:
            if(§§pop() > param2.sortint)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§push(-1);
                  if(_loc3_ || Boolean(param2))
                  {
                     §§goto(addr008e);
                  }
               }
               else
               {
                  §§goto(addr008f);
               }
               addr0091:
               return §§pop();
            }
            §§goto(addr008f);
         }
         addr008e:
         return §§pop();
      }
      
      public function getBoosterpackVos(param1:String = "STANDARD") : Vector.<BoosterpackVo>
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._boosterpackCollections == null);
            if(_loc2_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(!_temp_1)
               {
                  if(_loc2_)
                  {
                     §§goto(addr002c);
                  }
               }
               §§goto(addr0049);
            }
            addr002c:
            §§pop();
            if(_loc2_)
            {
               addr0049:
               if(this._boosterpackCollections[param1] == null)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.initBoosterpackVos();
                     if(_loc3_ && _loc3_)
                     {
                     }
                  }
               }
               else
               {
                  this.updateBoosterpackVos();
               }
            }
            §§goto(addr0083);
         }
         addr0083:
         return this._boosterpackCollections[param1];
      }
      
      public function getNextBoosterpackSlotId(param1:int, param2:String = "STANDARD") : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §§push(this._boosterpackCollections[param2] == null);
            if(_loc4_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(_loc4_)
                  {
                     addr0036:
                     §§pop();
                     if(_loc4_ || _loc3_)
                     {
                        addr0050:
                        §§push(param1);
                        if(_loc4_ || Boolean(param1))
                        {
                           §§push(1);
                           if(!_loc3_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc3_)
                              {
                                 addr0085:
                                 if(§§pop() >= this._boosterpackCollections[param2].length)
                                 {
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§push(0);
                                       if(!(_loc3_ && Boolean(param2)))
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr00a6:
                                       §§push(param1);
                                    }
                                    addr00aa:
                                    return §§pop() + 1;
                                    addr00a9:
                                    addr00a7:
                                 }
                                 §§goto(addr00a6);
                              }
                              §§goto(addr00aa);
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00a6);
                  }
               }
               §§goto(addr0085);
            }
            §§goto(addr0036);
         }
         §§goto(addr0050);
      }
      
      public function getPreviousBoosterpackSlotId(param1:int, param2:String = "STANDARD") : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param2)))
         {
            if(this._boosterpackCollections[param2] == null)
            {
               if(_loc3_ || _loc3_)
               {
                  §§push(0);
                  if(!(_loc4_ && Boolean(this)))
                  {
                     return §§pop();
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0092);
            }
            else
            {
               addr005f:
               §§push(param1);
               if(_loc3_ || Boolean(this))
               {
                  addr006d:
                  §§push(§§pop() - 1);
                  if(!(_loc4_ && Boolean(param2)))
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc3_)
                        {
                           addr0092:
                           §§push(this._boosterpackCollections[param2].length - 1);
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr00ac);
                           }
                        }
                        else
                        {
                           addr00ad:
                           addr00ae:
                           return param1 - 1;
                        }
                        return §§pop();
                     }
                     §§goto(addr00ad);
                  }
                  addr00ac:
                  return §§pop();
               }
            }
            §§goto(addr00ae);
         }
         §§goto(addr005f);
      }
      
      public function getBoosterpackVoBySlotId(param1:int, param2:String = "STANDARD") : BoosterpackVo
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:BoosterpackVo = null;
         for each(_loc3_ in this._boosterpackCollections[param2])
         {
            if(!_loc7_)
            {
               if(_loc3_.slotId == param1)
               {
                  if(_loc6_ || Boolean(this))
                  {
                     return _loc3_;
                  }
               }
            }
         }
         return null;
      }
      
      private function initBoosterpackVos() : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc1_:ConfigBoosterDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         var _loc3_:BoosterpackVo = null;
         var _loc4_:GoodObjectVo = null;
         var _loc5_:* = null;
         var _loc6_:* = false;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         if(!_loc13_)
         {
            this._boosterpackCollections = new Dictionary();
            if(!(_loc13_ && Boolean(_loc1_)))
            {
               addr0055:
               this._boosterpackCollections[ALL] = new Vector.<BoosterpackVo>();
               if(!(_loc13_ && Boolean(_loc1_)))
               {
                  this._boosterpackCollections[STANDARD_BOOSTER] = new Vector.<BoosterpackVo>();
                  if(!(_loc13_ && Boolean(_loc1_)))
                  {
                     this._boosterpackCollections[SUBLEVEL_BOOSTER] = new Vector.<BoosterpackVo>();
                  }
               }
            }
            var _loc9_:int = 0;
            var _loc10_:* = this.configProxy.config.boosterpacks;
            loop0:
            while(true)
            {
               §§push(§§hasnext(_loc10_,_loc9_));
               if(_loc13_)
               {
                  break;
               }
               if(!§§pop())
               {
                  if(_loc14_)
                  {
                     if(_loc14_ || Boolean(_loc3_))
                     {
                        if(_loc14_ || Boolean(_loc1_))
                        {
                           _loc9_ = 0;
                           if(_loc14_)
                           {
                              _loc10_ = this._boosterpackTypes;
                              if(_loc14_ || Boolean(_loc3_))
                              {
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc10_,_loc9_));
                                    break loop0;
                                 }
                                 addr03ef:
                                 return;
                                 addr03e4:
                                 addr03ed:
                                 addr03eb:
                              }
                              loop5:
                              while(true)
                              {
                                 _loc8_++;
                                 if(_loc14_)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc8_);
                                       addr03d3:
                                       while(§§pop() < this._boosterpackCollections[_loc5_].length)
                                       {
                                          this._boosterpackCollections[_loc5_][_loc8_].slotId = _loc8_;
                                          if(!_loc13_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop3;
                                       }
                                       break;
                                    }
                                    addr03d1:
                                 }
                                 §§goto(addr03e4);
                              }
                           }
                           §§goto(addr03ed);
                        }
                        §§goto(addr03ef);
                     }
                     §§goto(addr03ed);
                  }
                  §§goto(addr03eb);
               }
               else
               {
                  _loc1_ = §§nextvalue(_loc9_,_loc10_);
                  _loc3_ = new BoosterpackVo();
                  if(!_loc13_)
                  {
                     _loc3_.gfxId = _loc1_.gfxId;
                     if(_loc14_)
                     {
                        _loc3_.locaId = _loc1_.locaId;
                        if(_loc14_ || Boolean(_loc1_))
                        {
                           _loc3_.id = _loc1_.id;
                        }
                     }
                  }
                  _loc2_ = this.getPriceConfig(_loc1_);
                  if(_loc14_ || Boolean(this))
                  {
                     if(_loc2_)
                     {
                        if(!(_loc13_ && Boolean(_loc1_)))
                        {
                           addr0131:
                           _loc2_.goodConfig = this.configProxy.config.goods[_loc2_.configId];
                           if(_loc14_)
                           {
                              addr014b:
                              _loc3_.defaultCostConfig = _loc2_;
                           }
                           _loc4_ = this.goodStockProxy.getGoodByConfigId(_loc2_.configId);
                           if(!(_loc13_ && Boolean(this)))
                           {
                              _loc3_.defaultCostUserStock = _loc4_.playerStock;
                           }
                           addr0179:
                           _loc2_ = this.getPriceConfig(_loc1_,true);
                           if(_loc14_)
                           {
                              if(_loc2_)
                              {
                                 if(_loc14_ || Boolean(_loc1_))
                                 {
                                    _loc3_.realCurrencyCostConfig = _loc2_;
                                    if(_loc14_)
                                    {
                                       addr01a7:
                                       _loc3_.realCurrencyUserStock = this.resourceProxy.realCurrency;
                                       if(!_loc13_)
                                       {
                                          addr01b9:
                                          _loc3_.config = _loc1_;
                                          if(!_loc13_)
                                          {
                                             addr01c3:
                                             §§push(true);
                                             if(_loc14_ || Boolean(_loc1_))
                                             {
                                                _loc6_ = §§pop();
                                                if(_loc14_ || Boolean(_loc1_))
                                                {
                                                   addr01ef:
                                                   var _loc11_:int = 0;
                                                   if(_loc14_)
                                                   {
                                                      var _loc12_:* = _loc3_.config.tags;
                                                      if(_loc14_ || Boolean(this))
                                                      {
                                                         for each(_loc11_ in _loc12_)
                                                         {
                                                            §§push(_loc11_);
                                                            if(_loc14_)
                                                            {
                                                               var _temp_16:* = §§pop();
                                                               §§push(_temp_16);
                                                               §§push(_temp_16);
                                                               if(_loc14_)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  addr022a:
                                                                  §§push(ServerTagConstants.CLIENT_SUBLEVEL_BOOSTER_PACK);
                                                               }
                                                               if(§§pop().indexOf(§§pop()) != -1)
                                                               {
                                                                  if(_loc14_ || Boolean(_loc3_))
                                                                  {
                                                                     _loc6_ = false;
                                                                     if(_loc14_)
                                                                     {
                                                                        addr0250:
                                                                        _loc3_.type = this.serverTagConstantToBoosterType(_loc7_);
                                                                        if(!(_loc13_ && Boolean(_loc3_)))
                                                                        {
                                                                           this._boosterpackCollections[_loc3_.type].push(_loc3_);
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr022a);
                                                         }
                                                         addr0286:
                                                         if(_loc14_ || Boolean(_loc2_))
                                                         {
                                                            addr0298:
                                                            if(_loc6_)
                                                            {
                                                               if(_loc14_ || Boolean(_loc2_))
                                                               {
                                                                  addr02aa:
                                                                  _loc3_.type = STANDARD_BOOSTER;
                                                                  if(_loc14_ || Boolean(this))
                                                                  {
                                                                     addr02be:
                                                                     this._boosterpackCollections[STANDARD_BOOSTER].push(_loc3_);
                                                                     if(!(_loc14_ || Boolean(_loc1_)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  addr02dc:
                                                                  this._boosterpackCollections[ALL].push(_loc3_);
                                                                  continue;
                                                               }
                                                               §§goto(addr02be);
                                                            }
                                                         }
                                                         §§goto(addr02dc);
                                                      }
                                                      §§goto(addr0250);
                                                   }
                                                   §§goto(addr0286);
                                                }
                                                §§goto(addr02aa);
                                             }
                                             §§goto(addr0298);
                                          }
                                          §§goto(addr02be);
                                       }
                                    }
                                    §§goto(addr01ef);
                                 }
                                 §§goto(addr01c3);
                              }
                              §§goto(addr01b9);
                           }
                           §§goto(addr01a7);
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr0179);
                  }
                  §§goto(addr0131);
               }
            }
            while(§§pop())
            {
               §§push(§§nextvalue(_loc9_,_loc10_));
               if(!(_loc13_ && Boolean(_loc2_)))
               {
                  _loc5_ = §§pop();
                  if(!_loc13_)
                  {
                     this._boosterpackCollections[_loc5_].sort(this.sortBoosterPackByValue);
                     if(!_loc13_)
                     {
                        addr037a:
                        if(_loc5_ != ALL)
                        {
                           if(!_loc13_)
                           {
                              §§push(0);
                              if(!(_loc13_ && Boolean(this)))
                              {
                                 _loc8_ = §§pop();
                                 if(_loc14_)
                                 {
                                    §§goto(addr03d1);
                                 }
                                 §§goto(addr03e4);
                              }
                              §§goto(addr03d3);
                           }
                        }
                        §§goto(addr03e4);
                     }
                  }
                  §§goto(addr03d1);
               }
               §§goto(addr037a);
            }
            §§goto(addr03eb);
         }
         §§goto(addr0055);
      }
      
      private function sortBoosterPackByValue(param1:BoosterpackVo, param2:BoosterpackVo) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(param1.gfxId);
            if(!(_loc4_ && Boolean(param2)))
            {
               §§push(param2.gfxId);
               if(_loc3_ || Boolean(param1))
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc3_ || Boolean(param1))
                     {
                        §§push(1);
                        if(_loc3_ || Boolean(this))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0082:
                        addr008a:
                        addr0086:
                        if(param1.gfxId < param2.gfxId)
                        {
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr009c:
                              §§push(-1);
                              if(!_loc4_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr00a5:
                              §§push(0);
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr00a5);
                     }
                     addr00a7:
                     return §§pop();
                  }
                  §§goto(addr0082);
               }
               §§goto(addr008a);
            }
            §§goto(addr0086);
         }
         §§goto(addr009c);
      }
      
      private function updateBoosterpackVos() : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc1_:ConfigOutputDTO = null;
         var _loc2_:GoodObjectVo = null;
         var _loc3_:String = null;
         var _loc4_:BoosterpackVo = null;
         for each(_loc3_ in this._boosterpackTypes)
         {
            if(_loc10_ || Boolean(this))
            {
               var _loc7_:int = 0;
               if(_loc10_)
               {
                  for each(_loc4_ in this._boosterpackCollections[_loc3_])
                  {
                     _loc1_ = this.getPriceConfig(_loc4_.config);
                     _loc2_ = this.goodStockProxy.getGoodByConfigId(_loc1_.configId);
                     if(_loc10_)
                     {
                        _loc4_.defaultCostUserStock = _loc2_.playerStock;
                     }
                     _loc1_ = this.getPriceConfig(_loc4_.config,true);
                     if(_loc10_)
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        if(_loc9_)
                        {
                           continue;
                        }
                     }
                     _loc4_.realCurrencyUserStock = this.resourceProxy.realCurrency;
                  }
               }
            }
         }
      }
      
      private function getPriceConfig(param1:ConfigBoosterDTO, param2:Boolean = false) : ConfigOutputDTO
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:ConfigOutputDTO = null;
         §§push(ServerOutputConstants.GOOD);
         if(_loc7_ || Boolean(param1))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc7_ || _loc3_)
         {
            if(param2)
            {
               if(_loc7_ || Boolean(param1))
               {
                  §§push(ServerOutputConstants.RESOURCE);
                  if(!_loc8_)
                  {
                     §§push(§§pop());
                  }
                  _loc3_ = §§pop();
               }
            }
         }
         var _loc5_:int = 0;
         var _loc6_:* = param1.priceConfigs;
         while(true)
         {
            for each(_loc4_ in _loc6_)
            {
               if(!_loc7_)
               {
                  break;
               }
               §§push(_loc3_);
               if(!(_loc8_ && param2))
               {
                  §§push(ServerOutputConstants.GOOD);
                  if(_loc7_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc8_ && Boolean(this))
                        {
                           continue;
                        }
                        §§push(_loc4_.type);
                        if(_loc7_ || param2)
                        {
                           §§push(_loc3_);
                           if(!(_loc8_ && _loc3_))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc8_ && param2))
                                 {
                                    return _loc4_;
                                 }
                              }
                              continue;
                           }
                           addr0112:
                           if(§§pop() != §§pop())
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              continue;
                           }
                           §§push(_loc4_.resourceConfig);
                           if(_loc7_ || Boolean(this))
                           {
                              if(!§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 _loc4_.resourceConfig = this.configProxy.config.resources[_loc4_.configId];
                                 if(_loc8_ && Boolean(param1))
                                 {
                                    break;
                                 }
                              }
                              §§push(_loc4_.resourceConfig);
                           }
                           §§push(§§pop().type);
                        }
                     }
                     else
                     {
                        §§push(_loc4_.type);
                        if(!(_loc8_ && Boolean(this)))
                        {
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              §§goto(addr0112);
                           }
                           addr0174:
                           if(§§pop() == §§pop())
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     addr016f:
                     §§push(ServerResConst.RESOURCE_REALCURRENCY);
                  }
                  §§goto(addr0174);
               }
               §§goto(addr016f);
            }
            return null;
         }
         return _loc4_;
      }
      
      public function get configProxy() : GameConfigProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._cP);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr0055:
                     this._cP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._cP;
            }
         }
         §§goto(addr0055);
      }
      
      public function get goodStockProxy() : PlayerGoodsStockProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._gSP);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     this._gSP = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  }
               }
               addr0045:
               return this._gSP;
            }
         }
         §§goto(addr0045);
      }
      
      public function get resourceProxy() : PlayerResourceProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._pRP);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     addr003b:
                     this._pRP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               return this._pRP;
            }
         }
         §§goto(addr003b);
      }
      
      public function get boughtBoosterpackVo() : BoosterpackVo
      {
         return this._boughtBoosterpackVo;
      }
      
      public function set boughtBoosterpackVo(param1:BoosterpackVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._boughtBoosterpackVo = param1;
         }
      }
      
      public function get boosterpackTypes() : Vector.<String>
      {
         return this._boosterpackTypes;
      }
      
      private function serverTagConstantToBoosterType(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1);
         if(!_loc3_)
         {
            while(true)
            {
               var _loc2_:* = §§pop();
               if(_loc4_)
               {
                  if(ServerTagConstants.CLIENT_SUBLEVEL_BOOSTER_PACK === _loc2_)
                  {
                     addr0069:
                     §§push(0);
                     if(_loc4_ || _loc2_)
                     {
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  switch(§§pop())
                  {
                     case 0:
                        §§push(SUBLEVEL_BOOSTER);
                        if(!(_loc3_ && _loc2_))
                        {
                           return §§pop();
                        }
                        break;
                     default:
                        §§goto(addr0099);
                  }
               }
               §§goto(addr0069);
            }
         }
         addr0099:
         return STANDARD_BOOSTER;
      }
   }
}

