package net.bigpoint.cityrama.view.quest.ui
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.model.residentialBook.ResidentialTabProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.quest.ui.components.QuestTabbedPopup;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class QuestTabbedBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "QuestTabbedBookMediator";
      
      private var _questTabProxy:QuestTabProxy;
      
      private var _menuPopupProxy:MainMenuPopedUpProxy;
      
      public function QuestTabbedBookMediator(param1:String, param2:QuestTabbedPopup)
      {
         super(param1,param2);
         this.prepareProxies();
         this.setupListeners();
      }
      
      private function prepareProxies() : void
      {
         this._questTabProxy = facade.retrieveProxy(QuestTabProxy.NAME) as QuestTabProxy;
         this._menuPopupProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
         this._menuPopupProxy.activePoppupConnectedWithMainMenu = NAME;
      }
      
      private function setTabs() : void
      {
         this.component.questTabData = this._questTabProxy.tabs;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
         this._questTabProxy.currentIndex = -1;
         this._questTabProxy.currentQuest = null;
         this._menuPopupProxy.activePoppupConnectedWithMainMenu = null;
         facade.removeMediator(QuestDetailViewMediator.NAME);
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
      }
      
      private function handleTabIndexChanged(param1:IndexChangeEvent = null) : void
      {
         if(param1)
         {
            if(param1.newIndex != param1.oldIndex)
            {
               this._questTabProxy.currentIndex = param1.newIndex;
            }
         }
         this.cleanContainer();
         facade.sendNotification(ApplicationNotificationConstants.QUEST_TAB_CHANGED,this.component);
      }
      
      private function cleanContainer() : void
      {
         if(this.component.contentGroup)
         {
            this.component.contentGroup.removeAllElements();
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         if(param1.quest)
         {
            this._questTabProxy.currentQuest = param1.quest as QuestDetailViewVo;
            this.setTabs();
            if(param1.index)
            {
               this._questTabProxy.currentIndex = param1.index as int;
            }
            else
            {
               this._questTabProxy.currentIndex = ResidentialTabProxy.OVERVIEW_TAB_INDEX;
            }
            this.handleTabIndexChanged();
            if(this._questTabProxy.currentIndex != ResidentialTabProxy.OVERVIEW_TAB_INDEX)
            {
               this.component.tabBar.addEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
            }
         }
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         this.component.tabBar.removeEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
         this.component.tabBar.selectedIndex = this._questTabProxy.currentIndex;
      }
      
      public function get component() : QuestTabbedPopup
      {
         return super.viewComponent as QuestTabbedPopup;
      }
   }
}

