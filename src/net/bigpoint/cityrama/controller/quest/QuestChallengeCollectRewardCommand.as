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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc2_:Number = Number(param1.getBody());
         var _loc3_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         var _loc4_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc5_:Object = new Object();
         _loc5_.eid = _loc3_.getChallengeConfigByConfigId(_loc2_).id;
         if(_loc7_)
         {
            _loc5_.t = QuestSystemTypeConstants.EVENT;
            if(!_loc8_)
            {
               §§goto(addr0082);
            }
            §§goto(addr00a8);
         }
         addr0082:
         _loc5_.s = QuestSystemStateConst.SUBMITTED;
         if(!(_loc8_ && Boolean(this)))
         {
            addr00a8:
            _loc5_.qid = _loc3_.getQuestByChallengeCId(_loc2_).id;
         }
         var _loc6_:MessageVo = _loc4_.createMessage(_loc5_,ServerMessageConstants.QUEST_ELEMENT_CHANGE_STATE);
         if(!_loc8_)
         {
            _loc4_.sendMessage(_loc6_);
         }
      }
   }
}

