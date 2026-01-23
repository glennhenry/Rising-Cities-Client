package net.bigpoint.cityrama.controller.uiInfolayer
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementEfficiencyVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.PlayfieldItemUiInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SpecificPlayfieldItemModifiedValueVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.SpecificPlayfieldItemUiInfolayerContentVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowPlayfieldItemInUiInfolayerCommand extends SimpleCommand
   {
      
      public function ShowPlayfieldItemInUiInfolayerCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc10_:BuildingDTO = null;
         var _loc11_:DecorationVo = null;
         var _loc12_:PlayfieldItemUiInfolayerContentVo = null;
         var _loc13_:PlayfieldObjectsProxy = null;
         var _loc14_:EmergencyProxy = null;
         var _loc15_:SpecificPlayfieldItemModifiedValueVo = null;
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc4_:PlayerGoodsStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         var _loc5_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc6_:Number = Number(param1.getBody().cid);
         var _loc7_:Point = Point(param1.getBody().pt);
         var _loc8_:uint = uint(param1.getBody().lineId);
         var _loc9_:ConfigPlayfieldItemDTO = ConfigPlayfieldItemDTO(param1.getBody().cpidto);
         if(!_loc9_)
         {
            if(!_loc16_)
            {
               _loc9_ = _loc2_.config.items[_loc6_];
               addr00de:
               if(param1.getBody().bDTO)
               {
                  if(_loc17_)
                  {
                     _loc10_ = BuildingDTO(param1.getBody().bDTO);
                     addr0104:
                     if(param1.getBody().dVo)
                     {
                        if(_loc17_ || Boolean(_loc3_))
                        {
                           addr011e:
                           _loc11_ = DecorationVo(param1.getBody().dVo);
                           addr0132:
                           §§push(Boolean(_loc10_));
                           if(_loc17_)
                           {
                              var _temp_4:* = §§pop();
                              §§push(_temp_4);
                              if(!_temp_4)
                              {
                                 if(_loc17_)
                                 {
                                    §§pop();
                                    if(!(_loc16_ && Boolean(_loc3_)))
                                    {
                                       addr0164:
                                       if(Boolean(_loc11_))
                                       {
                                          if(_loc17_)
                                          {
                                             addr016e:
                                             if(_loc10_)
                                             {
                                                if(!(_loc16_ && Boolean(_loc3_)))
                                                {
                                                   addr0182:
                                                   _loc15_ = this.modifyValues(_loc10_);
                                                   _loc12_ = new SpecificPlayfieldItemUiInfolayerContentVo(_loc8_,_loc7_,_loc9_,_loc10_.currentMasteryChallenge,"",_loc3_.currentTimeStamp,_loc15_);
                                                }
                                                else
                                                {
                                                   addr01b8:
                                                   _loc12_ = new SpecificPlayfieldItemUiInfolayerContentVo(_loc8_,_loc7_,_loc9_,null,"",_loc3_.currentTimeStamp,null);
                                                }
                                             }
                                             else if(_loc11_)
                                             {
                                                §§goto(addr01b8);
                                             }
                                             _loc13_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                                             if(_loc13_.infrastructureBuildingList.length == 0)
                                             {
                                                if(_loc17_)
                                                {
                                                   SpecificPlayfieldItemUiInfolayerContentVo(_loc12_).emergencyFeatureDisabled = true;
                                                }
                                             }
                                             _loc14_ = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
                                             if(_loc17_ || Boolean(_loc2_))
                                             {
                                                SpecificPlayfieldItemUiInfolayerContentVo(_loc12_).emergencyRunning = _loc14_.emergencyActivelyRunning;
                                                if(_loc17_)
                                                {
                                                   addr0256:
                                                   _loc12_.permission = _loc4_.getPermissionByConfigId(_loc9_.permissionConfigId);
                                                   if(_loc17_ || Boolean(_loc3_))
                                                   {
                                                      _loc12_.userLevel = _loc5_.userLevel;
                                                      if(!_loc16_)
                                                      {
                                                         if(param1.getBody().isReward)
                                                         {
                                                            if(!(_loc16_ && Boolean(param1)))
                                                            {
                                                               §§goto(addr02ab);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr02c6);
                                                   }
                                                }
                                                addr02ab:
                                                _loc12_.isReward = param1.getBody().isReward;
                                                if(!(_loc16_ && Boolean(this)))
                                                {
                                                   addr02c6:
                                                   sendNotification(ApplicationNotificationConstants.SHOW_UI_INFOLAYER,_loc12_,param1.getType());
                                                }
                                                return;
                                             }
                                             §§goto(addr02c6);
                                          }
                                          §§goto(addr0182);
                                       }
                                       else
                                       {
                                          _loc12_ = new PlayfieldItemUiInfolayerContentVo(_loc8_,_loc7_,_loc9_,null,"",_loc3_.currentTimeStamp);
                                       }
                                       §§goto(addr0256);
                                    }
                                    §§goto(addr0182);
                                 }
                              }
                           }
                           §§goto(addr0164);
                        }
                        §§goto(addr016e);
                     }
                     §§goto(addr0132);
                  }
                  §§goto(addr011e);
               }
               §§goto(addr0104);
            }
            §§goto(addr011e);
         }
         §§goto(addr00de);
      }
      
      private function modifyValues(param1:BuildingDTO) : SpecificPlayfieldItemModifiedValueVo
      {
         §§push(false);
         var _loc19_:Boolean = true;
         var _loc20_:* = §§pop();
         var _loc8_:PhaseDTO = null;
         var _loc9_:* = NaN;
         var _loc10_:PhaseDTO = null;
         var _loc11_:GameConfigProxy = null;
         var _loc12_:Vector.<ImprovementVo> = null;
         var _loc13_:ImprovementVo = null;
         var _loc14_:ImprovementDTO = null;
         var _loc15_:Object = null;
         var _loc16_:ConfigOutputDTO = null;
         var _loc2_:SpecificPlayfieldItemModifiedValueVo = new SpecificPlayfieldItemModifiedValueVo();
         var _loc3_:PlayfieldItemUiInfolayerContentVo = new PlayfieldItemUiInfolayerContentVo(0,new Point(),param1.config,param1.currentMasteryChallenge);
         var _loc4_:GlobalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
         §§push(param1.config.tags.indexOf(ServerTagConstants.RESIDENTIAL) == -1);
         if(!_loc20_)
         {
            §§push(!§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc5_)
         {
            if(_loc19_ || Boolean(_loc2_))
            {
               §§push(Math.ceil(_loc3_.infoLayerConfigPlayfieldItemVo.baseharvestOutput.outputAmount * _loc4_.happinessOutputModifier));
               if(!_loc20_)
               {
                  _loc9_ = §§pop();
                  addr00c8:
                  §§push(_loc3_.infoLayerConfigPlayfieldItemVo.energyValue);
                  if(!_loc20_)
                  {
                     §§push(§§pop());
                  }
               }
               var _loc6_:* = §§pop();
               §§push(_loc3_.infoLayerConfigPlayfieldItemVo.moodValue);
               if(_loc19_)
               {
                  §§push(§§pop());
               }
               var _loc7_:* = §§pop();
               if(_loc19_ || Boolean(this))
               {
                  if(param1.activePhases.length)
                  {
                     addr0100:
                     for each(_loc10_ in param1.activePhases)
                     {
                        if(!_loc10_)
                        {
                           continue;
                        }
                        if(_loc19_ || Boolean(param1))
                        {
                           §§push(_loc10_.config);
                           if(!_loc20_)
                           {
                              §§push(§§pop().phaseType);
                              if(_loc19_)
                              {
                                 §§push(ServerPhaseTypes.RESIDENTIAL);
                                 if(_loc19_ || Boolean(this))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc20_ && Boolean(param1)))
                                    {
                                       var _temp_8:* = §§pop();
                                       §§push(_temp_8);
                                       if(!_temp_8)
                                       {
                                          if(!_loc20_)
                                          {
                                             §§pop();
                                             if(_loc19_ || Boolean(param1))
                                             {
                                                addr018b:
                                                addr018a:
                                                addr0184:
                                                addr0181:
                                                addr017d:
                                                if(_loc10_.config.phaseType != ServerPhaseTypes.PRODUCTION)
                                                {
                                                   continue;
                                                }
                                             }
                                             _loc8_ = _loc10_;
                                             break;
                                          }
                                       }
                                    }
                                    §§goto(addr018b);
                                 }
                                 §§goto(addr018a);
                              }
                              §§goto(addr0184);
                           }
                           §§goto(addr0181);
                        }
                        §§goto(addr017d);
                     }
                  }
                  if(_loc8_)
                  {
                     if(!(_loc20_ && Boolean(_loc3_)))
                     {
                        _loc2_.modTimerCycle = Math.max(_loc8_.expirationTime - param1.lastUpdatedTimeStamp,0);
                        if(_loc19_ || Boolean(this))
                        {
                           §§goto(addr01dd);
                        }
                        §§goto(addr0242);
                     }
                     addr01dd:
                     §§push(_loc2_.modTimerCycle);
                     if(_loc19_ || Boolean(_loc2_))
                     {
                        if(§§pop() > _loc8_.config.durationConfig.duration)
                        {
                           if(_loc19_ || Boolean(_loc2_))
                           {
                              _loc2_.modTimerCycle = 0;
                              if(_loc19_)
                              {
                                 addr0217:
                                 _loc2_.harvestReady = _loc2_.modTimerCycle <= 0;
                                 if(_loc19_ || Boolean(_loc3_))
                                 {
                                    addr0230:
                                    if(param1.improvements.length > 0)
                                    {
                                       if(!_loc20_)
                                       {
                                          addr0242:
                                          _loc11_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                                          _loc12_ = new Vector.<ImprovementVo>();
                                          if(!_loc20_)
                                          {
                                             var _loc17_:int = 0;
                                             if(!(_loc20_ && Boolean(param1)))
                                             {
                                                for each(_loc14_ in param1.improvements)
                                                {
                                                   _loc13_ = new ImprovementVo(_loc14_,_loc11_.config.improvements[_loc14_.configId]);
                                                   §§push(_loc13_.runtime);
                                                   if(!(_loc20_ && Boolean(_loc2_)))
                                                   {
                                                      §§push(§§pop() == -1);
                                                      if(!(_loc20_ && Boolean(_loc3_)))
                                                      {
                                                         var _temp_19:* = §§pop();
                                                         §§push(_temp_19);
                                                         if(!_temp_19)
                                                         {
                                                            if(!_loc20_)
                                                            {
                                                               §§pop();
                                                               if(!(_loc20_ && Boolean(_loc2_)))
                                                               {
                                                                  addr0301:
                                                                  addr02fc:
                                                                  if(_loc13_.expirationTime <= param1.lastUpdatedTimeStamp)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc19_ || Boolean(this)))
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               _loc12_.push(_loc13_);
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr0301);
                                                   }
                                                   §§goto(addr02fc);
                                                }
                                             }
                                             if(!(_loc20_ && Boolean(_loc3_)))
                                             {
                                                if(_loc12_.length)
                                                {
                                                   if(!(_loc20_ && Boolean(this)))
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc19_ || Boolean(param1))
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc20_)
                                                         {
                                                            var _temp_25:* = §§pop();
                                                            §§push(_temp_25);
                                                            if(_temp_25)
                                                            {
                                                               if(!(_loc20_ && Boolean(_loc2_)))
                                                               {
                                                                  addr0373:
                                                                  §§pop();
                                                                  if(_loc19_ || Boolean(this))
                                                                  {
                                                                     addr0382:
                                                                     §§push(_loc9_);
                                                                     if(_loc19_ || Boolean(_loc2_))
                                                                     {
                                                                        addr0393:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc20_ && Boolean(_loc2_)))
                                                                           {
                                                                              addr03a5:
                                                                              §§push(_loc9_);
                                                                              if(_loc19_ || Boolean(this))
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    §§push(this.getImprovementPercentValue(_loc12_,ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY));
                                                                                    if(!(_loc20_ && Boolean(this)))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc20_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             addr03ed:
                                                                                             §§push(§§pop());
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                if(_loc19_ || Boolean(this))
                                                                                                {
                                                                                                   addr0404:
                                                                                                   §§push(_loc6_);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(this.getImprovementPercentValue(_loc12_,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY));
                                                                                                         if(!(_loc20_ && Boolean(param1)))
                                                                                                         {
                                                                                                            addr042e:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  addr043c:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc19_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     addr044b:
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     if(!(_loc20_ && Boolean(_loc3_)))
                                                                                                                     {
                                                                                                                        addr0498:
                                                                                                                        addr045b:
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(_loc19_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           addr046b:
                                                                                                                           addr0488:
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(!(_loc20_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              addr047b:
                                                                                                                              addr0487:
                                                                                                                              §§push(§§pop() * this.getImprovementPercentValue(_loc12_,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY));
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              addr0497:
                                                                                                                              §§push(§§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                        _loc7_ = §§pop();
                                                                                                                     }
                                                                                                                     addr049a:
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(_loc19_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           var _temp_41:* = §§pop();
                                                                                                                           §§push(_temp_41);
                                                                                                                           if(_temp_41)
                                                                                                                           {
                                                                                                                              if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 addr04c4:
                                                                                                                                 §§pop();
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr04ce);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04d8);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr04ce:
                                                                                                                        §§goto(addr04cb);
                                                                                                                     }
                                                                                                                     §§goto(addr04c4);
                                                                                                                  }
                                                                                                                  §§goto(addr046b);
                                                                                                               }
                                                                                                               §§goto(addr0497);
                                                                                                            }
                                                                                                            §§goto(addr047b);
                                                                                                         }
                                                                                                         §§goto(addr0487);
                                                                                                      }
                                                                                                      §§goto(addr0488);
                                                                                                   }
                                                                                                   §§goto(addr0498);
                                                                                                }
                                                                                                §§goto(addr049a);
                                                                                             }
                                                                                             §§goto(addr043c);
                                                                                          }
                                                                                          §§goto(addr0497);
                                                                                       }
                                                                                       §§goto(addr047b);
                                                                                    }
                                                                                    §§goto(addr042e);
                                                                                 }
                                                                                 §§goto(addr047b);
                                                                              }
                                                                              §§goto(addr044b);
                                                                           }
                                                                           §§goto(addr045b);
                                                                        }
                                                                        §§goto(addr0404);
                                                                     }
                                                                     §§goto(addr03ed);
                                                                  }
                                                                  §§goto(addr03a5);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0393);
                                                      }
                                                      §§goto(addr0373);
                                                   }
                                                   §§goto(addr0404);
                                                }
                                                §§goto(addr049a);
                                             }
                                             §§goto(addr045b);
                                          }
                                          §§goto(addr0382);
                                       }
                                       §§goto(addr04cb);
                                    }
                                    §§goto(addr049a);
                                 }
                                 §§goto(addr0575);
                              }
                              addr04cb:
                              §§goto(addr04cd);
                           }
                           §§goto(addr0575);
                        }
                        §§goto(addr0217);
                     }
                     addr04cd:
                     if(Boolean(_loc9_))
                     {
                        if(_loc19_)
                        {
                           addr04d8:
                           _loc15_ = new Object();
                           _loc15_.t = _loc3_.infoLayerConfigPlayfieldItemVo.baseharvestOutput.type;
                           if(!(_loc20_ && Boolean(_loc2_)))
                           {
                              _loc15_.cid = _loc3_.infoLayerConfigPlayfieldItemVo.baseharvestOutput.configId;
                              if(!(_loc20_ && Boolean(_loc3_)))
                              {
                                 _loc15_.o = Math.ceil(_loc9_);
                              }
                           }
                           _loc16_ = new ConfigOutputDTO(_loc15_);
                           _loc16_.resourceConfig = _loc3_.infoLayerConfigPlayfieldItemVo.baseharvestOutput.resourceConfig;
                           if(_loc19_)
                           {
                              _loc2_.modBaseHarvestOutput = _loc16_;
                           }
                           §§goto(addr055b);
                        }
                        §§goto(addr0575);
                     }
                     addr055b:
                     _loc2_.modEnergyValue = Math.ceil(_loc6_);
                     if(_loc19_ || Boolean(this))
                     {
                        addr0575:
                        _loc2_.modMoodValue = Math.ceil(_loc7_);
                     }
                     return _loc2_;
                  }
                  §§goto(addr0230);
               }
               §§goto(addr0100);
            }
         }
         §§goto(addr00c8);
      }
      
      private function getImprovementPercentValue(param1:Vector.<ImprovementVo>, param2:String) : Number
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:ImprovementEfficiencyVo = null;
         var _loc5_:ImprovementVo = null;
         var _loc3_:* = 0;
         for each(_loc5_ in param1)
         {
            _loc4_ = _loc5_.getEfficiencyByTag(param2);
            if(_loc4_)
            {
               if(_loc9_)
               {
                  §§push(_loc3_);
                  if(!_loc8_)
                  {
                     §§push(§§pop() + _loc4_.value);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc3_ = §§pop();
               }
            }
         }
         return _loc3_;
      }
   }
}

