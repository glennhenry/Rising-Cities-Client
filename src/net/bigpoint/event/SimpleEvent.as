package net.bigpoint.event
{
   import flash.events.Event;
   
   public class SimpleEvent extends Event
   {
      
      public var data:*;
      
      public function SimpleEvent(param1:String, param2:*, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
   }
}

