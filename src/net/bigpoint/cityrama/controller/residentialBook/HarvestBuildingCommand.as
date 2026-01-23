package net.bigpoint.cityrama.controller.residentialBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class HarvestBuildingCommand extends SimpleCommand implements ICommand
   {
      
      public function HarvestBuildingCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc3_:PlayfieldObjectsProxy = null;
         var _loc4_:BillboardObject = null;
         var _loc5_:EventProxy = null;
         var _loc6_:PhaseDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc2_:Number = param1.getBody() as Number;
         if(!_loc13_)
         {
            if(_loc2_)
            {
               addr0043:
               _loc3_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
               _loc4_ = _loc3_.getBillboardById(_loc2_);
               §§push(Boolean(_loc4_));
               if(!_loc13_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc12_ || Boolean(param1))
                     {
                        §§pop();
                        if(_loc12_ || Boolean(_loc2_))
                        {
                           §§goto(addr009c);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr009b);
                  }
                  addr009c:
                  §§push(_loc4_.billboardObjectVo.isHarvestReady);
                  if(!(_loc13_ && Boolean(_loc3_)))
                  {
                     addr009b:
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     addr00a0:
                     _loc5_ = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                     if(_loc12_)
                     {
                        sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{"vo":_loc4_.billboardObjectVo});
                        if(!_loc13_)
                        {
                           addr00d3:
                           §§push(_loc4_.billboardObjectVo is IEventDrop);
                           if(_loc12_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc13_ && Boolean(param1)))
                                 {
                                    addr00f3:
                                    §§push(_loc4_ is ProductionFieldObject);
                                    if(!_loc13_)
                                    {
                                       var _temp_7:* = §§pop();
                                       §§push(_temp_7);
                                       if(_temp_7)
                                       {
                                          if(!_loc13_)
                                          {
                                             addr010a:
                                             §§pop();
                                             if(!_loc13_)
                                             {
                                                §§goto(addr0120);
                                             }
                                             §§goto(addr0124);
                                          }
                                       }
                                       addr0120:
                                       §§push(_loc5_.currentRunningEventQuestLocaleId == "");
                                       if(_loc12_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          addr0124:
                                          for each(_loc6_ in _loc4_.billboardObjectVo.activePhases)
                                          {
                                             if(_loc12_ || Boolean(this))
                                             {
                                                var _loc10_:int = 0;
                                                if(_loc12_)
                                                {
                                                   for each(_loc7_ in _loc6_.config.listEntryOutputs)
                                                   {
                                                      §§push(_loc7_.goodConfig);
                                                      if(_loc12_)
                                                      {
                                                         §§push(§§pop() == null);
                                                         if(_loc12_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc12_)
                                                            {
                                                               var _temp_10:* = §§pop();
                                                               §§push(_temp_10);
                                                               if(_temp_10)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc12_ || Boolean(param1)))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr01b6:
                                                                     §§push(_loc7_.goodConfig.isEventGood);
                                                                     if(!(_loc13_ && Boolean(this)))
                                                                     {
                                                                        addr01c7:
                                                                        §§push(§§pop());
                                                                     }
                                                                  }
                                                               }
                                                               addr01c8:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     (_loc4_.billboardObjectVo as IEventDrop).currentEventLocaleId = _loc5_.currentRunningEventQuestLocaleId;
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr01c7);
                                                         }
                                                         §§goto(addr01c8);
                                                      }
                                                      §§goto(addr01b6);
                                                   }
                                                }
                                             }
                                          }
                                          if(_loc12_ || Boolean(this))
                                          {
                                             addr0275:
                                             sendNotification(ApplicationNotificationConstants.PREPARE_BILLBOARDOBJECT_FLOATERMANAGER,_loc4_);
                                             if(_loc12_ || Boolean(this))
                                             {
                                                _loc4_.invalidateInformationFloaterManager();
                                                if(!_loc13_)
                                                {
                                                   _loc4_.invalidateIconStateManager(true);
                                                   if(!(_loc13_ && Boolean(_loc2_)))
                                                   {
                                                      addr02c0:
                                                      _loc4_.billboardObjectVo.userInteractionLocked = true;
                                                      addr02bc:
                                                   }
                                                }
                                                §§goto(addr02c4);
                                             }
                                             §§goto(addr02bc);
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc4_ is ResidentialFieldObject);
                                          if(!(_loc13_ && Boolean(param1)))
                                          {
                                             var _temp_17:* = §§pop();
                                             §§push(_temp_17);
                                             if(_temp_17)
                                             {
                                                if(!_loc13_)
                                                {
                                                   §§goto(addr0229);
                                                }
                                                §§goto(addr023e);
                                             }
                                             §§goto(addr023f);
                                          }
                                          addr0229:
                                          §§pop();
                                          if(_loc12_)
                                          {
                                             addr023f:
                                             §§push(_loc5_.currentRunningEventQuestLocaleId == "");
                                             if(!_loc13_)
                                             {
                                                addr023e:
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc12_)
                                                {
                                                   §§push(_loc4_.billboardObjectVo);
                                                   if(_loc12_ || Boolean(param1))
                                                   {
                                                      (§§pop() as IEventDrop).currentEventLocaleId = _loc5_.currentRunningEventQuestLocaleId;
                                                      if(!(_loc13_ && Boolean(_loc2_)))
                                                      {
                                                         §§goto(addr0275);
                                                      }
                                                      §§goto(addr02c4);
                                                   }
                                                   §§goto(addr02c0);
                                                }
                                                §§goto(addr02bc);
                                             }
                                             §§goto(addr0275);
                                          }
                                          §§goto(addr02c4);
                                       }
                                       §§goto(addr02c4);
                                    }
                                    §§goto(addr010a);
                                 }
                                 §§goto(addr0124);
                              }
                              §§goto(addr0275);
                           }
                           §§goto(addr010a);
                        }
                        §§goto(addr00f3);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr02c4);
               }
               §§goto(addr009b);
            }
            addr02c4:
            return;
         }
         §§goto(addr0043);
      }
   }
}

