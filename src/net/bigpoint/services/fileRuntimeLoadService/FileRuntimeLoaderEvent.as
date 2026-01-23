package net.bigpoint.services.fileRuntimeLoadService
{
   import flash.events.Event;
   
   public class FileRuntimeLoaderEvent extends Event
   {
      
      public static const COMPLETE:String = "COMPLETE";
      
      public static const FAIL:String = "FAIL";
      
      public static const ERROR:String = "ERROR";
      
      public static const CANCEL:String = "CANCEL";
      
      public var instance:*;
      
      public var text:String;
      
      public function FileRuntimeLoaderEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

