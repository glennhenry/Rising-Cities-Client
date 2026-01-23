package net.bigpoint.as3toolbox.pathwalkmanager.events
{
   import flash.events.Event;
   
   public class PathEvent extends Event
   {
      
      public static const DIRECTION_CHANGED:String = "directionChanged";
      
      public static const PATH_COMPLETE:String = "pathComplete";
      
      public static const PATH_NOT_POSSIBLE:String = "pathNotPossible";
      
      public static const PATH_PAUSED:String = "pathPaused";
      
      public static const PATH_RESUMED:String = "pathResumed";
      
      public static const PATH_FOUND:String = "pathFound";
      
      public static const FRIEND_FOUND:String = "friendFound";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         DIRECTION_CHANGED = "directionChanged";
         if(!_loc2_)
         {
            addr0024:
            PATH_COMPLETE = "pathComplete";
            if(_loc1_)
            {
               PATH_NOT_POSSIBLE = "pathNotPossible";
               if(!_loc2_)
               {
                  PATH_PAUSED = "pathPaused";
                  if(!(_loc2_ && PathEvent))
                  {
                     addr006b:
                     PATH_RESUMED = "pathResumed";
                     if(!_loc2_)
                     {
                        §§goto(addr007a);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            PATH_FOUND = "pathFound";
            if(_loc1_)
            {
               addr0088:
               FRIEND_FOUND = "friendFound";
            }
            §§goto(addr0092);
         }
         addr0092:
         return;
      }
      §§goto(addr0024);
      
      public function PathEvent(param1:String, param2:Boolean = false, param3:Boolean = true)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new PathEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PathEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}

