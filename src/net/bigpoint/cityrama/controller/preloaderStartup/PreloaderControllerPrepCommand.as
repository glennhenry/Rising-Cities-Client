package net.bigpoint.cityrama.controller.preloaderStartup
{
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA,ClientUpdateClientUIDataCommand);
            if(!_loc2_)
            {
               facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_UPDATE_CLIENT_UI_DATA_SUCCESS,ServerClientUIDataCommand);
               if(!(_loc2_ && Boolean(param1)))
               {
                  facade.registerCommand(ApplicationNotificationConstants.SET_USER_OPTIONS,UIOptionsSettingsCommand);
                  if(_loc3_ || Boolean(this))
                  {
                     facade.registerCommand(ApplicationNotificationConstants.START_APP_FULLSCREEN,OptionsStartInFullscreenCommand);
                     if(_loc3_ || _loc3_)
                     {
                        facade.registerCommand(ApplicationNotificationConstants.UI_ATTENTION_MARK_PLAYFIELD_ITEM_VIEWED,UIAttentionMarksViewedPlayfieldItemId);
                        if(_loc3_ || Boolean(param1))
                        {
                           facade.registerCommand(ApplicationNotificationConstants.SETTINGS_LOADED,SettingsLoadedCommand);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              facade.registerCommand(ApplicationNotificationConstants.GAME_CONFIG_NEW,GameConfigNewCommand);
                              if(!_loc2_)
                              {
                                 facade.registerCommand(ApplicationNotificationConstants.SEND_GOODTOOLTIPS_TO_PHP,SendGoodTooltipsToPHPCommand);
                                 if(!_loc2_)
                                 {
                                    facade.registerCommand(ApplicationNotificationConstants.ERROR,ErrorCommand);
                                    if(!_loc2_)
                                    {
                                       facade.registerCommand(ServerNotificationConstants.SERVER_NEW,ServerNewCommand);
                                       if(!(_loc2_ && Boolean(param1)))
                                       {
                                          facade.registerCommand(ServerNotificationConstants.SERVER_NEW_MESSAGE,ServerNewMessageCommand);
                                          if(!_loc2_)
                                          {
                                             addr012a:
                                             facade.registerCommand(ApplicationNotificationConstants.HORIZON_REDRAW,HorizonRedrawCommand);
                                             if(_loc3_ || _loc3_)
                                             {
                                                facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_INITIAL_LOGIN_SUCCESS,ServerMessageLoginSuccessCommand);
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_LOGIN_FAILED,ServerMessageLoginFailedCommand);
                                                   if(_loc3_)
                                                   {
                                                      addr0173:
                                                      facade.registerCommand(ServerNotificationConstants.SERVER_CONNECTED,ServerConnectedCommand);
                                                      if(_loc3_)
                                                      {
                                                         addr0186:
                                                         facade.registerCommand(ServerNotificationConstants.CLIENT_MESSAGE_LOGIN,ClientMessageLoginCommand);
                                                         if(!_loc2_)
                                                         {
                                                            facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_QUEST_NEW,ServerMessageQuestNewCommand);
                                                            if(!_loc2_)
                                                            {
                                                               addr01ac:
                                                               facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_QUEST_TASK_UPDATE,ServerMessageQuestTaskUpdateCommand);
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  addr01c7:
                                                                  facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_QUEST_UPDATE,ServerMessageQuestUpdateCommand);
                                                                  if(_loc3_)
                                                                  {
                                                                     addr01da:
                                                                     facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_EVENT_UPDATE,ServerMessageEventUpdateCommand);
                                                                     if(_loc3_)
                                                                     {
                                                                        addr01ed:
                                                                        facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_QUEST_CHALLENGE_UPDATE,ServerQuestChallengeUpdateCommand);
                                                                        if(!(_loc2_ && Boolean(param1)))
                                                                        {
                                                                           facade.registerCommand(ApplicationNotificationConstants.PLAYER_DATA_CHANGED,PlayerDTOChangedCommand);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              facade.registerCommand(ApplicationNotificationConstants.CITY_DATA_CHANGED,CityDTOChangedCommand);
                                                                              addr0223:
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr0242);
                                                                              }
                                                                              §§goto(addr0268);
                                                                           }
                                                                           §§goto(addr0255);
                                                                        }
                                                                        addr0242:
                                                                        facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_CITY_UPDATE,ServerMessagePlayerCityUpdateCommand);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr0255:
                                                                           facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_LEVEL_SUCCESS,ServerMessageProfessionalLevelUpSuccessCommand);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0268:
                                                                              facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_PROFESSIONAL_TRAIT_SUCCESS,ServerMessageProfessionalTraitSuccessCommand);
                                                                           }
                                                                        }
                                                                        §§goto(addr0276);
                                                                     }
                                                                     §§goto(addr0268);
                                                                  }
                                                                  §§goto(addr0276);
                                                               }
                                                               §§goto(addr0268);
                                                            }
                                                            addr0276:
                                                            return;
                                                         }
                                                         §§goto(addr0268);
                                                      }
                                                      §§goto(addr01da);
                                                   }
                                                   §§goto(addr0186);
                                                }
                                                §§goto(addr01c7);
                                             }
                                             §§goto(addr0173);
                                          }
                                          §§goto(addr0223);
                                       }
                                       §§goto(addr01ac);
                                    }
                                    §§goto(addr01ed);
                                 }
                                 §§goto(addr012a);
                              }
                              §§goto(addr01ed);
                           }
                           §§goto(addr0255);
                        }
                     }
                     §§goto(addr0223);
                  }
                  §§goto(addr0173);
               }
               §§goto(addr0186);
            }
            §§goto(addr0255);
         }
         §§goto(addr01da);
      }
   }
}

