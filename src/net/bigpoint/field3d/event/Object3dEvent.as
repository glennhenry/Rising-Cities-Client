package net.bigpoint.field3d.event
{
   import flash.events.Event;
   
   public class Object3dEvent extends Event
   {
      
      public static const ON_OFFSET_UPDATE:String = "ON_OFFSET_UPDATE";
      
      public static const ON_POSITION_UPDATE:String = "ON_POSITION_UPDATE";
      
      public function Object3dEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

