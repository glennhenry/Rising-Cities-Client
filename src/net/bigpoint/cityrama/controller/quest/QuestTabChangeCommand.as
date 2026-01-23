package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.view.quest.ui.QuestDetailViewMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTabbedPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class QuestTabChangeCommand extends SimpleCommand
   {
      
      public function QuestTabChangeCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:QuestTabProxy = facade.retrieveProxy(QuestTabProxy.NAME) as QuestTabProxy;
         var _loc3_:QuestDetailViewMediator = facade.retrieveMediator(QuestDetailViewMediator.NAME) as QuestDetailViewMediator;
         var _loc4_:QuestTabbedPopup = param1.getBody() as QuestTabbedPopup;
         if(_loc4_)
         {
            switch(_loc2_.currentIndex)
            {
               case QuestTabProxy.QUEST_DETAIL_TAB_INDEX:
                  if(!_loc3_)
                  {
                     _loc3_ = new QuestDetailViewMediator(QuestDetailViewMediator.NAME,_loc4_);
                     facade.registerMediator(_loc3_);
                  }
                  _loc3_.init();
            }
         }
      }
   }
}

