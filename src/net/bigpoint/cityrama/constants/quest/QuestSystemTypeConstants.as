package net.bigpoint.cityrama.constants.quest
{
   public class QuestSystemTypeConstants
   {
      
      public static const TUTORIAL:String = "TUTORIAL";
      
      public static const SCREEN:String = "SCREEN";
      
      public static const SOCIAL:String = "SOCIAL";
      
      public static const CLICK:String = "CLICK";
      
      public static const EVENT:String = "EVENT";
      
      public static const CHALLENGE:String = "CHALLENGE";
      
      public static const TASK:String = "TASK";
      
      public static const RESOURCE_PLAYER:String = "RESOURCE_PLAYER";
      
      public static const SUB_TYPE_DEPOSIT_GOOD:String = "CONSUME_GOOD";
      
      public static const SUB_TYPE_DEPOSIT_RESOURCE:String = "CONSUME_RESOURCE";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || QuestSystemTypeConstants)
      {
         TUTORIAL = "TUTORIAL";
         if(!(_loc2_ && _loc1_))
         {
            SCREEN = "SCREEN";
            if(!_loc2_)
            {
               SOCIAL = "SOCIAL";
               if(!_loc2_)
               {
                  CLICK = "CLICK";
                  if(_loc1_)
                  {
                     addr0067:
                     EVENT = "EVENT";
                     if(!(_loc2_ && _loc2_))
                     {
                        CHALLENGE = "CHALLENGE";
                        if(!_loc2_)
                        {
                           TASK = "TASK";
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00ab:
                              RESOURCE_PLAYER = "RESOURCE_PLAYER";
                              if(_loc1_)
                              {
                                 SUB_TYPE_DEPOSIT_GOOD = "CONSUME_GOOD";
                                 if(!_loc2_)
                                 {
                                    addr00c8:
                                    SUB_TYPE_DEPOSIT_RESOURCE = "CONSUME_RESOURCE";
                                 }
                                 §§goto(addr00d2);
                              }
                           }
                           §§goto(addr00c8);
                        }
                        addr00d2:
                        return;
                     }
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr00ab);
            }
            §§goto(addr0067);
         }
         §§goto(addr00c8);
      }
      §§goto(addr00ab);
      
      public function QuestSystemTypeConstants()
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

