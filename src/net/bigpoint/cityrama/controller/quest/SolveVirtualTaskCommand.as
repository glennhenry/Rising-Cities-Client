package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.quest.vo.QuestVirtualTaskVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class SolveVirtualTaskCommand extends SimpleCommand implements ICommand
   {
      
      public function SolveVirtualTaskCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:QuestVirtualTaskVo = null;
         var _loc2_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         var _loc3_:String = param1.getName();
         for each(_loc4_ in _loc2_.virtualTaskSolveDict[_loc3_])
         {
            _loc4_.isActive = false;
            _loc4_.isCompleted = true;
            _loc2_.activateVirtualTaskByLocaleId(_loc4_.followingTaskLocaleId);
         }
         sendNotification(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
      }
   }
}

