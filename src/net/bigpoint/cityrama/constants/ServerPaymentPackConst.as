package net.bigpoint.cityrama.constants
{
   public class ServerPaymentPackConst
   {
      
      public static const INTERNAL:String = "INTERNAL";
      
      public static const STARTERPACK:String = "STARTER";
      
      public static const STARTERPACK2:String = "STARTER2";
      
      public static const AID_PACK:String = "AID";
      
      public static const PREMIUMPACK_A:String = "PREMIUM_A";
      
      public static const EVOUCHER:String = "EVOUCHER";
      
      public static const CINEMA:String = "CINEMA";
      
      public static const CURRENCY:String = "CURRENCY";
      
      public static const UPSELL:String = "UPSELL";
      
      public static const REACTIVATION:String = "REACTIVATION";
      
      public static const NON_PAY:String = "NON_PAY";
      
      public static const NEW_NON_PAY:String = "NEW_NON_PAY";
      
      public static const EXPANSION_REFUND:String = "EXPANSION_REFUND";
      
      public static const EXTERNAL:String = "EXTERNAL";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         INTERNAL = "INTERNAL";
         if(!(_loc2_ && _loc2_))
         {
            STARTERPACK = "STARTER";
            if(_loc1_)
            {
               STARTERPACK2 = "STARTER2";
               if(!(_loc2_ && _loc1_))
               {
                  AID_PACK = "AID";
                  if(!_loc2_)
                  {
                     PREMIUMPACK_A = "PREMIUM_A";
                     if(_loc1_)
                     {
                        EVOUCHER = "EVOUCHER";
                        if(_loc1_ || _loc1_)
                        {
                           §§goto(addr0099);
                        }
                        §§goto(addr00f3);
                     }
                     §§goto(addr0139);
                  }
                  addr0099:
                  CINEMA = "CINEMA";
                  if(_loc1_ || _loc1_)
                  {
                     CURRENCY = "CURRENCY";
                     if(_loc1_ || _loc2_)
                     {
                        UPSELL = "UPSELL";
                        if(!(_loc2_ && _loc1_))
                        {
                           REACTIVATION = "REACTIVATION";
                           if(_loc1_ || _loc1_)
                           {
                              addr00f3:
                              NON_PAY = "NON_PAY";
                              if(!(_loc2_ && ServerPaymentPackConst))
                              {
                                 §§goto(addr0113);
                              }
                              §§goto(addr0123);
                           }
                           §§goto(addr0113);
                        }
                        §§goto(addr0139);
                     }
                     §§goto(addr0123);
                  }
                  addr0113:
                  NEW_NON_PAY = "NEW_NON_PAY";
                  if(_loc1_)
                  {
                     addr0123:
                     EXPANSION_REFUND = "EXPANSION_REFUND";
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0139:
                        EXTERNAL = "EXTERNAL";
                     }
                  }
                  §§goto(addr0142);
               }
               §§goto(addr0139);
            }
            §§goto(addr0123);
         }
         addr0142:
         return;
      }
      §§goto(addr0139);
      
      public function ServerPaymentPackConst()
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

