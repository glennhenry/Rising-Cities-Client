package net.bigpoint.cityrama.view.friendBook
{
   import flash.events.Event;
   import mx.collections.ArrayCollection;
   import mx.events.ItemClickEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.friends.FriendBookConstants;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import net.bigpoint.cityrama.model.friends.SideMenuFriendBookProxy;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBook;
   import net.bigpoint.cityrama.view.friendBook.ui.components.GroupList;
   import net.bigpoint.cityrama.view.friendBook.ui.components.SideMenuFriendBook;
   import net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent.FriendTemplateDataGrid;
   import net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent.FriendTemplateDataGridPending;
   import net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent.FriendTemplateDetailview;
   import net.bigpoint.cityrama.view.friendBook.ui.event.Friend_Action_Event;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class FriendsTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FriendsTabMediator";
      
      private var _sideMenuProxy:SideMenuFriendBookProxy;
      
      private var _sideMenu:SideMenuFriendBook;
      
      private var _friendsProxy:FriendsProxy;
      
      private var _component:GroupList;
      
      private var _localStorageProxy:LocalStorageProxy;
      
      private var _friendDetailView:FriendTemplateDetailview;
      
      private var _friendsListPending:FriendTemplateDataGridPending;
      
      private var _friendsList:FriendTemplateDataGrid;
      
      private var _soundProxy:SoundProxy;
      
      public function FriendsTabMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.prepareProxies();
      }
      
      private function setupListeners() : void
      {
         this.container.addEventListener(PaperPopupWindow.BACK,this.handleBack);
         this.container.addEventListener(Friend_Action_Event.ACCEPT_FRIEND_EVENT,this.doSendAcceptToServer);
         this.container.addEventListener(Friend_Action_Event.REJECT_FRIEND_EVENT,this.doSendRejectToServer);
         this.container.addEventListener(Friend_Action_Event.CANCEL_FRIEND_EVENT,this.doSendCancelToServer);
         this.container.addEventListener(FriendBookConstants.EVENT_FRIEND_BUTTON_INGAME_INVITE,this.openInviteMiniLayer);
         this.container.addEventListener(FriendBookConstants.EVENT_FRIEND_BUTTON_SLAYER_EMAIL,this.openInviteSlayerInvite);
      }
      
      private function prepareProxies() : void
      {
         this._sideMenuProxy = facade.retrieveProxy(SideMenuFriendBookProxy.NAME) as SideMenuFriendBookProxy;
         this._friendsProxy = facade.retrieveProxy(FriendsProxy.NAME) as FriendsProxy;
         this._localStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      private function setInitialValues() : void
      {
         this.setupSideMenu();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListeners();
      }
      
      private function removeListeners() : void
      {
         this.container.removeEventListener(PaperPopupWindow.BACK,this.handleBack);
         this.container.removeEventListener(Friend_Action_Event.ACCEPT_FRIEND_EVENT,this.doSendAcceptToServer);
         this.container.removeEventListener(Friend_Action_Event.REJECT_FRIEND_EVENT,this.doSendRejectToServer);
         this.container.removeEventListener(Friend_Action_Event.CANCEL_FRIEND_EVENT,this.doSendCancelToServer);
         this.container.removeEventListener(FriendBookConstants.EVENT_FRIEND_BUTTON_INGAME_INVITE,this.openInviteMiniLayer);
         this.container.removeEventListener(FriendBookConstants.EVENT_FRIEND_BUTTON_SLAYER_EMAIL,this.openInviteSlayerInvite);
         this.removeComponentListeners();
      }
      
      override public function getMediatorName() : String
      {
         return FriendsTabMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FRIENDBOOK_SIDE_ENTRIES_AVAILABLE,ApplicationNotificationConstants.FRIENDS_UPDATE];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.FRIENDS_UPDATE:
               if(this._friendsList)
               {
                  this._friendsList.data = this._friendsProxy.friendsActive;
               }
               if(this._friendsListPending)
               {
                  this._friendsListPending.data = this._friendsProxy.friendsPending;
               }
         }
      }
      
      public function init() : void
      {
         this.setInitialValues();
         this.setupListeners();
      }
      
      public function get container() : FriendBook
      {
         return super.viewComponent as FriendBook;
      }
      
      public function get component() : GroupList
      {
         return this._component;
      }
      
      private function setupSideMenu() : void
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         if(this._friendsProxy.newFriends)
         {
            _loc1_.push(FriendBookConstants.PENDING_FRIENDS_OVERVIEW);
            _loc2_ = 1;
         }
         this._sideMenuProxy.addNewIconAt(_loc1_);
         if(!this._sideMenu)
         {
            this._sideMenu = new SideMenuFriendBook();
            this._sideMenu.percentWidth = 100;
            this._sideMenu.percentHeight = 100;
            this._sideMenu.dataProvider = this._sideMenuProxy.entries;
            this._sideMenu.addEventListener(IndexChangeEvent.CHANGE,this.handleSideMenuIndexChange);
         }
         this.container.sideMenu.addElement(this._sideMenu);
         this._sideMenu.selectedIndex = _loc2_;
         this.handleSideMenuIndexChange(null);
      }
      
      private function handleSideMenuIndexChange(param1:IndexChangeEvent = null) : void
      {
         var _loc2_:int = int(this._sideMenu.selectedIndex);
         this.container.showBackButton = false;
         this.removeComponentListeners();
         switch(_loc2_)
         {
            case 1:
               this.setupPendingFriendsList();
               this.setupComponentListeners();
               break;
            case 0:
               this.setupFriendsList();
               this.setupComponentListeners();
         }
      }
      
      private function removeComponentListeners() : void
      {
         if(this.component)
         {
            this.component.removeEventListener(ItemClickEvent.ITEM_CLICK,this.handleFriendClick);
         }
      }
      
      private function setupComponentListeners() : void
      {
         this.component.addEventListener(ItemClickEvent.ITEM_CLICK,this.handleFriendClick);
      }
      
      private function setupFriendsList() : void
      {
         while(this.container.content.numElements)
         {
            this.container.content.removeElementAt(0);
         }
         if(!this._friendsList)
         {
            this._friendsList = new FriendTemplateDataGrid();
         }
         this._component = this._friendsList;
         this._component.data = this._friendsProxy.friendsActive;
         this.container.content.addElement(this._component);
      }
      
      private function setupPendingFriendsList() : void
      {
         while(this.container.content.numElements)
         {
            this.container.content.removeElementAt(0);
         }
         if(!this._friendsListPending)
         {
            this._friendsListPending = new FriendTemplateDataGridPending();
         }
         this._component = this._friendsListPending;
         this._component.data = this._friendsProxy.friendsPending;
         this.container.content.addElement(this._component);
      }
      
      private function handleFriendClick(param1:ItemClickEvent) : void
      {
         this.updateFriendDetails(param1.item as FriendVo);
      }
      
      public function updateFriendDetails(param1:FriendVo) : void
      {
         if(param1)
         {
            if(this._localStorageProxy.userdata.viewedFriendListUserIDs.indexOf(param1.fId) == -1)
            {
               this._localStorageProxy.userdata.viewedFriendListUserIDs.push(param1.fId);
               this._localStorageProxy.flush();
               this._friendsProxy.getFriendById(param1.fId).isItemNew = false;
               if(this._friendsList)
               {
                  this._friendsList.data = this._friendsProxy.friendsActive;
               }
               if(this._friendsListPending)
               {
                  this._friendsListPending.data = this._friendsProxy.friendsPending;
               }
            }
            if(!this._friendDetailView)
            {
               this._friendDetailView = new FriendTemplateDetailview();
               this._friendDetailView.addEventListener("left",this.handleDetailLeft);
               this._friendDetailView.addEventListener("right",this.handleDetailRight);
            }
            this._friendDetailView.setData(param1);
            if(!this._friendDetailView.parent)
            {
               while(this.container.content.numElements)
               {
                  this.container.content.removeElementAt(0);
               }
               this.container.content.addElement(this._friendDetailView);
            }
            this.container.showBackButton = true;
         }
      }
      
      private function handleDetailLeft(param1:Event) : void
      {
         var _loc2_:ArrayCollection = this._friendDetailView.data.status == FriendVo.PENDING ? this._friendsProxy.friendsPending : this._friendsProxy.friendsActive;
         var _loc3_:int = int(_loc2_.getItemIndex(this._friendDetailView.data));
         if(_loc3_ > 0)
         {
            this.updateFriendDetails(_loc2_.getItemAt(_loc3_ - 1) as FriendVo);
         }
      }
      
      private function handleDetailRight(param1:Event) : void
      {
         var _loc2_:ArrayCollection = this._friendDetailView.data.status == FriendVo.PENDING ? this._friendsProxy.friendsPending : this._friendsProxy.friendsActive;
         var _loc3_:int = int(_loc2_.getItemIndex(this._friendDetailView.data));
         if(_loc3_ < _loc2_.length - 1)
         {
            this.updateFriendDetails(_loc2_.getItemAt(_loc3_ + 1) as FriendVo);
         }
      }
      
      private function handleBack(param1:Event) : void
      {
         while(this.container.content.numElements)
         {
            this.container.content.removeElementAt(0);
         }
         this.handleSideMenuIndexChange(null);
      }
      
      private function doSendAcceptToServer(param1:Friend_Action_Event) : void
      {
         param1.stopImmediatePropagation();
         this._soundProxy.playButtonClick();
         facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_ACCEPT_FRIEND,param1.friendVo.fId);
      }
      
      private function doSendRejectToServer(param1:Friend_Action_Event) : void
      {
         param1.stopImmediatePropagation();
         this._soundProxy.playButtonClick();
         facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_DECLINE_FRIEND,param1.friendVo.fId);
      }
      
      private function doSendCancelToServer(param1:Friend_Action_Event) : void
      {
         param1.stopImmediatePropagation();
         this._soundProxy.playButtonClick();
         facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_CANCEL_FRIEND,param1.friendVo.fId);
      }
      
      private function openInviteMiniLayer(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this._soundProxy.playButtonClick();
         facade.sendNotification(MiniLayerConstants.OPEN_MINI_FRIENDINVITE);
      }
      
      private function openInviteSlayerInvite(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this._soundProxy.playButtonClick();
         sendNotification(ApplicationNotificationConstants.OPEN_SLAYER_EMAIL_DIALOG);
      }
   }
}

