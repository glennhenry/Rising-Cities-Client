package net.bigpoint.cityrama.constants
{
   public class ServerResConst
   {
      
      public static const RESOURCE_EXPERIENCE:String = "RES_XP";
      
      public static const RESOURCE_VIRTUALCURRENCY:String = "CURR_VIRT";
      
      public static const RESOURCE_REALCURRENCY:String = "CURR_REAL";
      
      public static const RESOURCE_ENERGY_POSITIVE:String = "RES_ENERGY_POSITIVE";
      
      public static const RESOURCE_ENERGY_NEGATIVE:String = "RES_ENERGY_NEGATIVE";
      
      public static const RESOURCE_HAPPINESS_POSITIVE:String = "RES_MOOD_POSITIVE";
      
      public static const RESOURCE_HAPPINESS_NEGATIVE:String = "RES_MOOD_NEGATIVE";
      
      public static const RESOURCE_POPULATION:String = "POPULATION";
      
      public static const RESOURCE_WORKERS:String = "POP_WORKER";
      
      public static const RESOURCE_RICHMEN:String = "POP_RICH";
      
      public static const RESOURCE_ACADEMICS:String = "POP_TEACHER";
      
      public static const RESOURCE_PRODUCTIONPOINTS:String = "CURR_PROD";
      
      public static const RESOURCE_EDUCATIONPOINTS:String = "CURR_EDUC";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         RESOURCE_EXPERIENCE = "RES_XP";
         if(!(_loc1_ && _loc1_))
         {
            RESOURCE_VIRTUALCURRENCY = "CURR_VIRT";
            if(!_loc1_)
            {
               RESOURCE_REALCURRENCY = "CURR_REAL";
               if(_loc2_ || _loc2_)
               {
                  RESOURCE_ENERGY_POSITIVE = "RES_ENERGY_POSITIVE";
                  if(!_loc1_)
                  {
                     addr0060:
                     RESOURCE_ENERGY_NEGATIVE = "RES_ENERGY_NEGATIVE";
                     if(_loc2_ || ServerResConst)
                     {
                        RESOURCE_HAPPINESS_POSITIVE = "RES_MOOD_POSITIVE";
                        if(!(_loc1_ && ServerResConst))
                        {
                           RESOURCE_HAPPINESS_NEGATIVE = "RES_MOOD_NEGATIVE";
                           if(!(_loc1_ && ServerResConst))
                           {
                              addr00af:
                              RESOURCE_POPULATION = "POPULATION";
                              if(_loc2_ || _loc1_)
                              {
                                 RESOURCE_WORKERS = "POP_WORKER";
                                 if(_loc2_)
                                 {
                                    §§goto(addr00d5);
                                 }
                                 §§goto(addr0105);
                              }
                              addr00d5:
                              RESOURCE_RICHMEN = "POP_RICH";
                              if(!(_loc1_ && _loc2_))
                              {
                                 RESOURCE_ACADEMICS = "POP_TEACHER";
                                 if(!_loc1_)
                                 {
                                    addr0105:
                                    RESOURCE_PRODUCTIONPOINTS = "CURR_PROD";
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr011c:
                                       RESOURCE_EDUCATIONPOINTS = "CURR_EDUC";
                                    }
                                    §§goto(addr0126);
                                 }
                                 §§goto(addr011c);
                              }
                           }
                           §§goto(addr0126);
                        }
                        §§goto(addr00af);
                     }
                  }
               }
               §§goto(addr0126);
            }
            §§goto(addr0105);
         }
         addr0126:
         return;
      }
      §§goto(addr0060);
      
      public function ServerResConst()
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

