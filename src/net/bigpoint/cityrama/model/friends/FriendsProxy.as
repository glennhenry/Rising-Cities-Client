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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && FriendsProxy))
      {
         NAME = "FriendsProxy";
      }
      
      private var _pmsEnabled:Boolean;
      
      private var _addFriend:FriendVo;
      
      private var _mySelf:FriendVo;
      
      private var _friends:ArrayCollection;
      
      private var _currentFriend:FriendVo;
      
      private var _localStorageProxy:LocalStorageProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _newMessages:Boolean;
      
      public function FriendsProxy(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._friends = new ArrayCollection();
            if(_loc3_ || _loc3_)
            {
               addr0038:
               super(FriendsProxy.NAME,param1);
            }
            return;
         }
         §§goto(addr0038);
      }
      
      public static function sortFriends(param1:FriendVo, param2:FriendVo) : int
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         §§push(param1.status);
         if(!(_loc8_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         §§push(param2.status);
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:uint = uint(param1.lvl);
         var _loc6_:uint = uint(param2.lvl);
         if(_loc7_ || Boolean(param1))
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               §§push(FriendVo.PENDING);
               if(!_loc8_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc7_ || Boolean(param2))
                     {
                        §§push(99);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                           if(_loc7_ || Boolean(param2))
                           {
                              _loc3_ = §§pop();
                              if(!(_loc8_ && FriendsProxy))
                              {
                                 addr00fc:
                                 §§push(_loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc7_ || Boolean(param2))
                                    {
                                       addr011e:
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc7_ || FriendsProxy)
                                          {
                                             §§push(-1);
                                             if(!(_loc8_ && Boolean(param2)))
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr01fd:
                                             addr0200:
                                             addr01fe:
                                             §§push(_loc3_ == _loc4_);
                                             if(!_loc8_)
                                             {
                                                addr0207:
                                                var _temp_9:* = §§pop();
                                                addr0208:
                                                §§push(_temp_9);
                                                if(_temp_9)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr0212:
                                                      §§pop();
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         addr0234:
                                                         addr0233:
                                                         addr0231:
                                                         if(_loc6_ > _loc5_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               addr023e:
                                                               §§push(1);
                                                               if(!(_loc8_ && Boolean(param2)))
                                                               {
                                                                  §§goto(addr024e);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr024f:
                                                               §§push(0);
                                                            }
                                                            §§goto(addr0251);
                                                         }
                                                      }
                                                      §§goto(addr024f);
                                                   }
                                                }
                                                §§goto(addr0234);
                                             }
                                             §§goto(addr0212);
                                          }
                                          addr024e:
                                          return §§pop();
                                       }
                                       §§push(_loc4_);
                                       if(!(_loc8_ && Boolean(param1)))
                                       {
                                          §§push(_loc3_);
                                          if(!_loc8_)
                                          {
                                             addr0166:
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   addr0170:
                                                   §§push(1);
                                                   if(!_loc8_)
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr01fd);
                                                }
                                                §§goto(addr0251);
                                             }
                                             else
                                             {
                                                §§push(_loc3_);
                                                if(_loc7_)
                                                {
                                                   addr0186:
                                                   §§push(_loc4_);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc7_)
                                                      {
                                                         var _temp_13:* = §§pop();
                                                         §§push(_temp_13);
                                                         §§push(_temp_13);
                                                         if(!_loc8_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc8_ && Boolean(param2)))
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     addr01bd:
                                                                     §§push(_loc5_);
                                                                     if(_loc7_ || Boolean(param2))
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() > §§pop());
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§goto(addr01dc);
                                                                           }
                                                                           §§goto(addr0234);
                                                                        }
                                                                        §§goto(addr0233);
                                                                     }
                                                                     §§goto(addr0231);
                                                                  }
                                                                  §§goto(addr01fd);
                                                               }
                                                            }
                                                            addr01dc:
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_ || FriendsProxy)
                                                               {
                                                                  addr01ee:
                                                                  §§push(-1);
                                                                  if(_loc7_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr023e);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr01fd);
                                                            }
                                                            §§goto(addr0251);
                                                         }
                                                         §§goto(addr0208);
                                                      }
                                                      §§goto(addr0207);
                                                   }
                                                   §§goto(addr0200);
                                                }
                                             }
                                             §§goto(addr01fe);
                                          }
                                          §§goto(addr0200);
                                       }
                                       §§goto(addr01fe);
                                    }
                                    §§goto(addr0166);
                                 }
                                 §§goto(addr0186);
                              }
                              §§goto(addr0170);
                           }
                        }
                        else
                        {
                           addr00dd:
                           §§push(§§pop());
                           if(!(_loc8_ && _loc3_))
                           {
                              _loc4_ = §§pop();
                              if(!(_loc8_ && Boolean(param2)))
                              {
                                 §§goto(addr00fc);
                              }
                              §§goto(addr01bd);
                           }
                        }
                        §§goto(addr0186);
                     }
                     §§goto(addr024f);
                  }
                  else
                  {
                     §§push(_loc4_);
                     if(!(_loc8_ && Boolean(param2)))
                     {
                        §§push(FriendVo.PENDING);
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc7_ || FriendsProxy)
                              {
                                 §§push(99);
                                 if(_loc7_)
                                 {
                                    §§goto(addr00dd);
                                 }
                                 addr0251:
                                 return §§pop();
                              }
                           }
                           §§goto(addr00fc);
                        }
                        §§goto(addr011e);
                     }
                  }
                  §§goto(addr01fe);
               }
               §§goto(addr0200);
            }
            §§goto(addr0186);
         }
         §§goto(addr01ee);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._localStorageProxy = LocalStorageProxy(facade.retrieveProxy(LocalStorageProxy.NAME));
            if(_loc1_)
            {
               this._flashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
               if(!_loc2_)
               {
                  this._newMessages = this._flashVarsProxy.unreadMessages;
                  addr0053:
                  if(!_loc2_)
                  {
                     §§push(this);
                     §§push(this._flashVarsProxy.pmsMaintenance);
                     if(_loc1_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop()._pmsEnabled = §§pop();
                     if(_loc1_ || Boolean(this))
                     {
                        addr008d:
                        facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_INVITE_REQUESTFRIENDLIST);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr008d);
               }
               addr0098:
               return;
            }
            §§goto(addr0053);
         }
         §§goto(addr008d);
      }
      
      override public function onRemove() : void
      {
      }
      
      public function createDummyFriend() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:CvTagProxy = facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
         if(_loc2_)
         {
            this._addFriend = new FriendVo({
               "avatar":0,
               "t":FriendVo.NO_FRIEND
            });
            if(_loc2_ || _loc2_)
            {
               addr006b:
               this._mySelf = new FriendVo({
                  "avatar":0,
                  "t":FriendVo.FINISHED
               });
               if(_loc2_ || Boolean(this))
               {
                  this._mySelf.isMe = true;
               }
            }
            return;
         }
         §§goto(addr006b);
      }
      
      public function acceptFriend(param1:FriendVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(param1.status == FriendVo.PENDING)
            {
               if(_loc3_)
               {
                  addr003b:
                  super.facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_ACCEPT_FRIEND,param1.fId);
               }
            }
            return;
         }
         §§goto(addr003b);
      }
      
      public function denyFriend(param1:FriendVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(param1.status == FriendVo.PENDING)
            {
               if(_loc3_ || Boolean(param1))
               {
                  addr0047:
                  super.facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_DECLINE_FRIEND,param1.fId);
               }
            }
            return;
         }
         §§goto(addr0047);
      }
      
      public function removeFriend(param1:FriendVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1.status == FriendVo.FINISHED)
            {
               if(_loc2_ || _loc3_)
               {
                  super.facade.sendNotification(ApplicationNotificationConstants.OPEN_FRIEND_DELETE_CONFIRM_POPUP,param1);
               }
            }
         }
      }
      
      public function sendGift(param1:FriendVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            if(param1.status == FriendVo.FINISHED)
            {
            }
         }
      }
      
      public function hasOutstandingInvites() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:FriendVo = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this._friends)
         {
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               if(_loc1_.status == FriendVo.PENDING)
               {
                  if(!(_loc4_ && Boolean(this)))
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function set friends(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._friends = new ArrayCollection();
            if(!_loc2_)
            {
               this._friends.addAll(param1);
               if(!_loc2_)
               {
                  this._friends.source.sort(sortFriends);
                  §§goto(addr0043);
               }
               §§goto(addr0069);
            }
         }
         addr0043:
         if(_loc3_ || _loc2_)
         {
            addr0069:
            this._friends.refresh();
            if(_loc3_ || _loc3_)
            {
               super.facade.sendNotification(ApplicationNotificationConstants.FRIENDS_UPDATE);
            }
         }
      }
      
      public function get friends() : ArrayCollection
      {
         return this._friends;
      }
      
      public function getFriendById(param1:int) : FriendVo
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:FriendVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._friends;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc2_.fId == param1)
               {
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get friendsPending() : ArrayCollection
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:FriendVo = null;
         var _loc3_:* = false;
         if(!_loc7_)
         {
            if(this._friends.length > 2)
            {
               if(!_loc7_)
               {
                  this._friends.source.sort(sortFriends);
                  if(!(_loc7_ && _loc1_))
                  {
                     addr0050:
                     this._friends.refresh();
                  }
                  §§goto(addr0058);
               }
               §§goto(addr0050);
            }
            addr0058:
            var _loc1_:ArrayCollection = new ArrayCollection();
            for each(_loc2_ in this._friends)
            {
               if(_loc6_)
               {
                  §§push(this._localStorageProxy.userdata.viewedFriendListUserIDs.indexOf(_loc2_.fId) == -1);
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     _loc3_ = §§pop();
                     if(_loc6_ || _loc3_)
                     {
                        addr00c3:
                        addr00bf:
                        if(_loc2_.isMe)
                        {
                           if(_loc6_ || Boolean(_loc1_))
                           {
                              addr00d5:
                              _loc2_.isItemNew = false;
                              if(_loc6_)
                              {
                              }
                           }
                        }
                        else
                        {
                           _loc2_.isItemNew = _loc3_;
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                        if(_loc2_.status == FriendVo.PENDING)
                        {
                           if(_loc6_)
                           {
                              _loc1_.addItem(_loc2_);
                           }
                        }
                        continue;
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00bf);
            }
            return _loc1_;
         }
         §§goto(addr0050);
      }
      
      public function get friendsActive() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:FriendVo = null;
         var _loc3_:* = false;
         if(_loc7_ || _loc1_)
         {
            if(this._friends.length > 2)
            {
               if(_loc7_)
               {
                  this._friends.source.sort(sortFriends);
                  if(_loc7_)
                  {
                     addr0053:
                     this._friends.refresh();
                  }
                  §§goto(addr005b);
               }
               §§goto(addr0053);
            }
            addr005b:
            var _loc1_:ArrayCollection = new ArrayCollection();
            for each(_loc2_ in this._friends)
            {
               if(!_loc7_)
               {
                  continue;
               }
               §§push(this._localStorageProxy.userdata.viewedFriendListUserIDs.indexOf(_loc2_.fId) == -1);
               if(_loc7_)
               {
                  _loc3_ = §§pop();
                  if(_loc7_)
                  {
                     addr00b4:
                     if(_loc2_.isMe)
                     {
                        if(_loc7_ || Boolean(_loc1_))
                        {
                           _loc2_.isItemNew = false;
                           if(_loc7_ || _loc3_)
                           {
                           }
                           addr00fd:
                           if(_loc2_.status != FriendVo.FINISHED)
                           {
                              continue;
                           }
                           if(!(_loc7_ || Boolean(_loc2_)))
                           {
                              continue;
                           }
                        }
                     }
                     else
                     {
                        _loc2_.isItemNew = _loc3_;
                        if(!(_loc6_ && Boolean(_loc1_)))
                        {
                           §§goto(addr00fd);
                        }
                     }
                     _loc1_.addItem(_loc2_);
                     continue;
                  }
                  §§goto(addr00fd);
               }
               §§goto(addr00b4);
            }
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      public function get currentFriend() : FriendVo
      {
         return this._currentFriend;
      }
      
      public function set currentFriend(param1:FriendVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._currentFriend = param1;
         }
      }
      
      public function get inFriendMode() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._currentFriend == null);
         if(_loc2_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      public function addFriend(param1:FriendVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._friends.addItem(param1);
         }
      }
      
      public function get newMessages() : Boolean
      {
         return this._newMessages;
      }
      
      public function set newMessages(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:FriendTabProxy = null;
         var _loc3_:FriendPopupMediator = null;
         if(!_loc4_)
         {
            if(param1 != this._newMessages)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr003b:
                  this._newMessages = param1;
               }
               _loc2_ = facade.retrieveProxy(FriendTabProxy.NAME) as FriendTabProxy;
               if(_loc5_)
               {
                  _loc2_.updateTabInfo(2,"","",this._pmsEnabled,this._newMessages);
               }
               _loc3_ = facade.retrieveMediator(FriendPopupMediator.NAME) as FriendPopupMediator;
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        _loc3_.component.tabBar.selectedIndex = _loc2_.selectedIndex;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003b);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._pmsEnabled = param1;
         }
      }
   }
}

