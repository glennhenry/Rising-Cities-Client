package net.bigpoint.cityrama.view.residentialBook
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.residentialBook.ResidentialTabProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialPopup;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class ResidentialTabbedBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ResidentialTabbedBookMediator";
      
      private var _resTP:ResidentialTabProxy;
      
      private var _menuPopupProxy:MainMenuPopedUpProxy;
      
      public function ResidentialTabbedBookMediator(param1:String, param2:ResidentialPopup)
      {
         super(param1,param2);
         this.prepareProxies();
         this.setupListeners();
      }
      
      private function prepareProxies() : void
      {
         this._menuPopupProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
         this._menuPopupProxy.activePoppupConnectedWithMainMenu = NAME;
      }
      
      private function setTabs() : void
      {
         this.component.residentialTabData = this.tabProxy.tabs;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
         this.tabProxy.currentIndex = -1;
         this.tabProxy.currentResidential = null;
         this._menuPopupProxy.activePoppupConnectedWithMainMenu = null;
         facade.removeMediator(ResidentialOverviewContentMediator.NAME);
         facade.removeMediator(ResidentialImprovementContentMediator.NAME);
         facade.sendNotification(VirtualTaskNotificationInterest.RESIDENTIALLAYED_CLOSED);
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
               this.tabProxy.currentIndex = param1.newIndex;
            }
         }
         this.cleanContainer();
         facade.sendNotification(ApplicationNotificationConstants.RESIDENTIAL_TAB_CHANGED,this.component);
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
         return [ApplicationNotificationConstants.USERLEVEL_CHANGED,ApplicationNotificationConstants.RESIDENTIAL_CLOSE_AND_HARVEST,ApplicationNotificationConstants.RESIDENTIAL_CLOSE_REQUEST];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.USERLEVEL_CHANGED:
               this.setTabs();
               break;
            case ApplicationNotificationConstants.RESIDENTIAL_CLOSE_REQUEST:
               this.handleClose(null);
               break;
            case ApplicationNotificationConstants.RESIDENTIAL_CLOSE_AND_HARVEST:
               sendNotification(ApplicationNotificationConstants.HARVEST_BUILDING,this.tabProxy.currentResidential.buildingDTO.id);
               this.handleClose(null);
         }
      }
      
      public function setData(param1:Object) : void
      {
         if(Boolean(param1.residential) && param1.residential is ResidentialFieldObjectVo)
         {
            this.tabProxy.currentResidential = param1.residential as ResidentialFieldObjectVo;
            this.setTabs();
            if(param1.index)
            {
               this.tabProxy.currentIndex = param1.index as int;
            }
            else
            {
               this.tabProxy.currentIndex = ResidentialTabProxy.OVERVIEW_TAB_INDEX;
            }
            this.handleTabIndexChanged();
            if(this.tabProxy.currentIndex != ResidentialTabProxy.OVERVIEW_TAB_INDEX)
            {
               this.component.tabBar.addEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
            }
         }
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         this.component.tabBar.removeEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
         this.component.tabBar.selectedIndex = this.tabProxy.currentIndex;
      }
      
      public function get component() : ResidentialPopup
      {
         return super.viewComponent as ResidentialPopup;
      }
      
      private function get tabProxy() : ResidentialTabProxy
      {
         if(!this._resTP)
         {
            this._resTP = facade.retrieveProxy(ResidentialTabProxy.NAME) as ResidentialTabProxy;
         }
         return this._resTP;
      }
   }
}

