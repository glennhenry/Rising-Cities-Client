package net.bigpoint.cityrama.constants
{
   public class EmergencyConstants
   {
      
      public static const EMERGENCY_STATUS_STARTED:String = "EMERGENCY";
      
      public static const EMERGENCY_STATUS_SUCCESS:String = "REWARD";
      
      public static const EMERGENCY_INPROGRESS:String = "PROGRESS";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && EmergencyConstants))
      {
         EMERGENCY_STATUS_STARTED = "EMERGENCY";
         if(_loc1_)
         {
            EMERGENCY_STATUS_SUCCESS = "REWARD";
            if(_loc1_)
            {
               §§goto(addr0044);
            }
            §§goto(addr005b);
         }
      }
      addr0044:
      
      public static const EMERGENCY_STATUS_FAIL:String = "DAMAGED";
      
      if(!(_loc2_ && _loc1_))
      {
         addr005b:
         EMERGENCY_INPROGRESS = "PROGRESS";
      }
      
      public function EmergencyConstants()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
   }
}

