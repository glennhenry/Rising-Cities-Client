package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class QuestCollectRewardCommand extends SimpleCommand implements ICommand
   {
      
      public function QuestCollectRewardCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Number = Number(param1.getBody());
         var _loc3_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         var _loc4_:QuestPlayerVo = _loc3_.getCurrentQuestByID(_loc2_);
         var _loc5_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc6_:Object = new Object();
         _loc6_.qid = _loc4_.config.id;
         _loc6_.t = _loc4_.config.questElementSubType;
         _loc6_.s = QuestSystemStateConst.SUBMITTED;
         var _loc7_:MessageVo = _loc5_.createMessage(_loc6_,ServerMessageConstants.QUEST_CHANGE_STATE);
         _loc5_.sendMessage(_loc7_);
      }
   }
}

