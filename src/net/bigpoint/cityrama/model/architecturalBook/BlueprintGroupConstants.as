package net.bigpoint.cityrama.model.architecturalBook
{
   public class BlueprintGroupConstants
   {
      
      public static const BLUEPRINT_RESIDENTIAL:String = "BLUEPRINT_RESIDENTIAL";
      
      public static const BLUEPRINT_SHOP:String = "BLUEPRINT_SHOP";
      
      public static const BLUEPRINT_POWERPLANT:String = "BLUEPRINT_POWERPLANT";
      
      public static const BLUEPRINT_DECORATION:String = "BLUEPRINT_DECORATION";
      
      public static const BLUEPRINT_PRODUCTION:String = "BLUEPRINT_PRODUCTION";
      
      public static const BLUEPRINT_SPECIAL:String = "BLUEPRINT_SPECIAL";
      
      public static const BLUEPRINT_GROUNDS:String = "BLUEPRINT_GROUNDS";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && BlueprintGroupConstants))
      {
         BLUEPRINT_RESIDENTIAL = "BLUEPRINT_RESIDENTIAL";
         if(_loc2_)
         {
            addr002c:
            BLUEPRINT_SHOP = "BLUEPRINT_SHOP";
            if(!_loc1_)
            {
               BLUEPRINT_POWERPLANT = "BLUEPRINT_POWERPLANT";
               if(_loc2_ || BlueprintGroupConstants)
               {
                  BLUEPRINT_DECORATION = "BLUEPRINT_DECORATION";
                  if(!(_loc1_ && _loc1_))
                  {
                     addr007a:
                     BLUEPRINT_PRODUCTION = "BLUEPRINT_PRODUCTION";
                     if(!_loc1_)
                     {
                        BLUEPRINT_SPECIAL = "BLUEPRINT_SPECIAL";
                        if(!(_loc1_ && BlueprintGroupConstants))
                        {
                           BLUEPRINT_GROUNDS = "BLUEPRINT_GROUNDS";
                        }
                     }
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr007a);
            }
         }
         addr00a7:
         return;
      }
      §§goto(addr002c);
      
      public function BlueprintGroupConstants()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
   }
}

