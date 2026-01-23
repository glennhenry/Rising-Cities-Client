package net.bigpoint.cityrama.model.events.vo
{
   public class ServerEventTypeConst
   {
      
      public static const EVENTSQUARE:String = "EVENTSQUARE";
      
      public static const PERMISSION:String = "PERMISSION";
      
      public static const SALE:String = "SALE";
      
      public static const WHEEL:String = "WHEEL";
      
      public static const BONUSDAY:String = "BONUSDAY";
      
      public static const RENTCOLLECTOR:String = "RENTCOLLECTOR";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         EVENTSQUARE = "EVENTSQUARE";
         if(_loc1_ || ServerEventTypeConst)
         {
            PERMISSION = "PERMISSION";
            if(_loc1_ || ServerEventTypeConst)
            {
               §§goto(addr0053);
            }
            §§goto(addr0073);
         }
         addr0053:
         SALE = "SALE";
         if(!(_loc2_ && ServerEventTypeConst))
         {
            addr0073:
            WHEEL = "WHEEL";
            if(_loc1_ || _loc1_)
            {
               BONUSDAY = "BONUSDAY";
               if(_loc1_)
               {
                  addr0097:
                  RENTCOLLECTOR = "RENTCOLLECTOR";
               }
            }
         }
         return;
      }
      §§goto(addr0097);
      
      public function ServerEventTypeConst()
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

