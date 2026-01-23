package net.bigpoint.cityrama.view.common.events
{
   import flash.events.Event;
   
   public class BriskMCDynaLibEvent extends Event
   {
      
      public static const LOAD_COMPLETE:String = "briskDynaLibLoadComplete";
      
      public function BriskMCDynaLibEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new BriskMCDynaLibEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("BriskImageEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}

