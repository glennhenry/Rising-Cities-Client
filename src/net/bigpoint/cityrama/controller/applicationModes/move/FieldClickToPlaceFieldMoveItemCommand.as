package net.bigpoint.cityrama.controller.applicationModes.move
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
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
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldClickToPlaceFieldMoveItemCommand extends SimpleCommand implements ICommand
   {
      
      public function FieldClickToPlaceFieldMoveItemCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      private static function checkForIdenticalPosition(param1:Cuboid, param2:Cuboid) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(param1.y == param2.y);
            if(!_loc4_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!(_loc4_ && FieldClickToPlaceFieldMoveItemCommand))
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        if(_loc3_ || FieldClickToPlaceFieldMoveItemCommand)
                        {
                           §§goto(addr0091);
                        }
                        §§goto(addr0088);
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0075);
            }
            addr0091:
            §§goto(addr0068);
         }
         addr0068:
         §§push(param1.x == param2.x);
         if(_loc3_)
         {
            addr0074:
            var _temp_5:* = §§pop();
            addr0075:
            §§push(_temp_5);
            if(_temp_5)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§pop();
                  addr0088:
                  return param1.z == param2.z;
               }
            }
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc21_:Boolean = true;
         var _loc22_:* = §§pop();
         var _loc11_:IInteraction = null;
         var _loc12_:ConfigPlayfieldItemDTO = null;
         var _loc13_:BillboardObject = null;
         var _loc14_:ClientFieldObject = null;
         var _loc15_:BillboardObject = null;
         var _loc16_:SecurityGradeHeatMapMediator = null;
         var _loc17_:SecurityGradeHeatMapMediator = null;
         var _loc18_:IPlaneObject = null;
         var _loc2_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc3_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         var _loc4_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc5_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc7_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc8_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         var _loc9_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc10_:PlayFieldHighlightedObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
         if(!(_loc22_ && Boolean(param1)))
         {
            §§push(_loc2_.objectToMove);
            if(!(_loc22_ && Boolean(this)))
            {
               §§push(§§pop() == null);
               if(!(_loc22_ && Boolean(this)))
               {
                  §§push(!§§pop());
                  if(_loc21_ || Boolean(this))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(_loc21_)
                        {
                           addr0131:
                           §§pop();
                           if(_loc21_ || Boolean(param1))
                           {
                              §§goto(addr014b);
                           }
                           §§goto(addr014f);
                        }
                     }
                     §§goto(addr014b);
                  }
                  §§goto(addr0131);
               }
               addr014b:
               §§goto(addr0140);
            }
            §§goto(addr0153);
         }
         addr0140:
         §§push(_loc3_.selectedRectangleIsFree);
         if(!_loc22_)
         {
            §§push(§§pop());
         }
         if(§§pop())
         {
            addr014f:
            addr0153:
            _loc11_ = _loc2_.objectToMove;
            §§push(_loc11_ is BillboardObject);
            if(_loc21_)
            {
               if(§§pop())
               {
                  if(_loc21_ || Boolean(this))
                  {
                     _loc12_ = (_loc11_ as BillboardObject).billboardObjectVo.configPlayfieldItemVo;
                     if(_loc21_ || Boolean(_loc2_))
                     {
                        addr01b2:
                        §§push(_loc4_.positionPossible(_loc12_));
                        if(!_loc22_)
                        {
                           if(§§pop())
                           {
                              if(!_loc22_)
                              {
                                 addr01ca:
                                 §§push(_loc11_ is BillboardObject);
                                 if(!(_loc22_ && Boolean(_loc3_)))
                                 {
                                    addr01dd:
                                    if(§§pop())
                                    {
                                       if(!(_loc22_ && Boolean(_loc2_)))
                                       {
                                          _loc15_ = _loc11_ as BillboardObject;
                                          if(_loc21_ || Boolean(param1))
                                          {
                                             _loc5_.playBuildingClick();
                                             if(_loc21_)
                                             {
                                                _loc15_.billboardObjectVo.matrix3dCoordinates = _loc3_.selectedCuboid;
                                                if(_loc21_)
                                                {
                                                   _loc15_.shrinkHitzone();
                                                   if(!(_loc22_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(checkForIdenticalPosition(_loc3_.selectedCuboid,_loc2_.originalPosition));
                                                      if(_loc21_ || Boolean(this))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc21_ || Boolean(this))
                                                            {
                                                               §§push(_loc15_ is DecorationFieldObject);
                                                               if(!(_loc22_ && Boolean(this)))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc22_)
                                                                     {
                                                                        sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_MOVE,_loc15_.billboardObjectVo);
                                                                        if(_loc21_)
                                                                        {
                                                                           addr02b2:
                                                                           §§push(_loc15_ is IEmergencyInfrastructure);
                                                                           if(_loc21_ || Boolean(this))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    _loc16_ = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
                                                                                    _loc16_.hideRangeRect();
                                                                                    addr03b2:
                                                                                    TweenMax.to(_loc15_.presentation,0,{"colorTransform":{
                                                                                       "tint":0,
                                                                                       "tintAmount":0
                                                                                    }});
                                                                                    if(_loc21_ || Boolean(_loc2_))
                                                                                    {
                                                                                       addr03de:
                                                                                       §§push(_loc15_ is ShopFieldObject);
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc22_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                addr03fc:
                                                                                                sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   addr0440:
                                                                                                   addr0445:
                                                                                                   if(_loc9_.isBaseViewEnabled)
                                                                                                   {
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         addr044f:
                                                                                                         _loc9_.changeBaseViewForSingleBillboard(_loc15_);
                                                                                                         if(_loc21_ || Boolean(param1))
                                                                                                         {
                                                                                                            addr050f:
                                                                                                            sendNotification(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               addr051f:
                                                                                                               _loc4_.restrictionGridVisibility = false;
                                                                                                               if(_loc21_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  addr0533:
                                                                                                                  _loc2_.objectToMove = null;
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     _loc3_.tileGridVisiblity = false;
                                                                                                                     if(!(_loc22_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        addr0551:
                                                                                                                        _loc3_.itemGridVisiblity = false;
                                                                                                                        if(_loc21_ || Boolean(this))
                                                                                                                        {
                                                                                                                           addr0564:
                                                                                                                           sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              addr0575:
                                                                                                                              _loc10_.resetHighlightedShops();
                                                                                                                              if(!(_loc22_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 addr0589:
                                                                                                                                 _loc10_.resetHighlight();
                                                                                                                                 if(_loc21_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr059d:
                                                                                                                                    facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
                                                                                                                                    if(!(_loc22_ && Boolean(_loc3_)))
                                                                                                                                    {
                                                                                                                                       addr05b8:
                                                                                                                                       facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
                                                                                                                                       if(!_loc22_)
                                                                                                                                       {
                                                                                                                                          addr05cb:
                                                                                                                                          facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr05d8:
                                                                                                                                    var _loc19_:int = 0;
                                                                                                                                    var _loc20_:* = _loc6_.billboardList;
                                                                                                                                    loop0:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§hasnext(_loc20_,_loc19_));
                                                                                                                                       if(_loc22_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          if(_loc21_ || Boolean(param1))
                                                                                                                                          {
                                                                                                                                             if(!_loc22_)
                                                                                                                                             {
                                                                                                                                                _loc19_ = 0;
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   addr0639:
                                                                                                                                                   _loc20_ = _loc6_.clientFieldObjectsList;
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§hasnext(_loc20_,_loc19_));
                                                                                                                                                      break loop0;
                                                                                                                                                   }
                                                                                                                                                   addr065d:
                                                                                                                                                   addr0656:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr0661);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0639);
                                                                                                                                       }
                                                                                                                                       §§goto(addr065d);
                                                                                                                                       _loc13_ = §§nextvalue(_loc19_,_loc20_);
                                                                                                                                       _loc13_.changeInteractionstate(true);
                                                                                                                                    }
                                                                                                                                    while(§§pop())
                                                                                                                                    {
                                                                                                                                       _loc14_ = §§nextvalue(_loc19_,_loc20_);
                                                                                                                                       _loc14_.changeInteractionstate(true);
                                                                                                                                       §§goto(addr0656);
                                                                                                                                    }
                                                                                                                                    §§goto(addr065d);
                                                                                                                                 }
                                                                                                                                 §§goto(addr05b8);
                                                                                                                              }
                                                                                                                              §§goto(addr05cb);
                                                                                                                           }
                                                                                                                           §§goto(addr0589);
                                                                                                                        }
                                                                                                                        §§goto(addr05cb);
                                                                                                                     }
                                                                                                                     §§goto(addr0589);
                                                                                                                  }
                                                                                                                  §§goto(addr05d8);
                                                                                                               }
                                                                                                               §§goto(addr0564);
                                                                                                            }
                                                                                                            §§goto(addr05d8);
                                                                                                         }
                                                                                                         §§goto(addr05cb);
                                                                                                      }
                                                                                                      §§goto(addr05d8);
                                                                                                   }
                                                                                                   §§goto(addr050f);
                                                                                                }
                                                                                                §§goto(addr0589);
                                                                                             }
                                                                                             §§goto(addr044f);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_loc15_ is ResidentialFieldObject);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                addr041d:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      addr0427:
                                                                                                      sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                                                                                                      if(_loc21_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         §§goto(addr0440);
                                                                                                      }
                                                                                                      §§goto(addr051f);
                                                                                                   }
                                                                                                   §§goto(addr059d);
                                                                                                }
                                                                                                §§goto(addr0440);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0445);
                                                                                    }
                                                                                    §§goto(addr0551);
                                                                                 }
                                                                                 §§goto(addr0575);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0372:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    _loc8_.addObject((_loc15_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                                                                                    if(_loc21_ || Boolean(_loc2_))
                                                                                    {
                                                                                       _loc17_ = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
                                                                                       _loc17_.hideRangeRect();
                                                                                       §§goto(addr03b2);
                                                                                    }
                                                                                    §§goto(addr03de);
                                                                                 }
                                                                                 §§goto(addr0440);
                                                                              }
                                                                           }
                                                                           §§goto(addr03b2);
                                                                        }
                                                                        §§goto(addr0533);
                                                                     }
                                                                     §§goto(addr0427);
                                                                  }
                                                                  else
                                                                  {
                                                                     sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_MOVE_BUILDING,_loc15_.billboardObjectVo);
                                                                     if(_loc21_)
                                                                     {
                                                                        §§goto(addr02b2);
                                                                     }
                                                                  }
                                                                  §§goto(addr051f);
                                                               }
                                                               §§goto(addr0445);
                                                            }
                                                            else
                                                            {
                                                               addr0320:
                                                               _loc7_.addShop(_loc15_ as ShopFieldObject);
                                                               if(_loc21_)
                                                               {
                                                                  (_loc15_ as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
                                                                  if(!(_loc22_ && Boolean(this)))
                                                                  {
                                                                     addr034d:
                                                                     sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                                                                     if(!_loc22_)
                                                                     {
                                                                        addr035e:
                                                                        §§push(_loc15_ is IEmergencyInfrastructure);
                                                                        if(!(_loc22_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§goto(addr0372);
                                                                        }
                                                                        §§goto(addr041d);
                                                                     }
                                                                     §§goto(addr059d);
                                                                  }
                                                                  §§goto(addr044f);
                                                               }
                                                               §§goto(addr034d);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc6_.reAddGameObjVoToMatrix(_loc15_.billboardObjectVo);
                                                            if(_loc21_)
                                                            {
                                                               addr02fd:
                                                               §§push(_loc15_ is ShopFieldObject);
                                                               if(_loc21_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc22_)
                                                                     {
                                                                        §§goto(addr0320);
                                                                     }
                                                                     §§goto(addr034d);
                                                                  }
                                                                  §§goto(addr035e);
                                                               }
                                                               §§goto(addr0372);
                                                            }
                                                         }
                                                         §§goto(addr059d);
                                                      }
                                                      §§goto(addr041d);
                                                   }
                                                   §§goto(addr051f);
                                                }
                                                §§goto(addr03fc);
                                             }
                                             §§goto(addr02fd);
                                          }
                                          §§goto(addr0533);
                                       }
                                       else
                                       {
                                          addr0473:
                                          _loc18_ = _loc11_ as IPlaneObject;
                                          _loc18_.objectVo.matrix3dCoordinates = _loc3_.selectedCuboid;
                                          if(_loc21_)
                                          {
                                             _loc5_.playStreetBuild();
                                             if(_loc21_ || Boolean(param1))
                                             {
                                                if(!checkForIdenticalPosition(_loc3_.selectedCuboid,_loc2_.originalPosition))
                                                {
                                                   if(_loc21_)
                                                   {
                                                      sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_MOVE_GROUND,_loc18_.objectVo);
                                                      if(_loc21_)
                                                      {
                                                      }
                                                      addr04f1:
                                                      TweenMax.to(_loc18_.container,0,{"colorTransform":{
                                                         "tint":0,
                                                         "tintAmount":0
                                                      }});
                                                   }
                                                }
                                                else
                                                {
                                                   _loc6_.reAddGameObjVoToMatrix(_loc18_.objectVo,_loc11_);
                                                   if(!(_loc22_ && Boolean(this)))
                                                   {
                                                      §§goto(addr04f1);
                                                   }
                                                }
                                             }
                                             §§goto(addr050f);
                                          }
                                          §§goto(addr04f1);
                                       }
                                    }
                                    else
                                    {
                                       addr046f:
                                       if(_loc11_ is IPlaneObject)
                                       {
                                          §§goto(addr0473);
                                       }
                                    }
                                    §§goto(addr050f);
                                 }
                                 §§goto(addr046f);
                              }
                              §§goto(addr0473);
                           }
                           §§goto(addr0661);
                        }
                        §§goto(addr01dd);
                     }
                     §§goto(addr01ca);
                  }
                  else
                  {
                     addr01a1:
                     _loc12_ = (_loc11_ as IPlaneObject).objectVo.configPlayfieldItemVo;
                  }
               }
               else
               {
                  addr019d:
                  if(_loc2_.objectToMove is IPlaneObject)
                  {
                     §§goto(addr01a1);
                  }
               }
               §§goto(addr01b2);
            }
            §§goto(addr019d);
         }
         addr0661:
      }
   }
}

