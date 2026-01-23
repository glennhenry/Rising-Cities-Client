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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         FAIL = "FAIL";
         if(_loc2_)
         {
            addr0024:
            ERROR = "ERROR";
            if(!(_loc1_ && _loc2_))
            {
               CHILD_CANCEL = "CANCEL";
               if(!(_loc1_ && _loc2_))
               {
                  CHILD_COMPLETE = "CHILD_COMPLETE";
                  if(_loc2_ || _loc2_)
                  {
                     addr007a:
                     COMPLETE = "COMPLETE";
                     if(!_loc1_)
                     {
                        addr0088:
                        PROGRESS = "PROGRESS";
                     }
                  }
                  return;
               }
               §§goto(addr0088);
            }
         }
         §§goto(addr007a);
      }
      §§goto(addr0024);
      
      public var text:String;
      
      public var progress:Number;
      
      public function FilePreloadServiceEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
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

