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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:Number = Number(param1.getBody());
         var _loc3_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         var _loc4_:QuestPlayerVo = _loc3_.getCurrentQuestByID(_loc2_);
         var _loc5_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc6_:Object = new Object();
         _loc6_.qid = _loc4_.config.id;
         if(_loc8_)
         {
            _loc6_.t = _loc4_.config.questElementSubType;
            if(!(_loc9_ && Boolean(this)))
            {
               addr00a3:
               _loc6_.s = QuestSystemStateConst.SUBMITTED;
            }
            var _loc7_:MessageVo = _loc5_.createMessage(_loc6_,ServerMessageConstants.QUEST_CHANGE_STATE);
            if(!_loc9_)
            {
               _loc5_.sendMessage(_loc7_);
            }
            return;
         }
         §§goto(addr00a3);
      }
   }
}

