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
      
      public function PathEvent(param1:String, param2:Boolean = false, param3:Boolean = true)
      {
         super(param1,param2,param3);
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

