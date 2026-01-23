package net.bigpoint.cityrama.constants
{
   public class ServerImprovementConstants
   {
      
      public static const IMPROVEMENT:String = "IMPROVEMENT";
      
      public static const QUALITY_COMMON:String = "COMMON";
      
      public static const QUALITY_RARE:String = "RARE";
      
      public static const QUALITY_EPIC:String = "EPIC";
      
      public static const QUALITY_LEGENDARY:String = "LEGENDARY";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         IMPROVEMENT = "IMPROVEMENT";
         if(!(_loc2_ && _loc1_))
         {
            QUALITY_COMMON = "COMMON";
            if(!_loc2_)
            {
               QUALITY_RARE = "RARE";
               if(_loc1_ || _loc1_)
               {
                  addr0065:
                  QUALITY_EPIC = "EPIC";
                  if(!(_loc2_ && _loc1_))
                  {
                     QUALITY_LEGENDARY = "LEGENDARY";
                  }
               }
            }
         }
         return;
      }
      §§goto(addr0065);
      
      public function ServerImprovementConstants()
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

