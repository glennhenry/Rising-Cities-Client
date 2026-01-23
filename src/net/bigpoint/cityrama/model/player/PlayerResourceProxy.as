package net.bigpoint.cityrama.model.player
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayerResourceProxy extends Proxy
   {
      
      public static const NAME:String = "PlayerResourceProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "PlayerResourceProxy";
      }
      
      private var _globalBalanceProxy:GlobalBalanceProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _experience:Number = 0;
      
      private var _maxExperience:Number = 0;
      
      private var _ingameCurrency:Number = 0;
      
      private var _realCurrency:Number = 0;
      
      private var _productionPoints:Number = 0;
      
      private var _educationPoints:Number = 0;
      
      private var _userLevel:int;
      
      private var _workers:Number = 0;
      
      private var _richMen:Number = 0;
      
      private var _academics:Number = 0;
      
      private var _desiredBuyAction:Vector.<BuyProcedureVo>;
      
      public function PlayerResourceProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            super(param1,param2);
            if(!(_loc4_ && Boolean(this)))
            {
               this._globalBalanceProxy = facade.retrieveProxy(GlobalBalanceProxy.NAME) as GlobalBalanceProxy;
               if(!(_loc4_ && Boolean(param2)))
               {
                  addr0070:
                  this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
               }
               return;
            }
         }
         §§goto(addr0070);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._desiredBuyAction = new Vector.<BuyProcedureVo>();
         }
      }
      
      public function get experience() : Number
      {
         return this._experience;
      }
      
      public function set experience(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._experience))
            {
               if(_loc3_)
               {
                  this._experience = param1;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0048:
                     sendNotification(ApplicationNotificationConstants.XP_CHANGED,param1);
                  }
                  §§goto(addr0053);
               }
               §§goto(addr0048);
            }
            addr0053:
            return;
         }
         §§goto(addr0048);
      }
      
      public function get maxExperience() : Number
      {
         return this._maxExperience;
      }
      
      public function get realCurrency() : Number
      {
         return this._realCurrency;
      }
      
      public function set realCurrency(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(!RandomUtilities.isEqual(param1,this._realCurrency))
            {
               if(_loc3_)
               {
                  this._realCurrency = param1;
                  if(_loc3_)
                  {
                     sendNotification(ApplicationNotificationConstants.REALCURRENCY_CHANGED,param1);
                  }
               }
            }
         }
      }
      
      public function get ingameCurrency() : Number
      {
         return this._ingameCurrency;
      }
      
      public function set ingameCurrency(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._ingameCurrency))
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._ingameCurrency = param1;
                  if(_loc2_ || Boolean(param1))
                  {
                     addr0066:
                     sendNotification(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED,param1);
                  }
               }
            }
            return;
         }
         §§goto(addr0066);
      }
      
      override public function onRemove() : void
      {
      }
      
      public function set maxExperience(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(this._maxExperience,param1))
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  this._maxExperience = param1;
                  if(_loc3_)
                  {
                     sendNotification(ApplicationNotificationConstants.MAXXP_CHANGED,param1);
                  }
               }
            }
         }
      }
      
      public function get desiredBuyAction() : Vector.<BuyProcedureVo>
      {
         return this._desiredBuyAction;
      }
      
      public function set desiredBuyAction(param1:Vector.<BuyProcedureVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._desiredBuyAction = param1;
         }
      }
      
      public function get userLevel() : int
      {
         return this._userLevel;
      }
      
      public function set userLevel(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(!RandomUtilities.isEqual(param1,this._userLevel))
            {
               if(_loc2_ || _loc3_)
               {
                  this._userLevel = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0065:
                     sendNotification(ApplicationNotificationConstants.USERLEVEL_CHANGED,this._userLevel);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0065);
            }
            addr0073:
            return;
         }
         §§goto(addr0065);
      }
      
      public function get population() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this.worker);
         if(_loc2_)
         {
            §§push(this.richMen);
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0048);
            }
            §§goto(addr0047);
         }
         addr0048:
         §§push(§§pop() + §§pop());
         if(_loc2_ || _loc1_)
         {
            addr0047:
            return §§pop() + this.academics;
         }
      }
      
      public function get maxPopulation() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this._workers);
         if(!_loc2_)
         {
            §§push(this._richMen);
            if(_loc1_)
            {
               §§goto(addr003f);
            }
            §§goto(addr003e);
         }
         addr003f:
         §§push(§§pop() + §§pop());
         if(_loc1_ || _loc1_)
         {
            addr003e:
            return §§pop() + this._academics;
         }
      }
      
      public function get productionPoints() : Number
      {
         return this._productionPoints;
      }
      
      public function set productionPoints(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            if(!RandomUtilities.isEqual(param1,this._productionPoints))
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0058:
                  this._productionPoints = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     sendNotification(ApplicationNotificationConstants.PRODUCTIONPOINTS_CHANGED,this._productionPoints);
                  }
               }
            }
            return;
         }
         §§goto(addr0058);
      }
      
      public function get worker() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._workers);
         if(!_loc1_)
         {
            return §§pop() * this._globalBalanceProxy.happinessOutputModifier;
         }
      }
      
      public function set worker(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._workers))
            {
               if(!_loc2_)
               {
                  addr0041:
                  this._workers = param1;
                  if(!_loc2_)
                  {
                     sendNotification(ApplicationNotificationConstants.WORKERS_CHANGED,this._workers);
                  }
               }
            }
            return;
         }
         §§goto(addr0041);
      }
      
      public function set academics(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(param1,this._academics))
            {
               if(!_loc3_)
               {
                  this._academics = param1;
                  if(!_loc3_)
                  {
                     addr0049:
                     sendNotification(ApplicationNotificationConstants.ACADEMICS_CHANGED,this._academics);
                  }
               }
            }
            return;
         }
         §§goto(addr0049);
      }
      
      public function get richMen() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._richMen);
         if(!_loc1_)
         {
            return §§pop() * this._globalBalanceProxy.happinessOutputModifier;
         }
      }
      
      public function get academics() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this._academics);
         if(_loc1_ || _loc1_)
         {
            return §§pop() * this._globalBalanceProxy.happinessOutputModifier;
         }
      }
      
      public function set richMen(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._richMen))
            {
               if(_loc2_ || Boolean(param1))
               {
                  this._richMen = param1;
                  if(_loc2_ || _loc2_)
                  {
                     addr0052:
                     sendNotification(ApplicationNotificationConstants.RICHMEN_CHANGED,this._richMen);
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0052);
            }
         }
         addr0061:
      }
      
      public function get educationPoints() : Number
      {
         return this._educationPoints;
      }
      
      public function set educationPoints(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._educationPoints))
            {
               if(!_loc2_)
               {
                  addr0042:
                  this._educationPoints = param1;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0054:
                     sendNotification(ApplicationNotificationConstants.EDUCATIONPOINTS_CHANGED,this._educationPoints);
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0054);
            }
            addr0062:
            return;
         }
         §§goto(addr0042);
      }
      
      public function get academicsEnabled() : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ConfigResourceDTO = this._configProxy.config.resources[this._configProxy.config.resourceIds[ServerResConst.RESOURCE_ACADEMICS]];
         if(_loc3_)
         {
            if(_loc1_)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0065:
                  §§push(this.userLevel >= this._configProxy.getLevelById(_loc1_.levelId).level);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr007f:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr007f);
         }
         §§goto(addr0065);
      }
      
      public function get richMenEnabled() : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ConfigResourceDTO = this._configProxy.config.resources[this._configProxy.config.resourceIds[ServerResConst.RESOURCE_RICHMEN]];
         if(!_loc3_)
         {
            if(_loc1_)
            {
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§push(this.userLevel >= this._configProxy.getLevelById(_loc1_.levelId).level);
                  if(_loc2_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0084:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr0084);
      }
      
      public function get moreThanOnePopulationTypeEnabled() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.richMenEnabled);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop());
               if(!(_loc1_ && Boolean(this)))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(!_temp_5)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        §§pop();
                        §§goto(addr006e);
                     }
                     §§goto(addr006d);
                  }
               }
               addr006e:
               §§goto(addr0064);
            }
            §§goto(addr006d);
         }
         addr0064:
         §§push(this.academicsEnabled);
         if(_loc2_)
         {
            addr006d:
            return §§pop();
         }
      }
      
      public function getResourceAmountByConstant(param1:String) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(ServerResConst.RESOURCE_REALCURRENCY);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr01bb:
                        §§push(2);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                     if(!_loc3_)
                     {
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr01f2:
                                 §§push(3);
                                 if(_loc4_ || _loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§push(_loc2_);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          §§goto(addr01bb);
                                       }
                                       else
                                       {
                                          addr0237:
                                          §§push(4);
                                          if(_loc4_ || Boolean(this))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                       if(!_loc3_)
                                       {
                                          addr01d9:
                                          §§push(_loc2_);
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr01f2);
                                                }
                                                else
                                                {
                                                   addr02ab:
                                                   §§push(6);
                                                   if(_loc3_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerResConst.RESOURCE_EXPERIENCE);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr0218:
                                                   §§push(_loc2_);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      addr0226:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§goto(addr0237);
                                                         }
                                                         else
                                                         {
                                                            addr02e3:
                                                            §§push(7);
                                                            if(_loc4_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ServerResConst.RESOURCE_POPULATION);
                                                         if(_loc4_ || Boolean(param1))
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc3_)
                                                            {
                                                               addr0264:
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc4_ || Boolean(this))
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc3_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr02e3);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(ServerResConst.RESOURCE_WORKERS);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr029a:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!(_loc3_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§goto(addr02ab);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr02f9:
                                                                              §§push(8);
                                                                              if(_loc4_)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr0311);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(ServerResConst.RESOURCE_RICHMEN);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr02c0:
                                                                              §§push(_loc2_);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr02c7:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(!(_loc3_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       §§goto(addr02e3);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr02f9);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr02f5);
                                                                                 }
                                                                                 §§goto(addr02f9);
                                                                              }
                                                                              addr02f5:
                                                                           }
                                                                           §§goto(addr02f4);
                                                                        }
                                                                     }
                                                                     §§goto(addr02c7);
                                                                  }
                                                                  addr02f4:
                                                                  if(ServerResConst.RESOURCE_ACADEMICS === _loc2_)
                                                                  {
                                                                     §§goto(addr02f9);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(9);
                                                                  }
                                                                  §§goto(addr0311);
                                                               }
                                                               §§goto(addr0311);
                                                            }
                                                            §§goto(addr029a);
                                                         }
                                                         §§goto(addr02c0);
                                                      }
                                                      §§goto(addr0311);
                                                   }
                                                   §§goto(addr0264);
                                                }
                                                §§goto(addr02c0);
                                             }
                                             §§goto(addr0311);
                                          }
                                          §§goto(addr029a);
                                       }
                                       §§goto(addr0218);
                                    }
                                    §§goto(addr0311);
                                 }
                                 §§goto(addr0226);
                              }
                              §§goto(addr02f4);
                           }
                           §§goto(addr0311);
                        }
                        §§goto(addr02f5);
                     }
                     §§goto(addr02f4);
                  }
                  addr0311:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(this.realCurrency);
                        if(_loc4_ || Boolean(param1))
                        {
                           return §§pop();
                        }
                        §§goto(addr004c);
                        break;
                     case 1:
                        §§push(this.ingameCurrency);
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr004c:
                           return §§pop();
                        }
                        break;
                     case 2:
                        §§push(this.productionPoints);
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           return §§pop();
                        }
                        break;
                     case 3:
                        §§push(this.educationPoints);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        break;
                     case 4:
                        §§push(this.experience);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           return §§pop();
                        }
                        §§goto(addr00d1);
                        break;
                     case 5:
                        §§push(this.population);
                        if(_loc4_)
                        {
                           return §§pop();
                        }
                        break;
                     case 6:
                        §§push(this.worker);
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr00d1:
                           return §§pop();
                        }
                        §§goto(addr00fd);
                        break;
                     case 7:
                        §§push(this.richMen);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           break;
                        }
                        §§goto(addr00fd);
                        break;
                     case 8:
                        addr00fd:
                        return §§pop();
                        return this.academics;
                     default:
                        throw new Error("Resource not covered by PlayerResourceProxy!");
                  }
                  return §§pop();
               }
               §§goto(addr0226);
            }
            §§goto(addr01d9);
         }
         §§goto(addr02ab);
      }
   }
}

