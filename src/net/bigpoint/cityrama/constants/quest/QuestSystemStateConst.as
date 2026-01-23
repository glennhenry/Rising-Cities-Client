package net.bigpoint.cityrama.constants.quest
{
   public class QuestSystemStateConst
   {
      
      public static const NEW:String = "NEW";
      
      public static const INACTIVE:String = "INACTIVE";
      
      public static const ACTIVE:String = "ACTIVE";
      
      public static const VALID:String = "VALID";
      
      public static const DONE:String = "DONE";
      
      public static const SUBMITTED:String = "SUBMITTED";
      
      public static const DELETED:String = "DELETED";
      
      public static const EXPIRED:String = "EXPIRED";
      
      public static const CANCELLED:String = "CANCELLED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || QuestSystemStateConst)
      {
         NEW = "NEW";
         if(_loc2_ || QuestSystemStateConst)
         {
            INACTIVE = "INACTIVE";
            if(!_loc1_)
            {
               ACTIVE = "ACTIVE";
               if(_loc2_ || QuestSystemStateConst)
               {
                  VALID = "VALID";
                  if(!_loc1_)
                  {
                     addr0070:
                     DONE = "DONE";
                     if(!(_loc1_ && _loc2_))
                     {
                        addr0090:
                        SUBMITTED = "SUBMITTED";
                        if(_loc2_ || _loc1_)
                        {
                           DELETED = "DELETED";
                           if(!_loc1_)
                           {
                              §§goto(addr00b4);
                           }
                        }
                        §§goto(addr00c2);
                     }
                     addr00b4:
                     EXPIRED = "EXPIRED";
                     if(_loc2_)
                     {
                        addr00c2:
                        CANCELLED = "CANCELLED";
                     }
                     §§goto(addr00cb);
                  }
                  addr00cb:
                  return;
               }
               §§goto(addr00b4);
            }
            §§goto(addr0070);
         }
         §§goto(addr0090);
      }
      §§goto(addr0070);
      
      public function QuestSystemStateConst()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
   }
}

