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
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:QuestVirtualTaskVo = null;
         var _loc2_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         §§push(param1.getName());
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in _loc2_.virtualTaskSolveDict[_loc3_])
         {
            _loc4_.isActive = false;
            if(_loc8_ || Boolean(param1))
            {
               _loc4_.isCompleted = true;
               if(_loc8_ || Boolean(_loc2_))
               {
                  _loc2_.activateVirtualTaskByLocaleId(_loc4_.followingTaskLocaleId);
               }
            }
         }
         if(!_loc7_)
         {
            sendNotification(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
         }
      }
   }
}

