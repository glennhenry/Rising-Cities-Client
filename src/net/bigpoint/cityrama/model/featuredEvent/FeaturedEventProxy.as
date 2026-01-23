package net.bigpoint.cityrama.model.featuredEvent
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.cityWheel.CityWheelProxy;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelRewardVo;
   import net.bigpoint.cityrama.model.cityWheel.vo.CityWheelTabVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.ServerEventTypeConst;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedEventSideMenuVo;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedMysteryBuildingVo;
   import net.bigpoint.cityrama.model.featuredEvent.vo.FeaturedRunningEventVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.CityWheelRewardLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.CityWheelRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigCityWheelBuffDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FeaturedEventProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "FeaturedEventProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "FeaturedEventProxy";
      }
      
      private var _evP:EventProxy;
      
      private var _coP:GameConfigProxy;
      
      private var _stP:PlayerGoodsStockProxy;
      
      private var _tiP:TimerProxy;
      
      private var _resP:PlayerResourceProxy;
      
      private var _cWP:CityWheelProxy;
      
      private var _lSP:LocalStorageProxy;
      
      public function FeaturedEventProxy()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super(NAME);
         }
      }
      
      public static function isMysteryBuilding(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  addr0036:
                  §§push(param1.tags.indexOf(ServerTagConstants.MYSTERY) == -1);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(!§§pop());
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
               }
               else
               {
                  addr005a:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr005a);
         }
         §§goto(addr0036);
      }
      
      private static function getCityWheelRewardLibName(param1:CityWheelRewardDTO) : String
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(_loc6_)
         {
            if(param1)
            {
               addr01b3:
               var _loc4_:* = param1.type;
               if(!(_loc5_ && FeaturedEventProxy))
               {
                  §§push(ServerOutputConstants.GOOD);
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_ || FeaturedEventProxy)
                        {
                           §§push(0);
                           if(_loc5_ && Boolean(_loc3_))
                           {
                           }
                        }
                        else
                        {
                           addr02b1:
                           §§push(4);
                           if(_loc5_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerOutputConstants.IMPROVEMENT);
                        if(!_loc5_)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr02b1);
                              }
                           }
                           else
                           {
                              §§push(ServerOutputConstants.RESOURCE);
                              if(!_loc5_)
                              {
                                 addr0232:
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(2);
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr026a:
                                       §§push(3);
                                       if(_loc6_ || FeaturedEventProxy)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(ServerOutputConstants.PERMISSION);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             §§goto(addr026a);
                                          }
                                          else
                                          {
                                             §§goto(addr02b1);
                                          }
                                       }
                                       else
                                       {
                                          §§push(ServerOutputConstants.TAG);
                                          if(!(_loc5_ && FeaturedEventProxy))
                                          {
                                             addr0292:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc6_ || Boolean(param1))
                                                {
                                                   §§goto(addr02b1);
                                                }
                                                else
                                                {
                                                   addr02c9:
                                                   §§push(5);
                                                   if(_loc6_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr02e1);
                                             }
                                             else
                                             {
                                                §§goto(addr02c3);
                                             }
                                          }
                                          addr02c3:
                                          if(ServerOutputConstants.ASSIST === _loc4_)
                                          {
                                             §§goto(addr02c9);
                                          }
                                          else
                                          {
                                             §§push(6);
                                          }
                                          §§goto(addr02e1);
                                       }
                                       §§goto(addr02e1);
                                    }
                                    §§goto(addr02c3);
                                 }
                                 §§goto(addr02e1);
                              }
                              §§goto(addr02c3);
                           }
                           §§goto(addr02e1);
                        }
                        §§goto(addr0292);
                     }
                     addr02e1:
                     loop0:
                     while(true)
                     {
                        switch(§§pop())
                        {
                           case 0:
                              §§push("gui_resources_icons");
                              if(_loc6_ || Boolean(param1))
                              {
                                 return §§pop();
                              }
                              break;
                           case 1:
                              §§push("gui_improvements_small");
                              if(_loc6_)
                              {
                                 return §§pop();
                              }
                              addr00f6:
                              §§push(§§pop() + "_");
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 break;
                              }
                              addr0118:
                              return §§pop();
                              break;
                           case 2:
                              §§push("gui_resources_icons");
                              if(_loc6_ || FeaturedEventProxy)
                              {
                                 return §§pop();
                              }
                              §§goto(addr00f6);
                              break;
                           case 3:
                              §§push(Math.ceil(param1.playfieldItemConfig.gfxId / 5) * 5);
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc6_ || FeaturedEventProxy))
                                 {
                                    continue;
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc6_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc5_ && Boolean(_loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr00c9);
                                 }
                                 §§goto(addr017b);
                              }
                              addr00c9:
                              §§push(int(§§pop() - 4));
                              if(!_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc6_)
                                 {
                                    §§push("gui_popups_architect_");
                                    if(!(_loc5_ && FeaturedEventProxy))
                                    {
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc5_)
                                          {
                                             §§goto(addr00f6);
                                          }
                                          §§goto(addr0118);
                                       }
                                       addr0109:
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_ && Boolean(_loc2_))
                                       {
                                          break loop0;
                                       }
                                       §§goto(addr0118);
                                    }
                                 }
                                 else
                                 {
                                    addr0137:
                                    §§push(Boolean(param1.assistConfig));
                                    if(_loc6_ || Boolean(param1))
                                    {
                                       var _temp_18:* = §§pop();
                                       §§push(_temp_18);
                                       if(_temp_18)
                                       {
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             addr016c:
                                             §§pop();
                                             if(!(_loc5_ && FeaturedEventProxy))
                                             {
                                                addr0188:
                                                addr017b:
                                                if(param1.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push("gui_popups_rentCollector");
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr019b);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr02fd:
                                                      §§push("");
                                                   }
                                                   §§goto(addr02ff);
                                                }
                                             }
                                             §§goto(addr02fd);
                                          }
                                       }
                                       §§goto(addr0188);
                                    }
                                    §§goto(addr016c);
                                 }
                                 addr02ff:
                              }
                              continue;
                              return §§pop();
                           case 5:
                              §§goto(addr0137);
                           case 4:
                              §§push("");
                              if(_loc6_)
                              {
                                 break loop0;
                              }
                              addr019b:
                              return §§pop();
                              break;
                           default:
                              §§goto(addr02fd);
                        }
                        §§goto(addr0109);
                     }
                     return §§pop();
                  }
                  §§goto(addr0232);
               }
               §§goto(addr026a);
            }
            §§goto(addr02fd);
         }
         §§goto(addr01b3);
      }
      
      public function get mysteryBuildingRunning() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this.mysteryBuildingRunningEventVo == null);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      public function get cityWheelRunning() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.cityWheelProxy);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr0033);
                  }
               }
               §§goto(addr00b0);
            }
            addr0033:
            §§push(this.cityWheelProxy.rewardsReadyToCollect);
            if(_loc1_)
            {
               §§push(§§pop());
               if(!(_loc2_ && Boolean(this)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr006b:
                           §§push(this.getCurrentRunningEventByType(ServerEventTypeConst.WHEEL));
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(null);
                              if(_loc1_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00a1:
                                    §§push(!§§pop());
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§goto(addr00af);
                                    }
                                 }
                                 addr00ca:
                                 return !§§pop();
                              }
                              else
                              {
                                 addr00bc:
                                 §§push(§§pop() == §§pop());
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§goto(addr00ca);
                                 }
                              }
                              return §§pop();
                           }
                           addr00bb:
                           §§push(null);
                           §§goto(addr00bc);
                        }
                        else
                        {
                           addr00b0:
                           §§push(this.getCurrentRunningEventByType(ServerEventTypeConst.WHEEL));
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr00ca);
            }
            addr00af:
            return §§pop();
         }
         §§goto(addr006b);
      }
      
      public function get featuredEventSideMenuVo() : FeaturedEventSideMenuVo
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Vector.<FeaturedRunningEventVo> = null;
         var _loc1_:FeaturedEventSideMenuVo = new FeaturedEventSideMenuVo();
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            if(this.cityWheelProxy)
            {
               if(!_loc4_)
               {
                  addr003d:
                  _loc1_.wheelRewardsWaiting = this.cityWheelProxy.rewardsReadyToCollect;
                  if(!_loc4_)
                  {
                     §§goto(addr004e);
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0071);
            }
            addr004e:
            if(_loc1_.wheelRewardsWaiting)
            {
               if(_loc3_)
               {
                  return _loc1_;
               }
               addr0071:
               _loc2_ = new Vector.<FeaturedRunningEventVo>();
               if(!(_loc4_ && _loc3_))
               {
                  if(this.mysteryBuildingRunningEventVo)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc2_.push(this.mysteryBuildingRunningEventVo);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr00c3:
                           if(this.cityWheelRunningEventVo)
                           {
                              if(!(_loc4_ && Boolean(_loc1_)))
                              {
                                 _loc2_.push(this.cityWheelRunningEventVo);
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00ee:
                                    _loc1_.featuredEvents = _loc2_;
                                    if(!(_loc4_ && Boolean(_loc1_)))
                                    {
                                       if(_loc2_.length)
                                       {
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             if(this.localStorageProxy.userdata.seenFeaturedEvents.indexOf(_loc1_.currentRunningEventType + _loc1_.timerVo.startTime) == -1)
                                             {
                                                if(_loc3_ || Boolean(_loc1_))
                                                {
                                                   addr0151:
                                                   _loc1_.showNew = true;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr0156);
                                 }
                                 §§goto(addr0151);
                              }
                              §§goto(addr0156);
                           }
                           §§goto(addr00ee);
                        }
                        §§goto(addr0151);
                     }
                     §§goto(addr0156);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr0151);
            }
            else
            {
               addr0062:
               if(this.eventProxy.listOfRunningGlobalEvents.length > 0)
               {
                  §§goto(addr0071);
               }
            }
            addr0156:
            return _loc1_;
         }
         §§goto(addr003d);
      }
      
      public function get cityWheelDrawnRewards() : ArrayCollection
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:ArrayCollection = null;
         var _loc2_:ConfigCityWheelBuffDTO = null;
         var _loc3_:ConfigCityWheelBuffDTO = null;
         var _loc4_:CityWheelRewardDTO = null;
         if(_loc7_)
         {
            §§push(this.cityWheelProxy);
            if(_loc7_ || Boolean(_loc1_))
            {
               if(§§pop())
               {
                  if(_loc7_ || Boolean(_loc3_))
                  {
                     addr0056:
                     if(this.cityWheelProxy.rewardsReadyToCollect)
                     {
                        addr005d:
                        _loc1_ = new ArrayCollection();
                        _loc2_ = this.cityWheelProxy.drawnBuff;
                        if(_loc7_)
                        {
                           if(_loc2_ != null)
                           {
                              if(_loc7_)
                              {
                                 if(_loc2_.isMultiplier)
                                 {
                                    addr0099:
                                    _loc3_ = _loc2_;
                                 }
                                 addr009e:
                                 for each(_loc4_ in this.cityWheelProxy.drawnRewards)
                                 {
                                    if(!(_loc8_ && Boolean(_loc2_)))
                                    {
                                       _loc1_.addItem(RewardLayerProxy.getRewardVoByOutputDTO(_loc4_,RewardItemComponentVo.SIZE_SMALL,false,_loc3_));
                                    }
                                    _loc3_ = null;
                                 }
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    return _loc1_;
                                 }
                                 §§goto(addr010e);
                              }
                              §§goto(addr0099);
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr010e);
                  }
                  §§goto(addr005d);
               }
               addr010e:
               return null;
            }
            §§goto(addr0056);
         }
         §§goto(addr005d);
      }
      
      public function get cityWheelRewardLayerVo() : CityWheelRewardLayerVo
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:CityWheelRewardLayerVo = null;
         var _loc3_:Vector.<DropInfoVo> = null;
         var _loc4_:DropInfoVo = null;
         var _loc5_:CityWheelRewardDTO = null;
         var _loc1_:ArrayCollection = this.cityWheelDrawnRewards;
         if(_loc8_)
         {
            if(_loc1_)
            {
               addr003d:
               _loc2_ = new CityWheelRewardLayerVo();
               _loc3_ = new Vector.<DropInfoVo>();
               if(_loc8_ || Boolean(_loc3_))
               {
                  _loc2_.drawnRewards = this.cityWheelDrawnRewards;
               }
               for each(_loc5_ in this.cityWheelProxy.drawnRewards)
               {
                  _loc4_ = RewardLayerProxy.generateDropInfo(_loc5_);
                  if(_loc4_)
                  {
                     if(_loc8_)
                     {
                        _loc3_.push(_loc4_);
                     }
                  }
               }
               if(!(_loc9_ && Boolean(_loc3_)))
               {
                  _loc2_.rewardDrops = _loc3_;
                  if(!_loc9_)
                  {
                     return _loc2_;
                  }
               }
            }
            return null;
         }
         §§goto(addr003d);
      }
      
      public function get cityWheelTabVo() : CityWheelTabVo
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc1_:CityWheelTabVo = null;
         var _loc2_:CityWheelRewardVo = null;
         var _loc3_:Vector.<CityWheelRewardVo> = null;
         var _loc4_:CityWheelRewardDTO = null;
         var _loc5_:Vector.<ConfigCityWheelBuffDTO> = null;
         var _loc6_:ConfigCityWheelBuffDTO = null;
         var _loc7_:Vector.<GoodObjectVo> = null;
         var _loc8_:Vector.<GoodObjectVo> = null;
         var _loc9_:ConfigEventDTO = null;
         var _loc10_:TimerBarComponentVo = null;
         if(!(_loc14_ && Boolean(this)))
         {
            §§push(this.cityWheelProxy);
            if(_loc13_ || Boolean(_loc2_))
            {
               if(§§pop())
               {
                  if(!_loc14_)
                  {
                     §§push(this.cityWheelProxy);
                     if(_loc13_)
                     {
                        addr0082:
                        §§push(§§pop().possibleRewards == null);
                        if(!_loc14_)
                        {
                           var _temp_3:* = §§pop();
                           §§push(_temp_3);
                           if(!_temp_3)
                           {
                              if(_loc13_)
                              {
                                 addr0098:
                                 §§pop();
                                 if(!_loc14_)
                                 {
                                    addr00ab:
                                    addr00a3:
                                    addr009f:
                                    if(this.cityWheelProxy.possibleRewards.length == 0)
                                    {
                                       if(_loc13_ || Boolean(_loc3_))
                                       {
                                          §§goto(addr00bd);
                                       }
                                    }
                                 }
                                 _loc1_ = new CityWheelTabVo();
                                 _loc3_ = new Vector.<CityWheelRewardVo>();
                                 for each(_loc4_ in this.cityWheelProxy.possibleRewards)
                                 {
                                    _loc2_ = new CityWheelRewardVo();
                                    if(!_loc14_)
                                    {
                                       _loc2_.rewardDTO = _loc4_;
                                       if(_loc14_)
                                       {
                                          continue;
                                       }
                                    }
                                    _loc2_.iconName = this.getCityWheelRewardIconName(_loc4_);
                                    if(!_loc14_)
                                    {
                                       _loc2_.libName = getCityWheelRewardLibName(_loc4_);
                                       if(!(_loc13_ || Boolean(_loc3_)))
                                       {
                                          continue;
                                       }
                                    }
                                    _loc3_.push(_loc2_);
                                 }
                                 if(_loc13_ || Boolean(_loc2_))
                                 {
                                    _loc1_.lottery = _loc3_;
                                 }
                                 _loc5_ = new Vector.<ConfigCityWheelBuffDTO>();
                                 if(!_loc14_)
                                 {
                                    var _loc11_:int = 0;
                                    if(_loc13_)
                                    {
                                       for each(_loc6_ in this.configProxy.config.configCityWheelDTO.wheelBuffs)
                                       {
                                          if(!(_loc14_ && Boolean(_loc3_)))
                                          {
                                             _loc5_.push(_loc6_);
                                          }
                                       }
                                    }
                                    if(_loc13_ || Boolean(_loc1_))
                                    {
                                       addr01dd:
                                       _loc1_.buffs = _loc5_;
                                    }
                                    _loc7_ = this.goodStockProxy.getAllGoodsByTag(ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN);
                                    if(_loc7_.length > 0)
                                    {
                                       if(_loc13_ || Boolean(_loc3_))
                                       {
                                          _loc1_.numSpinTokens = _loc7_[0].playerStock;
                                       }
                                    }
                                    _loc8_ = this.goodStockProxy.getAllGoodsByTag(ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN);
                                    if(_loc8_.length > 0)
                                    {
                                       if(!_loc14_)
                                       {
                                          _loc1_.numBuffTokens = _loc8_[0].playerStock;
                                       }
                                    }
                                    _loc9_ = this.getCurrentRunningEventByType(ServerEventTypeConst.WHEEL);
                                    if(_loc9_)
                                    {
                                       if(!(_loc14_ && Boolean(_loc2_)))
                                       {
                                          _loc10_ = new TimerBarComponentVo();
                                          _loc10_.cycleLength = _loc9_.totalAvailabilityTime;
                                          if(!(_loc14_ && Boolean(_loc2_)))
                                          {
                                             _loc10_.startTime = _loc9_.availabilityTimeStart;
                                             if(!_loc14_)
                                             {
                                                §§push(_loc10_);
                                                §§push(_loc10_.startTime);
                                                if(_loc13_ || Boolean(this))
                                                {
                                                   §§push(§§pop() + _loc10_.cycleLength);
                                                }
                                                §§pop().targetTime = §§pop();
                                                if(!_loc14_)
                                                {
                                                   addr02cf:
                                                   _loc10_.currentTime = this.timerProxy.currentTimeStamp;
                                                   if(!_loc14_)
                                                   {
                                                      addr02e1:
                                                      _loc1_.availabilityTimer = _loc10_;
                                                   }
                                                }
                                                §§goto(addr02e7);
                                             }
                                             §§goto(addr02cf);
                                          }
                                          §§goto(addr02e1);
                                       }
                                       else
                                       {
                                          §§goto(addr02e9);
                                       }
                                    }
                                    addr02e7:
                                    return _loc1_;
                                 }
                                 §§goto(addr01dd);
                              }
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00a3);
                  }
                  addr00bd:
                  return null;
               }
               addr02e9:
               return null;
            }
            §§goto(addr0082);
         }
         §§goto(addr009f);
      }
      
      public function get featuredMysteryBuildingVo() : FeaturedMysteryBuildingVo
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc2_:FeaturedMysteryBuildingVo = null;
         var _loc3_:ConfigEventDTO = null;
         var _loc4_:Vector.<ConfigPlayfieldItemDTO> = null;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:TimerBarComponentVo = null;
         var _loc1_:ConfigPlayfieldItemDTO = this.featuredPlayfieldItem;
         if(_loc10_)
         {
            if(_loc1_)
            {
               if(!(_loc9_ && Boolean(this)))
               {
                  if(isMysteryBuilding(_loc1_))
                  {
                     addr005e:
                     _loc2_ = new FeaturedMysteryBuildingVo();
                     _loc3_ = this.getCurrentRunningEventByType(ServerEventTypeConst.PERMISSION);
                     if(_loc10_)
                     {
                        _loc2_.mysteryConfigPlayfieldItem = _loc1_;
                        if(!(_loc9_ && Boolean(_loc1_)))
                        {
                           if(_loc3_)
                           {
                              if(!_loc9_)
                              {
                                 if(_loc2_.mysteryConfigPlayfieldItem.unlockLevel <= this.resourceProxy.userLevel)
                                 {
                                    if(!(_loc9_ && Boolean(_loc1_)))
                                    {
                                       _loc2_.permissionAmount = this.goodStockProxy.getPermissionAmountByConfigId(_loc2_.mysteryConfigPlayfieldItem.permissionConfigId);
                                       if(!_loc9_)
                                       {
                                          addr00d5:
                                          _loc2_.rcStock = this.resourceProxy.realCurrency;
                                       }
                                    }
                                    _loc4_ = new Vector.<ConfigPlayfieldItemDTO>();
                                    for each(_loc5_ in _loc1_.mysteryOutputPossiblities)
                                    {
                                       if(_loc5_.playfieldItemConfig)
                                       {
                                          if(!(_loc9_ && Boolean(_loc3_)))
                                          {
                                             _loc4_.push(_loc5_.playfieldItemConfig);
                                          }
                                       }
                                    }
                                    if(_loc10_)
                                    {
                                       _loc2_.possibleOutcome = _loc4_;
                                    }
                                    _loc6_ = new TimerBarComponentVo();
                                    _loc6_.cycleLength = _loc3_.totalAvailabilityTime;
                                    if(!_loc9_)
                                    {
                                       _loc6_.startTime = _loc3_.availabilityTimeStart;
                                       if(_loc10_)
                                       {
                                          §§push(_loc6_);
                                          §§push(_loc6_.startTime);
                                          if(!(_loc9_ && Boolean(this)))
                                          {
                                             §§push(§§pop() + _loc6_.cycleLength);
                                          }
                                          §§pop().targetTime = §§pop();
                                          if(_loc10_)
                                          {
                                             _loc6_.currentTime = this.timerProxy.currentTimeStamp;
                                             if(!(_loc9_ && Boolean(_loc1_)))
                                             {
                                                _loc2_.availabilityTimer = _loc6_;
                                                addr01b4:
                                                if(_loc10_ || Boolean(_loc3_))
                                                {
                                                   addr01d5:
                                                   if(_loc6_.targetTime > _loc6_.currentTime)
                                                   {
                                                      return _loc2_;
                                                   }
                                                   if(_loc10_)
                                                   {
                                                      §§goto(addr01e9);
                                                   }
                                                }
                                                §§goto(addr01f3);
                                             }
                                             §§goto(addr01d5);
                                          }
                                          §§goto(addr01f3);
                                       }
                                       §§goto(addr01b4);
                                    }
                                    addr01e9:
                                    return null;
                                 }
                                 §§goto(addr01f3);
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr01f3);
                        }
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr01f3);
               }
               §§goto(addr005e);
            }
            addr01f3:
            return null;
         }
         §§goto(addr005e);
      }
      
      private function get mysteryBuildingRunningEventVo() : FeaturedRunningEventVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:FeaturedRunningEventVo = null;
         var _loc2_:ConfigEventDTO = null;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            §§push(this.featuredPlayfieldItem);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr003e:
                     if(isMysteryBuilding(this.featuredPlayfieldItem))
                     {
                        if(_loc4_)
                        {
                           addr0053:
                           addr0057:
                           if(this.featuredPlayfieldItem.unlockLevel <= this.resourceProxy.userLevel)
                           {
                              _loc1_ = new FeaturedRunningEventVo();
                              addr0065:
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 _loc1_.type = FeaturedRunningEventVo.FEATURED_MYSTERY;
                              }
                              _loc2_ = this.getCurrentRunningEventByType(ServerEventTypeConst.PERMISSION);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc1_.timerVo = this.getFeaturedEventTimerVo(_loc2_);
                                       if(!_loc3_)
                                       {
                                          addr00d4:
                                          if(_loc1_.timerVo.targetTime > _loc1_.timerVo.currentTime)
                                          {
                                             return _loc1_;
                                          }
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             return null;
                                          }
                                       }
                                       §§goto(addr00fd);
                                    }
                                    §§goto(addr00d4);
                                 }
                              }
                           }
                           §§goto(addr00fd);
                        }
                        §§goto(addr0065);
                     }
                     §§goto(addr00fd);
                  }
                  §§goto(addr0053);
               }
               addr00fd:
               return null;
            }
            §§goto(addr0057);
         }
         §§goto(addr003e);
      }
      
      private function get cityWheelRunningEventVo() : FeaturedRunningEventVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FeaturedRunningEventVo = null;
         var _loc1_:ConfigEventDTO = this.getCurrentRunningEventByType(ServerEventTypeConst.WHEEL);
         if(!_loc3_)
         {
            §§push(Boolean(_loc1_));
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0089);
            }
            addr0059:
            §§pop();
            if(_loc4_ || Boolean(this))
            {
               addr0089:
               §§push(FeatureProxy(facade.retrieveProxy(FeatureProxy.NAME)).isFeatureEnabled(ServerFeatureConstants.CITYWHEEL));
               if(!_loc3_)
               {
                  addr0088:
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  §§goto(addr008d);
               }
               §§goto(addr00d3);
            }
            §§goto(addr008d);
         }
         addr008d:
         _loc2_ = new FeaturedRunningEventVo();
         if(_loc4_ || Boolean(this))
         {
            _loc2_.type = FeaturedRunningEventVo.FEATURED_WHEEL;
            if(!_loc3_)
            {
               _loc2_.timerVo = this.getFeaturedEventTimerVo(_loc1_);
               if(!_loc4_)
               {
                  addr00d3:
                  return null;
               }
            }
         }
         return _loc2_;
      }
      
      private function getFeaturedEventTimerVo(param1:ConfigEventDTO) : TimerBarComponentVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:TimerBarComponentVo = null;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(param1)
            {
               addr002b:
               _loc2_ = new TimerBarComponentVo();
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc2_.cycleLength = param1.totalAvailabilityTime;
                  if(!_loc3_)
                  {
                     addr005b:
                     _loc2_.startTime = param1.availabilityTimeStart;
                     if(!_loc3_)
                     {
                        §§goto(addr0068);
                     }
                     §§goto(addr00b8);
                  }
                  addr0068:
                  §§push(_loc2_);
                  §§push(_loc2_.startTime);
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(§§pop() + _loc2_.cycleLength);
                  }
                  §§pop().targetTime = §§pop();
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc2_.currentTime = this.timerProxy.currentTimeStamp;
                     if(!(_loc4_ || _loc3_))
                     {
                        §§goto(addr00b8);
                     }
                  }
                  return _loc2_;
               }
               §§goto(addr005b);
            }
            addr00b8:
            return null;
         }
         §§goto(addr002b);
      }
      
      public function get featuredPlayfieldItem() : ConfigPlayfieldItemDTO
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:ConfigPlayfieldItemPermissionDTO = null;
         var _loc2_:ConfigEventDTO = null;
         var _loc3_:ConfigPlayfieldItemPermissionDTO = null;
         if(!_loc7_)
         {
            if(this.eventProxy.listOfRunningGlobalEvents.length > 0)
            {
               addr0037:
               _loc2_ = this.getCurrentRunningEventByType(ServerEventTypeConst.PERMISSION);
               if(!_loc7_)
               {
                  if(_loc2_)
                  {
                     addr0051:
                     for each(_loc3_ in this.configProxy.config.permissions)
                     {
                        if(_loc6_ || Boolean(_loc1_))
                        {
                           if(_loc3_.eventIdList.length > 0)
                           {
                              if(!_loc7_)
                              {
                                 addr009b:
                                 if(_loc3_.eventIdList.indexOf(_loc2_.id) == -1)
                                 {
                                    continue;
                                 }
                              }
                              _loc1_ = _loc3_;
                              break;
                           }
                           continue;
                        }
                        §§goto(addr009b);
                     }
                     if(_loc6_)
                     {
                        if(_loc1_)
                        {
                           if(_loc6_)
                           {
                              return this.configProxy.getConfigPlayfieldItemsByPermissionId(_loc1_.id)[0];
                           }
                        }
                     }
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr0051);
            }
            addr00ef:
            return null;
         }
         §§goto(addr0037);
      }
      
      private function getCurrentRunningEventByType(param1:String) : ConfigEventDTO
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigEventDTO = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.eventProxy.listOfRunningGlobalEvents;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.eventType == param1)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._coP);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr0042:
                     this._coP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._coP;
            }
         }
         §§goto(addr0042);
      }
      
      private function get eventProxy() : EventProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._evP);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr003a:
                     this._evP = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                  }
               }
               return this._evP;
            }
         }
         §§goto(addr003a);
      }
      
      private function get goodStockProxy() : PlayerGoodsStockProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._stP);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this._stP = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  }
               }
               addr0054:
               return this._stP;
            }
         }
         §§goto(addr0054);
      }
      
      private function get timerProxy() : TimerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._tiP);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this._tiP = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  }
               }
               addr0053:
               return this._tiP;
            }
         }
         §§goto(addr0053);
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._resP);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr0032:
                     this._resP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               return this._resP;
            }
         }
         §§goto(addr0032);
      }
      
      private function get cityWheelProxy() : CityWheelProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._cWP);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this._cWP = facade.retrieveProxy(CityWheelProxy.NAME) as CityWheelProxy;
                  }
               }
               addr0043:
               return this._cWP;
            }
         }
         §§goto(addr0043);
      }
      
      private function get localStorageProxy() : LocalStorageProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._lSP);
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this._lSP = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
                  }
               }
               addr0053:
               return this._lSP;
            }
         }
         §§goto(addr0053);
      }
      
      private function getCityWheelRewardIconName(param1:CityWheelRewardDTO) : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            if(param1)
            {
               addr026f:
               var _loc2_:* = param1.type;
               if(!(_loc4_ && _loc3_))
               {
                  §§push(ServerOutputConstants.GOOD);
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           §§push(0);
                           if(_loc4_ && Boolean(param1))
                           {
                           }
                        }
                        else
                        {
                           addr035e:
                           §§push(4);
                           if(_loc4_ && Boolean(_loc2_))
                           {
                           }
                        }
                        addr037e:
                        switch(§§pop())
                        {
                           case 0:
                              §§push("ressource_");
                              if(_loc3_)
                              {
                                 §§push(§§pop() + param1.goodConfig.gfxId);
                                 if(_loc4_)
                                 {
                                    §§goto(addr01bb);
                                 }
                              }
                              §§push("_medium");
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr00d2);
                              }
                              else
                              {
                                 addr0218:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc3_ || Boolean(this)))
                                 {
                                    break;
                                 }
                                 §§goto(addr0226);
                              }
                              break;
                           case 1:
                              §§push("improvement_small_");
                              if(_loc3_)
                              {
                                 §§push(§§pop() + param1.improvementConfig.gfxId);
                                 if(_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr0165);
                              }
                              else
                              {
                                 §§goto(addr00d2);
                              }
                              break;
                           case 2:
                              §§push(this.configProxy);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop().config);
                                 if(_loc3_)
                                 {
                                    if(§§pop().resourceStrings[param1.resourceConfig.id] == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push("vc_icon_medium");
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             addr00d2:
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          addr0131:
                                          §§push(this.configProxy);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop().config);
                                             if(!_loc4_)
                                             {
                                                if(§§pop().resourceStrings[param1.resourceConfig.id] == ServerResConst.RESOURCE_PRODUCTIONPOINTS)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push("pp_icon_medium");
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr0165);
                                                      }
                                                      else
                                                      {
                                                         addr0207:
                                                         §§push(§§pop() + param1.playfieldItemConfig.gfxId);
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr0218);
                                                            §§push("_small");
                                                         }
                                                         §§goto(addr0226);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.configProxy);
                                                   if(_loc3_ || Boolean(param1))
                                                   {
                                                      addr0184:
                                                      §§push(§§pop().config);
                                                      if(!_loc4_)
                                                      {
                                                         addr018c:
                                                         if(§§pop().resourceStrings[param1.resourceConfig.id] == ServerResConst.RESOURCE_EDUCATIONPOINTS)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               §§push("ep_icon_medium");
                                                               if(_loc4_)
                                                               {
                                                                  addr0226:
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr01bb);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr01c7:
                                                            addr01c5:
                                                            if(this.configProxy.config.resourceStrings[param1.resourceConfig.id] == ServerResConst.RESOURCE_EXPERIENCE)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push("xp_icon_medium");
                                                                  if(!_loc4_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr0207);
                                                               }
                                                               else
                                                               {
                                                                  addr026a:
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0397);
                                                      }
                                                      §§goto(addr01c7);
                                                   }
                                                   §§goto(addr01c5);
                                                }
                                                §§goto(addr0397);
                                             }
                                             §§goto(addr01c7);
                                          }
                                          §§goto(addr0184);
                                       }
                                       addr01bb:
                                       return §§pop();
                                    }
                                    §§push(this.configProxy);
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       §§push(§§pop().config);
                                       if(_loc3_ || Boolean(param1))
                                       {
                                          if(§§pop().resourceStrings[param1.resourceConfig.id] == ServerResConst.RESOURCE_REALCURRENCY)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push("rc_icon_medium");
                                                if(_loc3_ || Boolean(param1))
                                                {
                                                   return §§pop();
                                                }
                                                addr0165:
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr0131);
                                          }
                                          §§goto(addr0397);
                                       }
                                       §§goto(addr01c7);
                                    }
                                    §§goto(addr0184);
                                 }
                                 §§goto(addr018c);
                              }
                              §§goto(addr0184);
                           case 4:
                              if(param1.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
                              {
                                 if(_loc3_)
                                 {
                                    §§push("rentCollector_small_");
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break;
                                    }
                                    §§goto(addr025b);
                                 }
                              }
                              else
                              {
                                 §§goto(addr026a);
                              }
                              §§goto(addr0397);
                           default:
                              §§goto(addr026a);
                           case 3:
                              §§push("FieldItem_");
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr0207);
                        }
                        addr025b:
                        return §§pop();
                        §§push(§§pop() + param1.assistConfig.gfxId);
                     }
                     else
                     {
                        §§push(ServerOutputConstants.IMPROVEMENT);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr02cf:
                           if(§§pop() === _loc2_)
                           {
                              if(!_loc4_)
                              {
                                 §§push(1);
                                 if(_loc3_ || Boolean(this))
                                 {
                                 }
                              }
                              else
                              {
                                 addr033d:
                                 §§push(3);
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerOutputConstants.RESOURCE);
                              if(_loc3_)
                              {
                                 addr02f8:
                                 if(§§pop() === _loc2_)
                                 {
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       addr030b:
                                       §§push(2);
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr035e);
                                    }
                                    §§goto(addr037e);
                                 }
                                 else
                                 {
                                    §§push(ServerOutputConstants.PERMISSION);
                                    if(!(_loc4_ && Boolean(param1)))
                                    {
                                       addr032a:
                                       if(§§pop() === _loc2_)
                                       {
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             §§goto(addr033d);
                                          }
                                          else
                                          {
                                             §§goto(addr035e);
                                          }
                                       }
                                       else
                                       {
                                          addr0359:
                                          if(ServerOutputConstants.ASSIST === _loc2_)
                                          {
                                             §§goto(addr035e);
                                          }
                                          else
                                          {
                                             §§push(5);
                                          }
                                          §§goto(addr037e);
                                       }
                                       §§goto(addr035e);
                                    }
                                    §§goto(addr0359);
                                 }
                              }
                              §§goto(addr032a);
                           }
                           §§goto(addr037e);
                        }
                        §§goto(addr02f8);
                     }
                     §§goto(addr035e);
                  }
                  §§goto(addr02cf);
               }
               §§goto(addr030b);
            }
            addr0397:
            throw new RamaCityError("This type of reward was not expected!! Please tell gamedesign to check the editor");
         }
         §§goto(addr026f);
      }
   }
}

