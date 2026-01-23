package net.bigpoint.cityrama.model.friends
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.view.friendBook.FriendPopupMediator;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class FriendsProxy extends Proxy
   {
      
      public static const NAME:String = "FriendsProxy";
      
      private var _pmsEnabled:Boolean;
      
      private var _addFriend:FriendVo;
      
      private var _mySelf:FriendVo;
      
      private var _friends:ArrayCollection = new ArrayCollection();
      
      private var _currentFriend:FriendVo;
      
      private var _localStorageProxy:LocalStorageProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _newMessages:Boolean;
      
      public function FriendsProxy(param1:Object = null)
      {
         super(FriendsProxy.NAME,param1);
      }
      
      public static function sortFriends(param1:FriendVo, param2:FriendVo) : int
      {
         var _loc3_:Number = param1.status;
         var _loc4_:Number = param2.status;
         var _loc5_:uint = uint(param1.lvl);
         var _loc6_:uint = uint(param2.lvl);
         if(_loc3_ == FriendVo.PENDING)
         {
            _loc3_ = 99;
         }
         else if(_loc4_ == FriendVo.PENDING)
         {
            _loc4_ = 99;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc4_ < _loc3_)
         {
            return 1;
         }
         if(_loc3_ == _loc4_ && _loc5_ > _loc6_)
         {
            return -1;
         }
         if(_loc3_ == _loc4_ && _loc6_ > _loc5_)
         {
            return 1;
         }
         return 0;
      }
      
      override public function onRegister() : void
      {
         this._localStorageProxy = LocalStorageProxy(facade.retrieveProxy(LocalStorageProxy.NAME));
         this._flashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         this._newMessages = this._flashVarsProxy.unreadMessages;
         this._pmsEnabled = !this._flashVarsProxy.pmsMaintenance;
         facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_INVITE_REQUESTFRIENDLIST);
      }
      
      override public function onRemove() : void
      {
      }
      
      public function createDummyFriend() : void
      {
         var _loc1_:CvTagProxy = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         this._addFriend = new FriendVo({
            "avatar":0,
            "t":FriendVo.NO_FRIEND
         });
         this._mySelf = new FriendVo({
            "avatar":0,
            "t":FriendVo.FINISHED
         });
         this._mySelf.isMe = true;
      }
      
      public function acceptFriend(param1:FriendVo) : void
      {
         if(param1.status == FriendVo.PENDING)
         {
            super.facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_ACCEPT_FRIEND,param1.fId);
         }
      }
      
      public function denyFriend(param1:FriendVo) : void
      {
         if(param1.status == FriendVo.PENDING)
         {
            super.facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_DECLINE_FRIEND,param1.fId);
         }
      }
      
      public function removeFriend(param1:FriendVo) : void
      {
         if(param1.status == FriendVo.FINISHED)
         {
            super.facade.sendNotification(ApplicationNotificationConstants.OPEN_FRIEND_DELETE_CONFIRM_POPUP,param1);
         }
      }
      
      public function sendGift(param1:FriendVo) : void
      {
         if(param1.status == FriendVo.FINISHED)
         {
         }
      }
      
      public function hasOutstandingInvites() : Boolean
      {
         var _loc1_:FriendVo = null;
         for each(_loc1_ in this._friends)
         {
            if(_loc1_.status == FriendVo.PENDING)
            {
               return true;
            }
         }
         return false;
      }
      
      public function set friends(param1:ArrayCollection) : void
      {
         this._friends = new ArrayCollection();
         this._friends.addAll(param1);
         this._friends.source.sort(sortFriends);
         this._friends.refresh();
         super.facade.sendNotification(ApplicationNotificationConstants.FRIENDS_UPDATE);
      }
      
      public function get friends() : ArrayCollection
      {
         return this._friends;
      }
      
      public function getFriendById(param1:int) : FriendVo
      {
         var _loc2_:FriendVo = null;
         for each(_loc2_ in this._friends)
         {
            if(_loc2_.fId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get friendsPending() : ArrayCollection
      {
         var _loc2_:FriendVo = null;
         var _loc3_:* = false;
         if(this._friends.length > 2)
         {
            this._friends.source.sort(sortFriends);
            this._friends.refresh();
         }
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this._friends)
         {
            _loc3_ = this._localStorageProxy.userdata.viewedFriendListUserIDs.indexOf(_loc2_.fId) == -1;
            if(_loc2_.isMe)
            {
               _loc2_.isItemNew = false;
            }
            else
            {
               _loc2_.isItemNew = _loc3_;
            }
            if(_loc2_.status == FriendVo.PENDING)
            {
               _loc1_.addItem(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function get friendsActive() : ArrayCollection
      {
         var _loc2_:FriendVo = null;
         var _loc3_:* = false;
         if(this._friends.length > 2)
         {
            this._friends.source.sort(sortFriends);
            this._friends.refresh();
         }
         var _loc1_:ArrayCollection = new ArrayCollection();
         for each(_loc2_ in this._friends)
         {
            _loc3_ = this._localStorageProxy.userdata.viewedFriendListUserIDs.indexOf(_loc2_.fId) == -1;
            if(_loc2_.isMe)
            {
               _loc2_.isItemNew = false;
            }
            else
            {
               _loc2_.isItemNew = _loc3_;
            }
            if(_loc2_.status == FriendVo.FINISHED)
            {
               _loc1_.addItem(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function get currentFriend() : FriendVo
      {
         return this._currentFriend;
      }
      
      public function set currentFriend(param1:FriendVo) : void
      {
         this._currentFriend = param1;
      }
      
      public function get inFriendMode() : Boolean
      {
         return this._currentFriend != null;
      }
      
      public function addFriend(param1:FriendVo) : void
      {
         this._friends.addItem(param1);
      }
      
      public function get newMessages() : Boolean
      {
         return this._newMessages;
      }
      
      public function set newMessages(param1:Boolean) : void
      {
         if(param1 != this._newMessages)
         {
            this._newMessages = param1;
            var _loc2_:FriendTabProxy = facade.retrieveProxy(FriendTabProxy.NAME) as FriendTabProxy;
            null.updateTabInfo(2,"","",this._pmsEnabled,this._newMessages);
            var _loc3_:FriendPopupMediator = facade.retrieveMediator(FriendPopupMediator.NAME) as FriendPopupMediator;
         }
      }
      
      public function get newFriends() : Boolean
      {
         return this.hasOutstandingInvites();
      }
      
      public function get pmsEnabled() : Boolean
      {
         return this._pmsEnabled;
      }
      
      public function set pmsEnabled(param1:Boolean) : void
      {
         this._pmsEnabled = param1;
      }
   }
}

