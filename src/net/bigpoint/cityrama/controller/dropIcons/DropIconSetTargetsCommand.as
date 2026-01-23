package net.bigpoint.cityrama.controller.dropIcons
{
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.view.assistants.RentCollectorSideMenuMediator;
   import net.bigpoint.cityrama.view.dropIcons.DropIconsMediator;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.cityrama.view.mainMenu.MainMenuMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class DropIconSetTargetsCommand extends SimpleCommand
   {
      
      public function DropIconSetTargetsCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:DropIconVO = param1.getBody() as DropIconVO;
         var _loc3_:DropIconsMediator = facade.retrieveMediator(DropIconsMediator.NAME) as DropIconsMediator;
         var _loc4_:HUDMediator = facade.retrieveMediator(HUDMediator.NAME) as HUDMediator;
         var _loc5_:MainMenuMediator = facade.retrieveMediator(MainMenuMediator.NAME) as MainMenuMediator;
         var _loc6_:RentCollectorSideMenuMediator = facade.retrieveMediator(RentCollectorSideMenuMediator.NAME) as RentCollectorSideMenuMediator;
         if(!_loc8_)
         {
            if(!_loc2_.destinationElement)
            {
               addr015b:
               var _loc7_:* = _loc2_.type;
               if(_loc9_ || Boolean(_loc3_))
               {
                  §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                  if(!_loc8_)
                  {
                     §§push(_loc7_);
                     if(_loc9_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc9_)
                           {
                              §§push(0);
                              if(_loc8_ && Boolean(param1))
                              {
                              }
                           }
                           else
                           {
                              addr02c6:
                              §§push(5);
                              if(_loc8_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(ServerResConst.RESOURCE_REALCURRENCY);
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              §§push(_loc7_);
                              if(_loc9_ || Boolean(_loc2_))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(1);
                                       if(_loc8_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr02c6);
                                    }
                                 }
                                 else
                                 {
                                    §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                    if(!(_loc8_ && Boolean(param1)))
                                    {
                                       §§push(_loc7_);
                                       if(!_loc8_)
                                       {
                                          addr0201:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc8_ && Boolean(this)))
                                             {
                                                §§push(2);
                                                if(_loc9_ || Boolean(_loc2_))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr025c:
                                                §§push(3);
                                                if(_loc9_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                             if(_loc9_ || Boolean(param1))
                                             {
                                                §§push(_loc7_);
                                                if(!(_loc8_ && Boolean(param1)))
                                                {
                                                   addr024a:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!(_loc8_ && Boolean(param1)))
                                                      {
                                                         §§goto(addr025c);
                                                      }
                                                      else
                                                      {
                                                         addr0392:
                                                         §§push(9);
                                                         if(_loc8_ && Boolean(_loc2_))
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr03be);
                                                   }
                                                   else
                                                   {
                                                      §§push(ServerResConst.RESOURCE_EXPERIENCE);
                                                      if(!_loc8_)
                                                      {
                                                         §§goto(addr0273);
                                                      }
                                                      §§goto(addr02ac);
                                                   }
                                                }
                                                §§goto(addr038e);
                                             }
                                             addr0273:
                                             §§push(_loc7_);
                                             if(!(_loc8_ && Boolean(_loc3_)))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§push(4);
                                                      if(_loc8_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0392);
                                                   }
                                                   §§goto(addr03be);
                                                }
                                                else
                                                {
                                                   §§push(ServerResConst.RESOURCE_RICHMEN);
                                                   if(_loc9_ || Boolean(this))
                                                   {
                                                      addr02ac:
                                                      §§push(_loc7_);
                                                      if(!_loc8_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(_loc9_ || Boolean(_loc2_))
                                                            {
                                                               §§goto(addr02c6);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr0392);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerResConst.RESOURCE_WORKERS);
                                                            if(!(_loc8_ && Boolean(param1)))
                                                            {
                                                               §§push(_loc7_);
                                                               if(_loc9_ || Boolean(_loc3_))
                                                               {
                                                                  addr02f5:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc8_ && Boolean(_loc2_)))
                                                                     {
                                                                        §§push(6);
                                                                        if(_loc9_ || Boolean(_loc2_))
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0392);
                                                                     }
                                                                     §§goto(addr03be);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(ServerResConst.RESOURCE_ACADEMICS);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr0326:
                                                                        §§push(_loc7_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§goto(addr032e);
                                                                        }
                                                                        §§goto(addr038e);
                                                                     }
                                                                     §§goto(addr0360);
                                                                  }
                                                               }
                                                               §§goto(addr0368);
                                                            }
                                                            §§goto(addr0326);
                                                         }
                                                         §§goto(addr0392);
                                                      }
                                                      §§goto(addr032e);
                                                   }
                                                   §§goto(addr0360);
                                                }
                                             }
                                             addr032e:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc8_)
                                                {
                                                   §§push(7);
                                                   if(_loc9_ || Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr037a:
                                                   §§push(8);
                                                   if(_loc8_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerImprovementConstants.IMPROVEMENT);
                                                if(!(_loc8_ && Boolean(param1)))
                                                {
                                                   addr0360:
                                                   §§push(_loc7_);
                                                   if(!_loc8_)
                                                   {
                                                      addr0368:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc8_ && Boolean(_loc3_)))
                                                         {
                                                            §§goto(addr037a);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr0392);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr038e);
                                                      }
                                                      §§goto(addr0392);
                                                   }
                                                   addr038e:
                                                   §§goto(addr038c);
                                                }
                                                addr038c:
                                                if(ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL === _loc7_)
                                                {
                                                   §§goto(addr0392);
                                                }
                                                else
                                                {
                                                   §§push(10);
                                                }
                                                §§goto(addr03be);
                                             }
                                             §§goto(addr03be);
                                          }
                                          §§goto(addr03be);
                                       }
                                       §§goto(addr02f5);
                                    }
                                    §§goto(addr0273);
                                 }
                                 §§goto(addr03be);
                              }
                              §§goto(addr0201);
                           }
                           §§goto(addr0273);
                        }
                        addr03be:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_.destinationElement = _loc4_.vcElementSparkleSprite;
                              if(_loc9_ || Boolean(this))
                              {
                              }
                              addr03f4:
                              _loc3_.dropIcon(_loc2_,param1.getName());
                              break;
                           case 1:
                              _loc2_.destinationElement = _loc4_.rcElementSparkleSprite;
                              if(_loc9_)
                              {
                              }
                              §§goto(addr03f4);
                           case 2:
                           case 3:
                              _loc2_.destinationElement = _loc4_.resourceElementSparkleSprite;
                              if(_loc8_ && Boolean(_loc3_))
                              {
                              }
                              §§goto(addr03f4);
                           case 4:
                              _loc2_.destinationElement = _loc4_.xpElementSparkleSprite;
                              if(_loc8_ && Boolean(param1))
                              {
                              }
                              §§goto(addr03f4);
                           case 5:
                           case 6:
                           case 7:
                              _loc2_.destinationElement = _loc4_.residentElementSparkleSprite;
                              if(!(_loc9_ || Boolean(this)))
                              {
                                 break;
                              }
                              §§goto(addr03f4);
                              break;
                           case 8:
                              _loc2_.destinationElement = _loc5_.inventoryElement;
                              if(_loc8_ && Boolean(this))
                              {
                              }
                              §§goto(addr03f4);
                           case 9:
                              _loc2_.destinationElement = _loc6_.rentCollectorSparkleSprite;
                              if(_loc8_)
                              {
                              }
                              §§goto(addr03f4);
                           default:
                              _loc2_.destinationElement = _loc5_.inventoryElement;
                              if(_loc8_ && Boolean(this))
                              {
                              }
                              §§goto(addr03f4);
                        }
                        return;
                     }
                     §§goto(addr024a);
                  }
                  §§goto(addr0326);
               }
               §§goto(addr02c6);
            }
            §§goto(addr03f4);
         }
         §§goto(addr015b);
      }
   }
}

