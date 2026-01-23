package net.bigpoint.cityrama.controller.applicationModes.build
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.streetBuilding.StreetBuildProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.miniLayer.NoPermissionsLeftMiniLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeBuildDeinitialize extends SimpleCommand
   {
      
      public function ApplicationModeBuildDeinitialize()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:FieldBuildProxy = FieldBuildProxy(facade.retrieveProxy(FieldBuildProxy.NAME));
         var _loc3_:RestrictionProxy = RestrictionProxy(facade.retrieveProxy(RestrictionProxy.NAME));
         var _loc4_:GridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         var _loc5_:StreetBuildProxy = facade.retrieveProxy(StreetBuildProxy.NAME) as StreetBuildProxy;
         if(_loc5_ != null)
         {
            if(_loc7_ || Boolean(_loc3_))
            {
               _loc5_.endBuildMode();
               if(!(_loc6_ && Boolean(this)))
               {
                  addr0090:
                  _loc3_.restrictionGridVisibility = false;
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     _loc4_.overrideStreets = false;
                     if(!_loc6_)
                     {
                        §§push(Boolean(_loc2_));
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           var _temp_7:* = §§pop();
                           §§push(_temp_7);
                           §§push(_temp_7);
                           if(_loc7_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§pop();
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       §§push(_loc2_.billboardObjectToAdd);
                                       if(!(_loc6_ && Boolean(param1)))
                                       {
                                          §§push(§§pop() == null);
                                          if(_loc7_ || Boolean(this))
                                          {
                                             §§push(!§§pop());
                                             if(_loc7_ || Boolean(_loc2_))
                                             {
                                                addr0110:
                                                if(§§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc2_.billboardObjectToAdd);
                                                      if(_loc7_ || Boolean(this))
                                                      {
                                                         §§push(_loc2_.billboardObjectToAdd);
                                                         if(!(_loc6_ && Boolean(param1)))
                                                         {
                                                            addr0148:
                                                            §§push(§§pop() is ShopFieldObject);
                                                            if(_loc7_)
                                                            {
                                                               addr0152:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc7_ || Boolean(param1))
                                                                  {
                                                                     addr0171:
                                                                     sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr01bf:
                                                                        §§push(Boolean(_loc2_));
                                                                        if(_loc7_)
                                                                        {
                                                                           addr01c7:
                                                                           var _temp_15:* = §§pop();
                                                                           addr01c8:
                                                                           §§push(_temp_15);
                                                                           if(_temp_15)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc7_ || Boolean(this))
                                                                                 {
                                                                                    addr01f6:
                                                                                    §§push(_loc2_.planeObjectToAdd == null);
                                                                                    if(_loc7_ || Boolean(param1))
                                                                                    {
                                                                                       addr01f5:
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc7_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr0208:
                                                                                          sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc2_.planeObjectToAdd);
                                                                                          if(!(_loc6_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             addr0224:
                                                                                             facade.removeCommand(ApplicationNotificationConstants.FIELD_CLICK);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr0235:
                                                                                                facade.removeCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   facade.removeCommand(ApplicationNotificationConstants.FIELD_DRAG_STOP);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr0258:
                                                                                                      facade.removeCommand(ApplicationNotificationConstants.FIELD_DRAG_START);
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         facade.removeProxy(FieldBuildProxy.NAME);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            facade.sendNotification(ApplicationNotificationConstants.SHOW_ALL_ICONS);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               facade.sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                                                                                                               if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  addr02a4:
                                                                                                                  facade.sendNotification(VirtualTaskNotificationInterest.APPMODE_BUILD_DEINITIALZE,false);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     facade.sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE_PLAYFIELD_RESOURCES);
                                                                                                                     if(!(_loc6_ && Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        facade.sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
                                                                                                                        addr02ce:
                                                                                                                        if(_loc7_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           addr02f3:
                                                                                                                           if(facade.hasMediator(NoPermissionsLeftMiniLayerMediator.NAME))
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 addr0308:
                                                                                                                                 facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,NoPermissionsLeftMiniLayerMediator.NAME);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0317);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02ce);
                                                                                                      }
                                                                                                      §§goto(addr02f3);
                                                                                                   }
                                                                                                   addr0317:
                                                                                                   return;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr02f3);
                                                                                          }
                                                                                          §§goto(addr0235);
                                                                                       }
                                                                                       §§goto(addr0308);
                                                                                    }
                                                                                    §§goto(addr0224);
                                                                                 }
                                                                                 §§goto(addr02a4);
                                                                              }
                                                                              §§goto(addr01f5);
                                                                           }
                                                                        }
                                                                        §§goto(addr01f6);
                                                                     }
                                                                     §§goto(addr02a4);
                                                                  }
                                                                  §§goto(addr0258);
                                                               }
                                                               else
                                                               {
                                                                  addr018a:
                                                                  §§push(_loc2_.billboardObjectToAdd is ResidentialFieldObject);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc7_ || Boolean(_loc2_))
                                                                        {
                                                                           sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                                                                           if(!(_loc6_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§goto(addr01bf);
                                                                           }
                                                                           §§goto(addr0224);
                                                                        }
                                                                        §§goto(addr0235);
                                                                     }
                                                                     §§goto(addr01bf);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr01f5);
                                                         }
                                                         §§goto(addr018a);
                                                      }
                                                   }
                                                }
                                                §§goto(addr01bf);
                                             }
                                             §§goto(addr0152);
                                          }
                                          §§goto(addr01c7);
                                       }
                                       §§goto(addr0148);
                                    }
                                    §§goto(addr02a4);
                                 }
                                 §§goto(addr01f5);
                              }
                              §§goto(addr0110);
                           }
                           §§goto(addr01c8);
                        }
                        §§goto(addr0110);
                     }
                     §§goto(addr02f3);
                  }
                  §§goto(addr02ce);
               }
               §§goto(addr0171);
            }
            §§goto(addr0208);
         }
         §§goto(addr0090);
      }
   }
}

