package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.controller.client.ClientMessageExpandPlayfieldRequest;
   import net.bigpoint.cityrama.controller.client.ClientMessageLogoutCommand;
   import net.bigpoint.cityrama.controller.client.ClientMessagePlayfieldCancelProduction;
   import net.bigpoint.cityrama.controller.client.ClientMessagePlayfieldMoveBuildingCommand;
   import net.bigpoint.cityrama.controller.client.ClientMessagePlayfieldProcessHarvestProduction;
   import net.bigpoint.cityrama.controller.client.ClientMessagePlayfieldRequestProduction;
   import net.bigpoint.cityrama.controller.client.ClientMessagePlayfieldStackNeedCommand;
   import net.bigpoint.cityrama.controller.client.ClientMessagePlayfieldUnstackNeedCommand;
   import net.bigpoint.cityrama.controller.client.ClientMessageUpdateTimerCommand;
   import net.bigpoint.cityrama.controller.friend.ClientMessageSlayerAcceptFriendCommand;
   import net.bigpoint.cityrama.controller.friend.ClientMessageSlayerCancelFriendCommand;
   import net.bigpoint.cityrama.controller.friend.ClientMessageSlayerDeclineFriendCommand;
   import net.bigpoint.cityrama.controller.friend.ClientMessageSlayerInviteFriendCommand;
   import net.bigpoint.cityrama.controller.friend.ClientMessageSlayerInviteRequestFriendListCommand;
   import net.bigpoint.cityrama.controller.marketplace.SyncronizePHPResourcesCommand;
   import net.bigpoint.cityrama.controller.newsscreen.ClientMessageRequestNewsscreenCommand;
   import net.bigpoint.cityrama.controller.payment.ClientBuyPaymentPackCommand;
   import net.bigpoint.cityrama.controller.server.PhpSessionKeepAliveCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageBoulderProcessPhaseCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageBuildingCreateCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageBuildingDeleteCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageBuildingInaugurate;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageBuildingProcessConstructionPhaseCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageBuildingProcessHarvestPhaseCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageBuyPermissionCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageCreateGround;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageDecorationCreateCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageDecorationDeleteCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageDecorationMoveCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageDeleteGround;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessageMoveGround;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessagePlayfieldBuildingBoostPhaseCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessagePlayfieldBuildingRequestInstantFinishCommand;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessagePlayfieldBuildingSwapResident;
   import net.bigpoint.cityrama.controller.server.messages.ClientMessagePlayfieldItemCreateCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldItemDeleteFailed;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayfieldItemDeleteSuccess;
   import net.bigpoint.cityrama.controller.server.messages.assistants.client.ClientMessageBuyAssistCommand;
   import net.bigpoint.cityrama.controller.server.messages.assistants.client.ClientMessageUseAssistHarvestResidential;
   import net.bigpoint.cityrama.controller.server.messages.boosterpack.client.ClientMessageBoosterBuyCommand;
   import net.bigpoint.cityrama.controller.server.messages.cityWheel.client.ClientMessageCityWheelCollectCommand;
   import net.bigpoint.cityrama.controller.server.messages.cityWheel.client.ClientMessageCityWheelSpinCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ClientMessageAddEducationStepCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ClientMessageHireProfessionalCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ClientMessageSpendSkillpointCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ClientMessageStartEducationCommand;
   import net.bigpoint.cityrama.controller.server.messages.emergency.client.ClientMessageEmergencyCollectRewardCommand;
   import net.bigpoint.cityrama.controller.server.messages.emergency.client.ClientMessageEmergencyProcessCommand;
   import net.bigpoint.cityrama.controller.server.messages.emergency.client.ClientMessageRepairBuildingCommand;
   import net.bigpoint.cityrama.controller.server.messages.improvements.client.ClientMessageBuyImprovementBoosterPackCommand;
   import net.bigpoint.cityrama.controller.server.messages.improvements.client.ClientMessageDeletePlayfieldItemImprovementCommand;
   import net.bigpoint.cityrama.controller.server.messages.improvements.client.ClientMessageEquipPlayfieldItemImprovementCommand;
   import net.bigpoint.cityrama.controller.server.messages.improvements.client.ClientMessageProlongPlayfieldItemImprovementCommand;
   import net.bigpoint.cityrama.controller.server.messages.inventory.client.ClientMessageExpandInventoryBagCommand;
   import net.bigpoint.cityrama.controller.server.messages.inventory.client.ClientMessageMoveInventoryItemToFieldCommand;
   import net.bigpoint.cityrama.controller.server.messages.inventory.client.ClientMessageMoveItemToInventoryCommand;
   import net.bigpoint.cityrama.controller.server.messages.inventory.client.ClientMessageRemoveItemFromInventoryCommand;
   import net.bigpoint.cityrama.controller.server.messages.mastery.client.ClientMessageMasteryBuildingProcessCommand;
   import net.bigpoint.cityrama.controller.server.messages.playfield.client.ClientMessagePlayfieldLoadCommand;
   import net.bigpoint.cityrama.controller.server.messages.playfield.client.ClientMessageSwitchPlayfieldCommand;
   import net.bigpoint.cityrama.controller.server.messages.professionals.client.ClientMessageProfessionalFireCommand;
   import net.bigpoint.cityrama.controller.server.messages.professionals.client.ClientMessageProfessionalLevelUpCommand;
   import net.bigpoint.cityrama.controller.server.messages.professionals.client.ClientMessageProfessionalRenewCommand;
   import net.bigpoint.cityrama.controller.server.messages.quest.ClientMessageQuestElementChangeStateCommand;
   import net.bigpoint.cityrama.controller.server.messages.quest.ClientMessageQuestElementInstantFinishCommand;
   import net.bigpoint.cityrama.controller.server.messages.quest.ClientMessageQuestTaskProcess;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ControllerPrepCommandClientServerCommunication extends SimpleCommand
   {
      
      public function ControllerPrepCommandClientServerCommunication()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_TIMESTAMP_REQUEST,ClientMessageUpdateTimerCommand);
            if(!(_loc2_ && Boolean(this)))
            {
               facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_LOGOUT,ClientMessageLogoutCommand);
               if(_loc3_ || Boolean(this))
               {
                  facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_BOOSTPHASE,ClientMessagePlayfieldBuildingBoostPhaseCommand);
                  if(_loc3_)
                  {
                     facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REQUEST_INSTANTFINISH,ClientMessagePlayfieldBuildingRequestInstantFinishCommand);
                     if(_loc3_)
                     {
                        facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_ITEM_CREATE,ClientMessagePlayfieldItemCreateCommand);
                        if(!(_loc2_ && _loc3_))
                        {
                           facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_CREATE,ClientMessageDecorationCreateCommand);
                           if(!(_loc2_ && _loc3_))
                           {
                              facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_DELETE,ClientMessageDecorationDeleteCommand);
                              if(_loc3_)
                              {
                                 addr00c8:
                                 facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_MOVE,ClientMessageDecorationMoveCommand);
                                 if(!_loc2_)
                                 {
                                    facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CREATE,ClientMessageBuildingCreateCommand);
                                    if(!_loc2_)
                                    {
                                       facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_DELETE,ClientMessageBuildingDeleteCommand);
                                       if(_loc3_)
                                       {
                                          facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_PLAYFIELDITEM_DELETE_SUCCESS,ServerMessagePlayfieldItemDeleteSuccess);
                                          if(_loc3_ || _loc2_)
                                          {
                                             facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_PLAYFIELDITEM_DELETE_FAILED,ServerMessagePlayfieldItemDeleteFailed);
                                             if(!_loc2_)
                                             {
                                                addr012f:
                                                facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_PROCESS,ClientMessageBuildingProcessConstructionPhaseCommand);
                                                if(_loc3_)
                                                {
                                                   facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,ClientMessageBuildingProcessHarvestPhaseCommand);
                                                   if(!_loc2_)
                                                   {
                                                      facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_INAUGURATE,ClientMessageBuildingInaugurate);
                                                      if(!_loc2_)
                                                      {
                                                         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_SWAP_RESIDENT,ClientMessagePlayfieldBuildingSwapResident);
                                                         if(_loc3_)
                                                         {
                                                            addr017b:
                                                            facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_CREATE_GROUND,ClientMessageCreateGround);
                                                            if(!_loc2_)
                                                            {
                                                               facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_MOVE_GROUND,ClientMessageMoveGround);
                                                               if(_loc3_)
                                                               {
                                                                  facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DESTROY_GROUND,ClientMessageDeleteGround);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_EXPAND,ClientMessageExpandPlayfieldRequest);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REQUEST_PRODUCTION,ClientMessagePlayfieldRequestProduction);
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_HARVEST_PRODUCTION,ClientMessagePlayfieldProcessHarvestProduction);
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr0205:
                                                                              facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_CANCEL_PRODUCTION,ClientMessagePlayfieldCancelProduction);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_STACK_NEED,ClientMessagePlayfieldStackNeedCommand);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_UNSTACK_NEED,ClientMessagePlayfieldUnstackNeedCommand);
                                                                                    if(_loc3_ || Boolean(param1))
                                                                                    {
                                                                                       §§goto(addr0246);
                                                                                    }
                                                                                    §§goto(addr0477);
                                                                                 }
                                                                                 §§goto(addr0423);
                                                                              }
                                                                              §§goto(addr0274);
                                                                           }
                                                                           addr0246:
                                                                           facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_MOVE_BUILDING,ClientMessagePlayfieldMoveBuildingCommand);
                                                                           if(!(_loc2_ && _loc3_))
                                                                           {
                                                                              addr0261:
                                                                              facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BOULDER_PROCESSPHASE,ClientMessageBoulderProcessPhaseCommand);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr0274:
                                                                                 facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELDITEM_BUY_PERMISSION,ClientMessageBuyPermissionCommand);
                                                                                 if(!(_loc2_ && Boolean(this)))
                                                                                 {
                                                                                    facade.registerCommand(ApplicationNotificationConstants.BUY_PAYMENT_PACK,ClientBuyPaymentPackCommand);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       facade.registerCommand(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED,SyncronizePHPResourcesCommand);
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          §§goto(addr02bb);
                                                                                       }
                                                                                       §§goto(addr04b0);
                                                                                    }
                                                                                    §§goto(addr0593);
                                                                                 }
                                                                                 §§goto(addr0312);
                                                                              }
                                                                              §§goto(addr0449);
                                                                           }
                                                                           §§goto(addr02bb);
                                                                        }
                                                                        §§goto(addr054a);
                                                                     }
                                                                     §§goto(addr0261);
                                                                  }
                                                                  §§goto(addr02cd);
                                                               }
                                                               §§goto(addr049d);
                                                            }
                                                            §§goto(addr0274);
                                                         }
                                                      }
                                                      §§goto(addr0565);
                                                   }
                                                   §§goto(addr017b);
                                                }
                                                §§goto(addr02f3);
                                             }
                                             §§goto(addr04c3);
                                          }
                                          addr02bb:
                                          facade.registerCommand(ApplicationNotificationConstants.REALCURRENCY_CHANGED,SyncronizePHPResourcesCommand);
                                          if(!_loc2_)
                                          {
                                             addr02cd:
                                             facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,ClientMessageQuestTaskProcess);
                                             if(!_loc2_)
                                             {
                                                facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_ELEMENT_CHANGE_STATE,ClientMessageQuestElementChangeStateCommand);
                                                if(_loc3_)
                                                {
                                                   addr02f3:
                                                   facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_ELEMENT_INSTANT_FINISH,ClientMessageQuestElementInstantFinishCommand);
                                                   if(_loc3_)
                                                   {
                                                      addr0312:
                                                      facade.registerCommand(ApplicationNotificationConstants.SESSION_KEEPALIVE,PhpSessionKeepAliveCommand);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         facade.registerCommand(ServerNotificationConstants.CLIENT_PLAYER_ACCEPT_FRIEND,ClientMessageSlayerAcceptFriendCommand);
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            facade.registerCommand(ServerNotificationConstants.CLIENT_PLAYER_INVITE_REQUESTFRIENDLIST,ClientMessageSlayerInviteRequestFriendListCommand);
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               addr0363:
                                                               facade.registerCommand(ServerNotificationConstants.CLIENT_PLAYER_INVITE_FRIEND,ClientMessageSlayerInviteFriendCommand);
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  facade.registerCommand(ServerNotificationConstants.CLIENT_PLAYER_DECLINE_FRIEND,ClientMessageSlayerDeclineFriendCommand);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     facade.registerCommand(ServerNotificationConstants.CLIENT_PLAYER_CANCEL_FRIEND,ClientMessageSlayerCancelFriendCommand);
                                                                     if(!(_loc2_ && Boolean(this)))
                                                                     {
                                                                        facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_PROCESS_EMERGENCY,ClientMessageEmergencyProcessCommand);
                                                                        if(_loc3_)
                                                                        {
                                                                           facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REPAIR_BUILDING,ClientMessageRepairBuildingCommand);
                                                                           if(_loc3_)
                                                                           {
                                                                              facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_COLLECT_EMERGENCY,ClientMessageEmergencyCollectRewardCommand);
                                                                              if(!(_loc2_ && Boolean(param1)))
                                                                              {
                                                                                 addr03f5:
                                                                                 facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_RENEW,ClientMessageProfessionalRenewCommand);
                                                                                 if(!(_loc2_ && Boolean(param1)))
                                                                                 {
                                                                                    §§goto(addr0410);
                                                                                 }
                                                                              }
                                                                              §§goto(addr04b0);
                                                                           }
                                                                           §§goto(addr04de);
                                                                        }
                                                                        §§goto(addr049d);
                                                                     }
                                                                     §§goto(addr05c1);
                                                                  }
                                                                  §§goto(addr0617);
                                                               }
                                                               §§goto(addr05c1);
                                                            }
                                                            addr0410:
                                                            facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_FIRE,ClientMessageProfessionalFireCommand);
                                                            if(!_loc2_)
                                                            {
                                                               addr0423:
                                                               facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_LEVEL_UP,ClientMessageProfessionalLevelUpCommand);
                                                               if(_loc3_)
                                                               {
                                                                  addr0436:
                                                                  facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_BOOSTERPACK_BUY,ClientMessageBoosterBuyCommand);
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0449:
                                                                     facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_ADD_EDUCATION_STEP,ClientMessageAddEducationStepCommand);
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        addr0464:
                                                                        facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_START_EDUCATION,ClientMessageStartEducationCommand);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr0477:
                                                                           facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_SPEND_SKILLPOINT,ClientMessageSpendSkillpointCommand);
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr048a:
                                                                              facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_HIRE_PROFESSIONAL,ClientMessageHireProfessionalCommand);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr049d:
                                                                                 facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_MOVE_PLAYFIELDITEM_TO_INVENTORY,ClientMessageMoveItemToInventoryCommand);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr04b0:
                                                                                    facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_MOVE_INVENTORYITEM_TO_PLAYFIELD,ClientMessageMoveInventoryItemToFieldCommand);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr04c3:
                                                                                       facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_REMOVE_ITEM_FROM_INVENTORY,ClientMessageRemoveItemFromInventoryCommand);
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          addr04de:
                                                                                          facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_EXPAND_INVENTORY_BAG,ClientMessageExpandInventoryBagCommand);
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             §§goto(addr04f9);
                                                                                          }
                                                                                          §§goto(addr05fc);
                                                                                       }
                                                                                       §§goto(addr05d4);
                                                                                    }
                                                                                    §§goto(addr05fc);
                                                                                 }
                                                                              }
                                                                              §§goto(addr04c3);
                                                                           }
                                                                           §§goto(addr0593);
                                                                        }
                                                                        §§goto(addr05fc);
                                                                     }
                                                                     §§goto(addr0593);
                                                                  }
                                                                  §§goto(addr04b0);
                                                               }
                                                               §§goto(addr052f);
                                                            }
                                                            addr04f9:
                                                            facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_USE_HARVESTHELPER_RESIDENTIAL,ClientMessageUseAssistHarvestResidential);
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYER_REQUEST_NEWSSCREEN,ClientMessageRequestNewsscreenCommand);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr052f:
                                                                  facade.registerCommand(ApplicationNotificationConstants.BUY_ASSIST,ClientMessageBuyAssistCommand);
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     addr054a:
                                                                     facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_EQUIP_PLAYFIELDITEM_IMPROVEMENT,ClientMessageEquipPlayfieldItemImprovementCommand);
                                                                     if(!(_loc2_ && Boolean(param1)))
                                                                     {
                                                                        addr0565:
                                                                        facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PROLONG_PLAYFIELDITEM_IMPROVEMENT,ClientMessageProlongPlayfieldItemImprovementCommand);
                                                                        if(!_loc2_)
                                                                        {
                                                                           facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_DELETE_PLAYFIELDITEM_IMPROVEMENT,ClientMessageDeletePlayfieldItemImprovementCommand);
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              addr0593:
                                                                              facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_IMPROVEMENT_BOOSTER_BUY,ClientMessageBuyImprovementBoosterPackCommand);
                                                                              if(_loc3_ || Boolean(param1))
                                                                              {
                                                                                 addr05ae:
                                                                                 facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,ClientMessageSwitchPlayfieldCommand);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr05c1:
                                                                                    facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_LOAD,ClientMessagePlayfieldLoadCommand);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr05d4:
                                                                                       facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_CITY_WHEEL_COLLECT,ClientMessageCityWheelCollectCommand);
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          addr05fc:
                                                                                          facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_CITY_WHEEL_SPIN,ClientMessageCityWheelSpinCommand);
                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                          {
                                                                                             addr0617:
                                                                                             facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_MASTERY_BUILDING_PROCESS,ClientMessageMasteryBuildingProcessCommand);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0625);
                                                                              }
                                                                              §§goto(addr05c1);
                                                                           }
                                                                           §§goto(addr05d4);
                                                                        }
                                                                        §§goto(addr0617);
                                                                     }
                                                                     §§goto(addr05d4);
                                                                  }
                                                                  §§goto(addr0593);
                                                               }
                                                            }
                                                            §§goto(addr0625);
                                                         }
                                                         §§goto(addr048a);
                                                      }
                                                      §§goto(addr05ae);
                                                   }
                                                }
                                                §§goto(addr05c1);
                                             }
                                             §§goto(addr0363);
                                          }
                                          addr0625:
                                          return;
                                       }
                                       §§goto(addr012f);
                                    }
                                    §§goto(addr04c3);
                                 }
                                 §§goto(addr0436);
                              }
                              §§goto(addr0617);
                           }
                           §§goto(addr05ae);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr0410);
                  }
                  §§goto(addr0464);
               }
            }
            §§goto(addr03f5);
         }
         §§goto(addr0205);
      }
   }
}

