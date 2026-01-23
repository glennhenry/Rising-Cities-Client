package com.greensock.loading
{
   public class LoaderStatus
   {
      
      public static const READY:int = 0;
      
      public static const DISPOSED:int = 5;
      
      public static const COMPLETED:int = 2;
      
      public static const PAUSED:int = 3;
      
      public static const LOADING:int = 1;
      
      public static const FAILED:int = 4;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         READY = 0;
         if(_loc1_ || _loc2_)
         {
            LOADING = 1;
            if(!_loc2_)
            {
               §§goto(addr0041);
            }
            §§goto(addr006d);
         }
         addr0041:
         COMPLETED = 2;
         if(_loc1_ || _loc2_)
         {
            PAUSED = 3;
            if(_loc1_)
            {
               addr006d:
               FAILED = 4;
               if(!(_loc2_ && _loc1_))
               {
                  DISPOSED = 5;
               }
            }
         }
         return;
      }
      §§goto(addr006d);
      
      public function LoaderStatus()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
   }
}

