package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.quest.ClientMessageQuestChangeStateCommand;
   import net.bigpoint.cityrama.controller.quest.ClientMessageQuestDepositTaskCommand;
   import net.bigpoint.cityrama.controller.quest.ClientMessageQuestUpsellCommand;
   import net.bigpoint.cityrama.controller.quest.InitializeQuestSystemCommand;
   import net.bigpoint.cityrama.controller.quest.QuestChallengeCollectRewardCommand;
   import net.bigpoint.cityrama.controller.quest.QuestCollectRewardCommand;
   import net.bigpoint.cityrama.controller.quest.QuestViewedCommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ControllerPrepCommandQuestsystem extends SimpleCommand
   {
      
      public function ControllerPrepCommandQuestsystem()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.registerCommand(ApplicationNotificationConstants.INIT_QUEST_SYSTEM,InitializeQuestSystemCommand);
         facade.registerCommand(ApplicationNotificationConstants.QUEST_COLLECTREWARD,QuestCollectRewardCommand);
         facade.registerCommand(ApplicationNotificationConstants.QUEST_CHALLENGE_COLLECTREWARD,QuestChallengeCollectRewardCommand);
         facade.registerCommand(ApplicationNotificationConstants.QUEST_VIEWED,QuestViewedCommand);
         facade.registerCommand(ApplicationNotificationConstants.QUEST_CHANGE_STATE,ClientMessageQuestChangeStateCommand);
         facade.registerCommand(ApplicationNotificationConstants.QUEST_UPSELL,ClientMessageQuestUpsellCommand);
         facade.registerCommand(ApplicationNotificationConstants.QUEST_DEPOSIT_TASK,ClientMessageQuestDepositTaskCommand);
      }
   }
}

