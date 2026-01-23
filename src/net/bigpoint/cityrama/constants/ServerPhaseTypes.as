package net.bigpoint.cityrama.constants
{
   public class ServerPhaseTypes
   {
      
      public static const CREATE_ACTIVATE:String = "CREATE_ACTIVATE";
      
      public static const ACTIVATION:String = "ACTIVATION";
      
      public static const CREATE_CONSTRUCTION:String = "CREATE_CONSTRUCTION";
      
      public static const MYSTERY_CONSTRUCTION:String = "MYSTERY_CONSTRUCTION";
      
      public static const CREATE_PLACE_NORMAL:String = "CREATE_PLACE_NORMAL";
      
      public static const CREATE_PLACE_PERMISSION:String = "CREATE_PLACE_PERMISSION";
      
      public static const RESIDENTIAL:String = "RESIDENTIAL";
      
      public static const RANDOM_REWARD_HARVEST:String = "RANDOM_REWARD_HARVEST";
      
      public static const UPGRADE:String = "UPGRADE";
      
      public static const PRODUCTION_START:String = "PRODUCTION_START";
      
      public static const PRODUCTION:String = "PRODUCTION";
      
      public static const EDUCATION:String = "EDUCATION";
      
      public static const RESIDENT:String = "RESIDENT";
      
      public static const DESTRUCTIONPHASE_REMOVE_DECORATION:String = "REMOVE_DECORATION";
      
      public static const DESTRUCTIONPHASE_REMOVE_BOULDER:String = "REMOVE_BOULDER";
      
      public static const DESTRUCTIONPHASE_REMOVE_BUILDING:String = "REMOVE_BUILDING";
      
      public static const INSTANT_FINISH:String = "INSTANT_FINISH";
      
      public static const INSTANT_CONSTRUCTION:String = "INSTANT_CONSTRUCTION";
      
      public static const INSTANT_UPGRADE:String = "INSTANT_UPGRADE";
      
      public static const INSTANT_REMOVE_BOULDER:String = "INSTANT_REMOVE_BOULDER";
      
      public static const CLIENTSIDE_VIRTUAL:String = "CLIENTSIDE_VIRTUAL";
      
      public static const INSTANT_DEPARTMENT_UPGRADE:String = "INSTANT_DEPARTMENT_UPGRADE";
      
      public static const EXPANSION:String = "EXPANSION";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         CREATE_ACTIVATE = "CREATE_ACTIVATE";
         if(!_loc2_)
         {
            ACTIVATION = "ACTIVATION";
            if(!_loc2_)
            {
               §§goto(addr0031);
            }
            §§goto(addr008f);
         }
         addr0031:
         CREATE_CONSTRUCTION = "CREATE_CONSTRUCTION";
         if(_loc1_ || _loc2_)
         {
            MYSTERY_CONSTRUCTION = "MYSTERY_CONSTRUCTION";
            if(!(_loc2_ && _loc2_))
            {
               CREATE_PLACE_NORMAL = "CREATE_PLACE_NORMAL";
               if(_loc1_)
               {
                  CREATE_PLACE_PERMISSION = "CREATE_PLACE_PERMISSION";
                  if(!(_loc2_ && _loc1_))
                  {
                     RESIDENTIAL = "RESIDENTIAL";
                     if(_loc1_)
                     {
                        addr008f:
                        RANDOM_REWARD_HARVEST = "RANDOM_REWARD_HARVEST";
                        if(!(_loc2_ && ServerPhaseTypes))
                        {
                           addr00a5:
                           UPGRADE = "UPGRADE";
                           if(_loc1_ || _loc2_)
                           {
                              PRODUCTION_START = "PRODUCTION_START";
                              if(_loc1_)
                              {
                                 PRODUCTION = "PRODUCTION";
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    EDUCATION = "EDUCATION";
                                    if(_loc1_)
                                    {
                                       RESIDENT = "RESIDENT";
                                       if(!_loc2_)
                                       {
                                          DESTRUCTIONPHASE_REMOVE_DECORATION = "REMOVE_DECORATION";
                                          if(_loc1_ || _loc1_)
                                          {
                                             addr011e:
                                             DESTRUCTIONPHASE_REMOVE_BOULDER = "REMOVE_BOULDER";
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr0135:
                                                DESTRUCTIONPHASE_REMOVE_BUILDING = "REMOVE_BUILDING";
                                                if(_loc1_ || ServerPhaseTypes)
                                                {
                                                   addr014c:
                                                   INSTANT_FINISH = "INSTANT_FINISH";
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      addr0162:
                                                      INSTANT_CONSTRUCTION = "INSTANT_CONSTRUCTION";
                                                      if(!(_loc2_ && ServerPhaseTypes))
                                                      {
                                                         §§goto(addr0178);
                                                      }
                                                      §§goto(addr01a8);
                                                   }
                                                }
                                                §§goto(addr0178);
                                             }
                                             §§goto(addr01cc);
                                          }
                                          addr0178:
                                          INSTANT_UPGRADE = "INSTANT_UPGRADE";
                                          if(!_loc2_)
                                          {
                                             INSTANT_REMOVE_BOULDER = "INSTANT_REMOVE_BOULDER";
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr01a8:
                                                CLIENTSIDE_VIRTUAL = "CLIENTSIDE_VIRTUAL";
                                                if(_loc1_ || ServerPhaseTypes)
                                                {
                                                   addr01be:
                                                   INSTANT_DEPARTMENT_UPGRADE = "INSTANT_DEPARTMENT_UPGRADE";
                                                   if(!_loc2_)
                                                   {
                                                      addr01cc:
                                                      EXPANSION = "EXPANSION";
                                                   }
                                                   §§goto(addr01d5);
                                                }
                                                §§goto(addr01cc);
                                             }
                                          }
                                          §§goto(addr01d5);
                                       }
                                       §§goto(addr01cc);
                                    }
                                    §§goto(addr0162);
                                 }
                                 §§goto(addr0135);
                              }
                              §§goto(addr011e);
                           }
                        }
                        §§goto(addr01a8);
                     }
                     §§goto(addr014c);
                  }
                  §§goto(addr0135);
               }
               §§goto(addr01be);
            }
            §§goto(addr0162);
         }
         addr01d5:
         return;
      }
      §§goto(addr00a5);
      
      public function ServerPhaseTypes()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
   }
}

