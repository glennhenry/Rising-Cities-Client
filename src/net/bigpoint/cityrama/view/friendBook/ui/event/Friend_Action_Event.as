package net.bigpoint.cityrama.view.friendBook.ui.event
{
   import flash.events.Event;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   
   public class Friend_Action_Event extends Event
   {
      
      public static const ACCEPT_FRIEND_EVENT:String = "ACCEPT_FRIEND_EVENT";
      
      public static const REJECT_FRIEND_EVENT:String = "REJECT_FRIEND_EVENT";
      
      public static const CANCEL_FRIEND_EVENT:String = "CANCEL_FRIEND_EVENT";
      
      private var _friendVo:FriendVo;
      
      public function Friend_Action_Event(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new Friend_Action_Event(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("Friend_Action_Event","type","bubbles","cancelable","eventPhase");
      }
      
      public function get friendVo() : FriendVo
      {
         return this._friendVo;
      }
      
      public function set friendVo(param1:FriendVo) : void
      {
         this._friendVo = param1;
      }
   }
}

