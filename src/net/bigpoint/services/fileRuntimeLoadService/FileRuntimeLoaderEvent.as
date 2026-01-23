package net.bigpoint.services.fileRuntimeLoadService
{
   import flash.events.Event;
   
   public class FileRuntimeLoaderEvent extends Event
   {
      
      public static const COMPLETE:String = "COMPLETE";
      
      public static const FAIL:String = "FAIL";
      
      public static const ERROR:String = "ERROR";
      
      public static const CANCEL:String = "CANCEL";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         COMPLETE = "COMPLETE";
         if(!(_loc2_ && FileRuntimeLoaderEvent))
         {
            addr0035:
            FAIL = "FAIL";
            if(_loc1_)
            {
               §§goto(addr0043);
            }
            §§goto(addr0059);
         }
         addr0043:
         ERROR = "ERROR";
         if(_loc1_ || FileRuntimeLoaderEvent)
         {
            addr0059:
            CANCEL = "CANCEL";
         }
         return;
      }
      §§goto(addr0035);
      
      public var instance:*;
      
      public var text:String;
      
      public function FileRuntimeLoaderEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && param2))
         {
            super(param1,param2,param3);
         }
      }
   }
}

