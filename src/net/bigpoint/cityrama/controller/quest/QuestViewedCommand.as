package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class QuestViewedCommand extends SimpleCommand implements ICommand
   {
      
      public function QuestViewedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Number = Number(param1.getBody());
         var _loc3_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         if(!_loc3_.isQuestViewed(_loc2_))
         {
            _loc3_.addViewedQuest(_loc2_);
            OptionsGlobalVariables.getInstance().viewedQuests = _loc3_.uiDataDTO.viewedQuest;
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA);
            facade.sendNotification(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
         }
      }
   }
}

