package net.bigpoint.cityrama.controller.applicationModes.normal
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveClickEmergencyCommand extends SimpleCommand implements ICommand
   {
      
      public function PlayfieldInteractiveClickEmergencyCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:BillboardObject = null;
         var _loc4_:EmergencyMiniLayerProxy = null;
         var _loc5_:ConstructionMiniLayerVo = null;
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         if(_loc7_)
         {
            §§push(_loc2_.clickObject);
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               if(§§pop() != null)
               {
                  if(!_loc6_)
                  {
                     addr005e:
                     §§push(_loc2_.clickObject);
                     if(_loc7_)
                     {
                        addr0068:
                        if(§§pop() is BillboardObject)
                        {
                           addr0073:
                           _loc3_ = _loc2_.clickObject as BillboardObject;
                           addr006f:
                           if(_loc7_)
                           {
                              §§push(_loc3_.billboardObjectVo);
                              if(!_loc6_)
                              {
                                 §§push(§§pop().hasEmergency());
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(_loc3_.billboardObjectVo);
                                          if(_loc7_ || Boolean(_loc2_))
                                          {
                                             addr00b0:
                                             if(!§§pop().emergencyInProgress)
                                             {
                                                if(!(_loc6_ && Boolean(param1)))
                                                {
                                                   §§push(_loc3_.billboardObjectVo);
                                                   if(_loc7_)
                                                   {
                                                      addr00cb:
                                                      §§push(§§pop().emergencyState);
                                                      if(!(_loc6_ && Boolean(param1)))
                                                      {
                                                         §§push(EmergencyConstants.EMERGENCY_STATUS_STARTED);
                                                         if(_loc7_ || Boolean(_loc3_))
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc6_ && Boolean(_loc3_)))
                                                               {
                                                                  addr010f:
                                                                  sendNotification(ApplicationNotificationConstants.OPEN_EMERGENCY_INFOBOOK,_loc3_.billboardObjectVo);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr01b0:
                                                                     _loc4_ = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
                                                                     _loc5_ = _loc4_.getEmergencyDamagedVo(_loc3_.billboardObjectVo);
                                                                     if(_loc5_.amountNeeded > 0)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           sendNotification(MiniLayerConstants.OPEN_MINI_EMERGENCY_CLEANUP,_loc3_.billboardObjectVo);
                                                                           if(_loc6_)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc3_.billboardObjectVo.userInteractionLocked = true;
                                                                        if(!(_loc6_ && Boolean(_loc3_)))
                                                                        {
                                                                           sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REPAIR_BUILDING,{
                                                                              "bid":_loc3_.billboardObjectVo.buildingDTO.id,
                                                                              "rc":false
                                                                           });
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc3_.billboardObjectVo);
                                                               if(!_loc6_)
                                                               {
                                                                  addr0130:
                                                                  §§push(§§pop().emergencyState);
                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(EmergencyConstants.EMERGENCY_STATUS_SUCCESS);
                                                                     if(_loc7_ || Boolean(_loc2_))
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              sendNotification(ApplicationNotificationConstants.COLLECT_EMERGENCY_REWARD,_loc3_);
                                                                              if(!(_loc6_ && Boolean(_loc2_)))
                                                                              {
                                                                                 §§push(_loc3_.billboardObjectVo);
                                                                                 if(_loc7_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§pop().userInteractionLocked = true;
                                                                                    if(!(_loc7_ || Boolean(_loc3_)))
                                                                                    {
                                                                                       §§goto(addr01b0);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr01a3:
                                                                                    addr01ac:
                                                                                    addr01a6:
                                                                                    if(§§pop().emergencyState == EmergencyConstants.EMERGENCY_STATUS_FAIL)
                                                                                    {
                                                                                       §§goto(addr01b0);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr0236);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc3_.billboardObjectVo);
                                                                        }
                                                                        §§goto(addr01a3);
                                                                     }
                                                                     §§goto(addr01ac);
                                                                  }
                                                                  §§goto(addr01a6);
                                                               }
                                                               §§goto(addr01a3);
                                                            }
                                                            §§goto(addr0236);
                                                         }
                                                         §§goto(addr01ac);
                                                      }
                                                      §§goto(addr01a6);
                                                   }
                                                   §§goto(addr0130);
                                                }
                                             }
                                             §§goto(addr0236);
                                          }
                                          §§goto(addr00cb);
                                       }
                                       §§goto(addr010f);
                                    }
                                    §§goto(addr0236);
                                 }
                                 §§goto(addr00b0);
                              }
                              §§goto(addr0130);
                           }
                        }
                        §§goto(addr0236);
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr006f);
               }
               addr0236:
               return;
            }
            §§goto(addr0068);
         }
         §§goto(addr005e);
      }
   }
}

