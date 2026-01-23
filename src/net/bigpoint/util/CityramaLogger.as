package net.bigpoint.util
{
   import mx.logging.ILogger;
   import mx.logging.Log;
   
   public class CityramaLogger
   {
      
      private static var _logger:ILogger = Log.getLogger("Main");
      
      private static var init:Boolean = false;
      
      public function CityramaLogger()
      {
         super();
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

