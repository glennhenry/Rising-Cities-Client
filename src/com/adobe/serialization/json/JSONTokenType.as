package com.adobe.serialization.json
{
   public class JSONTokenType
   {
      
      public static const FALSE:int = 8;
      
      public static const RIGHT_BRACKET:int = 4;
      
      public static const NULL:int = 9;
      
      public static const NUMBER:int = 11;
      
      public static const TRUE:int = 7;
      
      public static const RIGHT_BRACE:int = 2;
      
      public static const STRING:int = 10;
      
      public static const LEFT_BRACKET:int = 3;
      
      public static const LEFT_BRACE:int = 1;
      
      public static const UNKNOWN:int = -1;
      
      public static const COMMA:int = 0;
      
      public static const NAN:int = 12;
      
      public static const COLON:int = 6;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || JSONTokenType)
      {
         UNKNOWN = -1;
         if(_loc2_ || _loc2_)
         {
            COMMA = 0;
            if(!_loc1_)
            {
               addr0042:
               LEFT_BRACE = 1;
               if(_loc2_ || _loc1_)
               {
                  §§goto(addr0057);
               }
               §§goto(addr00e6);
            }
         }
         addr0057:
         RIGHT_BRACE = 2;
         if(!(_loc1_ && JSONTokenType))
         {
            LEFT_BRACKET = 3;
            if(!(_loc1_ && JSONTokenType))
            {
               RIGHT_BRACKET = 4;
               if(_loc2_ || _loc1_)
               {
                  COLON = 6;
                  if(_loc2_ || _loc1_)
                  {
                     addr00b5:
                     TRUE = 7;
                     if(_loc2_)
                     {
                        FALSE = 8;
                        if(_loc2_)
                        {
                           §§goto(addr00d9);
                        }
                        §§goto(addr0100);
                     }
                     §§goto(addr00e6);
                  }
                  §§goto(addr0100);
               }
               §§goto(addr00b5);
            }
         }
         addr00d9:
         NULL = 9;
         if(_loc2_)
         {
            addr00e6:
            STRING = 10;
            if(!_loc1_)
            {
               NUMBER = 11;
               if(_loc2_)
               {
                  addr0100:
                  NAN = 12;
               }
               §§goto(addr0108);
            }
            §§goto(addr0100);
         }
         addr0108:
         return;
      }
      §§goto(addr0042);
      
      public function JSONTokenType()
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

