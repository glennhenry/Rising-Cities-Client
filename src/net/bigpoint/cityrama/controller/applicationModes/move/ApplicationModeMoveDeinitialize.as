package net.bigpoint.cityrama.controller.applicationModes.move
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.cityrama.view.playfieldItemInventory.PlayfieldItemInventoryMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeMoveDeinitialize extends SimpleCommand
   {
      
      public function ApplicationModeMoveDeinitialize()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc9_:BillboardObject = null;
         var _loc10_:ClientFieldObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:Cuboid = null;
         var _loc2_:FieldMoveProxy = FieldMoveProxy(facade.retrieveProxy(FieldMoveProxy.NAME));
         var _loc3_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc4_:GridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         var _loc5_:BasementViewProxy = BasementViewProxy(facade.retrieveProxy(BasementViewProxy.NAME));
         var _loc6_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc7_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc8_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         if(!(_loc15_ && Boolean(this)))
         {
            _loc4_.tileGridVisiblity = false;
            if(_loc16_ || Boolean(_loc3_))
            {
               _loc4_.itemGridVisiblity = false;
               if(!(_loc15_ && Boolean(this)))
               {
                  addr00ec:
                  _loc6_.restrictionGridVisibility = false;
               }
            }
            var _loc13_:int = 0;
            var _loc14_:* = _loc3_.billboardList;
            loop0:
            while(true)
            {
               §§push(§§hasnext(_loc14_,_loc13_));
               if(_loc15_ && Boolean(_loc2_))
               {
                  break;
               }
               if(§§pop())
               {
                  continue;
               }
               if(!_loc15_)
               {
                  if(_loc16_ || Boolean(_loc2_))
                  {
                     if(!(_loc15_ && Boolean(param1)))
                     {
                        _loc13_ = 0;
                        if(_loc16_ || Boolean(param1))
                        {
                           _loc14_ = _loc3_.clientFieldObjectsList;
                           while(true)
                           {
                              §§push(§§hasnext(_loc14_,_loc13_));
                              break loop0;
                           }
                           addr0181:
                           addr017a:
                        }
                        addr0183:
                        if(_loc16_)
                        {
                           §§push(_loc2_.objectToMove);
                           if(_loc16_)
                           {
                              if(§§pop() != null)
                              {
                                 if(!(_loc15_ && Boolean(param1)))
                                 {
                                    §§push(_loc2_.objectToMove);
                                    if(_loc16_)
                                    {
                                       §§push(§§pop() is BillboardObject);
                                       if(_loc16_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc15_)
                                             {
                                                §§push(_loc2_.objectToMove);
                                                if(!_loc15_)
                                                {
                                                   _loc11_ = §§pop() as BillboardObject;
                                                   §§push(_loc11_.billboardObjectVo);
                                                   if(!_loc15_)
                                                   {
                                                      §§pop().matrix3dCoordinates = _loc2_.originalPosition;
                                                      if(_loc16_)
                                                      {
                                                         _loc11_.shrinkHitzone();
                                                         if(!_loc15_)
                                                         {
                                                            §§push(_loc11_.billboardObjectVo);
                                                            if(_loc16_ || Boolean(_loc2_))
                                                            {
                                                               §§push(false);
                                                               if(_loc16_ || Boolean(this))
                                                               {
                                                                  §§pop().isRestrictedByGround = §§pop();
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(_loc11_.billboardObjectVo);
                                                                     if(!(_loc15_ && Boolean(param1)))
                                                                     {
                                                                        addr0235:
                                                                        §§pop().isBlockedByObject = false;
                                                                        addr0234:
                                                                        if(_loc16_)
                                                                        {
                                                                           sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM,_loc2_.objectToMove);
                                                                           if(_loc16_ || Boolean(_loc2_))
                                                                           {
                                                                              _loc2_.objectToMove.invalidateHighlightManager(HighlightManager.COLOR_RESET);
                                                                              if(_loc16_)
                                                                              {
                                                                                 _loc3_.reAddGameObjVoToMatrix(_loc11_.billboardObjectVo);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(_loc5_.isBaseViewEnabled);
                                                                                    if(!(_loc15_ && Boolean(this)))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc15_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             _loc5_.changeBaseViewForSingleBillboard(_loc11_);
                                                                                             if(_loc16_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr02b8:
                                                                                                §§push(_loc11_ is ShopFieldObject);
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   addr02c4:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr02ce:
                                                                                                         _loc7_.addShop(_loc11_ as ShopFieldObject);
                                                                                                         if(!(_loc15_ && Boolean(this)))
                                                                                                         {
                                                                                                            (_loc11_ as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               facade.sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr032e:
                                                                                                               facade.sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  addr0384:
                                                                                                                  facade.sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
                                                                                                                  if(_loc16_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     addr039c:
                                                                                                                     PlayFieldHighlightedObjectsProxy(facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME)).resetHighlight();
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr03b5:
                                                                                                            _loc12_ = _loc11_.billboardObjectVo.matrix3dCoordinates.clone() as Cuboid;
                                                                                                            _loc12_.width += 2;
                                                                                                            addr03b1:
                                                                                                            if(_loc16_ || Boolean(param1))
                                                                                                            {
                                                                                                               _loc12_.height += 2;
                                                                                                               if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  --_loc12_.x;
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     --_loc12_.y;
                                                                                                                     if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        _loc11_.billboardObjectVo.isConnectedToStreet = _loc3_.iPlaneObjectVosByCuboid(_loc12_).length > 1;
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           addr0434:
                                                                                                                           _loc11_.invalidateIconStateManager();
                                                                                                                           if(_loc16_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              addr0567:
                                                                                                                              _loc2_.objectToMove.invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL,false);
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 addr057c:
                                                                                                                                 _loc2_.objectToMove = null;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr0581:
                                                                                                                           facade.removeProxy(FieldMoveProxy.NAME);
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              addr0592:
                                                                                                                              (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).visible(true);
                                                                                                                              if(_loc16_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 facade.removeMediator(PlayfieldItemInventoryMediator.NAME);
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    facade.removeCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE);
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
                                                                                                                                       if(_loc16_ || Boolean(_loc3_))
                                                                                                                                       {
                                                                                                                                          addr05ee:
                                                                                                                                          facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
                                                                                                                                          if(_loc16_ || Boolean(param1))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0607);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr065d);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0621);
                                                                                                                                 }
                                                                                                                                 §§goto(addr05ee);
                                                                                                                              }
                                                                                                                              §§goto(addr0621);
                                                                                                                           }
                                                                                                                           §§goto(addr05ee);
                                                                                                                        }
                                                                                                                        §§goto(addr057c);
                                                                                                                     }
                                                                                                                     §§goto(addr0581);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0434);
                                                                                                            }
                                                                                                            §§goto(addr0567);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0367:
                                                                                                            _loc8_.addObject((_loc11_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                                                                                                            if(_loc16_ || Boolean(_loc3_))
                                                                                                            {
                                                                                                               §§goto(addr0384);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr039c);
                                                                                                      }
                                                                                                      §§goto(addr032e);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(_loc11_ is ResidentialFieldObject);
                                                                                                      if(_loc16_ || Boolean(this))
                                                                                                      {
                                                                                                         addr0324:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§goto(addr032e);
                                                                                                            }
                                                                                                            §§goto(addr039c);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0355:
                                                                                                            if(_loc11_ is IEmergencyInfrastructure)
                                                                                                            {
                                                                                                               if(!(_loc15_ && Boolean(this)))
                                                                                                               {
                                                                                                                  §§goto(addr0367);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr03b1);
                                                                                                      }
                                                                                                      §§goto(addr0355);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0324);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr03b1);
                                                                                       }
                                                                                       §§goto(addr02b8);
                                                                                    }
                                                                                    §§goto(addr02c4);
                                                                                 }
                                                                                 §§goto(addr032e);
                                                                              }
                                                                           }
                                                                           §§goto(addr03b1);
                                                                        }
                                                                        §§goto(addr039c);
                                                                     }
                                                                     §§goto(addr03b5);
                                                                  }
                                                                  §§goto(addr0384);
                                                               }
                                                               §§goto(addr0235);
                                                            }
                                                            §§goto(addr0234);
                                                         }
                                                         §§goto(addr02ce);
                                                      }
                                                      §§goto(addr02b8);
                                                   }
                                                   §§goto(addr03b5);
                                                }
                                                else
                                                {
                                                   addr04aa:
                                                   addr04ae:
                                                   if(§§pop() is PlaneObject)
                                                   {
                                                      if(_loc16_ || Boolean(_loc2_))
                                                      {
                                                         §§push(_loc2_.objectToMove);
                                                         if(!_loc15_)
                                                         {
                                                            addr04ca:
                                                            (§§pop() as PlaneObject).restEventListener();
                                                            if(!_loc15_)
                                                            {
                                                               addr04f6:
                                                               sendNotification(ApplicationNotificationConstants.GROUND_MOVE_GROUND,_loc2_.objectToMove);
                                                               if(_loc16_ || Boolean(param1))
                                                               {
                                                                  TweenMax.to((_loc2_.objectToMove as IPlaneObject).container,0,{"colorTransform":{
                                                                     "tint":255,
                                                                     "tintAmount":0
                                                                  }});
                                                                  if(_loc16_ || Boolean(_loc3_))
                                                                  {
                                                                     _loc3_.reAddGameObjVoToMatrix((_loc2_.objectToMove as IPlaneObject).objectVo,_loc2_.objectToMove);
                                                                     if(_loc16_ || Boolean(_loc3_))
                                                                     {
                                                                        §§goto(addr0567);
                                                                     }
                                                                     §§goto(addr0676);
                                                                  }
                                                                  §§goto(addr065d);
                                                               }
                                                               §§goto(addr0592);
                                                            }
                                                            §§goto(addr06b6);
                                                         }
                                                         else
                                                         {
                                                            addr04e0:
                                                            (§§pop() as PierObject).restEventListener();
                                                            if(!(_loc15_ && Boolean(_loc3_)))
                                                            {
                                                               §§goto(addr04f6);
                                                            }
                                                         }
                                                         §§goto(addr065d);
                                                      }
                                                      §§goto(addr0607);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc2_.objectToMove);
                                                   }
                                                   §§goto(addr04e0);
                                                }
                                             }
                                             addr0607:
                                             facade.removeCommand(ApplicationNotificationConstants.INVENTORY_ITEM_SELECTED_FOR_MOVE);
                                             if(!(_loc15_ && Boolean(this)))
                                             {
                                                addr0621:
                                                facade.removeCommand(ApplicationNotificationConstants.INVENTORY_ITEM_DESELECTED_FOR_MOVE);
                                                if(_loc16_)
                                                {
                                                   addr0632:
                                                   facade.removeCommand(ApplicationNotificationConstants.FIELD_ITEM_DESELECTED_FOR_MOVE);
                                                   if(!(_loc15_ && Boolean(_loc2_)))
                                                   {
                                                      sendNotification(ApplicationNotificationConstants.MENU_SELECTED_DEFAULT_SUB_NAVIGATION_POINT);
                                                      if(!_loc15_)
                                                      {
                                                         addr065d:
                                                         sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                                                         if(!(_loc15_ && Boolean(this)))
                                                         {
                                                            sendNotification(ApplicationNotificationConstants.SHOW_ALL_ICONS);
                                                            addr0676:
                                                            if(!(_loc15_ && Boolean(_loc2_)))
                                                            {
                                                               addr069d:
                                                               sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_MOVE_DEINIT);
                                                               if(!(_loc15_ && Boolean(param1)))
                                                               {
                                                                  addr06b6:
                                                                  sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE_PLAYFIELD_RESOURCES);
                                                               }
                                                               §§goto(addr06c0);
                                                            }
                                                            §§goto(addr06b6);
                                                         }
                                                      }
                                                      §§goto(addr06c0);
                                                   }
                                                   §§goto(addr065d);
                                                }
                                             }
                                             addr06c0:
                                             return;
                                          }
                                          §§push(_loc2_.objectToMove);
                                          if(_loc16_ || Boolean(param1))
                                          {
                                             §§push(§§pop() is IPlaneObject);
                                             if(!_loc15_)
                                             {
                                                addr0468:
                                                if(§§pop())
                                                {
                                                   if(!(_loc15_ && Boolean(this)))
                                                   {
                                                      §§push(_loc2_.objectToMove);
                                                      if(_loc16_)
                                                      {
                                                         (§§pop() as IPlaneObject).objectVo.matrix3dCoordinates = _loc2_.originalPosition;
                                                         if(!_loc15_)
                                                         {
                                                            addr0498:
                                                            §§push(_loc2_.objectToMove);
                                                            if(_loc16_ || Boolean(_loc3_))
                                                            {
                                                               §§goto(addr04aa);
                                                            }
                                                            §§goto(addr04ca);
                                                         }
                                                         §§goto(addr0632);
                                                      }
                                                      §§goto(addr04aa);
                                                   }
                                                   §§goto(addr069d);
                                                }
                                                §§goto(addr0567);
                                             }
                                             §§goto(addr04ae);
                                          }
                                          §§goto(addr04ca);
                                       }
                                       §§goto(addr0468);
                                    }
                                    §§goto(addr04e0);
                                 }
                                 §§goto(addr0498);
                              }
                              §§goto(addr0581);
                           }
                           §§goto(addr04e0);
                        }
                        §§goto(addr0621);
                     }
                     §§goto(addr0676);
                  }
                  §§goto(addr0183);
               }
               §§goto(addr0181);
               _loc9_ = §§nextvalue(_loc13_,_loc14_);
               _loc9_.changeInteractionstate(true);
            }
            while(§§pop())
            {
               _loc10_ = §§nextvalue(_loc13_,_loc14_);
               _loc10_.changeInteractionstate(true);
               §§goto(addr017a);
            }
            §§goto(addr0181);
         }
         §§goto(addr00ec);
      }
   }
}

