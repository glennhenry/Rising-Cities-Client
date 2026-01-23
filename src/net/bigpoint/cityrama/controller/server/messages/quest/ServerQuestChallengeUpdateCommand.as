package net.bigpoint.cityrama.controller.server.messages.quest
{
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestChallengeConfigDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerQuestChallengeUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerQuestChallengeUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         var _loc4_:QuestChallengeConfigDTO = _loc3_.getChallengeConfigByConfigId(_loc2_.json.q.cid);
         var _loc5_:QuestChallengeDTO = new QuestChallengeDTO(_loc2_.json.q,_loc4_);
         _loc3_.updateChallenge(_loc5_);
      }
   }
}

