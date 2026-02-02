package net.bigpoint.cityrama.controller.preloaderStartup
{
   import flash.desktop.NativeApplication;
   import flash.events.UncaughtErrorEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.controller.ErrorCommand;
   import net.bigpoint.cityrama.controller.GameConfigNewCommand;
   import net.bigpoint.cityrama.controller.architectBook.UIAttentionMarksViewedPlayfieldItemId;
   import net.bigpoint.cityrama.controller.city.CityDTOChangedCommand;
   import net.bigpoint.cityrama.controller.client.messages.ClientMessageLoginCommand;
   import net.bigpoint.cityrama.controller.horizon.HorizonRedrawCommand;
   import net.bigpoint.cityrama.controller.marketplace.SendGoodTooltipsToPHPCommand;
   import net.bigpoint.cityrama.controller.options.OptionsStartInFullscreenCommand;
   import net.bigpoint.cityrama.controller.options.UIOptionsSettingsCommand;
   import net.bigpoint.cityrama.controller.player.PlayerDTOChangedCommand;
   import net.bigpoint.cityrama.controller.server.ServerConnectedCommand;
   import net.bigpoint.cityrama.controller.server.ServerNewCommand;
   import net.bigpoint.cityrama.controller.server.ServerNewMessageCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessageLoginSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.ServerMessagePlayerCityUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageProfessionalLevelUpSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.education.ServerMessageProfessionalTraitSuccessCommand;
   import net.bigpoint.cityrama.controller.server.messages.login.ServerMessageLoginFailedCommand;
   import net.bigpoint.cityrama.controller.server.messages.options.ClientUpdateClientUIDataCommand;
   import net.bigpoint.cityrama.controller.server.messages.options.ServerClientUIDataCommand;
   import net.bigpoint.cityrama.controller.server.messages.quest.ServerMessageEventUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.quest.ServerMessageQuestNewCommand;
   import net.bigpoint.cityrama.controller.server.messages.quest.ServerMessageQuestTaskUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.quest.ServerMessageQuestUpdateCommand;
   import net.bigpoint.cityrama.controller.server.messages.quest.ServerQuestChallengeUpdateCommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PreloaderControllerPrepCommand extends SimpleCommand
   {
      
      public function PreloaderControllerPrepCommand()
      {
         super();
      }
      
      internal function onUncaughtError(e:UncaughtErrorEvent) : void
      {
         trace("=== UNCAUGHT ERROR ===",e.error);
         if(e.error is Error)
         {
            trace(Error(e.error).message);
            trace(Error(e.error).getStackTrace());
         }
         e.preventDefault();
      }
      
      override public function execute(param1:INotification) : void
      {
         NativeApplication.nativeApplication.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,onUncaughtError);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA,ClientUpdateClientUIDataCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_UPDATE_CLIENT_UI_DATA_SUCCESS,ServerClientUIDataCommand);
         facade.registerCommand(ApplicationNotificationConstants.SET_USER_OPTIONS,UIOptionsSettingsCommand);
         facade.registerCommand(ApplicationNotificationConstants.START_APP_FULLSCREEN,OptionsStartInFullscreenCommand);
         facade.registerCommand(ApplicationNotificationConstants.UI_ATTENTION_MARK_PLAYFIELD_ITEM_VIEWED,UIAttentionMarksViewedPlayfieldItemId);
         facade.registerCommand(ApplicationNotificationConstants.SETTINGS_LOADED,SettingsLoadedCommand);
         facade.registerCommand(ApplicationNotificationConstants.GAME_CONFIG_NEW,GameConfigNewCommand);
         facade.registerCommand(ApplicationNotificationConstants.SEND_GOODTOOLTIPS_TO_PHP,SendGoodTooltipsToPHPCommand);
         facade.registerCommand(ApplicationNotificationConstants.ERROR,ErrorCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_NEW,ServerNewCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_NEW_MESSAGE,ServerNewMessageCommand);
         facade.registerCommand(ApplicationNotificationConstants.HORIZON_REDRAW,HorizonRedrawCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_INITIAL_LOGIN_SUCCESS,ServerMessageLoginSuccessCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_LOGIN_FAILED,ServerMessageLoginFailedCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_CONNECTED,ServerConnectedCommand);
         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_LOGIN,ClientMessageLoginCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_QUEST_NEW,ServerMessageQuestNewCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_QUEST_TASK_UPDATE,ServerMessageQuestTaskUpdateCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_QUEST_UPDATE,ServerMessageQuestUpdateCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_EVENT_UPDATE,ServerMessageEventUpdateCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_QUEST_CHALLENGE_UPDATE,ServerQuestChallengeUpdateCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYER_DATA_CHANGED,PlayerDTOChangedCommand);
         facade.registerCommand(ApplicationNotificationConstants.CITY_DATA_CHANGED,CityDTOChangedCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_CITY_UPDATE,ServerMessagePlayerCityUpdateCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_LEVEL_SUCCESS,ServerMessageProfessionalLevelUpSuccessCommand);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_TRAIT_SUCCESS,ServerMessageProfessionalTraitSuccessCommand);
      }
   }
}

