package net.bigpoint.services.fileRuntimeLoadService
{
   import flash.events.Event;
   
   public class FileRuntimeLoadServiceEvent extends Event
   {
      
      public static const COMPLETE:String = "COMPLETE";
      
      public static const FAIL:String = "FAIL";
      
      public static const ERROR:String = "ERROR";
      
      public static const CANCEL:String = "CANCEL";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         COMPLETE = "COMPLETE";
         if(_loc2_)
         {
            FAIL = "FAIL";
            if(_loc2_ || _loc1_)
            {
               ERROR = "ERROR";
               if(_loc2_ || _loc2_)
               {
                  CANCEL = "CANCEL";
               }
            }
         }
      }
      
      public var text:String;
      
      public function FileRuntimeLoadServiceEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
   }
}

