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
   
   public class ClientMessageQuestUpsellCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageQuestUpsellCommand()
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
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         var _loc3_:QuestPlayerVo = _loc2_.getQuestByID(param1.getBody().id);
         var _loc4_:String = String(param1.getBody().state);
         var _loc5_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc6_:Object = new Object();
         _loc6_.t = param1.getBody().type;
         if(!_loc9_)
         {
            _loc6_.qid = _loc3_.config.id;
            if(!(_loc9_ && Boolean(this)))
            {
               _loc6_.eid = _loc2_.getChallengeIDByQuestIDAndState(_loc3_.config.id,QuestSystemStateConst.EXPIRED);
            }
         }
         var _loc7_:MessageVo = _loc5_.createMessage(_loc6_,ServerMessageConstants.QUEST_UPSELL);
         if(_loc8_)
         {
            _loc5_.sendMessage(_loc7_);
         }
      }
   }
}

