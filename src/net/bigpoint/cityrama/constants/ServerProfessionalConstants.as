package net.bigpoint.cityrama.constants
{
   public class ServerProfessionalConstants
   {
      
      public static const ROOKIE:int = 1;
      
      public static const SPECIALIST:int = 2;
      
      public static const HERO:int = 3;
      
      public static const ATTRIBUTE_LUCK:String = "LUCK";
      
      public static const ATTRIBUTE_EFFICIENCY:String = "EFFICIENCY";
      
      public static const ATTRIBUTE_GOOFINESS:String = "GOOFINESS";
      
      public static const ATTRIBUTE_ADAPTABILITY:String = "ADAPTABILITY";
      
      public static const ATTRIBUTE_PERCEPTION:String = "PERCEPTION";
      
      public static const REWARD_AMOUNT:String = "REWARD_AMOUNT";
      
      public static const REWARD_TIER:String = "REWARD_TIER";
      
      public static const SECURITY_RANGE:String = "SECURITY_RANGE";
      
      public static const TRAIT_UNLOCK:String = "TRAIT_UNLOCK";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         ROOKIE = 1;
         if(!_loc1_)
         {
            SPECIALIST = 2;
            if(_loc2_ || ServerProfessionalConstants)
            {
               HERO = 3;
               if(_loc2_ || ServerProfessionalConstants)
               {
                  ATTRIBUTE_LUCK = "LUCK";
                  if(_loc2_)
                  {
                     addr0067:
                     ATTRIBUTE_EFFICIENCY = "EFFICIENCY";
                     if(_loc2_)
                     {
                        addr0075:
                        ATTRIBUTE_GOOFINESS = "GOOFINESS";
                        if(_loc2_)
                        {
                           ATTRIBUTE_ADAPTABILITY = "ADAPTABILITY";
                           if(_loc2_ || ServerProfessionalConstants)
                           {
                              §§goto(addr009c);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr00ca);
                     }
                  }
                  §§goto(addr009c);
               }
               §§goto(addr0067);
            }
            addr009c:
            ATTRIBUTE_PERCEPTION = "PERCEPTION";
            if(!(_loc1_ && _loc2_))
            {
               REWARD_AMOUNT = "REWARD_AMOUNT";
               if(!_loc1_)
               {
                  addr00ca:
                  REWARD_TIER = "REWARD_TIER";
                  if(!_loc1_)
                  {
                     §§goto(addr00d8);
                  }
                  §§goto(addr00e6);
               }
               addr00d8:
               SECURITY_RANGE = "SECURITY_RANGE";
               if(_loc2_)
               {
                  addr00e6:
                  TRAIT_UNLOCK = "TRAIT_UNLOCK";
               }
               §§goto(addr00ef);
            }
            addr00ef:
            return;
         }
         §§goto(addr0075);
      }
      §§goto(addr0067);
      
      public function ServerProfessionalConstants()
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

