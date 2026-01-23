package net.bigpoint.cityrama.constants.quest
{
   public class QuestSystemRewardTypeConstants
   {
      
      public static const RESOURCE:String = "RESOURCE";
      
      public static const GOOD:String = "GOOD";
      
      public static const QUEST:String = "QUEST";
      
      public static const PERMISSION:String = "PLAYFIELD_ITEM_PERMISSION";
      
      public static const IMPROVEMENT:String = "PLAYFIELD_ITEM_IMPROVEMENT";
      
      public static const ASSIST:String = "ASSIST";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || QuestSystemRewardTypeConstants)
      {
         RESOURCE = "RESOURCE";
         if(!_loc1_)
         {
            addr0036:
            GOOD = "GOOD";
            if(!_loc1_)
            {
               QUEST = "QUEST";
               if(_loc2_)
               {
                  addr005c:
                  PERMISSION = "PLAYFIELD_ITEM_PERMISSION";
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr0072);
                  }
                  §§goto(addr0088);
               }
               addr0072:
               IMPROVEMENT = "PLAYFIELD_ITEM_IMPROVEMENT";
               if(!(_loc1_ && _loc1_))
               {
                  addr0088:
                  ASSIST = "ASSIST";
               }
               return;
            }
         }
         §§goto(addr005c);
      }
      §§goto(addr0036);
      
      public function QuestSystemRewardTypeConstants()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
   }
}

