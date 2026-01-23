package net.bigpoint.cityrama.controller.friend
{
   import net.bigpoint.cityrama.view.friendBook.FriendPopupMediator;
   import net.bigpoint.cityrama.view.friendBook.FriendsTabMediator;
   import net.bigpoint.cityrama.view.friendBook.InviteTabMediator;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FriendBookTabChangeCommand extends SimpleCommand
   {
      
      public function FriendBookTabChangeCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:FriendBook = null;
         var _loc3_:String = null;
         var _loc4_:FriendsTabMediator = null;
         var _loc5_:InviteTabMediator = null;
         if(param1.getBody())
         {
            _loc2_ = param1.getBody().container as FriendBook;
            _loc3_ = param1.getBody().content;
            switch(_loc3_)
            {
               case FriendPopupMediator.FRIENDS:
                  _loc4_ = facade.retrieveMediator(FriendsTabMediator.NAME) as FriendsTabMediator;
                  if(!_loc4_)
                  {
                     _loc4_ = new FriendsTabMediator(_loc2_);
                     facade.registerMediator(_loc4_);
                  }
                  _loc4_.init();
                  break;
               case FriendPopupMediator.INVITE:
                  _loc5_ = facade.retrieveMediator(InviteTabMediator.NAME) as InviteTabMediator;
                  if(!_loc5_)
                  {
                     _loc5_ = new InviteTabMediator(_loc2_);
                     facade.registerMediator(_loc5_);
                  }
                  _loc5_.init();
            }
         }
      }
   }
}

