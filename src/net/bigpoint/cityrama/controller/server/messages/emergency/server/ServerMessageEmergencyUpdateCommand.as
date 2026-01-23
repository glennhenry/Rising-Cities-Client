package net.bigpoint.cityrama.controller.server.messages.emergency.server
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyTV.EmergencyTVProxy;
   import net.bigpoint.cityrama.model.emergencyTV.vo.EmergencyTVVo;
   import net.bigpoint.cityrama.model.emergencyTV.vo.TVShowVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.EmergencyDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.emergencyTV.EmergencyTVMediator;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageEmergencyUpdateCommand extends SimpleCommand implements ICommand
   {
      
      private var _building:BillboardObject;
      
      private var _tvData:EmergencyTVVo;
      
      private var _tvMediator:EmergencyTVMediator;
      
      private var _emergencyLayerProxy:EmergencyLayerProxy;
      
      public function ServerMessageEmergencyUpdateCommand()
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
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:EmergencyDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc5_:EmergencyProxy = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
         if(!_loc7_)
         {
            this._emergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
            if(_loc8_ || Boolean(param1))
            {
               this._building = _loc3_.getBillboardById(_loc2_.json.bid);
               if(_loc8_)
               {
                  §§goto(addr009b);
               }
               §§goto(addr00a3);
            }
            addr009b:
            if(this._building)
            {
               addr00a3:
               _loc6_ = ConfigFactory.buildEmergencyDTO(_loc2_.json.e);
               if(_loc8_)
               {
                  §§push(this._building);
                  if(_loc8_)
                  {
                     §§pop().billboardObjectVo.buildingDTO.emergencyDTO = _loc6_;
                     if(_loc8_)
                     {
                        if(_loc6_)
                        {
                           if(!_loc7_)
                           {
                              this._tvMediator = facade.retrieveMediator(EmergencyTVMediator.NAME) as EmergencyTVMediator;
                              if(!_loc7_)
                              {
                                 _loc5_.currentEmergency = _loc6_;
                                 if(!_loc7_)
                                 {
                                    §§push(_loc6_.status);
                                    if(!_loc7_)
                                    {
                                       §§push(EmergencyConstants.EMERGENCY_STATUS_STARTED);
                                       if(_loc8_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc8_)
                                             {
                                                addr012b:
                                                §§push(this._tvMediator);
                                                if(!_loc7_)
                                                {
                                                   §§pop().setTVData(EmergencyTVProxy.getEmergencyTVVo(_loc6_.config.locaId,_loc6_.config.mainDepeartment,_loc6_.config.gfxId,TVShowVo.START,this._building.billboardObjectVo.buildingDTO.id));
                                                   if(_loc7_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr0239:
                                                   §§pop().setTVData(new EmergencyTVVo(false));
                                                   if(_loc8_ || Boolean(_loc2_))
                                                   {
                                                      this._tvData = EmergencyTVProxy.getEmergencyTVVo(_loc6_.config.locaId,_loc6_.config.mainDepeartment,_loc6_.config.gfxId,TVShowVo.SUCCESS,this._building.billboardObjectVo.buildingDTO.id);
                                                      if(_loc8_ || Boolean(_loc2_))
                                                      {
                                                         addr03be:
                                                         §§push(this._building);
                                                         if(_loc8_)
                                                         {
                                                            §§pop().invalidateAnimationSlotManager();
                                                            if(!(_loc7_ && Boolean(this)))
                                                            {
                                                               addr03de:
                                                               this._building.invalidateIconStateManager();
                                                               addr03da:
                                                            }
                                                            §§goto(addr03e2);
                                                         }
                                                         §§goto(addr03de);
                                                      }
                                                      §§goto(addr03da);
                                                   }
                                                }
                                                §§goto(addr03be);
                                             }
                                             §§goto(addr03da);
                                          }
                                          else
                                          {
                                             §§push(_loc6_.status);
                                             if(_loc8_)
                                             {
                                                addr017b:
                                                §§push(EmergencyConstants.EMERGENCY_STATUS_SUCCESS);
                                                if(!(_loc7_ && Boolean(this)))
                                                {
                                                   addr018f:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(!(_loc7_ && Boolean(param1)))
                                                      {
                                                         addr01a1:
                                                         this.startEmergencyProgress();
                                                         if(_loc8_)
                                                         {
                                                            sendNotification(ApplicationNotificationConstants.EMERGENCY_END);
                                                            if(!_loc7_)
                                                            {
                                                               addr01bd:
                                                               §§push(this._emergencyLayerProxy);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(this._building);
                                                                  if(_loc8_ || Boolean(_loc3_))
                                                                  {
                                                                     §§push(§§pop().billboardObjectVo);
                                                                     if(_loc8_ || Boolean(_loc2_))
                                                                     {
                                                                        §§push(§§pop().buildingDTO);
                                                                        if(!(_loc7_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(§§pop().id);
                                                                           if(_loc8_ || Boolean(this))
                                                                           {
                                                                              §§pop().removeEmergencyInfo(§§pop());
                                                                              if(!(_loc7_ && Boolean(param1)))
                                                                              {
                                                                                 addr0227:
                                                                                 §§push(this._tvMediator);
                                                                                 if(_loc8_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§goto(addr0239);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0353:
                                                                                    §§pop().setTVData(this._tvData);
                                                                                    if(!(_loc7_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       addr0381:
                                                                                       sendNotification(ApplicationNotificationConstants.EMERGENCY_END);
                                                                                       if(_loc8_ || Boolean(_loc3_))
                                                                                       {
                                                                                          addr03b4:
                                                                                          this._emergencyLayerProxy.removeEmergencyInfo(this._building.billboardObjectVo.buildingDTO.id);
                                                                                          addr0399:
                                                                                          addr03b2:
                                                                                          addr03af:
                                                                                          addr03ad:
                                                                                          addr03a9:
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             §§goto(addr03be);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr03da);
                                                                                    }
                                                                                    §§goto(addr0399);
                                                                                 }
                                                                              }
                                                                              §§goto(addr03be);
                                                                           }
                                                                           §§goto(addr03b4);
                                                                        }
                                                                        §§goto(addr03b2);
                                                                     }
                                                                     §§goto(addr03af);
                                                                  }
                                                                  §§goto(addr03ad);
                                                               }
                                                               §§goto(addr03a9);
                                                            }
                                                            §§goto(addr0399);
                                                         }
                                                      }
                                                      §§goto(addr0227);
                                                   }
                                                   else
                                                   {
                                                      addr02a1:
                                                      addr029b:
                                                      if(_loc6_.status == EmergencyConstants.EMERGENCY_STATUS_FAIL)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push(this._tvMediator);
                                                            if(!_loc7_)
                                                            {
                                                               §§pop().setTVData(new EmergencyTVVo(false));
                                                               if(_loc8_ || Boolean(_loc3_))
                                                               {
                                                                  this._tvData = EmergencyTVProxy.getEmergencyTVVo(_loc6_.config.locaId,_loc6_.config.mainDepeartment,_loc6_.config.gfxId,TVShowVo.FAIL,this._building.billboardObjectVo.buildingDTO.id);
                                                                  if(_loc8_ || Boolean(param1))
                                                                  {
                                                                     §§push(_loc6_.endTime);
                                                                     §§push(_loc4_.currentTimeStamp);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§§pop() + 500);
                                                                     }
                                                                     if(§§pop() < §§pop())
                                                                     {
                                                                        if(_loc8_ || Boolean(this))
                                                                        {
                                                                           sendNotification(MiniLayerConstants.OPEN_MINI_EMERGENCY_TIMEUP,_loc6_);
                                                                           if(_loc8_ || Boolean(param1))
                                                                           {
                                                                              §§goto(addr0353);
                                                                              §§push(this._tvMediator);
                                                                           }
                                                                           §§goto(addr0399);
                                                                        }
                                                                        §§goto(addr03da);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.startEmergencyProgress();
                                                                        if(_loc8_ || Boolean(this))
                                                                        {
                                                                           §§goto(addr0381);
                                                                        }
                                                                     }
                                                                     §§goto(addr03be);
                                                                  }
                                                               }
                                                               §§goto(addr0381);
                                                            }
                                                            §§goto(addr0353);
                                                         }
                                                         §§goto(addr0381);
                                                      }
                                                   }
                                                   §§goto(addr03be);
                                                }
                                                §§goto(addr02a1);
                                             }
                                             §§goto(addr029b);
                                          }
                                       }
                                       §§goto(addr018f);
                                    }
                                    §§goto(addr017b);
                                 }
                              }
                              §§goto(addr01a1);
                           }
                           §§goto(addr01bd);
                        }
                        §§goto(addr03e2);
                     }
                     §§goto(addr0381);
                  }
                  §§goto(addr03de);
               }
               §§goto(addr012b);
            }
            addr03e2:
            return;
         }
         §§goto(addr00a3);
      }
      
      private function startEmergencyProgress() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._building);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(§§pop().billboardObjectVo);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§pop().emergencyInProgress = true;
                  if(_loc1_ || _loc2_)
                  {
                     addr0060:
                     this._building.billboardObjectVo.addEventListener(BillboardObjectVo.EMERGENCY_PROGRESS_CHANGED,this.onProgressChanged);
                     addr005e:
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0060);
            }
            §§goto(addr005e);
         }
         addr006d:
      }
      
      private function onProgressChanged(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            §§push(this._building);
            if(!_loc2_)
            {
               §§pop().billboardObjectVo.removeEventListener(BillboardObjectVo.EMERGENCY_PROGRESS_CHANGED,this.onProgressChanged);
               if(_loc3_ || Boolean(param1))
               {
                  §§push(this._building);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0064:
                     §§pop().invalidateAnimationSlotManager();
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0079);
                     }
                     §§goto(addr00b9);
                  }
                  addr0079:
                  this._building.invalidateIconStateManager();
                  if(!_loc2_)
                  {
                     addr0082:
                     §§push(Boolean(this._tvData));
                     if(_loc3_ || _loc3_)
                     {
                        var _temp_7:* = §§pop();
                        §§push(_temp_7);
                        if(_temp_7)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr00b3);
                           }
                        }
                        §§goto(addr00c3);
                     }
                     addr00b3:
                     §§pop();
                     if(_loc3_)
                     {
                        addr00b9:
                        §§push(this._tvMediator);
                        if(!_loc2_)
                        {
                           addr00c3:
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00d8:
                                 this._tvMediator.setTVData(this._tvData);
                              }
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr00d8);
                     }
                     §§goto(addr00e0);
                  }
                  addr00e0:
                  return;
               }
               §§goto(addr0082);
            }
            §§goto(addr0064);
         }
         §§goto(addr00b9);
      }
   }
}

