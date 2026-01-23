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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
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
            _loc5_.addItem(_loc4_);
         }
         _loc7_ = FriendsProxy(super.facade.retrieveProxy(FriendsProxy.NAME));
         _loc8_ = _loc7_.friends;
         for each(_loc10_ in _loc8_)
         {
            if(!this.friendInList(_loc5_,_loc10_.fId))
            {
               _loc8_.removeItemAt(_loc8_.getItemIndex(_loc10_));
            }
         }
         for each(_loc4_ in _loc5_)
         {
            if(_loc2_.player.id == _loc4_.fId)
            {
               _loc4_.isMe = true;
            }
            _loc9_ = _loc7_.getFriendById(_loc4_.fId);
            if(_loc9_ == null)
            {
               _loc7_.addFriend(_loc4_);
            }
            else
            {
               _loc9_.avatar = _loc4_.avatar;
               _loc9_.fId = _loc4_.fId;
               _loc9_.lvl = _loc4_.lvl;
               _loc9_.name = _loc4_.name;
               _loc9_.status = _loc4_.status;
               _loc9_.isOnline = _loc4_.isOnline;
               _loc9_.lastLoginDate = _loc4_.lastLoginDate;
               _loc9_.accountCreatedDate = _loc4_.accountCreatedDate;
               _loc9_.isMe = _loc4_.isMe;
            }
         }
         super.facade.sendNotification(ApplicationNotificationConstants.FRIENDS_UPDATE);
      }
      
      protected function friendInList(param1:ArrayCollection, param2:int) : Boolean
      {
         var _loc3_:FriendVo = null;
         for each(_loc3_ in param1)
         {
            if(_loc3_.fId == param2)
            {
               return true;
            }
         }
         return false;
      }
   }
}

