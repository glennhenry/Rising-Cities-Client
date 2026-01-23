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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Number = Number(param1.getBody());
         var _loc3_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         if(!(_loc4_ && Boolean(this)))
         {
            if(!_loc3_.isQuestViewed(_loc2_))
            {
               if(_loc5_)
               {
                  _loc3_.addViewedQuest(_loc2_);
                  if(_loc5_ || Boolean(this))
                  {
                     addr0080:
                     OptionsGlobalVariables.getInstance().viewedQuests = _loc3_.uiDataDTO.viewedQuest;
                     if(_loc5_)
                     {
                        §§goto(addr0096);
                     }
                  }
                  §§goto(addr00af);
               }
               addr0096:
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA);
               if(!(_loc4_ && Boolean(this)))
               {
                  addr00af:
                  facade.sendNotification(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
               }
               §§goto(addr00b9);
            }
            addr00b9:
            return;
         }
         §§goto(addr0080);
      }
   }
}

