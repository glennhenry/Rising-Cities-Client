package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class QuestChallengeCollectRewardCommand extends SimpleCommand implements ICommand
   {
      
      public function QuestChallengeCollectRewardCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Number = Number(param1.getBody());
         var _loc3_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         var _loc4_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc5_:Object = new Object();
         _loc5_.eid = _loc3_.getChallengeConfigByConfigId(_loc2_).id;
         _loc5_.t = QuestSystemTypeConstants.EVENT;
         _loc5_.s = QuestSystemStateConst.SUBMITTED;
         _loc5_.qid = _loc3_.getQuestByChallengeCId(_loc2_).id;
         var _loc6_:MessageVo = _loc4_.createMessage(_loc5_,ServerMessageConstants.QUEST_ELEMENT_CHANGE_STATE);
         _loc4_.sendMessage(_loc6_);
      }
   }
}

