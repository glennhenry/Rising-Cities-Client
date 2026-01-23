package net.bigpoint.cityrama.controller.applicationModes.move.playfieldItemInventory
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationModes.move.FieldClickToSelectFieldMoveItemCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOutForMoveCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOverForMoveCommand;
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
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers.HighlightManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ResetSelectedFieldItemForMoveCommand extends SimpleCommand implements ICommand
   {
      
      public function ResetSelectedFieldItemForMoveCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
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
         var _loc2_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         var _loc3_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc6_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc7_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc8_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         if(_loc16_)
         {
            if(_loc5_.objectToMove != null)
            {
               if(!_loc15_)
               {
                  _loc2_.tileGridVisiblity = false;
                  if(!_loc15_)
                  {
                     addr00cc:
                     _loc2_.itemGridVisiblity = false;
                     if(_loc16_)
                     {
                        addr00d7:
                        sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                        if(_loc16_)
                        {
                           _loc3_.restrictionGridVisibility = false;
                        }
                     }
                     var _loc13_:int = 0;
                     var _loc14_:* = _loc4_.billboardList;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc14_,_loc13_));
                        if(!_loc16_)
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
                              if(_loc16_)
                              {
                                 _loc13_ = 0;
                                 if(!_loc15_)
                                 {
                                    addr0142:
                                    _loc14_ = _loc4_.clientFieldObjectsList;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc14_,_loc13_));
                                       break loop0;
                                    }
                                    addr0166:
                                    addr015f:
                                 }
                                 if(_loc16_ || Boolean(_loc2_))
                                 {
                                    facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
                                    if(_loc16_)
                                    {
                                       facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
                                       if(!(_loc15_ && Boolean(this)))
                                       {
                                          addr01a6:
                                          facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
                                          if(_loc16_ || Boolean(this))
                                          {
                                             addr01c1:
                                             §§push(_loc5_.objectToMove);
                                             if(_loc16_ || Boolean(param1))
                                             {
                                                §§push(§§pop() is BillboardObject);
                                                if(_loc16_ || Boolean(_loc2_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         addr01ef:
                                                         §§push(_loc5_.objectToMove);
                                                         if(!(_loc15_ && Boolean(_loc2_)))
                                                         {
                                                            _loc11_ = §§pop() as BillboardObject;
                                                            §§push(_loc11_.billboardObjectVo);
                                                            if(_loc16_)
                                                            {
                                                               §§pop().matrix3dCoordinates = _loc5_.originalPosition;
                                                               if(!(_loc15_ && Boolean(_loc2_)))
                                                               {
                                                                  _loc11_.shrinkHitzone();
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(_loc11_.billboardObjectVo);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(false);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§pop().isRestrictedByGround = §§pop();
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(_loc11_.billboardObjectVo);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr0259:
                                                                                 §§pop().isBlockedByObject = false;
                                                                                 addr0258:
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    addr0262:
                                                                                    sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM,_loc11_);
                                                                                    if(_loc16_ || Boolean(_loc2_))
                                                                                    {
                                                                                       _loc5_.objectToMove.invalidateHighlightManager(HighlightManager.COLOR_RESET);
                                                                                       if(!(_loc15_ && Boolean(this)))
                                                                                       {
                                                                                          addr0299:
                                                                                          _loc4_.reAddGameObjVoToMatrix(_loc11_.billboardObjectVo);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push(_loc6_.isBaseViewEnabled);
                                                                                             if(_loc16_ || Boolean(_loc3_))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                   {
                                                                                                      _loc6_.changeBaseViewForSingleBillboard(_loc11_);
                                                                                                      if(_loc16_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         addr02f3:
                                                                                                         §§push(_loc11_ is ShopFieldObject);
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            addr02ff:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc16_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  _loc7_.addShop(_loc11_ as ShopFieldObject);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     (_loc11_ as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        addr0336:
                                                                                                                        facade.sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr039e:
                                                                                                                     _loc8_.addObject((_loc11_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        addr03b3:
                                                                                                                        facade.sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
                                                                                                                        if(_loc16_ || Boolean(this))
                                                                                                                        {
                                                                                                                           addr03cb:
                                                                                                                           PlayFieldHighlightedObjectsProxy(facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME)).resetHighlight();
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr03e4:
                                                                                                                  _loc12_ = _loc11_.billboardObjectVo.matrix3dCoordinates.clone() as Cuboid;
                                                                                                                  _loc12_.width += 2;
                                                                                                                  addr03e0:
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     _loc12_.height += 2;
                                                                                                                     if(_loc16_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        --_loc12_.x;
                                                                                                                        if(_loc16_ || Boolean(_loc2_))
                                                                                                                        {
                                                                                                                           --_loc12_.y;
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              _loc11_.billboardObjectVo.isConnectedToStreet = _loc4_.iPlaneObjectVosByCuboid(_loc12_).length > 1;
                                                                                                                              if(_loc16_)
                                                                                                                              {
                                                                                                                                 §§goto(addr045c);
                                                                                                                              }
                                                                                                                              §§goto(addr05ab);
                                                                                                                           }
                                                                                                                           addr045c:
                                                                                                                           _loc11_.invalidateIconStateManager();
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              addr0589:
                                                                                                                              _loc5_.objectToMove.invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL,false);
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 _loc5_.objectToMove = null;
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    addr05ab:
                                                                                                                                    sendNotification(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
                                                                                                                                 }
                                                                                                                                 §§goto(addr05b5);
                                                                                                                              }
                                                                                                                              §§goto(addr05ab);
                                                                                                                           }
                                                                                                                           §§goto(addr05b5);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr05b5);
                                                                                                                  }
                                                                                                                  §§goto(addr045c);
                                                                                                               }
                                                                                                               §§goto(addr03b3);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(_loc11_ is ResidentialFieldObject);
                                                                                                               if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc16_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        facade.sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§goto(addr03b3);
                                                                                                                        }
                                                                                                                        §§goto(addr03e0);
                                                                                                                     }
                                                                                                                     §§goto(addr03cb);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr038c:
                                                                                                                     if(_loc11_ is IEmergencyInfrastructure)
                                                                                                                     {
                                                                                                                        if(!(_loc15_ && Boolean(_loc2_)))
                                                                                                                        {
                                                                                                                           §§goto(addr039e);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr03e0);
                                                                                                               }
                                                                                                               §§goto(addr038c);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr038c);
                                                                                                      }
                                                                                                      §§goto(addr03cb);
                                                                                                   }
                                                                                                   §§goto(addr03b3);
                                                                                                }
                                                                                                §§goto(addr02f3);
                                                                                             }
                                                                                             §§goto(addr02ff);
                                                                                          }
                                                                                          §§goto(addr039e);
                                                                                       }
                                                                                       §§goto(addr03e0);
                                                                                    }
                                                                                    §§goto(addr03b3);
                                                                                 }
                                                                                 §§goto(addr0336);
                                                                              }
                                                                              §§goto(addr03e4);
                                                                           }
                                                                           §§goto(addr0262);
                                                                        }
                                                                        §§goto(addr0259);
                                                                     }
                                                                     §§goto(addr03e4);
                                                                  }
                                                                  §§goto(addr0299);
                                                               }
                                                               §§goto(addr03e0);
                                                            }
                                                            §§goto(addr0258);
                                                         }
                                                         else
                                                         {
                                                            addr04c6:
                                                            addr04ca:
                                                            if(§§pop() is PlaneObject)
                                                            {
                                                               if(!(_loc15_ && Boolean(_loc3_)))
                                                               {
                                                                  addr04dc:
                                                                  §§push(_loc5_.objectToMove);
                                                                  if(_loc16_)
                                                                  {
                                                                     addr04e7:
                                                                     (§§pop() as PlaneObject).restEventListener();
                                                                     if(_loc16_)
                                                                     {
                                                                        addr0514:
                                                                        sendNotification(ApplicationNotificationConstants.GROUND_MOVE_GROUND,_loc5_.objectToMove);
                                                                        if(_loc16_ || Boolean(_loc2_))
                                                                        {
                                                                           TweenMax.to((_loc5_.objectToMove as IPlaneObject).container,0,{"colorTransform":{
                                                                              "tint":255,
                                                                              "tintAmount":0
                                                                           }});
                                                                           if(_loc16_ || Boolean(_loc2_))
                                                                           {
                                                                              _loc4_.reAddGameObjVoToMatrix((_loc5_.objectToMove as IPlaneObject).objectVo,_loc5_.objectToMove);
                                                                              addr0565:
                                                                           }
                                                                           §§goto(addr0589);
                                                                        }
                                                                        §§goto(addr0565);
                                                                     }
                                                                     §§goto(addr0589);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr04fe:
                                                                     (§§pop() as PierObject).restEventListener();
                                                                     if(_loc16_ || Boolean(param1))
                                                                     {
                                                                        §§goto(addr0514);
                                                                     }
                                                                  }
                                                                  §§goto(addr0565);
                                                               }
                                                               §§goto(addr0514);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc5_.objectToMove);
                                                            }
                                                            §§goto(addr04fe);
                                                         }
                                                      }
                                                      §§goto(addr0514);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc5_.objectToMove);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(§§pop() is IPlaneObject);
                                                         if(!(_loc15_ && Boolean(_loc2_)))
                                                         {
                                                            addr0489:
                                                            if(§§pop())
                                                            {
                                                               if(_loc16_ || Boolean(_loc2_))
                                                               {
                                                                  §§push(_loc5_.objectToMove);
                                                                  if(!_loc15_)
                                                                  {
                                                                     (§§pop() as IPlaneObject).objectVo.matrix3dCoordinates = _loc5_.originalPosition;
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(_loc5_.objectToMove);
                                                                        if(_loc16_)
                                                                        {
                                                                           §§goto(addr04c6);
                                                                        }
                                                                        §§goto(addr04e7);
                                                                     }
                                                                     §§goto(addr0589);
                                                                  }
                                                                  §§goto(addr04c6);
                                                               }
                                                               §§goto(addr04dc);
                                                            }
                                                            §§goto(addr0589);
                                                         }
                                                         §§goto(addr04ca);
                                                      }
                                                   }
                                                   §§goto(addr04c6);
                                                }
                                                §§goto(addr0489);
                                             }
                                             §§goto(addr04c6);
                                          }
                                          §§goto(addr0589);
                                       }
                                       §§goto(addr01c1);
                                    }
                                    §§goto(addr01ef);
                                 }
                                 §§goto(addr01a6);
                              }
                              §§goto(addr04dc);
                           }
                           §§goto(addr0142);
                        }
                        §§goto(addr0166);
                        _loc9_ = §§nextvalue(_loc13_,_loc14_);
                        _loc9_.changeInteractionstate(true);
                     }
                     while(§§pop())
                     {
                        _loc10_ = §§nextvalue(_loc13_,_loc14_);
                        _loc10_.changeInteractionstate(true);
                        §§goto(addr015f);
                     }
                     §§goto(addr0166);
                  }
                  §§goto(addr00d7);
               }
               §§goto(addr00cc);
            }
            addr05b5:
            return;
         }
         §§goto(addr00d7);
      }
   }
}

