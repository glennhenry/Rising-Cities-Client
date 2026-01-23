package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ResourceDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageResourcesCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageResourcesCommand()
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
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc6_:Object = null;
         var _loc7_:ResourceDTO = null;
         var _loc2_:Object = param1.getBody();
         var _loc3_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc4_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         var _loc5_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         for each(_loc6_ in _loc2_.json.res)
         {
            _loc7_ = ConfigFactory.buildResourceDTO(_loc6_);
            if(!_loc12_)
            {
               continue;
            }
            _loc5_.player.resources[_loc7_.config.id] = _loc7_;
            if(_loc11_)
            {
               continue;
            }
            var _loc10_:* = _loc7_.config.type;
            if(!(_loc11_ && Boolean(_loc3_)))
            {
               §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
               if(_loc12_)
               {
                  §§push(_loc10_);
                  if(_loc12_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc11_ && Boolean(param1)))
                        {
                           addr01fd:
                           §§push(0);
                           if(_loc11_ && Boolean(_loc3_))
                           {
                           }
                        }
                        else
                        {
                           addr043f:
                           §§push(10);
                           if(_loc12_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerResConst.RESOURCE_EXPERIENCE);
                        if(!_loc11_)
                        {
                           §§push(_loc10_);
                           if(_loc12_)
                           {
                              addr0230:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc12_ || Boolean(_loc3_))
                                 {
                                    §§push(1);
                                    if(_loc11_ && Boolean(_loc3_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr043f);
                                 }
                              }
                              else
                              {
                                 §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                                 if(_loc12_ || Boolean(_loc3_))
                                 {
                                    §§push(_loc10_);
                                    if(_loc12_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(2);
                                             if(_loc12_ || Boolean(_loc3_))
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr03c1:
                                             §§push(8);
                                             if(_loc12_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                                          if(!(_loc11_ && Boolean(_loc2_)))
                                          {
                                             §§push(_loc10_);
                                             if(!_loc11_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc12_ || Boolean(param1))
                                                   {
                                                      §§push(3);
                                                      if(_loc12_ || Boolean(_loc2_))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr0456:
                                                      §§push(11);
                                                      if(_loc12_)
                                                      {
                                                      }
                                                   }
                                                   addr046e:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         _loc4_.energyConsumed = _loc7_.amount;
                                                         if(_loc11_)
                                                         {
                                                         }
                                                         break;
                                                      case 1:
                                                         _loc3_.experience = _loc7_.amount;
                                                         if(_loc12_)
                                                         {
                                                         }
                                                         break;
                                                      case 2:
                                                         _loc4_.energyProduced = _loc7_.amount;
                                                         if(_loc12_)
                                                         {
                                                         }
                                                         break;
                                                      case 3:
                                                         _loc4_.happynessConsumed = _loc7_.amount;
                                                         if(_loc12_)
                                                         {
                                                         }
                                                         break;
                                                      case 4:
                                                         _loc4_.happynessProduced = _loc7_.amount;
                                                         if(_loc11_)
                                                         {
                                                         }
                                                         break;
                                                      case 5:
                                                         _loc3_.ingameCurrency = _loc7_.amount;
                                                         if(_loc12_ || Boolean(_loc2_))
                                                         {
                                                         }
                                                         break;
                                                      case 6:
                                                         _loc3_.realCurrency = _loc7_.amount;
                                                         if(_loc11_ && Boolean(_loc2_))
                                                         {
                                                         }
                                                         break;
                                                      case 7:
                                                         _loc3_.productionPoints = _loc7_.amount;
                                                         if(_loc12_)
                                                         {
                                                         }
                                                         break;
                                                      case 8:
                                                         _loc3_.educationPoints = _loc7_.amount;
                                                         if(_loc11_ && Boolean(param1))
                                                         {
                                                         }
                                                         break;
                                                      case 9:
                                                         _loc3_.worker = _loc7_.amount;
                                                         if(_loc12_)
                                                         {
                                                         }
                                                         break;
                                                      case 10:
                                                         _loc3_.academics = _loc7_.amount;
                                                         if(_loc11_)
                                                         {
                                                         }
                                                         break;
                                                      case 11:
                                                         _loc3_.richMen = _loc7_.amount;
                                                         if(_loc11_)
                                                         {
                                                         }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(ServerResConst.RESOURCE_HAPPINESS_POSITIVE);
                                                   if(_loc12_)
                                                   {
                                                      §§push(_loc10_);
                                                      if(!_loc11_)
                                                      {
                                                         addr02e3:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc11_ && Boolean(this)))
                                                            {
                                                               §§push(4);
                                                               if(_loc12_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr0326:
                                                               §§push(5);
                                                               if(_loc11_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                            if(_loc12_)
                                                            {
                                                               addr030c:
                                                               §§push(_loc10_);
                                                               if(_loc12_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc11_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§goto(addr0326);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr03c1);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                                                     if(_loc12_ || Boolean(param1))
                                                                     {
                                                                        addr0345:
                                                                        §§push(_loc10_);
                                                                        if(_loc12_)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc11_ && Boolean(this)))
                                                                              {
                                                                                 §§push(6);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr043f);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                                              if(_loc12_)
                                                                              {
                                                                                 addr0376:
                                                                                 §§push(_loc10_);
                                                                                 if(_loc12_ || Boolean(_loc2_))
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!(_loc11_ && Boolean(this)))
                                                                                       {
                                                                                          §§push(7);
                                                                                          if(_loc11_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr03c1);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          addr03af:
                                                                                          §§push(_loc10_);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr03b7:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   §§goto(addr03c1);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr043f);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(ServerResConst.RESOURCE_WORKERS);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      addr03e0:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            §§push(9);
                                                                                                            if(_loc11_ && Boolean(_loc3_))
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr043f);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(ServerResConst.RESOURCE_ACADEMICS);
                                                                                                         if(_loc12_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            addr0411:
                                                                                                            §§push(_loc10_);
                                                                                                            if(_loc12_ || Boolean(this))
                                                                                                            {
                                                                                                               addr0421:
                                                                                                               if(§§pop() === §§pop())
                                                                                                               {
                                                                                                                  if(_loc12_ || Boolean(this))
                                                                                                                  {
                                                                                                                     §§goto(addr043f);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr0456);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0452:
                                                                                                                  addr0450:
                                                                                                                  if(ServerResConst.RESOURCE_RICHMEN === _loc10_)
                                                                                                                  {
                                                                                                                     §§goto(addr0456);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(12);
                                                                                                                  }
                                                                                                                  §§goto(addr046e);
                                                                                                               }
                                                                                                               §§goto(addr0456);
                                                                                                            }
                                                                                                            §§goto(addr0452);
                                                                                                         }
                                                                                                         §§goto(addr0450);
                                                                                                      }
                                                                                                      §§goto(addr046e);
                                                                                                   }
                                                                                                   §§goto(addr0421);
                                                                                                }
                                                                                                §§goto(addr0411);
                                                                                             }
                                                                                             §§goto(addr046e);
                                                                                          }
                                                                                          §§goto(addr0421);
                                                                                       }
                                                                                       §§goto(addr0450);
                                                                                    }
                                                                                    §§goto(addr046e);
                                                                                 }
                                                                                 §§goto(addr0452);
                                                                              }
                                                                              §§goto(addr03af);
                                                                           }
                                                                           §§goto(addr046e);
                                                                        }
                                                                        §§goto(addr0421);
                                                                     }
                                                                     §§goto(addr03af);
                                                                  }
                                                                  §§goto(addr046e);
                                                               }
                                                               §§goto(addr03e0);
                                                            }
                                                            §§goto(addr0376);
                                                         }
                                                         §§goto(addr046e);
                                                      }
                                                      §§goto(addr03b7);
                                                   }
                                                   §§goto(addr0450);
                                                }
                                                §§goto(addr0456);
                                             }
                                             §§goto(addr02e3);
                                          }
                                          §§goto(addr0345);
                                       }
                                       §§goto(addr046e);
                                    }
                                    §§goto(addr03b7);
                                 }
                                 §§goto(addr03af);
                              }
                              §§goto(addr046e);
                           }
                           §§goto(addr02e3);
                        }
                        §§goto(addr030c);
                     }
                     §§goto(addr046e);
                  }
                  §§goto(addr0230);
               }
               §§goto(addr0450);
            }
            §§goto(addr01fd);
         }
      }
   }
}

