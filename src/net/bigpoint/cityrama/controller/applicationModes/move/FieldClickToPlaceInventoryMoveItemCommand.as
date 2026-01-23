package net.bigpoint.cityrama.controller.applicationModes.move
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldClickToPlaceInventoryMoveItemCommand extends SimpleCommand implements ICommand
   {
      
      public function FieldClickToPlaceInventoryMoveItemCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
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
         var _loc10_:BillboardObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:ClientFieldObject = null;
         var _loc2_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc3_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         var _loc4_:RestrictionProxy = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
         var _loc5_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc6_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc7_:PlayFieldHighlightedObjectsProxy = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
         var _loc8_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(!(_loc15_ && Boolean(this)))
         {
            §§push(_loc2_.objectToMove);
            if(!_loc15_)
            {
               §§push(§§pop() == null);
               if(!_loc15_)
               {
                  §§push(!§§pop());
                  if(!(_loc15_ && Boolean(_loc3_)))
                  {
                     §§goto(addr00db);
                  }
                  §§goto(addr00ee);
               }
               addr00db:
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(_temp_4)
               {
                  if(_loc16_ || Boolean(_loc2_))
                  {
                     addr00ee:
                     §§pop();
                     if(_loc16_ || Boolean(this))
                     {
                        §§push(_loc3_.selectedRectangleIsFree);
                        if(!(_loc15_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop());
                           if(!(_loc15_ && Boolean(_loc2_)))
                           {
                              §§goto(addr011e);
                           }
                        }
                        §§goto(addr0137);
                     }
                     §§goto(addr013b);
                  }
               }
               addr011e:
               if(§§pop())
               {
                  if(_loc16_ || Boolean(param1))
                  {
                     addr0137:
                     addr0134:
                     if(_loc2_.objectToMove is BillboardObject)
                     {
                        addr013b:
                        _loc9_ = BillboardObject(_loc2_.objectToMove);
                        if(_loc16_)
                        {
                           if(_loc4_.positionPossible(_loc9_.billboardObjectVo.configPlayfieldItemVo))
                           {
                              if(_loc16_ || Boolean(this))
                              {
                                 _loc5_.playBuildingClick();
                                 if(_loc16_ || Boolean(param1))
                                 {
                                    addr0181:
                                    _loc9_.billboardObjectVo.matrix3dCoordinates = _loc3_.selectedCuboid;
                                    if(_loc16_ || Boolean(_loc2_))
                                    {
                                       addr019a:
                                       _loc9_.shrinkHitzone();
                                       if(!_loc15_)
                                       {
                                          addr01a6:
                                          _loc8_.addGameObjectByData(_loc9_.billboardObjectVo);
                                       }
                                    }
                                    _loc10_ = BillboardObject(_loc8_.getObjectByVo(_loc9_.billboardObjectVo));
                                    if(!(_loc15_ && Boolean(param1)))
                                    {
                                       §§push(_loc6_.isBaseViewEnabled);
                                       if(_loc16_ || Boolean(this))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc16_)
                                             {
                                                _loc6_.changeBaseViewForSingleBillboard(_loc10_);
                                                if(!_loc15_)
                                                {
                                                   addr0209:
                                                   facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_MOVE_INVENTORYITEM_TO_PLAYFIELD,_loc9_);
                                                   if(!(_loc15_ && Boolean(param1)))
                                                   {
                                                      facade.sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc9_);
                                                      if(!_loc15_)
                                                      {
                                                         sendNotification(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
                                                         if(_loc16_)
                                                         {
                                                            addr0246:
                                                            §§push(_loc10_ is ShopFieldObject);
                                                            if(!(_loc15_ && Boolean(_loc3_)))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     addr0264:
                                                                     sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                                                                     if(_loc16_)
                                                                     {
                                                                        addr029a:
                                                                        _loc4_.restrictionGridVisibility = false;
                                                                        if(!_loc15_)
                                                                        {
                                                                           _loc2_.objectToMove = null;
                                                                           if(!(_loc15_ && Boolean(this)))
                                                                           {
                                                                              _loc3_.tileGridVisiblity = false;
                                                                              if(!(_loc15_ && Boolean(param1)))
                                                                              {
                                                                                 _loc3_.itemGridVisiblity = false;
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                                                                                    if(_loc16_ || Boolean(_loc3_))
                                                                                    {
                                                                                       addr02f0:
                                                                                       _loc7_.resetHighlightedShops();
                                                                                       if(!(_loc15_ && Boolean(this)))
                                                                                       {
                                                                                          addr0304:
                                                                                          _loc7_.resetHighlight();
                                                                                          if(!(_loc15_ && Boolean(this)))
                                                                                          {
                                                                                             addr0318:
                                                                                             facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                addr032b:
                                                                                                facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
                                                                                                if(_loc16_ || Boolean(param1))
                                                                                                {
                                                                                                   facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
                                                                                                }
                                                                                             }
                                                                                             addr0353:
                                                                                             var _loc13_:int = 0;
                                                                                             var _loc14_:* = _loc8_.billboardList;
                                                                                             loop0:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      if(_loc16_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         _loc13_ = 0;
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            addr03b6:
                                                                                                            _loc14_ = _loc8_.clientFieldObjectsList;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            addr03da:
                                                                                                            addr03d3:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr03de);
                                                                                                   }
                                                                                                   §§goto(addr03b6);
                                                                                                }
                                                                                                §§goto(addr03da);
                                                                                                _loc11_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                _loc11_.changeInteractionstate(true);
                                                                                             }
                                                                                             while(§§pop())
                                                                                             {
                                                                                                _loc12_ = §§nextvalue(_loc13_,_loc14_);
                                                                                                _loc12_.changeInteractionstate(true);
                                                                                                §§goto(addr03d3);
                                                                                             }
                                                                                             §§goto(addr03da);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr032b);
                                                                                    }
                                                                                    §§goto(addr0304);
                                                                                 }
                                                                                 §§goto(addr02f0);
                                                                              }
                                                                           }
                                                                           §§goto(addr0353);
                                                                        }
                                                                        §§goto(addr02f0);
                                                                     }
                                                                     §§goto(addr0353);
                                                                  }
                                                                  §§goto(addr02f0);
                                                               }
                                                               else
                                                               {
                                                                  addr027f:
                                                                  if(_loc10_ is ResidentialFieldObject)
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§goto(addr029a);
                                                                        }
                                                                        §§goto(addr02f0);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr029a);
                                                            }
                                                            §§goto(addr027f);
                                                         }
                                                         §§goto(addr0304);
                                                      }
                                                      §§goto(addr0264);
                                                   }
                                                   §§goto(addr0246);
                                                }
                                                §§goto(addr0318);
                                             }
                                             §§goto(addr02f0);
                                          }
                                          §§goto(addr0209);
                                       }
                                       §§goto(addr027f);
                                    }
                                    §§goto(addr032b);
                                 }
                                 §§goto(addr01a6);
                              }
                              §§goto(addr0181);
                           }
                           §§goto(addr03de);
                        }
                        §§goto(addr019a);
                     }
                     §§goto(addr03de);
                  }
                  §§goto(addr013b);
               }
               addr03de:
               return;
            }
            §§goto(addr0134);
         }
         §§goto(addr013b);
      }
   }
}

