package net.bigpoint.cityrama.model.friends
{
   public class FriendBookConstants
   {
      
      public static const PENDING_FRIENDS_OVERVIEW:String = "PENDING_FRIENDS_OVERVIEW";
      
      public static const FRIENDS_OVERVIEW:String = "FRIENDS_OVERVIEW";
      
      public static const EVENT_FRIEND_BUTTON_INGAME_INVITE:String = "EVENT_FRIEND_BUTTON_INGAME_INVITE";
      
      public static const EVENT_FRIEND_BUTTON_SLAYER_EMAIL:String = "EVENT_FRIEND_BUTTON_SLAYER_EMAIL";
      
      public static const EVENT_DATA_INVITE_FAIL:String = "EVENT_DATA_INVITE_FAIL";
      
      public static const EVENT_DATA_INVITE_FAIL_ALLREADY_THERE:String = "EVENT_DATA_INVITE_FAIL_ALLREADY_THERE";
      
      public static const EVENT_DATA_INVITE_SUCCESS:String = "EVENT_DATA_INVITE_SUCCESS";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         PENDING_FRIENDS_OVERVIEW = "PENDING_FRIENDS_OVERVIEW";
         if(!(_loc1_ && _loc2_))
         {
            FRIENDS_OVERVIEW = "FRIENDS_OVERVIEW";
            if(_loc2_)
            {
               EVENT_FRIEND_BUTTON_INGAME_INVITE = "EVENT_FRIEND_BUTTON_INGAME_INVITE";
               if(!(_loc1_ && _loc2_))
               {
                  addr0064:
                  EVENT_FRIEND_BUTTON_SLAYER_EMAIL = "EVENT_FRIEND_BUTTON_SLAYER_EMAIL";
                  if(!(_loc1_ && FriendBookConstants))
                  {
                     EVENT_DATA_INVITE_FAIL = "EVENT_DATA_INVITE_FAIL";
                     if(!_loc1_)
                     {
                        addr0088:
                        EVENT_DATA_INVITE_FAIL_ALLREADY_THERE = "EVENT_DATA_INVITE_FAIL_ALLREADY_THERE";
                        if(!_loc1_)
                        {
                           EVENT_DATA_INVITE_SUCCESS = "EVENT_DATA_INVITE_SUCCESS";
                        }
                     }
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0088);
            }
            addr009f:
            return;
         }
         §§goto(addr0064);
      }
      §§goto(addr0088);
      
      public function FriendBookConstants()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
   }
}

