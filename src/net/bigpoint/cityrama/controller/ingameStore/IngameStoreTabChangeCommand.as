package net.bigpoint.cityrama.controller.ingameStore
{
   import net.bigpoint.cityrama.model.ingameStore.IngameStoreTabProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.architectBook.ArchitectBookMediator;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackStoreMainMediator;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ImprovementStoreMainMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class IngameStoreTabChangeCommand extends SimpleCommand implements ICommand
   {
      
      public function IngameStoreTabChangeCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:IngameStoreBook = null;
         var _loc5_:ArchitectBookMediator = null;
         var _loc6_:BoosterpackStoreMainMediator = null;
         var _loc7_:ImprovementStoreMainMediator = null;
         var _loc2_:Object = param1.getBody() as Object;
         var _loc3_:IngameStoreTabProxy = facade.retrieveProxy(IngameStoreTabProxy.NAME) as IngameStoreTabProxy;
         if(!_loc9_)
         {
            if(_loc2_.container)
            {
               addr0059:
               _loc4_ = _loc2_.container as IngameStoreBook;
               _loc5_ = facade.retrieveMediator(ArchitectBookMediator.NAME) as ArchitectBookMediator;
               _loc6_ = facade.retrieveMediator(BoosterpackStoreMainMediator.NAME) as BoosterpackStoreMainMediator;
               _loc7_ = facade.retrieveMediator(ImprovementStoreMainMediator.NAME) as ImprovementStoreMainMediator;
               if(_loc10_)
               {
                  facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + ImprovementStoreMainMediator.NAME);
                  if(_loc10_)
                  {
                     addr00c0:
                     facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + BoosterpackStoreMainMediator.NAME);
                     if(!_loc9_)
                     {
                        facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + ImprovementStoreMainMediator.NAME);
                        if(!_loc9_)
                        {
                           addr00ee:
                           if(_loc4_)
                           {
                              addr03da:
                              §§push(_loc3_.currentIndex);
                              if(_loc10_ || Boolean(_loc2_))
                              {
                                 var _loc8_:* = §§pop();
                                 if(_loc10_ || Boolean(this))
                                 {
                                    §§push(IngameStoreTabProxy.ARCHITECT_TAB_INDEX);
                                    if(!(_loc9_ && Boolean(this)))
                                    {
                                       §§push(_loc8_);
                                       if(!_loc9_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc9_)
                                             {
                                                §§push(0);
                                                if(_loc9_ && Boolean(param1))
                                                {
                                                   addr044a:
                                                   §§push(_loc8_);
                                                   if(_loc10_ || Boolean(param1))
                                                   {
                                                      addr045a:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            addr0464:
                                                            §§push(1);
                                                            if(_loc10_ || Boolean(param1))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr049e:
                                                            §§push(2);
                                                            if(_loc9_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(IngameStoreTabProxy.BOOSTERPACK_TAB_INDEX);
                                                         if(_loc10_ || Boolean(_loc2_))
                                                         {
                                                            addr049a:
                                                            addr0498:
                                                            if(§§pop() === _loc8_)
                                                            {
                                                               §§goto(addr049e);
                                                            }
                                                            else
                                                            {
                                                               §§push(3);
                                                            }
                                                         }
                                                      }
                                                      addr04b8:
                                                      switch(§§pop())
                                                      {
                                                         case 0:
                                                            this.handleSideMenu(_loc4_,true);
                                                            if(!_loc9_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     _loc6_.removeRelevantListener();
                                                                     if(_loc10_)
                                                                     {
                                                                        addr011f:
                                                                        if(_loc7_)
                                                                        {
                                                                           if(!(_loc9_ && Boolean(param1)))
                                                                           {
                                                                              _loc7_.removeRelevantListener();
                                                                              if(!(_loc9_ && Boolean(_loc2_)))
                                                                              {
                                                                                 addr0147:
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(_loc9_ && Boolean(_loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    _loc5_ = new ArchitectBookMediator(ArchitectBookMediator.NAME,_loc4_);
                                                                                    if(_loc10_ || Boolean(param1))
                                                                                    {
                                                                                       facade.registerMediator(_loc5_);
                                                                                    }
                                                                                 }
                                                                                 if(!_loc2_.itemConfigId)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    _loc2_.itemConfigId = -1;
                                                                                    if(!(_loc9_ && Boolean(_loc2_)))
                                                                                    {
                                                                                       addr01a6:
                                                                                       _loc5_.init(_loc2_.cat,_loc2_.itemConfigId);
                                                                                       if(!(_loc9_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_OPENED);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             sendNotification(VirtualTaskNotificationInterest.BOOSTERPACK_STORE_CLOSED);
                                                                                             if(!(_loc10_ || Boolean(param1)))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr01ed:
                                                                                             sendNotification(VirtualTaskNotificationInterest.IMPROVEMENT_SHOP_CLOSED);
                                                                                             if(_loc10_ || Boolean(_loc2_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr0361:
                                                                                             _loc6_ = new BoosterpackStoreMainMediator(BoosterpackStoreMainMediator.NAME,_loc4_);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                facade.registerMediator(_loc6_);
                                                                                             }
                                                                                             addr0382:
                                                                                             _loc6_.init();
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          addr038e:
                                                                                          sendNotification(VirtualTaskNotificationInterest.BOOSTERPACK_STORE_OPENED);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr039f:
                                                                                             sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED);
                                                                                             if(!(_loc9_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                addr03b8:
                                                                                                sendNotification(VirtualTaskNotificationInterest.IMPROVEMENT_SHOP_CLOSED);
                                                                                                if(_loc9_ && Boolean(_loc2_))
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr0234:
                                                                                       _loc5_.removeRelevantListener();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr024f:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr025b:
                                                                                             _loc6_.removeRelevantListener();
                                                                                             if(_loc10_ || Boolean(param1))
                                                                                             {
                                                                                                addr026f:
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(_loc10_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      _loc7_ = new ImprovementStoreMainMediator(ImprovementStoreMainMediator.NAME,_loc4_);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         facade.registerMediator(_loc7_);
                                                                                                      }
                                                                                                      addr02a4:
                                                                                                      _loc7_.init();
                                                                                                      if(_loc9_ && Boolean(_loc3_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      addr02b8:
                                                                                                      sendNotification(VirtualTaskNotificationInterest.IMPROVEMENT_SHOP_OPENED);
                                                                                                      if(_loc10_ || Boolean(param1))
                                                                                                      {
                                                                                                         sendNotification(VirtualTaskNotificationInterest.BOOSTERPACK_STORE_CLOSED);
                                                                                                         if(_loc9_ && Boolean(param1))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_CLOSED);
                                                                                                         if(!(_loc9_ && Boolean(param1)))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr0321:
                                                                                                         _loc5_.removeRelevantListener();
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr032d:
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(!(_loc10_ || Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr0341:
                                                                                                               _loc7_.removeRelevantListener();
                                                                                                               if(!(_loc10_ || Boolean(this)))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                            }
                                                                                                            addr0355:
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§goto(addr0361);
                                                                                                               }
                                                                                                               §§goto(addr038e);
                                                                                                            }
                                                                                                            §§goto(addr0382);
                                                                                                         }
                                                                                                         §§goto(addr039f);
                                                                                                      }
                                                                                                      §§goto(addr032d);
                                                                                                   }
                                                                                                   §§goto(addr03b8);
                                                                                                }
                                                                                                §§goto(addr02a4);
                                                                                             }
                                                                                             §§goto(addr0341);
                                                                                          }
                                                                                          §§goto(addr0321);
                                                                                       }
                                                                                       §§goto(addr026f);
                                                                                       §§goto(addr0382);
                                                                                    }
                                                                                    §§goto(addr038e);
                                                                                 }
                                                                                 §§goto(addr01a6);
                                                                              }
                                                                              §§goto(addr0234);
                                                                           }
                                                                           §§goto(addr01ed);
                                                                        }
                                                                        §§goto(addr0147);
                                                                     }
                                                                     §§goto(addr025b);
                                                                  }
                                                                  §§goto(addr038e);
                                                               }
                                                               §§goto(addr011f);
                                                            }
                                                            §§goto(addr02b8);
                                                         case 1:
                                                            this.handleSideMenu(_loc4_);
                                                            if(!(_loc9_ && Boolean(param1)))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc10_ || Boolean(param1))
                                                                  {
                                                                     §§goto(addr0234);
                                                                  }
                                                                  §§goto(addr025b);
                                                               }
                                                               §§goto(addr024f);
                                                            }
                                                            §§goto(addr0341);
                                                         case 2:
                                                            this.handleSideMenu(_loc4_);
                                                            if(_loc9_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr0321);
                                                               }
                                                               §§goto(addr0355);
                                                            }
                                                            §§goto(addr032d);
                                                      }
                                                      addr04c9:
                                                      return;
                                                      addr04b6:
                                                   }
                                                   §§goto(addr049a);
                                                }
                                                §§goto(addr04b6);
                                             }
                                             §§goto(addr049e);
                                          }
                                          else
                                          {
                                             §§push(IngameStoreTabProxy.IMPROVEMENT_TAB_INDEX);
                                             if(_loc10_ || Boolean(this))
                                             {
                                                §§goto(addr044a);
                                             }
                                          }
                                          §§goto(addr0498);
                                       }
                                       §§goto(addr045a);
                                    }
                                    §§goto(addr04b6);
                                 }
                                 §§goto(addr0464);
                              }
                              §§goto(addr04b8);
                           }
                           §§goto(addr04c9);
                        }
                        §§goto(addr03da);
                     }
                     §§goto(addr00ee);
                  }
                  §§goto(addr03da);
               }
               §§goto(addr00c0);
            }
            §§goto(addr04c9);
         }
         §§goto(addr0059);
      }
      
      private function handleSideMenu(param1:IngameStoreBook, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(param1.sideMenuComponent);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(param1.sideMenuComponent);
                     if(_loc3_)
                     {
                        addr005d:
                        §§push(param2);
                        if(_loc3_)
                        {
                           §§pop().visible = §§pop();
                           if(!(_loc4_ && Boolean(this)))
                           {
                              addr0078:
                              param1.sideMenuComponent.includeInLayout = param2;
                              addr0077:
                           }
                           §§goto(addr007a);
                        }
                        §§goto(addr0078);
                     }
                     §§goto(addr0077);
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr005d);
         }
         addr007a:
      }
   }
}

