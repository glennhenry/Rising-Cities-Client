package net.bigpoint.cityrama.controller.server.messages.friend
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageFriendsUpdateCommand extends SimpleCommand
   {
      
      public function ServerMessageFriendsUpdateCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc4_:FriendVo = null;
         var _loc6_:Object = null;
         var _loc7_:FriendsProxy = null;
         var _loc8_:ArrayCollection = null;
         var _loc9_:FriendVo = null;
         var _loc10_:FriendVo = null;
         var _loc2_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc3_:MessageVo = MessageVo(param1.getBody());
         var _loc5_:ArrayCollection = new ArrayCollection();
         for each(_loc6_ in _loc3_.json.f)
         {
            _loc4_ = new FriendVo(_loc6_);
            if(!(_loc13_ && Boolean(_loc2_)))
            {
               _loc5_.addItem(_loc4_);
            }
         }
         _loc7_ = FriendsProxy(super.facade.retrieveProxy(FriendsProxy.NAME));
         _loc8_ = _loc7_.friends;
         if(_loc14_)
         {
            §§push(0);
            if(!(_loc13_ && Boolean(_loc2_)))
            {
               var _loc11_:* = §§pop();
               if(_loc14_)
               {
                  var _loc12_:* = _loc8_;
                  while(true)
                  {
                     §§push(§§hasnext(_loc12_,_loc11_));
                     if(_loc14_ || Boolean(param1))
                     {
                        if(§§pop())
                        {
                           _loc10_ = §§nextvalue(_loc11_,_loc12_);
                           if(_loc14_)
                           {
                              if(this.friendInList(_loc5_,_loc10_.fId))
                              {
                                 continue;
                              }
                              if(_loc13_)
                              {
                                 continue;
                              }
                           }
                           _loc8_.removeItemAt(_loc8_.getItemIndex(_loc10_));
                           continue;
                        }
                        if(!_loc13_)
                        {
                           if(!_loc13_)
                           {
                              §§goto(addr015a);
                           }
                           §§goto(addr0174);
                        }
                        §§goto(addr02a6);
                     }
                     §§goto(addr02a2);
                  }
               }
               addr015a:
               if(_loc14_ || Boolean(this))
               {
                  addr016c:
                  _loc11_ = 0;
                  addr016a:
                  if(!_loc13_)
                  {
                     addr0174:
                     _loc12_ = _loc5_;
                     loop3:
                     while(true)
                     {
                        §§push(§§hasnext(_loc12_,_loc11_));
                        addr02a2:
                        while(§§pop())
                        {
                           _loc4_ = §§nextvalue(_loc11_,_loc12_);
                           if(_loc14_)
                           {
                              if(_loc2_.player.id == _loc4_.fId)
                              {
                                 if(!_loc13_)
                                 {
                                    addr01a3:
                                    _loc4_.isMe = true;
                                 }
                              }
                              _loc9_ = _loc7_.getFriendById(_loc4_.fId);
                              if(_loc9_ == null)
                              {
                                 if(_loc14_ || Boolean(_loc3_))
                                 {
                                    _loc7_.addFriend(_loc4_);
                                    if(_loc14_ || Boolean(_loc2_))
                                    {
                                       continue loop3;
                                    }
                                    addr0201:
                                    _loc9_.fId = _loc4_.fId;
                                    if(!(_loc14_ || Boolean(this)))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 _loc9_.lvl = _loc4_.lvl;
                                 if(_loc13_)
                                 {
                                    continue loop3;
                                 }
                                 _loc9_.name = _loc4_.name;
                                 if(!(_loc13_ && Boolean(param1)))
                                 {
                                    _loc9_.status = _loc4_.status;
                                    if(!_loc13_)
                                    {
                                       _loc9_.isOnline = _loc4_.isOnline;
                                       if(_loc14_)
                                       {
                                          addr0261:
                                          _loc9_.lastLoginDate = _loc4_.lastLoginDate;
                                          if(_loc13_)
                                          {
                                             continue loop3;
                                          }
                                       }
                                       _loc9_.accountCreatedDate = _loc4_.accountCreatedDate;
                                       if(!(_loc13_ && Boolean(_loc3_)))
                                       {
                                          _loc9_.isMe = _loc4_.isMe;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr0261);
                              }
                              else
                              {
                                 _loc9_.avatar = _loc4_.avatar;
                                 if(_loc13_ && Boolean(this))
                                 {
                                    continue loop3;
                                 }
                              }
                              §§goto(addr0201);
                           }
                           §§goto(addr01a3);
                           continue loop3;
                        }
                        addr02a6:
                     }
                  }
                  if(_loc14_)
                  {
                     super.facade.sendNotification(ApplicationNotificationConstants.FRIENDS_UPDATE);
                  }
               }
               return;
            }
            §§goto(addr016c);
         }
         §§goto(addr016a);
      }
      
      protected function friendInList(param1:ArrayCollection, param2:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:FriendVo = null;
         for each(_loc3_ in param1)
         {
            if(_loc7_ || Boolean(_loc3_))
            {
               if(_loc3_.fId == param2)
               {
                  if(!_loc6_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
   }
}

