package net.bigpoint.cityrama.init
{
   public class PreloaderConstants
   {
      
      public static const FLEX_PRELOADING_COMPLETE:String = "FLEX_PRELOADING_COMPLETE";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         FLEX_PRELOADING_COMPLETE = "FLEX_PRELOADING_COMPLETE";
      }
      
      public function PreloaderConstants()
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

