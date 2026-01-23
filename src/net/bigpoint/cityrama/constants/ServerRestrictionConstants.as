package net.bigpoint.cityrama.constants
{
   public class ServerRestrictionConstants
   {
      
      public static const RIVER:String = "RIVER";
      
      public static const BUILDINGLAND:String = "BUILDINGLAND";
      
      public static const FARMLAND:String = "FARMLAND";
      
      public static const CLAYPIT:String = "CLAYPIT";
      
      public static const SPRING:String = "SPRING";
      
      public static const COAST:String = "COAST";
      
      public static const SEA:String = "SEA";
      
      public static const FISHINGGROUND:String = "FISHINGGROUND";
      
      public static const SNOW:String = "SNOW";
      
      public static const MOUNTAIN:String = "MOUNTAIN";
      
      public static const BLOCKED:String = "BLOCKED";
      
      public static const FARMLAND_BLACKLIST:String = "FARMLAND_BLACKLIST";
      
      public static const FARMLAND_WHITELIST:String = "FARMLAND_WHITELIST";
      
      public static const BUILDINGLAND_BLACKLIST:String = "BUILDINGLAND_BLACKLIST";
      
      public static const BUILDINGLAND_WHITELIST:String = "BUILDINGLAND_WHITELIST";
      
      public static const CLAYPIT_BLACKLIST:String = "CLAYPIT_BLACKLIST";
      
      public static const CLAYPIT_WHITELIST:String = "CLAYPIT_WHITELIST";
      
      public static const RIVER_BLACKLIST:String = "RIVER_BLACKLIST";
      
      public static const RIVER_WHITELIST:String = "RIVER_WHITELIST";
      
      public static const SPRING_BLACKLIST:String = "SPRING_BLACKLIST";
      
      public static const SPRING_WHITELIST:String = "SPRING_WHITELIST";
      
      public static const COAST_BLACKLIST:String = "COAST_BLACKLIST";
      
      public static const COAST_WHITELIST:String = "COAST_WHITELIST";
      
      public static const SEA_BLACKLIST:String = "SEA_BLACKLIST";
      
      public static const SEA_WHITELIST:String = "SEA_WHITELIST";
      
      public static const FISHINGGROUND_BLACKLIST:String = "FISHINGGROUND_BLACKLIST";
      
      public static const FISHINGGROUND_WHITELIST:String = "FISHINGGROUND_WHITELIST";
      
      public static const SNOW_BLACKLIST:String = "SNOW_BLACKLIST";
      
      public static const SNOW_WHITELIST:String = "SNOW_WHITELIST";
      
      public static const MOUNTAIN_BLACKLIST:String = "MOUNTAIN_BLACKLIST";
      
      public static const MOUNTAIN_WHITELIST:String = "MOUNTAIN_WHITELIST";
      
      public static const BLOCKED_BLACKLIST:String = "BLOCKED_BLACKLIST";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         RIVER = "RIVER";
         if(_loc2_)
         {
            BUILDINGLAND = "BUILDINGLAND";
            if(_loc2_ || _loc2_)
            {
               FARMLAND = "FARMLAND";
               if(!(_loc1_ && ServerRestrictionConstants))
               {
                  CLAYPIT = "CLAYPIT";
                  if(_loc2_ || _loc1_)
                  {
                     SPRING = "SPRING";
                     if(_loc2_ || ServerRestrictionConstants)
                     {
                        addr007c:
                        COAST = "COAST";
                        if(_loc2_)
                        {
                           SEA = "SEA";
                           if(_loc2_)
                           {
                              addr0098:
                              FISHINGGROUND = "FISHINGGROUND";
                              if(_loc2_ || _loc1_)
                              {
                                 SNOW = "SNOW";
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    MOUNTAIN = "MOUNTAIN";
                                    if(_loc2_)
                                    {
                                       BLOCKED = "BLOCKED";
                                       if(!_loc1_)
                                       {
                                          FARMLAND_BLACKLIST = "FARMLAND_BLACKLIST";
                                          if(_loc2_)
                                          {
                                             FARMLAND_WHITELIST = "FARMLAND_WHITELIST";
                                             if(!(_loc1_ && ServerRestrictionConstants))
                                             {
                                                BUILDINGLAND_BLACKLIST = "BUILDINGLAND_BLACKLIST";
                                                if(!_loc1_)
                                                {
                                                   BUILDINGLAND_WHITELIST = "BUILDINGLAND_WHITELIST";
                                                   if(!(_loc1_ && ServerRestrictionConstants))
                                                   {
                                                      CLAYPIT_BLACKLIST = "CLAYPIT_BLACKLIST";
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr014a);
                                                      }
                                                      §§goto(addr01aa);
                                                   }
                                                }
                                                §§goto(addr022c);
                                             }
                                             §§goto(addr0172);
                                          }
                                          §§goto(addr01aa);
                                       }
                                       §§goto(addr01ec);
                                    }
                                    §§goto(addr019a);
                                 }
                                 §§goto(addr0248);
                              }
                              §§goto(addr023a);
                           }
                           §§goto(addr021c);
                        }
                        addr014a:
                        CLAYPIT_WHITELIST = "CLAYPIT_WHITELIST";
                        if(_loc2_ || _loc1_)
                        {
                           RIVER_BLACKLIST = "RIVER_BLACKLIST";
                           if(!_loc1_)
                           {
                              addr0172:
                              RIVER_WHITELIST = "RIVER_WHITELIST";
                              if(_loc2_)
                              {
                                 SPRING_BLACKLIST = "SPRING_BLACKLIST";
                                 if(!(_loc1_ && ServerRestrictionConstants))
                                 {
                                    addr019a:
                                    SPRING_WHITELIST = "SPRING_WHITELIST";
                                    if(!_loc1_)
                                    {
                                       addr01aa:
                                       COAST_BLACKLIST = "COAST_BLACKLIST";
                                       if(!_loc1_)
                                       {
                                          addr01ba:
                                          COAST_WHITELIST = "COAST_WHITELIST";
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             SEA_BLACKLIST = "SEA_BLACKLIST";
                                             if(!_loc1_)
                                             {
                                                SEA_WHITELIST = "SEA_WHITELIST";
                                                if(_loc2_)
                                                {
                                                   addr01ec:
                                                   FISHINGGROUND_BLACKLIST = "FISHINGGROUND_BLACKLIST";
                                                   if(_loc2_)
                                                   {
                                                      FISHINGGROUND_WHITELIST = "FISHINGGROUND_WHITELIST";
                                                      if(_loc2_ || ServerRestrictionConstants)
                                                      {
                                                         addr021c:
                                                         SNOW_BLACKLIST = "SNOW_BLACKLIST";
                                                         if(!_loc1_)
                                                         {
                                                            addr022c:
                                                            SNOW_WHITELIST = "SNOW_WHITELIST";
                                                            if(!_loc1_)
                                                            {
                                                               addr023a:
                                                               MOUNTAIN_BLACKLIST = "MOUNTAIN_BLACKLIST";
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr0248);
                                                               }
                                                            }
                                                            §§goto(addr0256);
                                                         }
                                                         §§goto(addr023a);
                                                      }
                                                      §§goto(addr0256);
                                                   }
                                                   §§goto(addr023a);
                                                }
                                                §§goto(addr021c);
                                             }
                                             §§goto(addr01ec);
                                          }
                                       }
                                       §§goto(addr0256);
                                    }
                                    §§goto(addr01ba);
                                 }
                                 addr0248:
                                 MOUNTAIN_WHITELIST = "MOUNTAIN_WHITELIST";
                                 if(_loc2_)
                                 {
                                    addr0256:
                                    BLOCKED_BLACKLIST = "BLOCKED_BLACKLIST";
                                 }
                                 §§goto(addr0261);
                              }
                              §§goto(addr019a);
                           }
                           §§goto(addr021c);
                        }
                        §§goto(addr0261);
                     }
                  }
                  addr0261:
                  return;
               }
               §§goto(addr01aa);
            }
            §§goto(addr0098);
         }
         §§goto(addr022c);
      }
      §§goto(addr007c);
      
      public function ServerRestrictionConstants()
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

