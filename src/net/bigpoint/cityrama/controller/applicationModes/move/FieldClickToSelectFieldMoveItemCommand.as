package net.bigpoint.cityrama.controller.applicationModes.move
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldClickToSelectFieldMoveItemCommand extends SimpleCommand implements ICommand
   {
      
      public function FieldClickToSelectFieldMoveItemCommand()
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
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc11_:Vector.<ConfigGroundRestrictionDTO> = null;
         var _loc12_:BillboardObject = null;
         var _loc13_:BillboardObject = null;
         var _loc14_:ClientFieldObject = null;
         var _loc15_:IPlaneObject = null;
         var _loc2_:PlayfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
         var _loc3_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc6_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc7_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc8_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         var _loc9_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc10_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         if(!_loc18_)
         {
            §§push(_loc2_.clickObject);
            if(!_loc18_)
            {
               if(§§pop() != null)
               {
                  if(_loc19_ || Boolean(_loc2_))
                  {
                     §§push(this.canBeMoved(_loc2_.clickObject));
                     if(_loc19_ || Boolean(param1))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc18_ && Boolean(_loc2_)))
                           {
                              return;
                           }
                           addr013e:
                           §§push(_loc2_.clickObject);
                        }
                        else
                        {
                           addr012d:
                           §§push(_loc2_.clickObject);
                           if(!_loc18_)
                           {
                              addr013a:
                              if(§§pop() is BillboardObject)
                              {
                                 §§goto(addr013e);
                              }
                              else
                              {
                                 §§push(_loc2_.clickObject);
                                 if(!(_loc18_ && Boolean(_loc3_)))
                                 {
                                    if(§§pop() is IPlaneObject)
                                    {
                                       addr056e:
                                       _loc15_ = _loc2_.clickObject as IPlaneObject;
                                       if(!_loc18_)
                                       {
                                          _loc2_.clickObject = null;
                                          if(_loc19_)
                                          {
                                             §§push(Boolean(_loc15_));
                                             if(!_loc18_)
                                             {
                                                var _temp_6:* = §§pop();
                                                §§push(_temp_6);
                                                if(_temp_6)
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      §§pop();
                                                      if(_loc19_)
                                                      {
                                                         §§goto(addr05af);
                                                      }
                                                      §§goto(addr05e0);
                                                   }
                                                }
                                             }
                                             addr05af:
                                             §§goto(addr05a3);
                                          }
                                          §§goto(addr05e0);
                                       }
                                       addr05a3:
                                       if(Boolean(_loc15_.objectVo.configPlayfieldItemVo.moveable))
                                       {
                                          if(_loc19_)
                                          {
                                             _loc3_.playBuildingClick();
                                             if(!(_loc18_ && Boolean(this)))
                                             {
                                                this.removeAndRegisterCommands();
                                                if(_loc19_ || Boolean(_loc2_))
                                                {
                                                   addr05e0:
                                                   facade.sendNotification(ApplicationNotificationConstants.FIELD_ITEM_SELECTED_FOR_MOVE,_loc15_);
                                                }
                                             }
                                          }
                                          _loc11_ = _loc5_.getAllRestrictionsForItem(_loc15_.objectVo.configPlayfieldItemVo);
                                          if(_loc11_.length > 0)
                                          {
                                             if(_loc19_ || Boolean(_loc3_))
                                             {
                                                _loc5_.restrictionItem = _loc15_.objectVo;
                                                if(!_loc18_)
                                                {
                                                   _loc5_.restrictionGridSource = _loc11_;
                                                   if(!(_loc18_ && Boolean(_loc3_)))
                                                   {
                                                      _loc5_.restrictionGridVisibility = true;
                                                      if(_loc19_)
                                                      {
                                                         §§goto(addr0647);
                                                      }
                                                   }
                                                   §§goto(addr0662);
                                                }
                                                §§goto(addr0695);
                                             }
                                             §§goto(addr06a6);
                                          }
                                          addr0647:
                                          _loc9_.originalPosition = _loc15_.objectVo.matrix3dCoordinates.clone() as Cuboid;
                                          if(_loc19_)
                                          {
                                             addr0662:
                                             (_loc15_.objectVo as PlaneObjectVo).lastPositonHistoryPoint = _loc15_.objectVo.matrix3dCoordinates.clone() as Cuboid;
                                             if(_loc19_)
                                             {
                                                _loc9_.objectToMove = _loc15_ as IInteraction;
                                                if(_loc19_)
                                                {
                                                   addr0695:
                                                   _loc4_.removeGameObjectVofromMatrix(_loc15_.objectVo);
                                                   if(_loc19_)
                                                   {
                                                      _loc10_.setItemSize(_loc15_.objectVo.configPlayfieldItemVo.sizeX,_loc15_.objectVo.configPlayfieldItemVo.sizeY,_loc15_.objectVo.configPlayfieldItemVo.zLevels.length,VectorUtilities.getMinValue(_loc15_.objectVo.configPlayfieldItemVo.zLevels));
                                                      addr06a6:
                                                      if(_loc19_ || Boolean(_loc3_))
                                                      {
                                                         _loc10_.tileGridVisiblity = true;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr0701);
                                 }
                                 §§goto(addr056e);
                              }
                           }
                        }
                        addr0142:
                        _loc12_ = §§pop() as BillboardObject;
                        if(_loc19_ || Boolean(_loc3_))
                        {
                           _loc2_.clickObject = null;
                           if(!_loc18_)
                           {
                              §§push(_loc12_);
                              if(!(_loc18_ && Boolean(param1)))
                              {
                                 var _temp_15:* = §§pop();
                                 §§push(_temp_15);
                                 §§push(_temp_15);
                                 if(_loc19_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc18_ && Boolean(_loc3_)))
                                       {
                                          §§pop();
                                          if(!_loc18_)
                                          {
                                             §§goto(addr0194);
                                          }
                                          §§goto(addr0222);
                                       }
                                    }
                                    §§goto(addr01b4);
                                 }
                                 §§goto(addr01b5);
                              }
                              §§goto(addr01e5);
                           }
                           §§goto(addr0222);
                        }
                        addr0194:
                        §§push(_loc12_.billboardObjectVo);
                        if(!_loc18_)
                        {
                           §§push(§§pop().configPlayfieldItemVo.moveable);
                           if(!(_loc18_ && Boolean(_loc3_)))
                           {
                              addr01b4:
                              var _temp_18:* = §§pop();
                              addr01b5:
                              §§push(_temp_18);
                              if(_temp_18)
                              {
                                 if(_loc19_ || Boolean(this))
                                 {
                                    addr01c7:
                                    §§pop();
                                    if(!_loc18_)
                                    {
                                       §§goto(addr01e5);
                                    }
                                    §§goto(addr01f7);
                                 }
                                 §§goto(addr01e4);
                              }
                              addr01e5:
                              §§goto(addr01d2);
                           }
                           §§goto(addr01c7);
                        }
                        addr01d2:
                        §§push(_loc12_.billboardObjectVo.interactionBlockedByEmergency());
                        if(_loc19_ || Boolean(this))
                        {
                           addr01e4:
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(!(_loc18_ && Boolean(_loc3_)))
                           {
                              addr01f7:
                              _loc3_.playBuildingClick();
                              if(!(_loc18_ && Boolean(param1)))
                              {
                                 this.removeAndRegisterCommands();
                                 if(!_loc18_)
                                 {
                                    addr0216:
                                    facade.sendNotification(ApplicationNotificationConstants.FIELD_ITEM_SELECTED_FOR_MOVE,_loc12_);
                                 }
                                 addr0222:
                                 var _loc16_:int = 0;
                                 var _loc17_:* = _loc4_.billboardList;
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc17_,_loc16_));
                                    if(!(_loc19_ || Boolean(_loc3_)))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       continue;
                                    }
                                    if(_loc19_ || Boolean(param1))
                                    {
                                       if(_loc19_)
                                       {
                                          if(_loc19_ || Boolean(_loc2_))
                                          {
                                             _loc16_ = 0;
                                             if(_loc19_ || Boolean(_loc2_))
                                             {
                                                _loc17_ = _loc4_.clientFieldObjectsList;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc17_,_loc16_));
                                                   break loop0;
                                                }
                                                addr02b3:
                                                addr02ac:
                                             }
                                             §§goto(addr02b5);
                                          }
                                          §§goto(addr0541);
                                       }
                                       addr02b5:
                                       if(_loc19_ || Boolean(param1))
                                       {
                                          _loc12_.expandHitzone();
                                          if(_loc19_)
                                          {
                                             _loc11_ = _loc5_.getAllRestrictionsForItem(_loc12_.billboardObjectVo.configPlayfieldItemVo);
                                             if(_loc11_.length > 0)
                                             {
                                                if(_loc19_ || Boolean(_loc3_))
                                                {
                                                   _loc5_.restrictionItem = _loc12_.billboardObjectVo;
                                                   if(!(_loc18_ && Boolean(param1)))
                                                   {
                                                      _loc5_.restrictionGridSource = _loc11_;
                                                      if(!_loc18_)
                                                      {
                                                         _loc5_.restrictionGridVisibility = true;
                                                         if(!(_loc18_ && Boolean(param1)))
                                                         {
                                                            addr0332:
                                                            §§push(_loc6_.isBaseViewEnabled);
                                                            if(!(_loc18_ && Boolean(this)))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc19_ || Boolean(this))
                                                                  {
                                                                     addr0365:
                                                                     _loc6_.changeBaseViewForSingleBillboard(_loc12_);
                                                                     if(_loc19_)
                                                                     {
                                                                        addr0373:
                                                                        §§push(_loc12_ is IInteraction);
                                                                        if(!(_loc18_ && Boolean(param1)))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc19_)
                                                                              {
                                                                                 IInteraction(_loc12_).invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL);
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    addr03aa:
                                                                                    §§push(_loc12_ is ShopFieldObject);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr03b6:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             _loc7_.removeShop(_loc12_ as ShopFieldObject);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                addr03d2:
                                                                                                (_loc12_ as ShopFieldObject).shopFieldObjectVo.formerPosition = _loc12_.billboardObjectVo.matrix3dCoordinates.clone() as Cuboid;
                                                                                                if(_loc19_ || Boolean(this))
                                                                                                {
                                                                                                   addr03fb:
                                                                                                   addr0401:
                                                                                                   if(_loc12_ is IEmergencyInfrastructure)
                                                                                                   {
                                                                                                      if(!(_loc18_ && Boolean(param1)))
                                                                                                      {
                                                                                                         _loc8_.removeObject((_loc12_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            addr0428:
                                                                                                            this.addNeedIcons(_loc12_);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               §§goto(addr0436);
                                                                                                            }
                                                                                                            §§goto(addr04a1);
                                                                                                         }
                                                                                                         addr0436:
                                                                                                         _loc9_.originalPosition = _loc12_.billboardObjectVo.matrix3dCoordinates.clone() as Cuboid;
                                                                                                         if(!(_loc18_ && Boolean(_loc2_)))
                                                                                                         {
                                                                                                            addr0458:
                                                                                                            _loc12_.billboardObjectVo.lastPositonHistoryPoint = _loc12_.billboardObjectVo.matrix3dCoordinates.clone() as Cuboid;
                                                                                                            if(!(_loc18_ && Boolean(param1)))
                                                                                                            {
                                                                                                               _loc9_.objectToMove = _loc12_;
                                                                                                               if(!(_loc18_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  addr0491:
                                                                                                                  _loc4_.removeGameObjectVofromMatrix(_loc12_.billboardObjectVo);
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     addr04a1:
                                                                                                                     §§push(_loc10_);
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        §§push(_loc12_.billboardObjectVo);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop().configPlayfieldItemVo.walkable));
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              var _temp_41:* = §§pop();
                                                                                                                              §§push(_temp_41);
                                                                                                                              if(_temp_41)
                                                                                                                              {
                                                                                                                                 if(_loc19_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                    addr04d3:
                                                                                                                                    §§pop();
                                                                                                                                    addr04d8:
                                                                                                                                    addr04d4:
                                                                                                                                    §§push(_loc12_.billboardObjectVo.configPlayfieldItemVo.driveable);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§pop().snapping = §§pop();
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 addr04e8:
                                                                                                                                 _loc10_.setItemSize(_loc12_.billboardObjectVo.configPlayfieldItemVo.sizeX,_loc12_.billboardObjectVo.configPlayfieldItemVo.sizeY,_loc12_.billboardObjectVo.configPlayfieldItemVo.zLevels.length,VectorUtilities.getMinValue(_loc12_.billboardObjectVo.configPlayfieldItemVo.zLevels));
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    addr0525:
                                                                                                                                    _loc10_.tileGridVisiblity = true;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr0701);
                                                                                                                           }
                                                                                                                           §§goto(addr04d3);
                                                                                                                        }
                                                                                                                        §§goto(addr04d8);
                                                                                                                     }
                                                                                                                     §§goto(addr04d4);
                                                                                                                  }
                                                                                                                  §§goto(addr04e8);
                                                                                                               }
                                                                                                               §§goto(addr0701);
                                                                                                            }
                                                                                                            §§goto(addr0491);
                                                                                                         }
                                                                                                         §§goto(addr0701);
                                                                                                      }
                                                                                                      §§goto(addr0525);
                                                                                                   }
                                                                                                   §§goto(addr0428);
                                                                                                }
                                                                                                §§goto(addr0458);
                                                                                             }
                                                                                             §§goto(addr0701);
                                                                                          }
                                                                                          §§goto(addr0525);
                                                                                       }
                                                                                       §§goto(addr03fb);
                                                                                    }
                                                                                    §§goto(addr0401);
                                                                                 }
                                                                                 §§goto(addr0525);
                                                                              }
                                                                              §§goto(addr0436);
                                                                           }
                                                                           §§goto(addr03aa);
                                                                        }
                                                                        §§goto(addr0401);
                                                                     }
                                                                     §§goto(addr03d2);
                                                                  }
                                                                  §§goto(addr0525);
                                                               }
                                                               §§goto(addr0373);
                                                            }
                                                            §§goto(addr03b6);
                                                         }
                                                         §§goto(addr0365);
                                                      }
                                                      §§goto(addr03fb);
                                                   }
                                                   §§goto(addr03aa);
                                                }
                                                §§goto(addr04a1);
                                             }
                                             §§goto(addr0332);
                                          }
                                          else
                                          {
                                             addr0541:
                                             facade.sendNotification(MiniLayerConstants.OPEN_MINI_MOVE_BLOCKED);
                                          }
                                       }
                                       §§goto(addr0701);
                                    }
                                    §§goto(addr02b3);
                                    _loc13_ = §§nextvalue(_loc16_,_loc17_);
                                    _loc13_.changeInteractionstate(false);
                                 }
                                 while(§§pop())
                                 {
                                    _loc14_ = §§nextvalue(_loc16_,_loc17_);
                                    _loc14_.changeInteractionstate(false);
                                    §§goto(addr02ac);
                                 }
                                 §§goto(addr02b3);
                              }
                           }
                           §§goto(addr0216);
                        }
                        else if(_loc12_.billboardObjectVo.interactionBlockedByEmergency())
                        {
                           if(_loc19_)
                           {
                              §§goto(addr0541);
                           }
                        }
                        §§goto(addr0701);
                     }
                     §§goto(addr013a);
                  }
                  §§goto(addr013e);
               }
               addr0701:
               return;
            }
            §§goto(addr0142);
         }
         §§goto(addr012d);
      }
      
      private function removeAndRegisterCommands() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
            if(_loc2_ || _loc1_)
            {
               facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToPlaceFieldMoveItemCommand);
               if(_loc2_)
               {
                  addr005c:
                  facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
                  if(!(_loc1_ && _loc1_))
                  {
                     facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
                  }
               }
            }
            return;
         }
         §§goto(addr005c);
      }
      
      private function addNeedIcons(param1:BillboardObject) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = null;
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(param1 is ShopFieldObject);
            if(!_loc4_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr004d:
                     §§pop();
                     if(_loc3_)
                     {
                        §§goto(addr0064);
                     }
                     §§goto(addr0068);
                  }
               }
               addr0064:
               §§goto(addr0053);
            }
            §§goto(addr004d);
         }
         addr0053:
         if(param1 is ResidentialFieldObject)
         {
            addr0068:
            _loc2_ = new Object();
            if(!_loc4_)
            {
               _loc2_.vo = param1.billboardObjectVo;
               if(!_loc4_)
               {
                  _loc2_.rollOver = false;
                  if(!_loc4_)
                  {
                     addr0090:
                     facade.sendNotification(ApplicationNotificationConstants.SHOW_NEED_ICONS,_loc2_);
                  }
               }
               §§goto(addr009b);
            }
            §§goto(addr0090);
         }
         addr009b:
      }
      
      private function canBeMoved(param1:IInteraction) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:BillboardObject = null;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(param1 is BillboardObject);
            if(_loc4_ || Boolean(param1))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     _loc2_ = param1 as BillboardObject;
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push(_loc2_.billboardObjectVo);
                        if(_loc4_)
                        {
                           §§push(§§pop().isExpansionObject);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop());
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 var _temp_7:* = §§pop();
                                 §§push(_temp_7);
                                 if(!_temp_7)
                                 {
                                    if(_loc4_)
                                    {
                                       §§pop();
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr00a6:
                                          §§push(!_loc2_.billboardObjectVo.configPlayfieldItemVo.moveable);
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr00bb:
                                             if(§§pop())
                                             {
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   §§push(false);
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      §§goto(addr00e8);
                                                   }
                                                }
                                                else
                                                {
                                                   addr0104:
                                                   §§push(true);
                                                }
                                                §§goto(addr0105);
                                             }
                                             §§goto(addr0104);
                                          }
                                          §§goto(addr00e8);
                                       }
                                       §§goto(addr0104);
                                    }
                                    addr00e8:
                                    return §§pop();
                                 }
                                 §§goto(addr00bb);
                              }
                           }
                           addr0105:
                           return §§pop();
                        }
                        §§goto(addr00a6);
                     }
                  }
               }
               else
               {
                  §§push(param1 is ClientFieldObject);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§goto(addr0103);
                        }
                     }
                     §§goto(addr0104);
                  }
                  §§goto(addr0103);
               }
               §§goto(addr0104);
            }
            addr0103:
            return false;
         }
         §§goto(addr0104);
      }
   }
}

