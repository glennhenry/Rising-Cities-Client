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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_TIMESTAMP_REQUEST,ClientMessageUpdateTimerCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_LOGOUT,ClientMessageLogoutCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_BOOSTPHASE,ClientMessagePlayfieldBuildingBoostPhaseCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REQUEST_INSTANTFINISH,ClientMessagePlayfieldBuildingRequestInstantFinishCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_ITEM_CREATE,ClientMessagePlayfieldItemCreateCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_CREATE,ClientMessageDecorationCreateCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_DELETE,ClientMessageDecorationDeleteCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_MOVE,ClientMessageDecorationMoveCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CREATE,ClientMessageBuildingCreateCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_DELETE,ClientMessageBuildingDeleteCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_PLAYFIELDITEM_DELETE_SUCCESS,ServerMessagePlayfieldItemDeleteSuccess);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYFIELD_PLAYFIELDITEM_DELETE_FAILED,ServerMessagePlayfieldItemDeleteFailed);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_PROCESS,ClientMessageBuildingProcessConstructionPhaseCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,ClientMessageBuildingProcessHarvestPhaseCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_INAUGURATE,ClientMessageBuildingInaugurate);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_SWAP_RESIDENT,ClientMessagePlayfieldBuildingSwapResident);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_CREATE_GROUND,ClientMessageCreateGround);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_MOVE_GROUND,ClientMessageMoveGround);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DESTROY_GROUND,ClientMessageDeleteGround);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_EXPAND,ClientMessageExpandPlayfieldRequest);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REQUEST_PRODUCTION,ClientMessagePlayfieldRequestProduction);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_HARVEST_PRODUCTION,ClientMessagePlayfieldProcessHarvestProduction);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_CANCEL_PRODUCTION,ClientMessagePlayfieldCancelProduction);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_STACK_NEED,ClientMessagePlayfieldStackNeedCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_UNSTACK_NEED,ClientMessagePlayfieldUnstackNeedCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_MOVE_BUILDING,ClientMessagePlayfieldMoveBuildingCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BOULDER_PROCESSPHASE,ClientMessageBoulderProcessPhaseCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELDITEM_BUY_PERMISSION,ClientMessageBuyPermissionCommand);
         facade.registerCommand(ApplicationNotificationConstants.BUY_PAYMENT_PACK,ClientBuyPaymentPackCommand);
         facade.registerCommand(ApplicationNotificationConstants.INGAMECURRENCY_CHANGED,SyncronizePHPResourcesCommand);
         facade.registerCommand(ApplicationNotificationConstants.REALCURRENCY_CHANGED,SyncronizePHPResourcesCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,ClientMessageQuestTaskProcess);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_ELEMENT_CHANGE_STATE,ClientMessageQuestElementChangeStateCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_ELEMENT_INSTANT_FINISH,ClientMessageQuestElementInstantFinishCommand);
         facade.registerCommand(ApplicationNotificationConstants.SESSION_KEEPALIVE,PhpSessionKeepAliveCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_PLAYER_ACCEPT_FRIEND,ClientMessageSlayerAcceptFriendCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_PLAYER_INVITE_REQUESTFRIENDLIST,ClientMessageSlayerInviteRequestFriendListCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_PLAYER_INVITE_FRIEND,ClientMessageSlayerInviteFriendCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_PLAYER_DECLINE_FRIEND,ClientMessageSlayerDeclineFriendCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_PLAYER_CANCEL_FRIEND,ClientMessageSlayerCancelFriendCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_PROCESS_EMERGENCY,ClientMessageEmergencyProcessCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REPAIR_BUILDING,ClientMessageRepairBuildingCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_COLLECT_EMERGENCY,ClientMessageEmergencyCollectRewardCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_RENEW,ClientMessageProfessionalRenewCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_FIRE,ClientMessageProfessionalFireCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PROFESSIONAL_LEVEL_UP,ClientMessageProfessionalLevelUpCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_BOOSTERPACK_BUY,ClientMessageBoosterBuyCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_ADD_EDUCATION_STEP,ClientMessageAddEducationStepCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_START_EDUCATION,ClientMessageStartEducationCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_SPEND_SKILLPOINT,ClientMessageSpendSkillpointCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_HIRE_PROFESSIONAL,ClientMessageHireProfessionalCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_MOVE_PLAYFIELDITEM_TO_INVENTORY,ClientMessageMoveItemToInventoryCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_MOVE_INVENTORYITEM_TO_PLAYFIELD,ClientMessageMoveInventoryItemToFieldCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_REMOVE_ITEM_FROM_INVENTORY,ClientMessageRemoveItemFromInventoryCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_EXPAND_INVENTORY_BAG,ClientMessageExpandInventoryBagCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_USE_HARVESTHELPER_RESIDENTIAL,ClientMessageUseAssistHarvestResidential);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYER_REQUEST_NEWSSCREEN,ClientMessageRequestNewsscreenCommand);
         facade.registerCommand(ApplicationNotificationConstants.BUY_ASSIST,ClientMessageBuyAssistCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_EQUIP_PLAYFIELDITEM_IMPROVEMENT,ClientMessageEquipPlayfieldItemImprovementCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PROLONG_PLAYFIELDITEM_IMPROVEMENT,ClientMessageProlongPlayfieldItemImprovementCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_DELETE_PLAYFIELDITEM_IMPROVEMENT,ClientMessageDeletePlayfieldItemImprovementCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_IMPROVEMENT_BOOSTER_BUY,ClientMessageBuyImprovementBoosterPackCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,ClientMessageSwitchPlayfieldCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_LOAD,ClientMessagePlayfieldLoadCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_CITY_WHEEL_COLLECT,ClientMessageCityWheelCollectCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_CITY_WHEEL_SPIN,ClientMessageCityWheelSpinCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_MASTERY_BUILDING_PROCESS,ClientMessageMasteryBuildingProcessCommand);
      }
   }
}

