package net.bigpoint.cityrama.controller.infrastructure.emergency
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CollectEmergencyRewardCommand extends SimpleCommand implements ICommand
   {
      
      public function CollectEmergencyRewardCommand()
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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:ConfigPhaseDTO = null;
         var _loc2_:BillboardObject = param1.getBody() as BillboardObject;
         if(!(_loc5_ && Boolean(_loc3_)))
         {
            if(_loc2_)
            {
               if(!_loc5_)
               {
                  _loc2_.invalidateIconStateManager(true);
               }
               addr0043:
               _loc3_ = new ConfigPhaseDTO(null);
               if(_loc4_ || Boolean(_loc2_))
               {
                  _loc3_.listEntryOutputs = _loc2_.billboardObjectVo.buildingDTO.emergencyDTO.rewardOrCosts;
                  if(!_loc5_)
                  {
                     _loc2_.billboardObjectVo.informationFloaterPhase = _loc3_;
                     if(_loc4_ || Boolean(param1))
                     {
                        §§push(OptionsGlobalVariables.getInstance());
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           §§push(§§pop().showFloater);
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    addr00bd:
                                    _loc2_.invalidateInformationFloaterManager();
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       addr00d0:
                                       addr00d9:
                                       addr00d6:
                                       if(OptionsGlobalVariables.getInstance().showDropIcons)
                                       {
                                          if(_loc4_ || Boolean(param1))
                                          {
                                             facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                                "tO":_loc2_,
                                                "cP":_loc3_
                                             });
                                             if(!_loc5_)
                                             {
                                                addr010f:
                                                sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_COLLECT_EMERGENCY,{"bid":_loc2_.billboardObjectVo.buildingDTO.id});
                                             }
                                          }
                                          §§goto(addr0127);
                                       }
                                       §§goto(addr010f);
                                    }
                                    §§goto(addr0127);
                                 }
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr00d6);
                     }
                  }
                  §§goto(addr0127);
               }
               §§goto(addr00bd);
            }
            addr0127:
            return;
         }
         §§goto(addr0043);
      }
   }
}

