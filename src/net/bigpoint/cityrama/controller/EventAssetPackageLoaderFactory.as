package net.bigpoint.cityrama.controller
{
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   
   public class EventAssetPackageLoaderFactory
   {
      
      private static var listOfEventSwfPackageIds:Array = [80000,80001,80002,80003,80004,80005,80006,80007,80008,80009,80010,80011,80012,80013,80014,80015,80016,80017,80018,80019,80020,80021];
      
      public static const SWF_LOADER_EVENT_PREFIX:String = "EventPack_";
      
      public function EventAssetPackageLoaderFactory()
      {
         super();
      }
      
      public static function getLoaderXML(param1:String, param2:CvTagProxy) : String
      {
         var _loc4_:int = 0;
         var _loc3_:String = "";
         for each(_loc4_ in listOfEventSwfPackageIds)
         {
            _loc3_ += "<SWFLoader noCache=\"false\" name=\"" + SWF_LOADER_EVENT_PREFIX + _loc4_ + "\" url=\"" + param1 + param2.getCvTagPath("swf/events/" + _loc4_ + ".swf") + "\" />";
         }
         return _loc3_;
      }
   }
}

