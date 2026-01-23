package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.field.vo.AcademyFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FormulaProxy extends Proxy
   {
      
      public static const NAME:String = "FormulaProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && FormulaProxy))
      {
         NAME = "FormulaProxy";
      }
      
      private var _timerProxy:TimerProxy;
      
      private var _configProxy:GameConfigProxy;
      
      public function FormulaProxy(param1:String)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super(param1);
         }
      }
      
      public static function calculateEmergencyRateForPatrol(param1:int) : int
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(100);
         §§push(6);
         §§push(5 * (1 + param1 / 1000));
         if(!(_loc3_ && FormulaProxy))
         {
            §§push(§§pop() + 1);
         }
         §§push(§§pop() / §§pop());
         if(!_loc3_)
         {
            §§push(§§pop() - 1);
         }
         return §§pop() * §§pop();
      }
      
      public function getInstantFinishCostForAcademyPhase(param1:AcademyFieldObjectVo) : Number
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc2_:* = NaN;
         var _loc5_:ConfigOutputDTO = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc3_:* = 1;
         var _loc4_:* = 1;
         for each(_loc5_ in param1.educationPhase.config.listEntryOutputs)
         {
            §§push(_loc5_.tagConfig);
            if(!(_loc11_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  continue;
               }
               if(!(_loc10_ || Boolean(_loc2_)))
               {
                  continue;
               }
               §§push(_loc5_.tagConfig);
            }
            if(§§pop().tagName == ServerTagConstants.INSTANT_FINISH)
            {
               if(_loc10_)
               {
                  §§push(_loc5_.outputAmount);
                  if(!(_loc11_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop());
                  }
                  _loc3_ = §§pop();
               }
            }
         }
         if(_loc10_)
         {
            §§push(Number(this.configProxy.config.balanceParameters[ServerBalanceParameterConstants.EDUCATION_EXTENSION_TIME].value));
            if(!(_loc11_ && Boolean(param1)))
            {
               _loc6_ = §§pop();
               if(_loc10_ || Boolean(param1))
               {
                  §§push(param1.buildingDTO.config.educationBasicTime);
                  if(_loc10_ || Boolean(param1))
                  {
                     var _temp_8:* = §§pop();
                     §§push(_temp_8);
                     §§push(_temp_8);
                     if(_loc10_ || Boolean(_loc3_))
                     {
                        _loc7_ = §§pop();
                        if(_loc10_ || Boolean(this))
                        {
                           §§push(_loc6_);
                           if(_loc10_ || Boolean(_loc3_))
                           {
                              §§push(§§pop() * param1.educationPhase.educationStep);
                              if(!(_loc11_ && Boolean(_loc2_)))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc10_ || Boolean(this))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc11_ && Boolean(param1)))
                                    {
                                       var _temp_15:* = §§pop();
                                       §§push(_temp_15);
                                       §§push(_temp_15);
                                       if(!_loc11_)
                                       {
                                          addr0173:
                                          _loc7_ = §§pop();
                                          if(!(_loc11_ && Boolean(param1)))
                                          {
                                             §§push(§§pop());
                                             if(_loc10_ || Boolean(this))
                                             {
                                                addr0192:
                                                _loc4_ = §§pop();
                                                if(!(_loc11_ && Boolean(param1)))
                                                {
                                                   §§push(param1.educationPhase);
                                                   if(_loc10_)
                                                   {
                                                      §§push(§§pop().behaviourInitialTime);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(0);
                                                         if(_loc10_ || Boolean(_loc2_))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc10_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!_loc11_)
                                                               {
                                                                  var _temp_20:* = §§pop();
                                                                  §§push(_temp_20);
                                                                  if(_temp_20)
                                                                  {
                                                                     if(_loc10_ || Boolean(_loc3_))
                                                                     {
                                                                        addr01e6:
                                                                        §§pop();
                                                                        if(!_loc11_)
                                                                        {
                                                                           §§push(param1.educationPhase);
                                                                           if(!(_loc11_ && Boolean(_loc3_)))
                                                                           {
                                                                              §§push(§§pop().behaviourEndTime);
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr0208:
                                                                                 §§push(0);
                                                                                 if(_loc10_ || Boolean(_loc2_))
                                                                                 {
                                                                                    addr0228:
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(_loc10_ || Boolean(this))
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc10_ || Boolean(param1))
                                                                                       {
                                                                                          addr023e:
                                                                                          addr023a:
                                                                                          §§push(param1.educationPhase.behaviourEndTime);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr0247:
                                                                                             addr024e:
                                                                                             §§push(§§pop() - param1.educationPhase.behaviourInitialTime);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                addr0255:
                                                                                                §§push(§§pop());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr025c:
                                                                                                   _loc4_ = §§pop();
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      addr0264:
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(1000);
                                                                                                         if(_loc10_ || Boolean(this))
                                                                                                         {
                                                                                                            addr027d:
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc11_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  addr029b:
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  if(_loc10_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     addr02ab:
                                                                                                                     §§push(Math.round(Math.abs(_loc3_ * Math.ceil(5 * Math.pow(_loc4_,0.4)))));
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        addr02e0:
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           §§goto(addr0306);
                                                                                                                        }
                                                                                                                        §§goto(addr0305);
                                                                                                                     }
                                                                                                                     §§goto(addr02ee);
                                                                                                                  }
                                                                                                                  §§goto(addr0302);
                                                                                                               }
                                                                                                               §§goto(addr02e0);
                                                                                                            }
                                                                                                            §§goto(addr0306);
                                                                                                         }
                                                                                                         §§goto(addr02f0);
                                                                                                      }
                                                                                                      §§goto(addr02e0);
                                                                                                   }
                                                                                                   §§goto(addr02ab);
                                                                                                }
                                                                                                addr0306:
                                                                                                §§goto(addr02e7);
                                                                                             }
                                                                                             §§goto(addr025c);
                                                                                          }
                                                                                          §§goto(addr02ee);
                                                                                       }
                                                                                       addr02e7:
                                                                                       §§push(_loc2_);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr02ee:
                                                                                          addr02f0:
                                                                                          if(§§pop() < 1)
                                                                                          {
                                                                                             if(_loc10_ || Boolean(_loc3_))
                                                                                             {
                                                                                                §§goto(addr0302);
                                                                                             }
                                                                                          }
                                                                                          addr0305:
                                                                                          return _loc2_;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0264);
                                                                                 }
                                                                                 §§goto(addr027d);
                                                                              }
                                                                              §§goto(addr0247);
                                                                           }
                                                                           §§goto(addr023e);
                                                                        }
                                                                        §§goto(addr02ab);
                                                                     }
                                                                  }
                                                                  §§goto(addr0228);
                                                               }
                                                               §§goto(addr01e6);
                                                            }
                                                            §§goto(addr0228);
                                                         }
                                                         §§goto(addr02f0);
                                                      }
                                                      §§goto(addr0255);
                                                   }
                                                   §§goto(addr023e);
                                                }
                                                §§goto(addr0264);
                                             }
                                             §§goto(addr0255);
                                          }
                                          §§goto(addr029b);
                                       }
                                       §§goto(addr024e);
                                    }
                                    §§goto(addr029b);
                                 }
                                 §§goto(addr0247);
                              }
                              §§goto(addr0173);
                           }
                           §§goto(addr024e);
                        }
                        §§goto(addr0192);
                     }
                     §§goto(addr024e);
                  }
                  §§goto(addr0208);
               }
               §§goto(addr023a);
            }
            §§goto(addr0255);
         }
         addr0302:
         return 1;
      }
      
      public function getInstantFinishCostForProductionPhase(param1:ConfigPhaseDTO, param2:PhaseDTO = null) : Number
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         var _loc6_:ConfigOutputDTO = null;
         var _loc4_:* = 1;
         var _loc5_:* = 1;
         for each(_loc6_ in param1.listEntryOutputs)
         {
            §§push(_loc6_.tagConfig);
            if(_loc10_ || Boolean(_loc3_))
            {
               if(§§pop())
               {
                  if(_loc10_ || Boolean(param1))
                  {
                     addr006a:
                     if(_loc6_.tagConfig.tagName != ServerTagConstants.INSTANT_FINISH)
                     {
                        continue;
                     }
                     if(_loc9_ && Boolean(param1))
                     {
                        continue;
                     }
                  }
                  §§push(_loc6_.outputAmount);
                  if(!_loc9_)
                  {
                     §§push(§§pop());
                  }
                  _loc4_ = §§pop();
               }
               continue;
            }
            §§goto(addr006a);
         }
         if(!_loc9_)
         {
            §§push(Boolean(param2));
            if(!_loc9_)
            {
               var _temp_6:* = §§pop();
               §§push(_temp_6);
               if(_temp_6)
               {
                  if(!(_loc9_ && Boolean(param2)))
                  {
                     §§goto(addr00be);
                  }
               }
               §§goto(addr00d9);
            }
            addr00be:
            §§pop();
            if(_loc10_ || Boolean(param1))
            {
               addr00d9:
               if(!isNaN(param2.timeLeft))
               {
                  if(!(_loc9_ && Boolean(this)))
                  {
                     addr00eb:
                     §§push(this.timerProxy.currentTimeStamp);
                     if(_loc10_)
                     {
                        §§push(param2.expirationTime);
                        if(!_loc9_)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc10_ || Boolean(_loc3_))
                              {
                                 §§push(param2.expirationTime);
                                 if(_loc10_)
                                 {
                                    addr0132:
                                    §§push(§§pop() - this.timerProxy.currentTimeStamp);
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       §§goto(addr0141);
                                    }
                                    §§goto(addr01a8);
                                 }
                                 §§goto(addr0141);
                              }
                              §§goto(addr020e);
                           }
                           §§goto(addr01b0);
                        }
                        §§goto(addr0132);
                     }
                     addr0141:
                     §§push(1000);
                     if(!_loc9_)
                     {
                        §§push(§§pop() / §§pop());
                        if(!(_loc9_ && Boolean(param2)))
                        {
                           §§push(§§pop());
                           if(!_loc9_)
                           {
                              §§goto(addr0160);
                           }
                           §§goto(addr01ec);
                        }
                        addr0160:
                        _loc5_ = §§pop();
                        if(!_loc9_)
                        {
                           §§goto(addr01b0);
                        }
                        §§goto(addr020e);
                     }
                     else
                     {
                        addr0192:
                        §§push(§§pop() / §§pop());
                        if(_loc10_ || Boolean(param2))
                        {
                           §§push(§§pop());
                           if(_loc10_)
                           {
                              §§goto(addr01a8);
                           }
                           §§goto(addr0202);
                        }
                     }
                     addr0212:
                     §§goto(addr01fb);
                  }
                  §§goto(addr01b0);
               }
               else
               {
                  §§push(param1.durationConfig.duration);
                  if(_loc10_ || Boolean(param2))
                  {
                     §§push(1000);
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        §§goto(addr0192);
                     }
                     §§goto(addr0204);
                  }
               }
               addr01a8:
               _loc5_ = §§pop();
               if(!_loc9_)
               {
                  addr01b0:
                  §§push(Math.round(Math.abs(_loc4_ * Math.round(5 * Math.pow(_loc5_,0.4)))));
                  if(_loc10_ || Boolean(_loc3_))
                  {
                     addr01ec:
                     _loc3_ = §§pop();
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        §§goto(addr0212);
                     }
                     §§goto(addr0211);
                  }
                  §§goto(addr0212);
               }
               §§goto(addr020e);
            }
            addr01fb:
            §§push(_loc3_);
            if(_loc10_)
            {
               addr0202:
               addr0204:
               if(§§pop() < 1)
               {
                  if(!_loc9_)
                  {
                     addr020e:
                     return 1;
                  }
               }
               addr0211:
               return _loc3_;
            }
         }
         §§goto(addr00eb);
      }
      
      public function getInstantFinishCostForMysteryBuilding(param1:Vector.<PhaseDTO>) : Number
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:* = NaN;
         var _loc5_:PhaseDTO = null;
         var _loc6_:ConfigOutputDTO = null;
         var _loc3_:* = 1;
         var _loc4_:* = 1;
         for each(_loc5_ in param1)
         {
            if(_loc5_.config.phaseType != ServerPhaseTypes.MYSTERY_CONSTRUCTION)
            {
               continue;
            }
            for each(_loc6_ in _loc5_.config.listEntryOutputs)
            {
               §§push(_loc6_.tagConfig);
               if(_loc11_)
               {
                  §§push(§§pop() == null);
                  if(!(_loc12_ && Boolean(_loc2_)))
                  {
                     §§push(!§§pop());
                     if(!_loc12_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(!(_loc12_ && Boolean(_loc2_)))
                           {
                              addr00a1:
                              §§pop();
                              if(!_loc11_)
                              {
                                 break;
                              }
                              addr00ad:
                              §§push(_loc6_.tagConfig.tagName == ServerTagConstants.INSTANT_FINISH);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc11_ || Boolean(_loc3_))
                           {
                              §§push(_loc6_.outputAmount);
                              if(!(_loc12_ && Boolean(this)))
                              {
                                 §§push(§§pop());
                              }
                              _loc3_ = §§pop();
                           }
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr00ad);
            }
            if(_loc12_)
            {
               break;
            }
            §§push(this.timerProxy.currentTimeStamp);
            if(!(_loc12_ && Boolean(_loc3_)))
            {
               §§push(_loc5_.expirationTime);
               if(!_loc12_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§push(_loc5_.expirationTime);
                     if(_loc11_ || Boolean(this))
                     {
                        addr0141:
                        addr013a:
                        §§push(§§pop() - this.timerProxy.currentTimeStamp);
                        if(_loc11_)
                        {
                           §§push(§§pop() / 1000);
                           if(_loc11_ || Boolean(_loc3_))
                           {
                              §§push(§§pop());
                              if(_loc12_ && Boolean(this))
                              {
                                 addr0178:
                                 _loc4_ = §§pop();
                                 break;
                              }
                           }
                           addr0169:
                           _loc4_ = §§pop();
                           if(_loc11_)
                           {
                           }
                           break;
                        }
                        §§goto(addr0178);
                     }
                     §§goto(addr0169);
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§goto(addr0178);
               }
               §§goto(addr0141);
            }
            §§goto(addr013a);
         }
         if(_loc11_ || Boolean(_loc3_))
         {
            §§push(Math.ceil(Math.abs(_loc3_ * Math.ceil(5 * Math.pow(_loc4_,0.4)))));
            if(_loc11_)
            {
               _loc2_ = §§pop();
               if(_loc11_)
               {
                  §§goto(addr01f3);
               }
               §§goto(addr01f2);
            }
            addr01f3:
            §§push(_loc2_);
            if(_loc11_ || Boolean(_loc3_))
            {
               if(§§pop() < 1)
               {
                  if(!_loc12_)
                  {
                     §§goto(addr01ef);
                  }
               }
               addr01f2:
               return _loc2_;
            }
         }
         addr01ef:
         return 1;
      }
      
      private function get timerProxy() : TimerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._timerProxy);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     addr003a:
                     this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                  }
               }
               return this._timerProxy;
            }
         }
         §§goto(addr003a);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._configProxy);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || _loc1_)
                  {
                     this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               addr0064:
               return this._configProxy;
            }
         }
         §§goto(addr0064);
      }
   }
}

