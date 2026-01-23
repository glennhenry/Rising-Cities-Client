package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class BoulderClickedCommand extends SimpleCommand implements ICommand
   {
      
      public function BoulderClickedCommand()
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
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:PlayerResourceProxy = null;
         var _loc4_:SoundProxy = null;
         var _loc5_:ConfigPhaseDTO = null;
         var _loc2_:BoulderFieldObject = param1.getBody() as BoulderFieldObject;
         if(!(_loc7_ && Boolean(_loc2_)))
         {
            §§push(Boolean(_loc2_));
            if(_loc6_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc6_)
                  {
                     §§pop();
                     if(_loc6_ || Boolean(this))
                     {
                        §§goto(addr006d);
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr006c);
               }
               addr006d:
               §§goto(addr005f);
            }
            §§goto(addr006c);
         }
         addr005f:
         §§push(_loc2_.boulderObjectVo.isInDemolitionMode);
         if(_loc6_)
         {
            addr006c:
            §§push(!§§pop());
         }
         if(§§pop())
         {
            addr0071:
            _loc3_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
            _loc4_ = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            if(!_loc7_)
            {
               if(_loc3_.ingameCurrency >= _loc2_.boulderObjectVo.demolitionCosts)
               {
                  if(_loc6_)
                  {
                     _loc4_.playBoulderDemolition(_loc2_.boulderObjectVo.boulderType);
                     addr00b1:
                     if(_loc6_)
                     {
                        §§goto(addr00d3);
                     }
                     §§goto(addr00e8);
                  }
                  addr00d3:
                  _loc2_.billboardObjectVo.userInteractionLocked = true;
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     addr00e8:
                     §§push(_loc2_.boulderObjectVo);
                     if(_loc6_ || Boolean(param1))
                     {
                        if(§§pop().configPlayfieldItemVo.destructionPhases.length)
                        {
                           if(_loc6_)
                           {
                              addr0110:
                              _loc5_ = _loc2_.boulderObjectVo.configPlayfieldItemVo.destructionPhases[0];
                              if(_loc5_)
                              {
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                    §§push(_loc2_.boulderObjectVo);
                                    if(!_loc7_)
                                    {
                                       §§pop().informationFloaterPhase = _loc5_;
                                       if(!_loc7_)
                                       {
                                          §§goto(addr014d);
                                       }
                                       §§goto(addr0157);
                                    }
                                    addr014d:
                                    _loc2_.boulderObjectVo.phaseJustStarted = true;
                                    if(_loc6_)
                                    {
                                       addr0157:
                                       _loc2_.invalidateInformationFloaterManager();
                                    }
                                    §§goto(addr015c);
                                 }
                              }
                              addr015c:
                              sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BOULDER_PROCESSPHASE,_loc2_.boulderObjectVo);
                              if(_loc7_ && Boolean(this))
                              {
                                 addr019e:
                                 sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_VIRTUALCURRENCY);
                              }
                           }
                           §§goto(addr01ad);
                        }
                        §§goto(addr015c);
                     }
                     §§goto(addr0110);
                  }
                  §§goto(addr01ad);
               }
               else
               {
                  _loc2_.billboardObjectVo.userInteractionLocked = false;
                  if(!(_loc7_ && Boolean(this)))
                  {
                     §§goto(addr019e);
                  }
               }
               §§goto(addr01ad);
            }
            §§goto(addr00b1);
         }
         addr01ad:
      }
   }
}

