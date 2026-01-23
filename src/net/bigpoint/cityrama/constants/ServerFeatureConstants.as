package net.bigpoint.cityrama.constants
{
   public class ServerFeatureConstants
   {
      
      public static const FEATURE_REQUIRED_TYPE_LEVEL:String = "USER_LEVEL";
      
      public static const FEATURE_REQUIRED_TYPE_QUEST:String = "QUEST";
      
      public static const BIRTHDAY_EVENT_2013:String = "BIRTHDAY_EVENT_2013";
      
      public static const CITYWHEEL:String = "CITY_WHEEL";
      
      public static const COASTAL_PLAYFIELD_SWITCH:String = "SECOND_PLAYFIELD";
      
      public static const SUBURBAN_PLAYFIELD_SWITCH:String = "THIRD_PLAYFIELD";
      
      public static const MOUNTAIN_PLAYFIELD_SWITCH:String = "FOURTH_PLAYFIELD";
      
      public static const BUILDING_MASTERY:String = "MASTERY";
      
      public static const EMERGENCY:String = "EMERGENCY";
      
      public static const EVENTSQUARE:String = "EVENTSQUARE";
      
      public static const EXPANSION:String = "EXPANSION";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         FEATURE_REQUIRED_TYPE_LEVEL = "USER_LEVEL";
         if(_loc1_)
         {
            FEATURE_REQUIRED_TYPE_QUEST = "QUEST";
            if(_loc1_ || ServerFeatureConstants)
            {
               BIRTHDAY_EVENT_2013 = "BIRTHDAY_EVENT_2013";
               if(_loc1_)
               {
                  CITYWHEEL = "CITY_WHEEL";
                  if(_loc1_ || _loc2_)
                  {
                     COASTAL_PLAYFIELD_SWITCH = "SECOND_PLAYFIELD";
                     if(!(_loc2_ && ServerFeatureConstants))
                     {
                        SUBURBAN_PLAYFIELD_SWITCH = "THIRD_PLAYFIELD";
                        if(!_loc2_)
                        {
                           MOUNTAIN_PLAYFIELD_SWITCH = "FOURTH_PLAYFIELD";
                           if(!(_loc2_ && ServerFeatureConstants))
                           {
                              addr00af:
                              BUILDING_MASTERY = "MASTERY";
                              if(_loc1_)
                              {
                                 §§goto(addr00c8);
                              }
                              §§goto(addr00de);
                           }
                           §§goto(addr00f4);
                        }
                        addr00c8:
                        EMERGENCY = "EMERGENCY";
                        if(!(_loc2_ && ServerFeatureConstants))
                        {
                           addr00de:
                           EVENTSQUARE = "EVENTSQUARE";
                           if(!(_loc2_ && _loc1_))
                           {
                              addr00f4:
                              EXPANSION = "EXPANSION";
                           }
                        }
                        §§goto(addr00fd);
                     }
                  }
                  §§goto(addr00fd);
               }
               §§goto(addr00af);
            }
            addr00fd:
            return;
         }
      }
      §§goto(addr00de);
      
      public function ServerFeatureConstants()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
   }
}

