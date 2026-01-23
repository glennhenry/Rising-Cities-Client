package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationModes.destroy.ShowFloaterOnDestroyCommand;
   import net.bigpoint.cityrama.controller.field.BoulderClickedCommand;
   import net.bigpoint.cityrama.controller.field.CitySquareInfieldOperationCommand;
   import net.bigpoint.cityrama.controller.field.CreateClientFieldObjectsCommand;
   import net.bigpoint.cityrama.controller.field.DecoPlacedAnimationCommand;
   import net.bigpoint.cityrama.controller.field.EmergencyAnimationCommand;
   import net.bigpoint.cityrama.controller.field.FieldPanToEmergencyCommand;
   import net.bigpoint.cityrama.controller.field.GroundGeneratStreetsTexturesCommand;
   import net.bigpoint.cityrama.controller.field.GroundGenerateTexturesCommand;
   import net.bigpoint.cityrama.controller.field.MoveInAnimationCommand;
   import net.bigpoint.cityrama.controller.field.OnResidentSelected;
   import net.bigpoint.cityrama.controller.field.PlayfieldCleanCommand;
   import net.bigpoint.cityrama.controller.field.PlayfieldExpandCommand;
   import net.bigpoint.cityrama.controller.field.PlayfieldRedrawCommand;
   import net.bigpoint.cityrama.controller.field.PlayfieldSwitchFieldObjectClickedCommand;
   import net.bigpoint.cityrama.controller.field.ShowBoulderFloaterAndRemoveCommand;
   import net.bigpoint.cityrama.controller.field.ShowFloaterCommand;
   import net.bigpoint.cityrama.controller.field.ShowProductionAnimation;
   import net.bigpoint.cityrama.controller.field.ShowProductionStartedFloater;
   import net.bigpoint.cityrama.controller.field.ShowScheduledDropAnimationCommand;
   import net.bigpoint.cityrama.controller.infrastructure.emergency.CollectEmergencyRewardCommand;
   import net.bigpoint.cityrama.controller.mastery.CheckMasteryTraitSelectionCommand;
   import net.bigpoint.cityrama.controller.quest.CitySquareClickedCommand;
   import net.bigpoint.cityrama.controller.urbies.CelebratingCitizensCommand;
   import net.bigpoint.cityrama.controller.urbies.CitizenRebuildStreetmapCommand;
   import net.bigpoint.cityrama.controller.urbies.HandleEnterFrameCommand;
   import net.bigpoint.cityrama.controller.urbies.HandleTimerTickCommand;
   import net.bigpoint.cityrama.controller.urbies.RemoveAllUrbiesCommand;
   import net.bigpoint.cityrama.controller.urbies.TerrainChangedCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerCellChangedCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerDirectionChangedCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerFriendFoundCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerPathCompleteCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerPathFoundCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerPathNotPossibleCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerPathPausedCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerPathResumedCommand;
   import net.bigpoint.cityrama.model.urbies.CitizenConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ControllerPrepCommandField extends SimpleCommand
   {
      
      public function ControllerPrepCommandField()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            facade.registerCommand(ApplicationNotificationConstants.EVENTS_CHANGED,CitySquareInfieldOperationCommand);
            if(!_loc3_)
            {
               facade.registerCommand(ApplicationNotificationConstants.BUY_PLAYFIELD_EXTENSION,PlayfieldExpandCommand);
               if(!_loc3_)
               {
                  facade.registerCommand(ApplicationNotificationConstants.GROUND_GENERATE_STREETS_TEXTURES_COMMAND,GroundGeneratStreetsTexturesCommand);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     facade.registerCommand(ApplicationNotificationConstants.GROUND_GENERATE_TEXTURES_COMMAND,GroundGenerateTexturesCommand);
                     if(_loc2_ || _loc3_)
                     {
                        facade.registerCommand(ApplicationNotificationConstants.FIELD_DATA_CHANGED,PlayfieldCleanCommand);
                        if(!(_loc3_ && _loc2_))
                        {
                           facade.registerCommand(ApplicationNotificationConstants.FIELD_REDRAW,PlayfieldRedrawCommand);
                           if(!_loc3_)
                           {
                              facade.registerCommand(ApplicationNotificationConstants.CREATE_CLIENT_FIELD_OBJECTS,CreateClientFieldObjectsCommand);
                              if(_loc2_ || _loc3_)
                              {
                                 facade.registerCommand(ApplicationNotificationConstants.TIMER_TICK,HandleTimerTickCommand);
                                 if(_loc2_)
                                 {
                                    facade.registerCommand(ApplicationNotificationConstants.RENDER_TICK,HandleEnterFrameCommand);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       facade.registerCommand(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED,TerrainChangedCommand);
                                       if(_loc2_)
                                       {
                                          addr00ff:
                                          facade.registerCommand(ApplicationNotificationConstants.REMOVE_ALL_URBIES,RemoveAllUrbiesCommand);
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             facade.registerCommand(CitizenConstants.WALKER_DIRECTION_CHANGED,WalkerDirectionChangedCommand);
                                             if(_loc2_ || _loc3_)
                                             {
                                                facade.registerCommand(CitizenConstants.WALKER_FRIEND_FOUND,WalkerFriendFoundCommand);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   facade.registerCommand(CitizenConstants.WALKER_PATH_COMPLETE,WalkerPathCompleteCommand);
                                                   if(_loc2_)
                                                   {
                                                      addr0162:
                                                      facade.registerCommand(CitizenConstants.WALKER_PATH_FOUND,WalkerPathFoundCommand);
                                                      if(!_loc3_)
                                                      {
                                                         addr0175:
                                                         facade.registerCommand(CitizenConstants.WALKER_PATH_NOT_POSSIBLE,WalkerPathNotPossibleCommand);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            facade.registerCommand(CitizenConstants.WALKER_PATH_PAUSED,WalkerPathPausedCommand);
                                                            addr0190:
                                                            if(_loc2_ || Boolean(param1))
                                                            {
                                                               facade.registerCommand(CitizenConstants.WALKER_PATH_RESUMED,WalkerPathResumedCommand);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  facade.registerCommand(CitizenConstants.WALKER_CELL_CHANGED,WalkerCellChangedCommand);
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     facade.registerCommand(ApplicationNotificationConstants.SPAWN_INAUGURATE_CITIZEN,MoveInAnimationCommand);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr0207:
                                                                        facade.registerCommand(ApplicationNotificationConstants.CELEBRATING_CITIZEN,CelebratingCitizensCommand);
                                                                        if(_loc2_ || Boolean(this))
                                                                        {
                                                                           addr0221:
                                                                           facade.registerCommand(ApplicationNotificationConstants.SPAWN_EMERGENCY_CITIZEN,EmergencyAnimationCommand);
                                                                           if(!(_loc3_ && Boolean(this)))
                                                                           {
                                                                              addr023b:
                                                                              facade.registerCommand(ApplicationNotificationConstants.DECO_PLACED_INAUGURATE,DecoPlacedAnimationCommand);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 facade.registerCommand(ApplicationNotificationConstants.SHOW_FLOATER_ON_DESTROY,ShowFloaterOnDestroyCommand);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr0261:
                                                                                    facade.registerCommand(ApplicationNotificationConstants.SHOW_BOULDER_FLOATER_AND_REMOVE,ShowBoulderFloaterAndRemoveCommand);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr0274:
                                                                                       facade.registerCommand(ApplicationNotificationConstants.SHOW_PRODUCTION_FLOATER,ShowProductionStartedFloater);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          facade.registerCommand(ApplicationNotificationConstants.CITYSQUARE_CLICKED,CitySquareClickedCommand);
                                                                                          if(_loc2_ || Boolean(this))
                                                                                          {
                                                                                             facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_SWITCH_FIELD_OBJECT_CLICKED,PlayfieldSwitchFieldObjectClickedCommand);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr02bc:
                                                                                                facade.registerCommand(ApplicationNotificationConstants.BOULDER_CLICKED,BoulderClickedCommand);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr02cf:
                                                                                                   facade.registerCommand(ApplicationNotificationConstants.RESIDENT_SELECTED,OnResidentSelected);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr02e1:
                                                                                                      facade.registerCommand(ApplicationNotificationConstants.SHOW_PRODUCTION_ANIMATION,ShowProductionAnimation);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§goto(addr02f4);
                                                                                                      }
                                                                                                      §§goto(addr0339);
                                                                                                   }
                                                                                                   §§goto(addr035f);
                                                                                                }
                                                                                                §§goto(addr0307);
                                                                                             }
                                                                                             §§goto(addr02e1);
                                                                                          }
                                                                                          §§goto(addr02cf);
                                                                                       }
                                                                                       §§goto(addr0307);
                                                                                    }
                                                                                    §§goto(addr0339);
                                                                                 }
                                                                                 §§goto(addr031a);
                                                                              }
                                                                              §§goto(addr02bc);
                                                                           }
                                                                           §§goto(addr02e1);
                                                                        }
                                                                        §§goto(addr0261);
                                                                     }
                                                                     §§goto(addr02bc);
                                                                  }
                                                                  §§goto(addr02cf);
                                                               }
                                                               §§goto(addr023b);
                                                            }
                                                            addr02f4:
                                                            facade.registerCommand(ApplicationNotificationConstants.SHOW_INFO_FLOATER,ShowFloaterCommand);
                                                            if(!_loc3_)
                                                            {
                                                               addr0307:
                                                               facade.registerCommand(ApplicationNotificationConstants.CITIZEN_REBUILD_STREETMAP,CitizenRebuildStreetmapCommand);
                                                               if(_loc2_)
                                                               {
                                                                  facade.registerCommand(ApplicationNotificationConstants.COLLECT_EMERGENCY_REWARD,CollectEmergencyRewardCommand);
                                                                  addr031a:
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr0339:
                                                                     facade.registerCommand(ApplicationNotificationConstants.FIELD_PANTO_EMERGENCY,FieldPanToEmergencyCommand);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§goto(addr034c);
                                                                     }
                                                                     §§goto(addr035f);
                                                                  }
                                                                  addr034c:
                                                                  facade.registerCommand(ApplicationNotificationConstants.CHECK_MASTERY_TRAIT_SELECTION,CheckMasteryTraitSelectionCommand);
                                                                  if(_loc2_)
                                                                  {
                                                                     addr035f:
                                                                     facade.registerCommand(ApplicationNotificationConstants.SHOW_SCHEDULED_DROP_ANIMATION,ShowScheduledDropAnimationCommand);
                                                                  }
                                                                  §§goto(addr036d);
                                                               }
                                                               §§goto(addr035f);
                                                            }
                                                            §§goto(addr036d);
                                                         }
                                                         §§goto(addr0274);
                                                      }
                                                      §§goto(addr02e1);
                                                   }
                                                   addr036d:
                                                   return;
                                                }
                                                §§goto(addr0221);
                                             }
                                             §§goto(addr0307);
                                          }
                                          §§goto(addr02f4);
                                       }
                                       §§goto(addr0339);
                                    }
                                    §§goto(addr0162);
                                 }
                              }
                           }
                           §§goto(addr02cf);
                        }
                        §§goto(addr031a);
                     }
                     §§goto(addr00ff);
                  }
                  §§goto(addr0175);
               }
               §§goto(addr0207);
            }
            §§goto(addr0339);
         }
         §§goto(addr0190);
      }
   }
}

