package net.bigpoint.cityrama.constants.quest
{
   public class ClickTaskNotificationConstants
   {
      
      public static const FULLSCREEN:String = "FULLSCREEN";
      
      public static const BASEMENT_ENABLED:String = "BASEMENT_ENABLED";
      
      public static const STORAGE:String = "STORAGE";
      
      public static const CITYSQUARE_EVENT_STARTED:String = "CITYSQUARE_EVENT_STARTED";
      
      public static const TOWNHALL_CLICKED:String = "TOWNHALL_CLICKED";
      
      public static const TOWNHALL_ANIMATION_HANDLER:String = "TOWNHALL_ANIMATION_HANDLER";
      
      public static const MASTERY_TRAIT_SELECTED:String = "MASTERY_TRAIT_SELECTED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         FULLSCREEN = "FULLSCREEN";
         if(!_loc1_)
         {
            BASEMENT_ENABLED = "BASEMENT_ENABLED";
            if(!_loc1_)
            {
               STORAGE = "STORAGE";
               if(_loc2_)
               {
                  addr0054:
                  CITYSQUARE_EVENT_STARTED = "CITYSQUARE_EVENT_STARTED";
                  if(!(_loc1_ && ClickTaskNotificationConstants))
                  {
                     addr006a:
                     TOWNHALL_CLICKED = "TOWNHALL_CLICKED";
                     if(!_loc1_)
                     {
                        addr0078:
                        TOWNHALL_ANIMATION_HANDLER = "TOWNHALL_ANIMATION_HANDLER";
                        if(_loc2_)
                        {
                           addr0086:
                           MASTERY_TRAIT_SELECTED = "MASTERY_TRAIT_SELECTED";
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0086);
               }
               addr008f:
               return;
            }
            §§goto(addr006a);
         }
         §§goto(addr0078);
      }
      §§goto(addr0054);
      
      public function ClickTaskNotificationConstants()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
   }
}

