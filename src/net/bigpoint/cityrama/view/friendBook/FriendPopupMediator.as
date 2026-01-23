package net.bigpoint.cityrama.view.friendBook
{
   import mx.events.CloseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.externalInterface.ExternalInterfaceProxy;
   import net.bigpoint.cityrama.model.friends.FriendTabProxy;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.TabBar;
   import spark.events.IndexChangeEvent;
   
   public class FriendPopupMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "FriendPopupMediator";
      
      public static const FRIENDS:String = "FRIENDS";
      
      public static const INVITE:String = "INVITE";
      
      public static const MESSAGES:String = "MESSAGES";
      
      private var _currentIndex:int = -1;
      
      private var _friendTabProxy:FriendTabProxy;
      
      private var _friendsProxy:FriendsProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      public function FriendPopupMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.prepareProxies();
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setupListeners();
         this.setInitialValues();
      }
      
      private function setInitialValues() : void
      {
         this.component.tabs = this._friendTabProxy.tabs;
         if(this._friendsProxy.newFriends)
         {
            this._friendTabProxy.updateTabInfo(0,"","",true,true);
         }
      }
      
      private function prepareProxies() : void
      {
         this._friendTabProxy = facade.retrieveProxy(FriendTabProxy.NAME) as FriendTabProxy;
         this._friendsProxy = facade.retrieveProxy(FriendsProxy.NAME) as FriendsProxy;
         this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
      }
      
      override public function onRemove() : void
      {
         facade.removeMediator(FriendsTabMediator.NAME);
         facade.removeMediator(InviteTabMediator.NAME);
         super.onRemove();
         this.removeListeners();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FRIEND_TAB_UPDATE,ApplicationNotificationConstants.FRIENDS_UPDATE];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.FRIEND_TAB_UPDATE:
               this.component.tabEventEnabled = false;
               this.component.tabs = this._friendTabProxy.tabs;
               this.component.tabBar.selectedIndex = this._friendTabProxy.selectedIndex;
               this.component.tabEventEnabled = true;
               break;
            case ApplicationNotificationConstants.FRIENDS_UPDATE:
               if(this._friendsProxy.newFriends)
               {
                  this._friendTabProxy.updateTabInfo(0,"","",true,true);
               }
               else
               {
                  this._friendTabProxy.updateTabInfo(0,"","",true,false);
               }
               this.component.tabBar.selectedIndex = this._friendTabProxy.selectedIndex;
         }
      }
      
      public function get component() : FriendBook
      {
         return super.viewComponent as FriendBook;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is String)
         {
            switch(param1 as String)
            {
               case "invite":
                  if(!this._flashVarsProxy.friendInviteDisabled)
                  {
                     this.component.tabBar.selectedIndex = 2;
                  }
                  else
                  {
                     this.component.tabBar.selectedIndex = 0;
                  }
                  this.handleIndexChange();
                  break;
               case "messages":
                  this.component.tabBar.selectedIndex = 2;
                  this.handleIndexChange();
                  break;
               default:
                  this.component.tabBar.selectedIndex = 2;
                  this.handleIndexChange();
            }
         }
      }
      
      private function setupListeners() : void
      {
         this.component.addEventListener(CloseEvent.CLOSE,this.handleClose);
         this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleIndexChange);
      }
      
      private function removeListeners() : void
      {
         this.component.removeEventListener(CloseEvent.CLOSE,this.handleClose);
         this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleIndexChange);
      }
      
      private function handleClose(param1:CloseEvent) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      private function handleIndexChange(param1:IndexChangeEvent = null) : void
      {
         var _loc2_:TabBar = this.component.tabBar;
         var _loc3_:int = _loc2_.selectedIndex == -1 ? 0 : int(_loc2_.selectedIndex);
         this._friendTabProxy.selectedIndex = _loc3_;
         this.component.showBackButton = false;
         if(this._currentIndex != _loc3_)
         {
            this._currentIndex = _loc3_;
            this.cleanContainers();
            switch(this._currentIndex)
            {
               case 0:
                  facade.sendNotification(ApplicationNotificationConstants.FRIENDBOOK_TAB_CHANGE,{
                     "container":this.component,
                     "content":FRIENDS
                  });
                  break;
               case 1:
                  if(this._flashVarsProxy.friendInviteDisabled)
                  {
                     this.handleCallMessaging();
                     break;
                  }
                  facade.sendNotification(ApplicationNotificationConstants.FRIENDBOOK_TAB_CHANGE,{
                     "container":this.component,
                     "content":INVITE
                  });
                  break;
               case 2:
                  this.handleCallMessaging();
            }
         }
      }
      
      private function handleCallMessaging() : void
      {
         var _loc1_:ExternalInterfaceProxy = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
         _loc1_.openMessagingPHP();
      }
      
      private function cleanContainers() : void
      {
         if(this.component.content)
         {
            while(this.component.content.numElements)
            {
               this.component.content.removeElementAt(0);
            }
         }
         if(this.component.sideMenu)
         {
            while(this.component.sideMenu.numElements)
            {
               this.component.sideMenu.removeElementAt(0);
            }
         }
      }
   }
}

