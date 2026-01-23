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
         if(!_loc2_)
         {
            facade.registerCommand(ApplicationNotificationConstants.INIT_QUEST_SYSTEM,InitializeQuestSystemCommand);
            if(!_loc2_)
            {
               facade.registerCommand(ApplicationNotificationConstants.QUEST_COLLECTREWARD,QuestCollectRewardCommand);
               if(!(_loc2_ && Boolean(this)))
               {
                  facade.registerCommand(ApplicationNotificationConstants.QUEST_CHALLENGE_COLLECTREWARD,QuestChallengeCollectRewardCommand);
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr007d);
               }
            }
            §§goto(addr00b5);
         }
         addr006b:
         facade.registerCommand(ApplicationNotificationConstants.QUEST_VIEWED,QuestViewedCommand);
         if(_loc3_)
         {
            facade.registerCommand(ApplicationNotificationConstants.QUEST_CHANGE_STATE,ClientMessageQuestChangeStateCommand);
            addr007d:
            if(!(_loc2_ && _loc3_))
            {
               facade.registerCommand(ApplicationNotificationConstants.QUEST_UPSELL,ClientMessageQuestUpsellCommand);
               if(_loc3_)
               {
                  addr00b5:
                  facade.registerCommand(ApplicationNotificationConstants.QUEST_DEPOSIT_TASK,ClientMessageQuestDepositTaskCommand);
               }
            }
         }
      }
   }
}

