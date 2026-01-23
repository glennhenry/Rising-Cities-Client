package net.bigpoint.util
{
   import mx.logging.ILogger;
   import mx.logging.Log;
   
   public class CityramaLogger
   {
      
      private static var _logger:ILogger;
      
      private static var init:Boolean = false;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         _logger = Log.getLogger("Main");
         if(_loc2_)
         {
            addr0033:
            init = false;
         }
         return;
      }
      §§goto(addr0033);
      
      public function CityramaLogger()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function get logger() : ILogger
      {
         return _logger;
      }
      
      public static function generatesSpaces(param1:int) : String
      {
         return "";
      }
   }
}

