package net.bigpoint.services.filePreloadService
{
   import flash.events.Event;
   
   public class FilePreloadServiceEvent extends Event
   {
      
      public static const FAIL:String = "FAIL";
      
      public static const ERROR:String = "ERROR";
      
      public static const CHILD_CANCEL:String = "CANCEL";
      
      public static const CHILD_COMPLETE:String = "CHILD_COMPLETE";
      
      public static const COMPLETE:String = "COMPLETE";
      
      public static const PROGRESS:String = "PROGRESS";
      
      public var text:String;
      
      public var progress:Number;
      
      public function FilePreloadServiceEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

