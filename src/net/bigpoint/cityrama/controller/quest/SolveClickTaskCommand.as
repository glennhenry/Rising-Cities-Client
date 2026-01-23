package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class SolveClickTaskCommand extends SimpleCommand implements ICommand
   {
      
      public function SolveClickTaskCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:QuestTaskDTO = null;
         var _loc2_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         var _loc3_:String = param1.getName();
         var _loc4_:Object = {};
         var _loc5_:QuestPlayerVo = _loc2_.clickTasks[_loc3_] as QuestPlayerVo;
         for each(_loc6_ in (_loc2_.clickTasks[_loc3_] as QuestPlayerVo).tasks)
         {
            if(_loc6_.elementState == QuestSystemStateConst.ACTIVE && _loc6_.taskConfig.questElementSubType == QuestSystemTypeConstants.CLICK)
            {
               _loc4_.taskConfigId = _loc6_.configQuestTaskID;
               break;
            }
         }
         _loc4_.questConfigId = _loc5_.config.id;
         _loc4_.questType = _loc5_.config.questElementSubType;
         if(_loc5_.state != QuestSystemStateConst.DONE)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,_loc4_);
         }
      }
   }
}

