package net.bigpoint.cityrama.controller.server.messages.inventory.client
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.controller.applicationModes.move.FieldClickToSelectFieldMoveItemCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOutForMoveCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOverForMoveCommand;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageMoveItemToInventoryCommand extends SimpleCommand
   {
      
      public function ClientMessageMoveItemToInventoryCommand()
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
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc6_:RestrictionProxy = null;
         var _loc7_:GridProxy = null;
         var _loc8_:PlayFieldHighlightedObjectsProxy = null;
         var _loc9_:PlayfieldObjectsProxy = null;
         var _loc10_:BillboardObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:ClientFieldObject = null;
         var _loc13_:MessageVo = null;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc4_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         var _loc5_:Object = {};
         _loc5_.pid = param1.getBody() as Number;
         if(!(_loc16_ && Boolean(param1)))
         {
            §§push(_loc3_.objectToMove);
            if(_loc17_ || Boolean(_loc3_))
            {
               §§push(§§pop());
               if(!_loc16_)
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(_temp_5)
                  {
                     if(!_loc16_)
                     {
                        addr00c2:
                        §§pop();
                        if(_loc17_ || Boolean(_loc2_))
                        {
                           §§goto(addr00d8);
                        }
                        §§goto(addr00dc);
                     }
                  }
                  addr00d8:
                  §§goto(addr00d5);
               }
               §§goto(addr00c2);
            }
            addr00d5:
            §§goto(addr00d1);
         }
         addr00d1:
         if(_loc3_.objectToMove is BillboardObject)
         {
            addr00dc:
            _loc6_ = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
            _loc7_ = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
            _loc8_ = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
            _loc9_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            _loc10_ = _loc3_.objectToMove as BillboardObject;
            if(_loc17_)
            {
               sendNotification(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
               if(!(_loc16_ && Boolean(_loc2_)))
               {
                  §§push(_loc10_ is ShopFieldObject);
                  if(!_loc16_)
                  {
                     if(§§pop())
                     {
                        if(!_loc16_)
                        {
                           sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                           if(_loc17_)
                           {
                              addr01ee:
                              _loc6_.restrictionGridVisibility = false;
                              if(!(_loc16_ && Boolean(_loc3_)))
                              {
                                 addr0202:
                                 _loc3_.objectToMove = null;
                                 if(!(_loc16_ && Boolean(this)))
                                 {
                                    _loc7_.tileGridVisiblity = false;
                                    if(!_loc16_)
                                    {
                                       addr0221:
                                       _loc7_.itemGridVisiblity = false;
                                       if(_loc17_)
                                       {
                                          addr022d:
                                          sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
                                          if(!(_loc16_ && Boolean(_loc3_)))
                                          {
                                             addr0246:
                                             _loc8_.resetHighlightedShops();
                                             if(_loc17_ || Boolean(_loc2_))
                                             {
                                                addr025a:
                                                _loc8_.resetHighlight();
                                                if(_loc17_)
                                                {
                                                   facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
                                                   if(!_loc16_)
                                                   {
                                                      addr0279:
                                                      facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
                                                      if(_loc17_)
                                                      {
                                                         addr028c:
                                                         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
                                                      }
                                                      var _loc14_:int = 0;
                                                      var _loc15_:* = _loc9_.billboardList;
                                                      loop0:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc15_,_loc14_));
                                                         if(!(_loc17_ || Boolean(this)))
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc17_ || Boolean(_loc3_))
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               if(!(_loc16_ && Boolean(this)))
                                                               {
                                                                  _loc14_ = 0;
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr02fe:
                                                                     _loc15_ = _loc9_.clientFieldObjectsList;
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc15_,_loc14_));
                                                                        break loop0;
                                                                        _loc12_ = §§nextvalue(_loc14_,_loc15_);
                                                                        _loc12_.changeInteractionstate(true);
                                                                     }
                                                                     addr032e:
                                                                     addr0327:
                                                                  }
                                                               }
                                                               _loc13_ = _loc2_.createMessage(_loc5_,ServerMessageConstants.MOVE_PLAYFIELDITEM_TO_INVENTORY);
                                                               if(!_loc16_)
                                                               {
                                                                  _loc2_.sendMessage(_loc13_);
                                                               }
                                                               §§goto(addr0350);
                                                            }
                                                            §§goto(addr02fe);
                                                         }
                                                         §§goto(addr032e);
                                                         _loc11_ = §§nextvalue(_loc14_,_loc15_);
                                                         _loc11_.changeInteractionstate(true);
                                                      }
                                                      while(§§pop())
                                                      {
                                                         _loc12_ = §§nextvalue(_loc14_,_loc15_);
                                                         _loc12_.changeInteractionstate(true);
                                                         §§goto(addr0327);
                                                      }
                                                      §§goto(addr032e);
                                                   }
                                                   §§goto(addr028c);
                                                }
                                                §§goto(addr0279);
                                             }
                                          }
                                          §§goto(addr028c);
                                       }
                                       §§goto(addr025a);
                                    }
                                    §§goto(addr022d);
                                 }
                                 §§goto(addr028c);
                              }
                              §§goto(addr022d);
                           }
                           §§goto(addr0221);
                        }
                        §§goto(addr0246);
                     }
                     else
                     {
                        §§push(_loc10_ is ResidentialFieldObject);
                        if(!(_loc16_ && Boolean(_loc2_)))
                        {
                           addr019a:
                           if(§§pop())
                           {
                              if(_loc17_ || Boolean(this))
                              {
                                 sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                                 if(!(_loc16_ && Boolean(this)))
                                 {
                                    §§goto(addr01ee);
                                 }
                                 §§goto(addr0246);
                              }
                              §§goto(addr0202);
                           }
                           else
                           {
                              addr01cf:
                              if(_loc10_ is IEmergencyInfrastructure)
                              {
                                 if(_loc17_)
                                 {
                                    _loc4_.removeObject((_loc10_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                                    if(_loc17_)
                                    {
                                       §§goto(addr01ee);
                                    }
                                 }
                                 §§goto(addr025a);
                              }
                           }
                           §§goto(addr01ee);
                        }
                        §§goto(addr01cf);
                     }
                  }
                  §§goto(addr019a);
               }
               §§goto(addr0246);
            }
            §§goto(addr01ee);
         }
         addr0350:
      }
   }
}

