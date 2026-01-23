package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class InitializeQuestSystemCommand extends SimpleCommand
   {
      
      public function InitializeQuestSystemCommand()
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
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:QuestProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         var _loc3_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         if(!_loc4_)
         {
            _loc2_.init(_loc3_.player);
            if(!_loc4_)
            {
               facade.removeCommand(ApplicationNotificationConstants.INIT_QUEST_SYSTEM);
            }
         }
      }
   }
}

