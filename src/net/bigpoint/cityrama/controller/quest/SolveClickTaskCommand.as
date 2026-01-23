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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc6_:QuestTaskDTO = null;
         var _loc2_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         §§push(param1.getName());
         if(_loc9_ || Boolean(_loc2_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         var _loc4_:Object = {};
         var _loc5_:QuestPlayerVo = _loc2_.clickTasks[_loc3_] as QuestPlayerVo;
         for each(_loc6_ in (_loc2_.clickTasks[_loc3_] as QuestPlayerVo).tasks)
         {
            §§push(_loc6_.elementState == QuestSystemStateConst.ACTIVE);
            if(!_loc10_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     addr00b2:
                     §§pop();
                     if(!(_loc10_ && _loc3_))
                     {
                        addr00d0:
                        if(_loc6_.taskConfig.questElementSubType != QuestSystemTypeConstants.CLICK)
                        {
                           continue;
                        }
                        if(_loc10_)
                        {
                           break;
                        }
                     }
                     _loc4_.taskConfigId = _loc6_.configQuestTaskID;
                     break;
                  }
               }
               §§goto(addr00d0);
            }
            §§goto(addr00b2);
         }
         if(!(_loc10_ && Boolean(_loc2_)))
         {
            _loc4_.questConfigId = _loc5_.config.id;
            if(!_loc10_)
            {
               _loc4_.questType = _loc5_.config.questElementSubType;
               if(!_loc10_)
               {
                  if(_loc5_.state != QuestSystemStateConst.DONE)
                  {
                     if(_loc9_)
                     {
                        addr0148:
                        sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_TASK_PROCESS,_loc4_);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr0148);
      }
   }
}

