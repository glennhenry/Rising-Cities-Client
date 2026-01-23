package net.bigpoint.cityrama.controller.server.messages.quest
{
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.QuestCompleteCostVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageQuestTaskUpdateCommand extends SimpleCommand
   {
      
      public function ServerMessageQuestTaskUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:QuestProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
         var _loc4_:QuestCompleteCostVo = null;
         if(_loc2_.json.q != null && _loc2_.json.q.u != null)
         {
            _loc4_ = new QuestCompleteCostVo(_loc2_.json.q.u);
         }
         _loc3_.updateTask(_loc2_.json.q.t,_loc2_.json.q.cid,_loc2_.json.q.s,_loc2_.json.q.v,_loc2_.json.q.qid,_loc4_);
      }
   }
}

