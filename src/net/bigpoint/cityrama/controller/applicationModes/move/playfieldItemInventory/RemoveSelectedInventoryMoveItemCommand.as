package net.bigpoint.cityrama.controller.applicationModes.move.playfieldItemInventory
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationModes.move.FieldClickToSelectFieldMoveItemCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOutForMoveCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOverForMoveCommand;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class RemoveSelectedInventoryMoveItemCommand extends SimpleCommand implements ICommand
   {
      
      public function RemoveSelectedInventoryMoveItemCommand()
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
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc4_:RestrictionProxy = null;
         var _loc5_:GridProxy = null;
         var _loc6_:PlayFieldHighlightedObjectsProxy = null;
         var _loc7_:PlayfieldObjectsProxy = null;
         var _loc8_:BillboardObject = null;
         var _loc9_:* = false;
         var _loc10_:BillboardObject = null;
         var _loc11_:ClientFieldObject = null;
         var _loc2_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc3_:PlayfieldItemInventoryViewProxy = facade.retrieveProxy(PlayfieldItemInventoryViewProxy.NAME) as PlayfieldItemInventoryViewProxy;
         if(_loc14_)
         {
            §§push(Boolean(_loc2_.objectToMove));
            if(_loc14_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(_temp_1)
               {
                  if(_loc14_ || Boolean(param1))
                  {
                     addr0085:
                     §§pop();
                     if(_loc14_ || Boolean(_loc3_))
                     {
                        §§goto(addr0099);
                     }
                     §§goto(addr009d);
                  }
               }
               addr0099:
               if(Boolean(_loc3_.currentSelectedInventoryItem))
               {
                  addr009d:
                  _loc4_ = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
                  _loc5_ = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
                  _loc6_ = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
                  _loc7_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  _loc8_ = _loc2_.objectToMove as BillboardObject;
                  if(_loc14_ || Boolean(_loc3_))
                  {
                     sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc8_);
                     if(!_loc15_)
                     {
                        §§push(param1.getBody() as Boolean);
                        if(!(_loc15_ && Boolean(param1)))
                        {
                           _loc9_ = §§pop();
                           §§push(_loc9_);
                           if(_loc14_)
                           {
                              if(§§pop())
                              {
                                 if(_loc14_ || Boolean(_loc3_))
                                 {
                                    sendNotification(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
                                    if(_loc14_ || Boolean(param1))
                                    {
                                       addr015a:
                                       §§push(_loc8_ is ShopFieldObject);
                                       if(_loc14_)
                                       {
                                          addr0170:
                                          if(§§pop())
                                          {
                                             if(_loc14_)
                                             {
                                                sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                                                if(!(_loc15_ && Boolean(param1)))
                                                {
                                                   addr01c0:
                                                   _loc4_.restrictionGridVisibility = false;
                                                   if(_loc14_ || Boolean(_loc3_))
                                                   {
                                                      addr01d4:
                                                      _loc2_.objectToMove = null;
                                                      if(!_loc15_)
                                                      {
                                                         addr01df:
                                                         _loc3_.currentSelectedInventoryItem = null;
                                                         if(_loc14_)
                                                         {
                                                            _loc5_.tileGridVisiblity = false;
                                                            if(!(_loc15_ && Boolean(this)))
                                                            {
                                                               addr01fe:
                                                               _loc5_.itemGridVisiblity = false;
                                                               if(!(_loc15_ && Boolean(this)))
                                                               {
                                                                  sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                                                                  if(_loc14_)
                                                                  {
                                                                     addr0223:
                                                                     _loc6_.resetHighlightedShops();
                                                                     if(_loc14_ || Boolean(_loc2_))
                                                                     {
                                                                        addr0237:
                                                                        _loc6_.resetHighlight();
                                                                        if(_loc14_)
                                                                        {
                                                                           addr0243:
                                                                           facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
                                                                           if(!(_loc15_ && Boolean(param1)))
                                                                           {
                                                                              addr025e:
                                                                              facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
                                                                              if(_loc14_)
                                                                              {
                                                                                 addr0271:
                                                                                 facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
                                                                              }
                                                                           }
                                                                           var _loc12_:int = 0;
                                                                           var _loc13_:* = _loc7_.billboardList;
                                                                           loop0:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§hasnext(_loc13_,_loc12_));
                                                                              if(!(_loc14_ || Boolean(this)))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc15_)
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(_loc14_ || Boolean(this))
                                                                                    {
                                                                                       _loc12_ = 0;
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          _loc13_ = _loc7_.clientFieldObjectsList;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc13_,_loc12_));
                                                                                             break loop0;
                                                                                          }
                                                                                          addr030b:
                                                                                          addr0304:
                                                                                       }
                                                                                       addr030d:
                                                                                    }
                                                                                    §§goto(addr030f);
                                                                                 }
                                                                                 §§goto(addr030d);
                                                                              }
                                                                              §§goto(addr030b);
                                                                              _loc10_ = §§nextvalue(_loc12_,_loc13_);
                                                                              _loc10_.changeInteractionstate(true);
                                                                           }
                                                                           while(§§pop())
                                                                           {
                                                                              _loc11_ = §§nextvalue(_loc12_,_loc13_);
                                                                              _loc11_.changeInteractionstate(true);
                                                                              §§goto(addr0304);
                                                                           }
                                                                           §§goto(addr030b);
                                                                        }
                                                                        §§goto(addr0271);
                                                                     }
                                                                     §§goto(addr025e);
                                                                  }
                                                                  §§goto(addr0237);
                                                               }
                                                               §§goto(addr0271);
                                                            }
                                                            §§goto(addr025e);
                                                         }
                                                         §§goto(addr01fe);
                                                      }
                                                      §§goto(addr0223);
                                                   }
                                                   §§goto(addr0271);
                                                }
                                                §§goto(addr01d4);
                                             }
                                             §§goto(addr0223);
                                          }
                                          else
                                          {
                                             addr019d:
                                             if(_loc8_ is ResidentialFieldObject)
                                             {
                                                if(!_loc15_)
                                                {
                                                   sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                                                   if(!(_loc15_ && Boolean(_loc2_)))
                                                   {
                                                      §§goto(addr01c0);
                                                   }
                                                   §§goto(addr0243);
                                                }
                                                §§goto(addr01fe);
                                             }
                                          }
                                          §§goto(addr01c0);
                                       }
                                       §§goto(addr019d);
                                    }
                                    §§goto(addr01c0);
                                 }
                                 §§goto(addr0223);
                              }
                              §§goto(addr015a);
                           }
                        }
                        §§goto(addr0170);
                     }
                     §§goto(addr01df);
                  }
                  §§goto(addr01d4);
               }
               addr030f:
               return;
            }
            §§goto(addr0085);
         }
         §§goto(addr009d);
      }
   }
}

