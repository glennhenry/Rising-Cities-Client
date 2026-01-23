package net.bigpoint.cityrama.view.ingameStore
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.ingameStore.IngameStoreTabProxy;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.architectBook.*;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackStoreMainMediator;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ImprovementStoreMainMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class IngameStoreBookMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "IngameStoreBookMediator";
      
      private var _storeTabProxy:IngameStoreTabProxy;
      
      private var _menuPopupProxy:MainMenuPopedUpProxy;
      
      private var _playfieldObjectProxy:PlayfieldObjectsProxy;
      
      private var _architectCategory:String = "";
      
      private var _architectItemConfigId:Number = -1;
      
      public function IngameStoreBookMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.prepareProxies();
         this.setupListeners();
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         sendNotification(VirtualTaskNotificationInterest.INGAME_STORE_OPENED);
      }
      
      private function prepareProxies() : void
      {
         this._storeTabProxy = facade.retrieveProxy(IngameStoreTabProxy.NAME) as IngameStoreTabProxy;
         this._menuPopupProxy = facade.retrieveProxy(MainMenuPopedUpProxy.NAME) as MainMenuPopedUpProxy;
         this._menuPopupProxy.activePoppupConnectedWithMainMenu = NAME;
         this._playfieldObjectProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
      }
      
      private function setTabs() : void
      {
         this.component.ingameStoreTabData = this._storeTabProxy.tabs;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
         this._storeTabProxy.currentIndex = -1;
         this._menuPopupProxy.activePoppupConnectedWithMainMenu = null;
         sendNotification(VirtualTaskNotificationInterest.INGAME_STORE_CLOSED);
         facade.removeMediator(ArchitectBookMediator.NAME);
         facade.removeMediator(BoosterpackStoreMainMediator.NAME);
         facade.removeMediator(ImprovementStoreMainMediator.NAME);
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleTabIndexChanged);
      }
      
      private function handleTabIndexChanged(param1:IndexChangeEvent = null) : void
      {
         if(param1)
         {
            if(param1.newIndex != param1.oldIndex)
            {
               this._storeTabProxy.currentIndex = param1.newIndex;
            }
         }
         this._storeTabProxy.lastViewedIndex = this._storeTabProxy.currentIndex;
         this.component.showBackButton = true;
         this.component.showBackButton = false;
         this.cleanContainer();
         facade.sendNotification(ApplicationNotificationConstants.INGAME_STORE_TAB_CHANGED,{
            "container":this.component,
            "cat":this._architectCategory,
            "itemConfigId":this._architectItemConfigId
         });
         if(this._architectCategory != "")
         {
            this._architectCategory = "";
         }
         if(this._architectItemConfigId != -1)
         {
            this._architectItemConfigId = -1;
         }
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
         return [ApplicationNotificationConstants.INGAME_STORE_CLOSE_REQUEST];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.INGAME_STORE_CLOSE_REQUEST:
               this.handleClose(null);
         }
      }
      
      public function setData(param1:Object) : void
      {
         this.setTabs();
         if(param1.index == IngameStoreTabProxy.ARCHITECT_TAB_INDEX || param1.index == IngameStoreTabProxy.BOOSTERPACK_TAB_INDEX || param1.index == IngameStoreTabProxy.IMPROVEMENT_TAB_INDEX)
         {
            this._storeTabProxy.currentIndex = param1.index as int;
         }
         else
         {
            this._storeTabProxy.currentIndex = this._storeTabProxy.lastViewedIndex;
         }
         if(this._storeTabProxy.currentIndex == IngameStoreTabProxy.ARCHITECT_TAB_INDEX)
         {
            if(param1.cat)
            {
               this._architectCategory = param1.cat as String;
            }
            if(param1.itemConfigId)
            {
               this._architectItemConfigId = param1.itemConfigId as Number;
            }
         }
         this.handleTabIndexChanged();
         if(this._storeTabProxy.currentIndex != IngameStoreTabProxy.ARCHITECT_TAB_INDEX)
         {
            this.component.tabBar.addEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
         }
      }
      
      private function setTabBarSelectedIndex(param1:FlexEvent) : void
      {
         this.component.tabBar.removeEventListener(FlexEvent.CREATION_COMPLETE,this.setTabBarSelectedIndex);
         this.component.tabBar.selectedIndex = this._storeTabProxy.currentIndex;
      }
      
      public function get component() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
   }
}

