package net.bigpoint.cityrama.controller.field
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowBoulderFloaterAndRemoveCommand extends SimpleCommand implements ICommand
   {
      
      private var _boulder:BoulderFieldObject;
      
      public function ShowBoulderFloaterAndRemoveCommand()
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
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:ConfigPhaseDTO = null;
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc3_:* = 0;
         if(!(_loc6_ && Boolean(this)))
         {
            this._boulder = param1.getBody() as BoulderFieldObject;
            if(!_loc6_)
            {
               §§push(this._boulder);
               if(_loc5_)
               {
                  §§pop().billboardObjectVo.userInteractionLocked = true;
                  if(_loc5_)
                  {
                     addr0067:
                     §§push(this._boulder);
                     if(!(_loc6_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop().boulderObjectVo);
                        if(_loc5_)
                        {
                           §§push(§§pop().informationFloaterPhase == null);
                           if(_loc5_ || Boolean(this))
                           {
                              §§push(!§§pop());
                              if(!_loc6_)
                              {
                                 addr009c:
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 §§push(_temp_4);
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§pop();
                                          if(_loc5_)
                                          {
                                             §§push(this._boulder);
                                             if(_loc5_)
                                             {
                                                §§push(§§pop().boulderObjectVo);
                                                if(_loc5_)
                                                {
                                                   addr00c7:
                                                   §§push(§§pop().informationFloaterPhase.listEntryOutputs.length > 0);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr00d8);
                                                   }
                                                   §§goto(addr0130);
                                                }
                                                §§goto(addr010d);
                                             }
                                             §§goto(addr00fc);
                                          }
                                          §§goto(addr0137);
                                       }
                                       §§goto(addr0162);
                                    }
                                    addr00d8:
                                    if(§§pop())
                                    {
                                       if(!(_loc6_ && Boolean(param1)))
                                       {
                                          addr00ea:
                                          §§push(this._boulder);
                                          if(_loc5_ || Boolean(param1))
                                          {
                                             addr00fc:
                                             §§push(§§pop().boulderObjectVo);
                                             if(!(_loc6_ && Boolean(_loc2_)))
                                             {
                                                addr010d:
                                                §§push(§§pop().isEventBoulder);
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc5_)
                                                   {
                                                      var _temp_9:* = §§pop();
                                                      addr0126:
                                                      §§push(_temp_9);
                                                      if(_temp_9)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            addr0130:
                                                            §§pop();
                                                            if(!_loc6_)
                                                            {
                                                               addr0137:
                                                               §§push(this._boulder);
                                                               if(_loc5_)
                                                               {
                                                                  addr0141:
                                                                  §§push(§§pop().boulderObjectVo);
                                                                  if(!(_loc6_ && Boolean(param1)))
                                                                  {
                                                                     addr0162:
                                                                     addr015e:
                                                                     if(§§pop() is IEventDrop)
                                                                     {
                                                                        if(_loc5_ || Boolean(_loc3_))
                                                                        {
                                                                           addr017b:
                                                                           this._boulder.boulderObjectVo.currentEventLocaleId = _loc2_.currentRunningEventQuestLocaleId;
                                                                           addr0178:
                                                                        }
                                                                     }
                                                                     addr0182:
                                                                     _loc4_ = new ConfigPhaseDTO({});
                                                                     _loc4_.listEntryOutputs = this._boulder.boulderObjectVo.informationFloaterPhase.listEntryOutputs;
                                                                     if(!(_loc6_ && Boolean(this)))
                                                                     {
                                                                        §§push(OptionsGlobalVariables.getInstance());
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop().showDropIcons);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                                                                       "tO":this._boulder,
                                                                                       "cP":_loc4_
                                                                                    });
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr01ec:
                                                                                       §§push(OptionsGlobalVariables.getInstance());
                                                                                       if(!(_loc6_ && Boolean(param1)))
                                                                                       {
                                                                                          §§push(§§pop().showFloater);
                                                                                          if(!(_loc6_ && Boolean(this)))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr021b:
                                                                                                   this._boulder.invalidateInformationFloaterManager();
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr0229:
                                                                                                      §§push(OptionsGlobalVariables.getInstance());
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop().showFloater);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr0245:
                                                                                                               var _temp_16:* = §§pop();
                                                                                                               §§push(_temp_16);
                                                                                                               if(!_temp_16)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr026f:
                                                                                                                        addr025d:
                                                                                                                        §§push(OptionsGlobalVariables.getInstance().showDropIcons);
                                                                                                                        if(_loc5_ || Boolean(this))
                                                                                                                        {
                                                                                                                           addr026e:
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              §§push(_loc4_.listEntryOutputs.length);
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr0296:
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(_loc5_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       if(§§pop() == 1)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || Boolean(_loc3_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr02d7);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr02de);
                                                                                                                                    }
                                                                                                                                    addr02d7:
                                                                                                                                    §§goto(addr02c6);
                                                                                                                                 }
                                                                                                                                 addr02c6:
                                                                                                                                 §§push(0.5);
                                                                                                                                 if(!(_loc6_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    addr02d6:
                                                                                                                                    §§push(§§pop());
                                                                                                                                 }
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr02de:
                                                                                                                                    TweenMax.delayedCall(_loc3_,this.removeBoulder);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02ea);
                                                                                                                              }
                                                                                                                              §§goto(addr02d6);
                                                                                                                           }
                                                                                                                           §§goto(addr0296);
                                                                                                                        }
                                                                                                                        §§goto(addr02de);
                                                                                                                     }
                                                                                                                     §§goto(addr02ea);
                                                                                                                  }
                                                                                                                  §§goto(addr026e);
                                                                                                               }
                                                                                                               §§goto(addr026f);
                                                                                                            }
                                                                                                            §§goto(addr026e);
                                                                                                         }
                                                                                                         §§goto(addr026f);
                                                                                                      }
                                                                                                      §§goto(addr025d);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr02ea);
                                                                                             }
                                                                                             §§goto(addr0229);
                                                                                          }
                                                                                          §§goto(addr0245);
                                                                                       }
                                                                                       §§goto(addr025d);
                                                                                    }
                                                                                    §§goto(addr021b);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01ec);
                                                                           }
                                                                           §§goto(addr026f);
                                                                        }
                                                                        §§goto(addr025d);
                                                                     }
                                                                     §§goto(addr02c6);
                                                                  }
                                                                  §§goto(addr017b);
                                                               }
                                                               §§goto(addr0178);
                                                            }
                                                            §§goto(addr0182);
                                                         }
                                                      }
                                                      §§goto(addr0162);
                                                   }
                                                }
                                                §§goto(addr0130);
                                             }
                                             §§goto(addr015e);
                                          }
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr0182);
                                    }
                                    addr02ea:
                                    return;
                                 }
                                 §§goto(addr0126);
                              }
                              §§goto(addr0130);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr00c7);
                     }
                     §§goto(addr00fc);
                  }
                  §§goto(addr00ea);
               }
               §§goto(addr00fc);
            }
            §§goto(addr0182);
         }
         §§goto(addr0067);
      }
      
      private function removeBoulder() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(!_loc3_)
         {
            _loc1_.removeGameObjectVofromMatrix(this._boulder.boulderObjectVo);
            if(!(_loc3_ && Boolean(this)))
            {
               sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,this._boulder);
            }
         }
      }
   }
}

